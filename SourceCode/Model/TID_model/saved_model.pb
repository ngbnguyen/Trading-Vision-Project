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
dense_275/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_275/kernel
u
$dense_275/kernel/Read/ReadVariableOpReadVariableOpdense_275/kernel*
_output_shapes

:
*
dtype0
t
dense_275/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_275/bias
m
"dense_275/bias/Read/ReadVariableOpReadVariableOpdense_275/bias*
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
lstm_825/lstm_cell_825/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_825/lstm_cell_825/kernel
?
1lstm_825/lstm_cell_825/kernel/Read/ReadVariableOpReadVariableOplstm_825/lstm_cell_825/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_825/lstm_cell_825/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_825/lstm_cell_825/recurrent_kernel
?
;lstm_825/lstm_cell_825/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_825/lstm_cell_825/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_825/lstm_cell_825/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_825/lstm_cell_825/bias
?
/lstm_825/lstm_cell_825/bias/Read/ReadVariableOpReadVariableOplstm_825/lstm_cell_825/bias*
_output_shapes	
:?*
dtype0
?
lstm_826/lstm_cell_826/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_826/lstm_cell_826/kernel
?
1lstm_826/lstm_cell_826/kernel/Read/ReadVariableOpReadVariableOplstm_826/lstm_cell_826/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_826/lstm_cell_826/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_826/lstm_cell_826/recurrent_kernel
?
;lstm_826/lstm_cell_826/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_826/lstm_cell_826/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_826/lstm_cell_826/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_826/lstm_cell_826/bias
?
/lstm_826/lstm_cell_826/bias/Read/ReadVariableOpReadVariableOplstm_826/lstm_cell_826/bias*
_output_shapes	
:?*
dtype0
?
lstm_827/lstm_cell_827/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_827/lstm_cell_827/kernel
?
1lstm_827/lstm_cell_827/kernel/Read/ReadVariableOpReadVariableOplstm_827/lstm_cell_827/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_827/lstm_cell_827/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_827/lstm_cell_827/recurrent_kernel
?
;lstm_827/lstm_cell_827/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_827/lstm_cell_827/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_827/lstm_cell_827/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_827/lstm_cell_827/bias
?
/lstm_827/lstm_cell_827/bias/Read/ReadVariableOpReadVariableOplstm_827/lstm_cell_827/bias*
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
Adam/dense_275/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_275/kernel/m
?
+Adam/dense_275/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_275/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_275/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_275/bias/m
{
)Adam/dense_275/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_275/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_825/lstm_cell_825/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_825/lstm_cell_825/kernel/m
?
8Adam/lstm_825/lstm_cell_825/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_825/lstm_cell_825/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_825/lstm_cell_825/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_825/lstm_cell_825/recurrent_kernel/m
?
BAdam/lstm_825/lstm_cell_825/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_825/lstm_cell_825/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_825/lstm_cell_825/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_825/lstm_cell_825/bias/m
?
6Adam/lstm_825/lstm_cell_825/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_825/lstm_cell_825/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_826/lstm_cell_826/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_826/lstm_cell_826/kernel/m
?
8Adam/lstm_826/lstm_cell_826/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_826/lstm_cell_826/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_826/lstm_cell_826/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_826/lstm_cell_826/recurrent_kernel/m
?
BAdam/lstm_826/lstm_cell_826/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_826/lstm_cell_826/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_826/lstm_cell_826/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_826/lstm_cell_826/bias/m
?
6Adam/lstm_826/lstm_cell_826/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_826/lstm_cell_826/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_827/lstm_cell_827/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_827/lstm_cell_827/kernel/m
?
8Adam/lstm_827/lstm_cell_827/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_827/lstm_cell_827/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_827/lstm_cell_827/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_827/lstm_cell_827/recurrent_kernel/m
?
BAdam/lstm_827/lstm_cell_827/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_827/lstm_cell_827/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_827/lstm_cell_827/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_827/lstm_cell_827/bias/m
?
6Adam/lstm_827/lstm_cell_827/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_827/lstm_cell_827/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_275/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_275/kernel/v
?
+Adam/dense_275/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_275/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_275/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_275/bias/v
{
)Adam/dense_275/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_275/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_825/lstm_cell_825/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_825/lstm_cell_825/kernel/v
?
8Adam/lstm_825/lstm_cell_825/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_825/lstm_cell_825/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_825/lstm_cell_825/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_825/lstm_cell_825/recurrent_kernel/v
?
BAdam/lstm_825/lstm_cell_825/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_825/lstm_cell_825/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_825/lstm_cell_825/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_825/lstm_cell_825/bias/v
?
6Adam/lstm_825/lstm_cell_825/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_825/lstm_cell_825/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_826/lstm_cell_826/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_826/lstm_cell_826/kernel/v
?
8Adam/lstm_826/lstm_cell_826/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_826/lstm_cell_826/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_826/lstm_cell_826/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_826/lstm_cell_826/recurrent_kernel/v
?
BAdam/lstm_826/lstm_cell_826/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_826/lstm_cell_826/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_826/lstm_cell_826/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_826/lstm_cell_826/bias/v
?
6Adam/lstm_826/lstm_cell_826/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_826/lstm_cell_826/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_827/lstm_cell_827/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_827/lstm_cell_827/kernel/v
?
8Adam/lstm_827/lstm_cell_827/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_827/lstm_cell_827/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_827/lstm_cell_827/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_827/lstm_cell_827/recurrent_kernel/v
?
BAdam/lstm_827/lstm_cell_827/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_827/lstm_cell_827/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_827/lstm_cell_827/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_827/lstm_cell_827/bias/v
?
6Adam/lstm_827/lstm_cell_827/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_827/lstm_cell_827/bias/v*
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
VARIABLE_VALUEdense_275/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_275/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_825/lstm_cell_825/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_825/lstm_cell_825/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_825/lstm_cell_825/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_826/lstm_cell_826/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_826/lstm_cell_826/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_826/lstm_cell_826/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_827/lstm_cell_827/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_827/lstm_cell_827/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_827/lstm_cell_827/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_275/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_275/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_825/lstm_cell_825/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_825/lstm_cell_825/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_825/lstm_cell_825/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_826/lstm_cell_826/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_826/lstm_cell_826/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_826/lstm_cell_826/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_827/lstm_cell_827/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_827/lstm_cell_827/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_827/lstm_cell_827/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_275/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_275/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_825/lstm_cell_825/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_825/lstm_cell_825/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_825/lstm_cell_825/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_826/lstm_cell_826/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_826/lstm_cell_826/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_826/lstm_cell_826/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_827/lstm_cell_827/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_827/lstm_cell_827/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_827/lstm_cell_827/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_825_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_825_inputlstm_825/lstm_cell_825/kernel'lstm_825/lstm_cell_825/recurrent_kernellstm_825/lstm_cell_825/biaslstm_826/lstm_cell_826/kernel'lstm_826/lstm_cell_826/recurrent_kernellstm_826/lstm_cell_826/biaslstm_827/lstm_cell_827/kernel'lstm_827/lstm_cell_827/recurrent_kernellstm_827/lstm_cell_827/biasdense_275/kerneldense_275/bias*
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
%__inference_signature_wrapper_4532398
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_275/kernel/Read/ReadVariableOp"dense_275/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_825/lstm_cell_825/kernel/Read/ReadVariableOp;lstm_825/lstm_cell_825/recurrent_kernel/Read/ReadVariableOp/lstm_825/lstm_cell_825/bias/Read/ReadVariableOp1lstm_826/lstm_cell_826/kernel/Read/ReadVariableOp;lstm_826/lstm_cell_826/recurrent_kernel/Read/ReadVariableOp/lstm_826/lstm_cell_826/bias/Read/ReadVariableOp1lstm_827/lstm_cell_827/kernel/Read/ReadVariableOp;lstm_827/lstm_cell_827/recurrent_kernel/Read/ReadVariableOp/lstm_827/lstm_cell_827/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_275/kernel/m/Read/ReadVariableOp)Adam/dense_275/bias/m/Read/ReadVariableOp8Adam/lstm_825/lstm_cell_825/kernel/m/Read/ReadVariableOpBAdam/lstm_825/lstm_cell_825/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_825/lstm_cell_825/bias/m/Read/ReadVariableOp8Adam/lstm_826/lstm_cell_826/kernel/m/Read/ReadVariableOpBAdam/lstm_826/lstm_cell_826/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_826/lstm_cell_826/bias/m/Read/ReadVariableOp8Adam/lstm_827/lstm_cell_827/kernel/m/Read/ReadVariableOpBAdam/lstm_827/lstm_cell_827/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_827/lstm_cell_827/bias/m/Read/ReadVariableOp+Adam/dense_275/kernel/v/Read/ReadVariableOp)Adam/dense_275/bias/v/Read/ReadVariableOp8Adam/lstm_825/lstm_cell_825/kernel/v/Read/ReadVariableOpBAdam/lstm_825/lstm_cell_825/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_825/lstm_cell_825/bias/v/Read/ReadVariableOp8Adam/lstm_826/lstm_cell_826/kernel/v/Read/ReadVariableOpBAdam/lstm_826/lstm_cell_826/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_826/lstm_cell_826/bias/v/Read/ReadVariableOp8Adam/lstm_827/lstm_cell_827/kernel/v/Read/ReadVariableOpBAdam/lstm_827/lstm_cell_827/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_827/lstm_cell_827/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4535610
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_275/kerneldense_275/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_825/lstm_cell_825/kernel'lstm_825/lstm_cell_825/recurrent_kernellstm_825/lstm_cell_825/biaslstm_826/lstm_cell_826/kernel'lstm_826/lstm_cell_826/recurrent_kernellstm_826/lstm_cell_826/biaslstm_827/lstm_cell_827/kernel'lstm_827/lstm_cell_827/recurrent_kernellstm_827/lstm_cell_827/biastotalcountAdam/dense_275/kernel/mAdam/dense_275/bias/m$Adam/lstm_825/lstm_cell_825/kernel/m.Adam/lstm_825/lstm_cell_825/recurrent_kernel/m"Adam/lstm_825/lstm_cell_825/bias/m$Adam/lstm_826/lstm_cell_826/kernel/m.Adam/lstm_826/lstm_cell_826/recurrent_kernel/m"Adam/lstm_826/lstm_cell_826/bias/m$Adam/lstm_827/lstm_cell_827/kernel/m.Adam/lstm_827/lstm_cell_827/recurrent_kernel/m"Adam/lstm_827/lstm_cell_827/bias/mAdam/dense_275/kernel/vAdam/dense_275/bias/v$Adam/lstm_825/lstm_cell_825/kernel/v.Adam/lstm_825/lstm_cell_825/recurrent_kernel/v"Adam/lstm_825/lstm_cell_825/bias/v$Adam/lstm_826/lstm_cell_826/kernel/v.Adam/lstm_826/lstm_cell_826/recurrent_kernel/v"Adam/lstm_826/lstm_cell_826/bias/v$Adam/lstm_827/lstm_cell_827/kernel/v.Adam/lstm_827/lstm_cell_827/recurrent_kernel/v"Adam/lstm_827/lstm_cell_827/bias/v*4
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
#__inference__traced_restore_4535740??+
?
?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532333
lstm_825_input#
lstm_825_4532306:	?#
lstm_825_4532308:	d?
lstm_825_4532310:	?#
lstm_826_4532313:	d?#
lstm_826_4532315:	2?
lstm_826_4532317:	?"
lstm_827_4532320:2("
lstm_827_4532322:
(
lstm_827_4532324:(#
dense_275_4532327:

dense_275_4532329:
identity??!dense_275/StatefulPartitionedCall? lstm_825/StatefulPartitionedCall? lstm_826/StatefulPartitionedCall? lstm_827/StatefulPartitionedCall?
 lstm_825/StatefulPartitionedCallStatefulPartitionedCalllstm_825_inputlstm_825_4532306lstm_825_4532308lstm_825_4532310*
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4531337?
 lstm_826/StatefulPartitionedCallStatefulPartitionedCall)lstm_825/StatefulPartitionedCall:output:0lstm_826_4532313lstm_826_4532315lstm_826_4532317*
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4531487?
 lstm_827/StatefulPartitionedCallStatefulPartitionedCall)lstm_826/StatefulPartitionedCall:output:0lstm_827_4532320lstm_827_4532322lstm_827_4532324*
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531637?
!dense_275/StatefulPartitionedCallStatefulPartitionedCall)lstm_827/StatefulPartitionedCall:output:0dense_275_4532327dense_275_4532329*
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655y
IdentityIdentity*dense_275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_275/StatefulPartitionedCall!^lstm_825/StatefulPartitionedCall!^lstm_826/StatefulPartitionedCall!^lstm_827/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_275/StatefulPartitionedCall!dense_275/StatefulPartitionedCall2D
 lstm_825/StatefulPartitionedCall lstm_825/StatefulPartitionedCall2D
 lstm_826/StatefulPartitionedCall lstm_826/StatefulPartitionedCall2D
 lstm_827/StatefulPartitionedCall lstm_827/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_825_input
?C
?

lstm_826_while_body_4533077.
*lstm_826_while_lstm_826_while_loop_counter4
0lstm_826_while_lstm_826_while_maximum_iterations
lstm_826_while_placeholder 
lstm_826_while_placeholder_1 
lstm_826_while_placeholder_2 
lstm_826_while_placeholder_3-
)lstm_826_while_lstm_826_strided_slice_1_0i
elstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0:	d?R
?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?M
>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
lstm_826_while_identity
lstm_826_while_identity_1
lstm_826_while_identity_2
lstm_826_while_identity_3
lstm_826_while_identity_4
lstm_826_while_identity_5+
'lstm_826_while_lstm_826_strided_slice_1g
clstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensorN
;lstm_826_while_lstm_cell_748_matmul_readvariableop_resource:	d?P
=lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource:	2?K
<lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource:	???3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp?2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp?4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp?
@lstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_826/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0lstm_826_while_placeholderIlstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_826/while/lstm_cell_748/MatMulMatMul9lstm_826/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_826/while/lstm_cell_748/MatMul_1MatMullstm_826_while_placeholder_2<lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_826/while/lstm_cell_748/addAddV2-lstm_826/while/lstm_cell_748/MatMul:product:0/lstm_826/while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_826/while/lstm_cell_748/BiasAddBiasAdd$lstm_826/while/lstm_cell_748/add:z:0;lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_826/while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_826/while/lstm_cell_748/splitSplit5lstm_826/while/lstm_cell_748/split/split_dim:output:0-lstm_826/while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_826/while/lstm_cell_748/SigmoidSigmoid+lstm_826/while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_826/while/lstm_cell_748/Sigmoid_1Sigmoid+lstm_826/while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_826/while/lstm_cell_748/mulMul*lstm_826/while/lstm_cell_748/Sigmoid_1:y:0lstm_826_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_826/while/lstm_cell_748/ReluRelu+lstm_826/while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/mul_1Mul(lstm_826/while/lstm_cell_748/Sigmoid:y:0/lstm_826/while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/add_1AddV2$lstm_826/while/lstm_cell_748/mul:z:0&lstm_826/while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_826/while/lstm_cell_748/Sigmoid_2Sigmoid+lstm_826/while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_826/while/lstm_cell_748/Relu_1Relu&lstm_826/while/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/mul_2Mul*lstm_826/while/lstm_cell_748/Sigmoid_2:y:01lstm_826/while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_826/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_826_while_placeholder_1lstm_826_while_placeholder&lstm_826/while/lstm_cell_748/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_826/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_826/while/addAddV2lstm_826_while_placeholderlstm_826/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_826/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_826/while/add_1AddV2*lstm_826_while_lstm_826_while_loop_counterlstm_826/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_826/while/IdentityIdentitylstm_826/while/add_1:z:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_1Identity0lstm_826_while_lstm_826_while_maximum_iterations^lstm_826/while/NoOp*
T0*
_output_shapes
: t
lstm_826/while/Identity_2Identitylstm_826/while/add:z:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_3IdentityClstm_826/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_4Identity&lstm_826/while/lstm_cell_748/mul_2:z:0^lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_826/while/Identity_5Identity&lstm_826/while/lstm_cell_748/add_1:z:0^lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_826/while/NoOpNoOp4^lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp3^lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp5^lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_826_while_identity lstm_826/while/Identity:output:0"?
lstm_826_while_identity_1"lstm_826/while/Identity_1:output:0"?
lstm_826_while_identity_2"lstm_826/while/Identity_2:output:0"?
lstm_826_while_identity_3"lstm_826/while/Identity_3:output:0"?
lstm_826_while_identity_4"lstm_826/while/Identity_4:output:0"?
lstm_826_while_identity_5"lstm_826/while/Identity_5:output:0"T
'lstm_826_while_lstm_826_strided_slice_1)lstm_826_while_lstm_826_strided_slice_1_0"~
<lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0"?
=lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0"|
;lstm_826_while_lstm_cell_748_matmul_readvariableop_resource=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0"?
clstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensorelstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp2h
2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp2l
4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4533552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531853

inputs>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4531769*
condR
while_cond_4531768*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4533551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4533551___redundant_placeholder05
1while_while_cond_4533551___redundant_placeholder15
1while_while_cond_4533551___redundant_placeholder25
1while_while_cond_4533551___redundant_placeholder3
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534538

inputs?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4534454*
condR
while_cond_4534453*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_827_layer_call_fn_4534571

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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531637o
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
while_body_4532099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4531402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531402___redundant_placeholder05
1while_while_cond_4531402___redundant_placeholder15
1while_while_cond_4531402___redundant_placeholder25
1while_while_cond_4531402___redundant_placeholder3
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535435

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
?
E__inference_lstm_826_layer_call_and_return_conditional_losses_4530638

inputs(
lstm_cell_748_4530556:	d?(
lstm_cell_748_4530558:	2?$
lstm_cell_748_4530560:	?
identity??%lstm_cell_748/StatefulPartitionedCall?while;
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
%lstm_cell_748/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_748_4530556lstm_cell_748_4530558lstm_cell_748_4530560*
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530555n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_748_4530556lstm_cell_748_4530558lstm_cell_748_4530560*
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
while_body_4530569*
condR
while_cond_4530568*K
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
NoOpNoOp&^lstm_cell_748/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_748/StatefulPartitionedCall%lstm_cell_748/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_748_layer_call_fn_4535305

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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530701o
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
lstm_825_while_cond_4532510.
*lstm_825_while_lstm_825_while_loop_counter4
0lstm_825_while_lstm_825_while_maximum_iterations
lstm_825_while_placeholder 
lstm_825_while_placeholder_1 
lstm_825_while_placeholder_2 
lstm_825_while_placeholder_30
,lstm_825_while_less_lstm_825_strided_slice_1G
Clstm_825_while_lstm_825_while_cond_4532510___redundant_placeholder0G
Clstm_825_while_lstm_825_while_cond_4532510___redundant_placeholder1G
Clstm_825_while_lstm_825_while_cond_4532510___redundant_placeholder2G
Clstm_825_while_lstm_825_while_cond_4532510___redundant_placeholder3
lstm_825_while_identity
?
lstm_825/while/LessLesslstm_825_while_placeholder,lstm_825_while_less_lstm_825_strided_slice_1*
T0*
_output_shapes
: ]
lstm_825/while/IdentityIdentitylstm_825/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_825_while_identity lstm_825/while/Identity:output:0*(
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4530905

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
?
/__inference_lstm_cell_748_layer_call_fn_4535288

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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530555o
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
??
?
#__inference__traced_restore_4535740
file_prefix3
!assignvariableop_dense_275_kernel:
/
!assignvariableop_1_dense_275_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_825_lstm_cell_825_kernel:	?M
:assignvariableop_8_lstm_825_lstm_cell_825_recurrent_kernel:	d?=
.assignvariableop_9_lstm_825_lstm_cell_825_bias:	?D
1assignvariableop_10_lstm_826_lstm_cell_826_kernel:	d?N
;assignvariableop_11_lstm_826_lstm_cell_826_recurrent_kernel:	2?>
/assignvariableop_12_lstm_826_lstm_cell_826_bias:	?C
1assignvariableop_13_lstm_827_lstm_cell_827_kernel:2(M
;assignvariableop_14_lstm_827_lstm_cell_827_recurrent_kernel:
(=
/assignvariableop_15_lstm_827_lstm_cell_827_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_275_kernel_m:
7
)assignvariableop_19_adam_dense_275_bias_m:K
8assignvariableop_20_adam_lstm_825_lstm_cell_825_kernel_m:	?U
Bassignvariableop_21_adam_lstm_825_lstm_cell_825_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_825_lstm_cell_825_bias_m:	?K
8assignvariableop_23_adam_lstm_826_lstm_cell_826_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_826_lstm_cell_826_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_826_lstm_cell_826_bias_m:	?J
8assignvariableop_26_adam_lstm_827_lstm_cell_827_kernel_m:2(T
Bassignvariableop_27_adam_lstm_827_lstm_cell_827_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_827_lstm_cell_827_bias_m:(=
+assignvariableop_29_adam_dense_275_kernel_v:
7
)assignvariableop_30_adam_dense_275_bias_v:K
8assignvariableop_31_adam_lstm_825_lstm_cell_825_kernel_v:	?U
Bassignvariableop_32_adam_lstm_825_lstm_cell_825_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_825_lstm_cell_825_bias_v:	?K
8assignvariableop_34_adam_lstm_826_lstm_cell_826_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_826_lstm_cell_826_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_826_lstm_cell_826_bias_v:	?J
8assignvariableop_37_adam_lstm_827_lstm_cell_827_kernel_v:2(T
Bassignvariableop_38_adam_lstm_827_lstm_cell_827_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_827_lstm_cell_827_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_275_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_275_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_825_lstm_cell_825_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_825_lstm_cell_825_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_825_lstm_cell_825_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_826_lstm_cell_826_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_826_lstm_cell_826_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_826_lstm_cell_826_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_827_lstm_cell_827_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_827_lstm_cell_827_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_827_lstm_cell_827_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_275_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_275_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_825_lstm_cell_825_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_825_lstm_cell_825_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_825_lstm_cell_825_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_826_lstm_cell_826_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_826_lstm_cell_826_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_826_lstm_cell_826_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_827_lstm_cell_827_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_827_lstm_cell_827_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_827_lstm_cell_827_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_275_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_275_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_825_lstm_cell_825_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_825_lstm_cell_825_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_825_lstm_cell_825_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_826_lstm_cell_826_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_826_lstm_cell_826_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_826_lstm_cell_826_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_827_lstm_cell_827_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_827_lstm_cell_827_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_827_lstm_cell_827_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4531553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4531662

inputs#
lstm_825_4531338:	?#
lstm_825_4531340:	d?
lstm_825_4531342:	?#
lstm_826_4531488:	d?#
lstm_826_4531490:	2?
lstm_826_4531492:	?"
lstm_827_4531638:2("
lstm_827_4531640:
(
lstm_827_4531642:(#
dense_275_4531656:

dense_275_4531658:
identity??!dense_275/StatefulPartitionedCall? lstm_825/StatefulPartitionedCall? lstm_826/StatefulPartitionedCall? lstm_827/StatefulPartitionedCall?
 lstm_825/StatefulPartitionedCallStatefulPartitionedCallinputslstm_825_4531338lstm_825_4531340lstm_825_4531342*
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4531337?
 lstm_826/StatefulPartitionedCallStatefulPartitionedCall)lstm_825/StatefulPartitionedCall:output:0lstm_826_4531488lstm_826_4531490lstm_826_4531492*
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4531487?
 lstm_827/StatefulPartitionedCallStatefulPartitionedCall)lstm_826/StatefulPartitionedCall:output:0lstm_827_4531638lstm_827_4531640lstm_827_4531642*
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531637?
!dense_275/StatefulPartitionedCallStatefulPartitionedCall)lstm_827/StatefulPartitionedCall:output:0dense_275_4531656dense_275_4531658*
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655y
IdentityIdentity*dense_275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_275/StatefulPartitionedCall!^lstm_825/StatefulPartitionedCall!^lstm_826/StatefulPartitionedCall!^lstm_827/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_275/StatefulPartitionedCall!dense_275/StatefulPartitionedCall2D
 lstm_825/StatefulPartitionedCall lstm_825/StatefulPartitionedCall2D
 lstm_826/StatefulPartitionedCall lstm_826/StatefulPartitionedCall2D
 lstm_827/StatefulPartitionedCall lstm_827/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4530919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_749_4530943_0:2(/
while_lstm_cell_749_4530945_0:
(+
while_lstm_cell_749_4530947_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_749_4530943:2(-
while_lstm_cell_749_4530945:
()
while_lstm_cell_749_4530947:(??+while/lstm_cell_749/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_749/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_749_4530943_0while_lstm_cell_749_4530945_0while_lstm_cell_749_4530947_0*
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4530905?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_749/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_749/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_749/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_749/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_749_4530943while_lstm_cell_749_4530943_0"<
while_lstm_cell_749_4530945while_lstm_cell_749_4530945_0"<
while_lstm_cell_749_4530947while_lstm_cell_749_4530947_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_749/StatefulPartitionedCall+while/lstm_cell_749/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4531337

inputs?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4531253*
condR
while_cond_4531252*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_826_layer_call_and_return_conditional_losses_4531487

inputs?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4531403*
condR
while_cond_4531402*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530351

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
while_cond_4533694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4533694___redundant_placeholder05
1while_while_cond_4533694___redundant_placeholder15
1while_while_cond_4533694___redundant_placeholder25
1while_while_cond_4533694___redundant_placeholder3
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531637

inputs>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4531553*
condR
while_cond_4531552*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_825_layer_call_and_return_conditional_losses_4530479

inputs(
lstm_cell_747_4530397:	?(
lstm_cell_747_4530399:	d?$
lstm_cell_747_4530401:	?
identity??%lstm_cell_747/StatefulPartitionedCall?while;
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
%lstm_cell_747/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_747_4530397lstm_cell_747_4530399lstm_cell_747_4530401*
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530351n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_747_4530397lstm_cell_747_4530399lstm_cell_747_4530401*
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
while_body_4530410*
condR
while_cond_4530409*K
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
NoOpNoOp&^lstm_cell_747/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_747/StatefulPartitionedCall%lstm_cell_747/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4534926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534926___redundant_placeholder05
1while_while_cond_4534926___redundant_placeholder15
1while_while_cond_4534926___redundant_placeholder25
1while_while_cond_4534926___redundant_placeholder3
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
while_body_4534927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_275_layer_call_fn_4532452

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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532251o
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534252
inputs_0?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4534168*
condR
while_cond_4534167*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_827_layer_call_fn_4534560
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531179o
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
while_cond_4530568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4530568___redundant_placeholder05
1while_while_cond_4530568___redundant_placeholder15
1while_while_cond_4530568___redundant_placeholder25
1while_while_cond_4530568___redundant_placeholder3
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
lstm_826_while_cond_4533076.
*lstm_826_while_lstm_826_while_loop_counter4
0lstm_826_while_lstm_826_while_maximum_iterations
lstm_826_while_placeholder 
lstm_826_while_placeholder_1 
lstm_826_while_placeholder_2 
lstm_826_while_placeholder_30
,lstm_826_while_less_lstm_826_strided_slice_1G
Clstm_826_while_lstm_826_while_cond_4533076___redundant_placeholder0G
Clstm_826_while_lstm_826_while_cond_4533076___redundant_placeholder1G
Clstm_826_while_lstm_826_while_cond_4533076___redundant_placeholder2G
Clstm_826_while_lstm_826_while_cond_4533076___redundant_placeholder3
lstm_826_while_identity
?
lstm_826/while/LessLesslstm_826_while_placeholder,lstm_826_while_less_lstm_826_strided_slice_1*
T0*
_output_shapes
: ]
lstm_826/while/IdentityIdentitylstm_826/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_826_while_identity lstm_826/while/Identity:output:0*(
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
while_body_4530760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_748_4530784_0:	d?0
while_lstm_cell_748_4530786_0:	2?,
while_lstm_cell_748_4530788_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_748_4530784:	d?.
while_lstm_cell_748_4530786:	2?*
while_lstm_cell_748_4530788:	???+while/lstm_cell_748/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_748/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_748_4530784_0while_lstm_cell_748_4530786_0while_lstm_cell_748_4530788_0*
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530701?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_748/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_748/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_748/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_748/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_748_4530784while_lstm_cell_748_4530784_0"<
while_lstm_cell_748_4530786while_lstm_cell_748_4530786_0"<
while_lstm_cell_748_4530788while_lstm_cell_748_4530788_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_748/StatefulPartitionedCall+while/lstm_cell_748/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_275_lstm_827_while_body_4530048L
Hsequential_275_lstm_827_while_sequential_275_lstm_827_while_loop_counterR
Nsequential_275_lstm_827_while_sequential_275_lstm_827_while_maximum_iterations-
)sequential_275_lstm_827_while_placeholder/
+sequential_275_lstm_827_while_placeholder_1/
+sequential_275_lstm_827_while_placeholder_2/
+sequential_275_lstm_827_while_placeholder_3K
Gsequential_275_lstm_827_while_sequential_275_lstm_827_strided_slice_1_0?
?sequential_275_lstm_827_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_827_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_275_lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0:2(`
Nsequential_275_lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0:
([
Msequential_275_lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0:(*
&sequential_275_lstm_827_while_identity,
(sequential_275_lstm_827_while_identity_1,
(sequential_275_lstm_827_while_identity_2,
(sequential_275_lstm_827_while_identity_3,
(sequential_275_lstm_827_while_identity_4,
(sequential_275_lstm_827_while_identity_5I
Esequential_275_lstm_827_while_sequential_275_lstm_827_strided_slice_1?
?sequential_275_lstm_827_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_827_tensorarrayunstack_tensorlistfromtensor\
Jsequential_275_lstm_827_while_lstm_cell_749_matmul_readvariableop_resource:2(^
Lsequential_275_lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource:
(Y
Ksequential_275_lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource:(??Bsequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp?Asequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp?Csequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp?
Osequential_275/lstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_275/lstm_827/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_275_lstm_827_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_827_tensorarrayunstack_tensorlistfromtensor_0)sequential_275_lstm_827_while_placeholderXsequential_275/lstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOpLsequential_275_lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_275/lstm_827/while/lstm_cell_749/MatMulMatMulHsequential_275/lstm_827/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOpNsequential_275_lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_275/lstm_827/while/lstm_cell_749/MatMul_1MatMul+sequential_275_lstm_827_while_placeholder_2Ksequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_275/lstm_827/while/lstm_cell_749/addAddV2<sequential_275/lstm_827/while/lstm_cell_749/MatMul:product:0>sequential_275/lstm_827/while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOpMsequential_275_lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_275/lstm_827/while/lstm_cell_749/BiasAddBiasAdd3sequential_275/lstm_827/while/lstm_cell_749/add:z:0Jsequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_275/lstm_827/while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_275/lstm_827/while/lstm_cell_749/splitSplitDsequential_275/lstm_827/while/lstm_cell_749/split/split_dim:output:0<sequential_275/lstm_827/while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_275/lstm_827/while/lstm_cell_749/SigmoidSigmoid:sequential_275/lstm_827/while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_275/lstm_827/while/lstm_cell_749/Sigmoid_1Sigmoid:sequential_275/lstm_827/while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_275/lstm_827/while/lstm_cell_749/mulMul9sequential_275/lstm_827/while/lstm_cell_749/Sigmoid_1:y:0+sequential_275_lstm_827_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_275/lstm_827/while/lstm_cell_749/ReluRelu:sequential_275/lstm_827/while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_275/lstm_827/while/lstm_cell_749/mul_1Mul7sequential_275/lstm_827/while/lstm_cell_749/Sigmoid:y:0>sequential_275/lstm_827/while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_275/lstm_827/while/lstm_cell_749/add_1AddV23sequential_275/lstm_827/while/lstm_cell_749/mul:z:05sequential_275/lstm_827/while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_275/lstm_827/while/lstm_cell_749/Sigmoid_2Sigmoid:sequential_275/lstm_827/while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_275/lstm_827/while/lstm_cell_749/Relu_1Relu5sequential_275/lstm_827/while/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_275/lstm_827/while/lstm_cell_749/mul_2Mul9sequential_275/lstm_827/while/lstm_cell_749/Sigmoid_2:y:0@sequential_275/lstm_827/while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_275/lstm_827/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_275_lstm_827_while_placeholder_1)sequential_275_lstm_827_while_placeholder5sequential_275/lstm_827/while/lstm_cell_749/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_275/lstm_827/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_275/lstm_827/while/addAddV2)sequential_275_lstm_827_while_placeholder,sequential_275/lstm_827/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_275/lstm_827/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_275/lstm_827/while/add_1AddV2Hsequential_275_lstm_827_while_sequential_275_lstm_827_while_loop_counter.sequential_275/lstm_827/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_275/lstm_827/while/IdentityIdentity'sequential_275/lstm_827/while/add_1:z:0#^sequential_275/lstm_827/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_827/while/Identity_1IdentityNsequential_275_lstm_827_while_sequential_275_lstm_827_while_maximum_iterations#^sequential_275/lstm_827/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_827/while/Identity_2Identity%sequential_275/lstm_827/while/add:z:0#^sequential_275/lstm_827/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_827/while/Identity_3IdentityRsequential_275/lstm_827/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_275/lstm_827/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_827/while/Identity_4Identity5sequential_275/lstm_827/while/lstm_cell_749/mul_2:z:0#^sequential_275/lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_275/lstm_827/while/Identity_5Identity5sequential_275/lstm_827/while/lstm_cell_749/add_1:z:0#^sequential_275/lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_275/lstm_827/while/NoOpNoOpC^sequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOpB^sequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOpD^sequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_275_lstm_827_while_identity/sequential_275/lstm_827/while/Identity:output:0"]
(sequential_275_lstm_827_while_identity_11sequential_275/lstm_827/while/Identity_1:output:0"]
(sequential_275_lstm_827_while_identity_21sequential_275/lstm_827/while/Identity_2:output:0"]
(sequential_275_lstm_827_while_identity_31sequential_275/lstm_827/while/Identity_3:output:0"]
(sequential_275_lstm_827_while_identity_41sequential_275/lstm_827/while/Identity_4:output:0"]
(sequential_275_lstm_827_while_identity_51sequential_275/lstm_827/while/Identity_5:output:0"?
Ksequential_275_lstm_827_while_lstm_cell_749_biasadd_readvariableop_resourceMsequential_275_lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0"?
Lsequential_275_lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resourceNsequential_275_lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0"?
Jsequential_275_lstm_827_while_lstm_cell_749_matmul_readvariableop_resourceLsequential_275_lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0"?
Esequential_275_lstm_827_while_sequential_275_lstm_827_strided_slice_1Gsequential_275_lstm_827_while_sequential_275_lstm_827_strided_slice_1_0"?
?sequential_275_lstm_827_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_827_tensorarrayunstack_tensorlistfromtensor?sequential_275_lstm_827_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_827_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOpBsequential_275/lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp2?
Asequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOpAsequential_275/lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp2?
Csequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOpCsequential_275/lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533922

inputs?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4533838*
condR
while_cond_4533837*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_825_while_body_4532511.
*lstm_825_while_lstm_825_while_loop_counter4
0lstm_825_while_lstm_825_while_maximum_iterations
lstm_825_while_placeholder 
lstm_825_while_placeholder_1 
lstm_825_while_placeholder_2 
lstm_825_while_placeholder_3-
)lstm_825_while_lstm_825_strided_slice_1_0i
elstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0:	?R
?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?M
>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
lstm_825_while_identity
lstm_825_while_identity_1
lstm_825_while_identity_2
lstm_825_while_identity_3
lstm_825_while_identity_4
lstm_825_while_identity_5+
'lstm_825_while_lstm_825_strided_slice_1g
clstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensorN
;lstm_825_while_lstm_cell_747_matmul_readvariableop_resource:	?P
=lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource:	d?K
<lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource:	???3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp?2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp?4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp?
@lstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_825/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0lstm_825_while_placeholderIlstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_825/while/lstm_cell_747/MatMulMatMul9lstm_825/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_825/while/lstm_cell_747/MatMul_1MatMullstm_825_while_placeholder_2<lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_825/while/lstm_cell_747/addAddV2-lstm_825/while/lstm_cell_747/MatMul:product:0/lstm_825/while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_825/while/lstm_cell_747/BiasAddBiasAdd$lstm_825/while/lstm_cell_747/add:z:0;lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_825/while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_825/while/lstm_cell_747/splitSplit5lstm_825/while/lstm_cell_747/split/split_dim:output:0-lstm_825/while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_825/while/lstm_cell_747/SigmoidSigmoid+lstm_825/while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_825/while/lstm_cell_747/Sigmoid_1Sigmoid+lstm_825/while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_825/while/lstm_cell_747/mulMul*lstm_825/while/lstm_cell_747/Sigmoid_1:y:0lstm_825_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_825/while/lstm_cell_747/ReluRelu+lstm_825/while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/mul_1Mul(lstm_825/while/lstm_cell_747/Sigmoid:y:0/lstm_825/while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/add_1AddV2$lstm_825/while/lstm_cell_747/mul:z:0&lstm_825/while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_825/while/lstm_cell_747/Sigmoid_2Sigmoid+lstm_825/while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_825/while/lstm_cell_747/Relu_1Relu&lstm_825/while/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/mul_2Mul*lstm_825/while/lstm_cell_747/Sigmoid_2:y:01lstm_825/while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_825/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_825_while_placeholder_1lstm_825_while_placeholder&lstm_825/while/lstm_cell_747/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_825/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_825/while/addAddV2lstm_825_while_placeholderlstm_825/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_825/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_825/while/add_1AddV2*lstm_825_while_lstm_825_while_loop_counterlstm_825/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_825/while/IdentityIdentitylstm_825/while/add_1:z:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_1Identity0lstm_825_while_lstm_825_while_maximum_iterations^lstm_825/while/NoOp*
T0*
_output_shapes
: t
lstm_825/while/Identity_2Identitylstm_825/while/add:z:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_3IdentityClstm_825/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_4Identity&lstm_825/while/lstm_cell_747/mul_2:z:0^lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_825/while/Identity_5Identity&lstm_825/while/lstm_cell_747/add_1:z:0^lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_825/while/NoOpNoOp4^lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp3^lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp5^lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_825_while_identity lstm_825/while/Identity:output:0"?
lstm_825_while_identity_1"lstm_825/while/Identity_1:output:0"?
lstm_825_while_identity_2"lstm_825/while/Identity_2:output:0"?
lstm_825_while_identity_3"lstm_825/while/Identity_3:output:0"?
lstm_825_while_identity_4"lstm_825/while/Identity_4:output:0"?
lstm_825_while_identity_5"lstm_825/while/Identity_5:output:0"T
'lstm_825_while_lstm_825_strided_slice_1)lstm_825_while_lstm_825_strided_slice_1_0"~
<lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0"?
=lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0"|
;lstm_825_while_lstm_cell_747_matmul_readvariableop_resource=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0"?
clstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensorelstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp2h
2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp2l
4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4534025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4531933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531933___redundant_placeholder05
1while_while_cond_4531933___redundant_placeholder15
1while_while_cond_4531933___redundant_placeholder25
1while_while_cond_4531933___redundant_placeholder3
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530205

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
while_body_4530569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_748_4530593_0:	d?0
while_lstm_cell_748_4530595_0:	2?,
while_lstm_cell_748_4530597_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_748_4530593:	d?.
while_lstm_cell_748_4530595:	2?*
while_lstm_cell_748_4530597:	???+while/lstm_cell_748/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_748/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_748_4530593_0while_lstm_cell_748_4530595_0while_lstm_cell_748_4530597_0*
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530555?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_748/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_748/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_748/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_748/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_748_4530593while_lstm_cell_748_4530593_0"<
while_lstm_cell_748_4530595while_lstm_cell_748_4530595_0"<
while_lstm_cell_748_4530597while_lstm_cell_748_4530597_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_748/StatefulPartitionedCall+while/lstm_cell_748/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535154

inputs>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4535070*
condR
while_cond_4535069*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4530409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4530409___redundant_placeholder05
1while_while_cond_4530409___redundant_placeholder15
1while_while_cond_4530409___redundant_placeholder25
1while_while_cond_4530409___redundant_placeholder3
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
while_body_4530410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_747_4530434_0:	?0
while_lstm_cell_747_4530436_0:	d?,
while_lstm_cell_747_4530438_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_747_4530434:	?.
while_lstm_cell_747_4530436:	d?*
while_lstm_cell_747_4530438:	???+while/lstm_cell_747/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_747/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_747_4530434_0while_lstm_cell_747_4530436_0while_lstm_cell_747_4530438_0*
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530351?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_747/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_747/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_747/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_747/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_747_4530434while_lstm_cell_747_4530434_0"<
while_lstm_cell_747_4530436while_lstm_cell_747_4530436_0"<
while_lstm_cell_747_4530438while_lstm_cell_747_4530438_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_747/StatefulPartitionedCall+while/lstm_cell_747/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4534640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534640___redundant_placeholder05
1while_while_cond_4534640___redundant_placeholder15
1while_while_cond_4534640___redundant_placeholder25
1while_while_cond_4534640___redundant_placeholder3
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535467

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
while_cond_4532098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4532098___redundant_placeholder05
1while_while_cond_4532098___redundant_placeholder15
1while_while_cond_4532098___redundant_placeholder25
1while_while_cond_4532098___redundant_placeholder3
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
*__inference_lstm_825_layer_call_fn_4533339

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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4531337s
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
while_cond_4534783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534783___redundant_placeholder05
1while_while_cond_4534783___redundant_placeholder15
1while_while_cond_4534783___redundant_placeholder25
1while_while_cond_4534783___redundant_placeholder3
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
??
?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532879

inputsH
5lstm_825_lstm_cell_747_matmul_readvariableop_resource:	?J
7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource:	d?E
6lstm_825_lstm_cell_747_biasadd_readvariableop_resource:	?H
5lstm_826_lstm_cell_748_matmul_readvariableop_resource:	d?J
7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource:	2?E
6lstm_826_lstm_cell_748_biasadd_readvariableop_resource:	?G
5lstm_827_lstm_cell_749_matmul_readvariableop_resource:2(I
7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource:
(D
6lstm_827_lstm_cell_749_biasadd_readvariableop_resource:(:
(dense_275_matmul_readvariableop_resource:
7
)dense_275_biasadd_readvariableop_resource:
identity?? dense_275/BiasAdd/ReadVariableOp?dense_275/MatMul/ReadVariableOp?-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp?,lstm_825/lstm_cell_747/MatMul/ReadVariableOp?.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp?lstm_825/while?-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp?,lstm_826/lstm_cell_748/MatMul/ReadVariableOp?.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp?lstm_826/while?-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp?,lstm_827/lstm_cell_749/MatMul/ReadVariableOp?.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp?lstm_827/whileD
lstm_825/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_825/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_825/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_825/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_sliceStridedSlicelstm_825/Shape:output:0%lstm_825/strided_slice/stack:output:0'lstm_825/strided_slice/stack_1:output:0'lstm_825/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_825/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_825/zeros/packedPacklstm_825/strided_slice:output:0 lstm_825/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_825/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_825/zerosFilllstm_825/zeros/packed:output:0lstm_825/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_825/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_825/zeros_1/packedPacklstm_825/strided_slice:output:0"lstm_825/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_825/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_825/zeros_1Fill lstm_825/zeros_1/packed:output:0lstm_825/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_825/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_825/transpose	Transposeinputs lstm_825/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_825/Shape_1Shapelstm_825/transpose:y:0*
T0*
_output_shapes
:h
lstm_825/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_825/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_1StridedSlicelstm_825/Shape_1:output:0'lstm_825/strided_slice_1/stack:output:0)lstm_825/strided_slice_1/stack_1:output:0)lstm_825/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_825/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_825/TensorArrayV2TensorListReserve-lstm_825/TensorArrayV2/element_shape:output:0!lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_825/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_825/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_825/transpose:y:0Glstm_825/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_825/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_825/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_2StridedSlicelstm_825/transpose:y:0'lstm_825/strided_slice_2/stack:output:0)lstm_825/strided_slice_2/stack_1:output:0)lstm_825/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_825/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp5lstm_825_lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_825/lstm_cell_747/MatMulMatMul!lstm_825/strided_slice_2:output:04lstm_825/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_825/lstm_cell_747/MatMul_1MatMullstm_825/zeros:output:06lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_825/lstm_cell_747/addAddV2'lstm_825/lstm_cell_747/MatMul:product:0)lstm_825/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp6lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_825/lstm_cell_747/BiasAddBiasAddlstm_825/lstm_cell_747/add:z:05lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_825/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_825/lstm_cell_747/splitSplit/lstm_825/lstm_cell_747/split/split_dim:output:0'lstm_825/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_825/lstm_cell_747/SigmoidSigmoid%lstm_825/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_825/lstm_cell_747/Sigmoid_1Sigmoid%lstm_825/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mulMul$lstm_825/lstm_cell_747/Sigmoid_1:y:0lstm_825/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_825/lstm_cell_747/ReluRelu%lstm_825/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mul_1Mul"lstm_825/lstm_cell_747/Sigmoid:y:0)lstm_825/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/add_1AddV2lstm_825/lstm_cell_747/mul:z:0 lstm_825/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_825/lstm_cell_747/Sigmoid_2Sigmoid%lstm_825/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_825/lstm_cell_747/Relu_1Relu lstm_825/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mul_2Mul$lstm_825/lstm_cell_747/Sigmoid_2:y:0+lstm_825/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_825/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_825/TensorArrayV2_1TensorListReserve/lstm_825/TensorArrayV2_1/element_shape:output:0!lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_825/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_825/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_825/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_825/whileWhile$lstm_825/while/loop_counter:output:0*lstm_825/while/maximum_iterations:output:0lstm_825/time:output:0!lstm_825/TensorArrayV2_1:handle:0lstm_825/zeros:output:0lstm_825/zeros_1:output:0!lstm_825/strided_slice_1:output:0@lstm_825/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_825_lstm_cell_747_matmul_readvariableop_resource7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource6lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
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
lstm_825_while_body_4532511*'
condR
lstm_825_while_cond_4532510*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_825/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_825/TensorArrayV2Stack/TensorListStackTensorListStacklstm_825/while:output:3Blstm_825/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_825/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_825/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_3StridedSlice4lstm_825/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_825/strided_slice_3/stack:output:0)lstm_825/strided_slice_3/stack_1:output:0)lstm_825/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_825/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_825/transpose_1	Transpose4lstm_825/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_825/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_825/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_826/ShapeShapelstm_825/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_826/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_826/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_826/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_sliceStridedSlicelstm_826/Shape:output:0%lstm_826/strided_slice/stack:output:0'lstm_826/strided_slice/stack_1:output:0'lstm_826/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_826/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_826/zeros/packedPacklstm_826/strided_slice:output:0 lstm_826/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_826/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_826/zerosFilllstm_826/zeros/packed:output:0lstm_826/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_826/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_826/zeros_1/packedPacklstm_826/strided_slice:output:0"lstm_826/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_826/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_826/zeros_1Fill lstm_826/zeros_1/packed:output:0lstm_826/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_826/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_826/transpose	Transposelstm_825/transpose_1:y:0 lstm_826/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_826/Shape_1Shapelstm_826/transpose:y:0*
T0*
_output_shapes
:h
lstm_826/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_826/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_1StridedSlicelstm_826/Shape_1:output:0'lstm_826/strided_slice_1/stack:output:0)lstm_826/strided_slice_1/stack_1:output:0)lstm_826/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_826/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_826/TensorArrayV2TensorListReserve-lstm_826/TensorArrayV2/element_shape:output:0!lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_826/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_826/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_826/transpose:y:0Glstm_826/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_826/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_826/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_2StridedSlicelstm_826/transpose:y:0'lstm_826/strided_slice_2/stack:output:0)lstm_826/strided_slice_2/stack_1:output:0)lstm_826/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_826/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp5lstm_826_lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_826/lstm_cell_748/MatMulMatMul!lstm_826/strided_slice_2:output:04lstm_826/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_826/lstm_cell_748/MatMul_1MatMullstm_826/zeros:output:06lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_826/lstm_cell_748/addAddV2'lstm_826/lstm_cell_748/MatMul:product:0)lstm_826/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp6lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_826/lstm_cell_748/BiasAddBiasAddlstm_826/lstm_cell_748/add:z:05lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_826/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_826/lstm_cell_748/splitSplit/lstm_826/lstm_cell_748/split/split_dim:output:0'lstm_826/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_826/lstm_cell_748/SigmoidSigmoid%lstm_826/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_826/lstm_cell_748/Sigmoid_1Sigmoid%lstm_826/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mulMul$lstm_826/lstm_cell_748/Sigmoid_1:y:0lstm_826/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_826/lstm_cell_748/ReluRelu%lstm_826/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mul_1Mul"lstm_826/lstm_cell_748/Sigmoid:y:0)lstm_826/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/add_1AddV2lstm_826/lstm_cell_748/mul:z:0 lstm_826/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_826/lstm_cell_748/Sigmoid_2Sigmoid%lstm_826/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_826/lstm_cell_748/Relu_1Relu lstm_826/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mul_2Mul$lstm_826/lstm_cell_748/Sigmoid_2:y:0+lstm_826/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_826/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_826/TensorArrayV2_1TensorListReserve/lstm_826/TensorArrayV2_1/element_shape:output:0!lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_826/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_826/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_826/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_826/whileWhile$lstm_826/while/loop_counter:output:0*lstm_826/while/maximum_iterations:output:0lstm_826/time:output:0!lstm_826/TensorArrayV2_1:handle:0lstm_826/zeros:output:0lstm_826/zeros_1:output:0!lstm_826/strided_slice_1:output:0@lstm_826/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_826_lstm_cell_748_matmul_readvariableop_resource7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource6lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
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
lstm_826_while_body_4532650*'
condR
lstm_826_while_cond_4532649*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_826/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_826/TensorArrayV2Stack/TensorListStackTensorListStacklstm_826/while:output:3Blstm_826/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_826/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_826/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_3StridedSlice4lstm_826/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_826/strided_slice_3/stack:output:0)lstm_826/strided_slice_3/stack_1:output:0)lstm_826/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_826/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_826/transpose_1	Transpose4lstm_826/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_826/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_826/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_827/ShapeShapelstm_826/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_827/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_827/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_827/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_sliceStridedSlicelstm_827/Shape:output:0%lstm_827/strided_slice/stack:output:0'lstm_827/strided_slice/stack_1:output:0'lstm_827/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_827/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_827/zeros/packedPacklstm_827/strided_slice:output:0 lstm_827/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_827/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_827/zerosFilllstm_827/zeros/packed:output:0lstm_827/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_827/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_827/zeros_1/packedPacklstm_827/strided_slice:output:0"lstm_827/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_827/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_827/zeros_1Fill lstm_827/zeros_1/packed:output:0lstm_827/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_827/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_827/transpose	Transposelstm_826/transpose_1:y:0 lstm_827/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_827/Shape_1Shapelstm_827/transpose:y:0*
T0*
_output_shapes
:h
lstm_827/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_827/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_1StridedSlicelstm_827/Shape_1:output:0'lstm_827/strided_slice_1/stack:output:0)lstm_827/strided_slice_1/stack_1:output:0)lstm_827/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_827/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_827/TensorArrayV2TensorListReserve-lstm_827/TensorArrayV2/element_shape:output:0!lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_827/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_827/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_827/transpose:y:0Glstm_827/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_827/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_827/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_2StridedSlicelstm_827/transpose:y:0'lstm_827/strided_slice_2/stack:output:0)lstm_827/strided_slice_2/stack_1:output:0)lstm_827/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_827/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp5lstm_827_lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_827/lstm_cell_749/MatMulMatMul!lstm_827/strided_slice_2:output:04lstm_827/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_827/lstm_cell_749/MatMul_1MatMullstm_827/zeros:output:06lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_827/lstm_cell_749/addAddV2'lstm_827/lstm_cell_749/MatMul:product:0)lstm_827/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp6lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_827/lstm_cell_749/BiasAddBiasAddlstm_827/lstm_cell_749/add:z:05lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_827/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_827/lstm_cell_749/splitSplit/lstm_827/lstm_cell_749/split/split_dim:output:0'lstm_827/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_827/lstm_cell_749/SigmoidSigmoid%lstm_827/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_827/lstm_cell_749/Sigmoid_1Sigmoid%lstm_827/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mulMul$lstm_827/lstm_cell_749/Sigmoid_1:y:0lstm_827/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_827/lstm_cell_749/ReluRelu%lstm_827/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mul_1Mul"lstm_827/lstm_cell_749/Sigmoid:y:0)lstm_827/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/add_1AddV2lstm_827/lstm_cell_749/mul:z:0 lstm_827/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_827/lstm_cell_749/Sigmoid_2Sigmoid%lstm_827/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_827/lstm_cell_749/Relu_1Relu lstm_827/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mul_2Mul$lstm_827/lstm_cell_749/Sigmoid_2:y:0+lstm_827/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_827/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_827/TensorArrayV2_1TensorListReserve/lstm_827/TensorArrayV2_1/element_shape:output:0!lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_827/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_827/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_827/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_827/whileWhile$lstm_827/while/loop_counter:output:0*lstm_827/while/maximum_iterations:output:0lstm_827/time:output:0!lstm_827/TensorArrayV2_1:handle:0lstm_827/zeros:output:0lstm_827/zeros_1:output:0!lstm_827/strided_slice_1:output:0@lstm_827/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_827_lstm_cell_749_matmul_readvariableop_resource7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource6lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
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
lstm_827_while_body_4532789*'
condR
lstm_827_while_cond_4532788*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_827/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_827/TensorArrayV2Stack/TensorListStackTensorListStacklstm_827/while:output:3Blstm_827/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_827/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_827/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_3StridedSlice4lstm_827/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_827/strided_slice_3/stack:output:0)lstm_827/strided_slice_3/stack_1:output:0)lstm_827/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_827/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_827/transpose_1	Transpose4lstm_827/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_827/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_827/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_275/MatMul/ReadVariableOpReadVariableOp(dense_275_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_275/MatMulMatMul!lstm_827/strided_slice_3:output:0'dense_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_275/BiasAdd/ReadVariableOpReadVariableOp)dense_275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_275/BiasAddBiasAdddense_275/MatMul:product:0(dense_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_275/BiasAdd/ReadVariableOp ^dense_275/MatMul/ReadVariableOp.^lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp-^lstm_825/lstm_cell_747/MatMul/ReadVariableOp/^lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp^lstm_825/while.^lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp-^lstm_826/lstm_cell_748/MatMul/ReadVariableOp/^lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp^lstm_826/while.^lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp-^lstm_827/lstm_cell_749/MatMul/ReadVariableOp/^lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp^lstm_827/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_275/BiasAdd/ReadVariableOp dense_275/BiasAdd/ReadVariableOp2B
dense_275/MatMul/ReadVariableOpdense_275/MatMul/ReadVariableOp2^
-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp2\
,lstm_825/lstm_cell_747/MatMul/ReadVariableOp,lstm_825/lstm_cell_747/MatMul/ReadVariableOp2`
.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp2 
lstm_825/whilelstm_825/while2^
-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp2\
,lstm_826/lstm_cell_748/MatMul/ReadVariableOp,lstm_826/lstm_cell_748/MatMul/ReadVariableOp2`
.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp2 
lstm_826/whilelstm_826/while2^
-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp2\
,lstm_827/lstm_cell_749/MatMul/ReadVariableOp,lstm_827/lstm_cell_749/MatMul/ReadVariableOp2`
.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp2 
lstm_827/whilelstm_827/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535011

inputs>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4534927*
condR
while_cond_4534926*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_825_layer_call_and_return_conditional_losses_4532183

inputs?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4532099*
condR
while_cond_4532098*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_827_while_body_4533216.
*lstm_827_while_lstm_827_while_loop_counter4
0lstm_827_while_lstm_827_while_maximum_iterations
lstm_827_while_placeholder 
lstm_827_while_placeholder_1 
lstm_827_while_placeholder_2 
lstm_827_while_placeholder_3-
)lstm_827_while_lstm_827_strided_slice_1_0i
elstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0:2(Q
?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(L
>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0:(
lstm_827_while_identity
lstm_827_while_identity_1
lstm_827_while_identity_2
lstm_827_while_identity_3
lstm_827_while_identity_4
lstm_827_while_identity_5+
'lstm_827_while_lstm_827_strided_slice_1g
clstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensorM
;lstm_827_while_lstm_cell_749_matmul_readvariableop_resource:2(O
=lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource:
(J
<lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource:(??3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp?2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp?4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp?
@lstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_827/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0lstm_827_while_placeholderIlstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_827/while/lstm_cell_749/MatMulMatMul9lstm_827/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_827/while/lstm_cell_749/MatMul_1MatMullstm_827_while_placeholder_2<lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_827/while/lstm_cell_749/addAddV2-lstm_827/while/lstm_cell_749/MatMul:product:0/lstm_827/while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_827/while/lstm_cell_749/BiasAddBiasAdd$lstm_827/while/lstm_cell_749/add:z:0;lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_827/while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_827/while/lstm_cell_749/splitSplit5lstm_827/while/lstm_cell_749/split/split_dim:output:0-lstm_827/while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_827/while/lstm_cell_749/SigmoidSigmoid+lstm_827/while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_827/while/lstm_cell_749/Sigmoid_1Sigmoid+lstm_827/while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_827/while/lstm_cell_749/mulMul*lstm_827/while/lstm_cell_749/Sigmoid_1:y:0lstm_827_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_827/while/lstm_cell_749/ReluRelu+lstm_827/while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/mul_1Mul(lstm_827/while/lstm_cell_749/Sigmoid:y:0/lstm_827/while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/add_1AddV2$lstm_827/while/lstm_cell_749/mul:z:0&lstm_827/while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_827/while/lstm_cell_749/Sigmoid_2Sigmoid+lstm_827/while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_827/while/lstm_cell_749/Relu_1Relu&lstm_827/while/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/mul_2Mul*lstm_827/while/lstm_cell_749/Sigmoid_2:y:01lstm_827/while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_827/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_827_while_placeholder_1lstm_827_while_placeholder&lstm_827/while/lstm_cell_749/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_827/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_827/while/addAddV2lstm_827_while_placeholderlstm_827/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_827/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_827/while/add_1AddV2*lstm_827_while_lstm_827_while_loop_counterlstm_827/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_827/while/IdentityIdentitylstm_827/while/add_1:z:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_1Identity0lstm_827_while_lstm_827_while_maximum_iterations^lstm_827/while/NoOp*
T0*
_output_shapes
: t
lstm_827/while/Identity_2Identitylstm_827/while/add:z:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_3IdentityClstm_827/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_4Identity&lstm_827/while/lstm_cell_749/mul_2:z:0^lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_827/while/Identity_5Identity&lstm_827/while/lstm_cell_749/add_1:z:0^lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_827/while/NoOpNoOp4^lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp3^lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp5^lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_827_while_identity lstm_827/while/Identity:output:0"?
lstm_827_while_identity_1"lstm_827/while/Identity_1:output:0"?
lstm_827_while_identity_2"lstm_827/while/Identity_2:output:0"?
lstm_827_while_identity_3"lstm_827/while/Identity_3:output:0"?
lstm_827_while_identity_4"lstm_827/while/Identity_4:output:0"?
lstm_827_while_identity_5"lstm_827/while/Identity_5:output:0"T
'lstm_827_while_lstm_827_strided_slice_1)lstm_827_while_lstm_827_strided_slice_1_0"~
<lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0"?
=lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0"|
;lstm_827_while_lstm_cell_749_matmul_readvariableop_resource=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0"?
clstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensorelstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp2h
2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp2l
4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_826_layer_call_fn_4533933
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4530638|
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
while_body_4531934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4533695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4530918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4530918___redundant_placeholder05
1while_while_cond_4530918___redundant_placeholder15
1while_while_cond_4530918___redundant_placeholder25
1while_while_cond_4530918___redundant_placeholder3
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4530288

inputs(
lstm_cell_747_4530206:	?(
lstm_cell_747_4530208:	d?$
lstm_cell_747_4530210:	?
identity??%lstm_cell_747/StatefulPartitionedCall?while;
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
%lstm_cell_747/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_747_4530206lstm_cell_747_4530208lstm_cell_747_4530210*
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530205n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_747_4530206lstm_cell_747_4530208lstm_cell_747_4530210*
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
while_body_4530219*
condR
while_cond_4530218*K
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
NoOpNoOp&^lstm_cell_747/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_747/StatefulPartitionedCall%lstm_cell_747/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4533306

inputsH
5lstm_825_lstm_cell_747_matmul_readvariableop_resource:	?J
7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource:	d?E
6lstm_825_lstm_cell_747_biasadd_readvariableop_resource:	?H
5lstm_826_lstm_cell_748_matmul_readvariableop_resource:	d?J
7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource:	2?E
6lstm_826_lstm_cell_748_biasadd_readvariableop_resource:	?G
5lstm_827_lstm_cell_749_matmul_readvariableop_resource:2(I
7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource:
(D
6lstm_827_lstm_cell_749_biasadd_readvariableop_resource:(:
(dense_275_matmul_readvariableop_resource:
7
)dense_275_biasadd_readvariableop_resource:
identity?? dense_275/BiasAdd/ReadVariableOp?dense_275/MatMul/ReadVariableOp?-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp?,lstm_825/lstm_cell_747/MatMul/ReadVariableOp?.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp?lstm_825/while?-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp?,lstm_826/lstm_cell_748/MatMul/ReadVariableOp?.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp?lstm_826/while?-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp?,lstm_827/lstm_cell_749/MatMul/ReadVariableOp?.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp?lstm_827/whileD
lstm_825/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_825/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_825/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_825/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_sliceStridedSlicelstm_825/Shape:output:0%lstm_825/strided_slice/stack:output:0'lstm_825/strided_slice/stack_1:output:0'lstm_825/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_825/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_825/zeros/packedPacklstm_825/strided_slice:output:0 lstm_825/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_825/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_825/zerosFilllstm_825/zeros/packed:output:0lstm_825/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_825/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_825/zeros_1/packedPacklstm_825/strided_slice:output:0"lstm_825/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_825/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_825/zeros_1Fill lstm_825/zeros_1/packed:output:0lstm_825/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_825/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_825/transpose	Transposeinputs lstm_825/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_825/Shape_1Shapelstm_825/transpose:y:0*
T0*
_output_shapes
:h
lstm_825/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_825/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_1StridedSlicelstm_825/Shape_1:output:0'lstm_825/strided_slice_1/stack:output:0)lstm_825/strided_slice_1/stack_1:output:0)lstm_825/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_825/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_825/TensorArrayV2TensorListReserve-lstm_825/TensorArrayV2/element_shape:output:0!lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_825/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_825/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_825/transpose:y:0Glstm_825/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_825/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_825/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_2StridedSlicelstm_825/transpose:y:0'lstm_825/strided_slice_2/stack:output:0)lstm_825/strided_slice_2/stack_1:output:0)lstm_825/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_825/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp5lstm_825_lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_825/lstm_cell_747/MatMulMatMul!lstm_825/strided_slice_2:output:04lstm_825/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_825/lstm_cell_747/MatMul_1MatMullstm_825/zeros:output:06lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_825/lstm_cell_747/addAddV2'lstm_825/lstm_cell_747/MatMul:product:0)lstm_825/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp6lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_825/lstm_cell_747/BiasAddBiasAddlstm_825/lstm_cell_747/add:z:05lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_825/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_825/lstm_cell_747/splitSplit/lstm_825/lstm_cell_747/split/split_dim:output:0'lstm_825/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_825/lstm_cell_747/SigmoidSigmoid%lstm_825/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_825/lstm_cell_747/Sigmoid_1Sigmoid%lstm_825/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mulMul$lstm_825/lstm_cell_747/Sigmoid_1:y:0lstm_825/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_825/lstm_cell_747/ReluRelu%lstm_825/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mul_1Mul"lstm_825/lstm_cell_747/Sigmoid:y:0)lstm_825/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/add_1AddV2lstm_825/lstm_cell_747/mul:z:0 lstm_825/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_825/lstm_cell_747/Sigmoid_2Sigmoid%lstm_825/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_825/lstm_cell_747/Relu_1Relu lstm_825/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_825/lstm_cell_747/mul_2Mul$lstm_825/lstm_cell_747/Sigmoid_2:y:0+lstm_825/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_825/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_825/TensorArrayV2_1TensorListReserve/lstm_825/TensorArrayV2_1/element_shape:output:0!lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_825/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_825/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_825/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_825/whileWhile$lstm_825/while/loop_counter:output:0*lstm_825/while/maximum_iterations:output:0lstm_825/time:output:0!lstm_825/TensorArrayV2_1:handle:0lstm_825/zeros:output:0lstm_825/zeros_1:output:0!lstm_825/strided_slice_1:output:0@lstm_825/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_825_lstm_cell_747_matmul_readvariableop_resource7lstm_825_lstm_cell_747_matmul_1_readvariableop_resource6lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
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
lstm_825_while_body_4532938*'
condR
lstm_825_while_cond_4532937*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_825/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_825/TensorArrayV2Stack/TensorListStackTensorListStacklstm_825/while:output:3Blstm_825/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_825/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_825/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_825/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_825/strided_slice_3StridedSlice4lstm_825/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_825/strided_slice_3/stack:output:0)lstm_825/strided_slice_3/stack_1:output:0)lstm_825/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_825/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_825/transpose_1	Transpose4lstm_825/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_825/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_825/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_826/ShapeShapelstm_825/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_826/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_826/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_826/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_sliceStridedSlicelstm_826/Shape:output:0%lstm_826/strided_slice/stack:output:0'lstm_826/strided_slice/stack_1:output:0'lstm_826/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_826/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_826/zeros/packedPacklstm_826/strided_slice:output:0 lstm_826/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_826/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_826/zerosFilllstm_826/zeros/packed:output:0lstm_826/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_826/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_826/zeros_1/packedPacklstm_826/strided_slice:output:0"lstm_826/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_826/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_826/zeros_1Fill lstm_826/zeros_1/packed:output:0lstm_826/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_826/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_826/transpose	Transposelstm_825/transpose_1:y:0 lstm_826/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_826/Shape_1Shapelstm_826/transpose:y:0*
T0*
_output_shapes
:h
lstm_826/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_826/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_1StridedSlicelstm_826/Shape_1:output:0'lstm_826/strided_slice_1/stack:output:0)lstm_826/strided_slice_1/stack_1:output:0)lstm_826/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_826/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_826/TensorArrayV2TensorListReserve-lstm_826/TensorArrayV2/element_shape:output:0!lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_826/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_826/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_826/transpose:y:0Glstm_826/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_826/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_826/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_2StridedSlicelstm_826/transpose:y:0'lstm_826/strided_slice_2/stack:output:0)lstm_826/strided_slice_2/stack_1:output:0)lstm_826/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_826/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp5lstm_826_lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_826/lstm_cell_748/MatMulMatMul!lstm_826/strided_slice_2:output:04lstm_826/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_826/lstm_cell_748/MatMul_1MatMullstm_826/zeros:output:06lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_826/lstm_cell_748/addAddV2'lstm_826/lstm_cell_748/MatMul:product:0)lstm_826/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp6lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_826/lstm_cell_748/BiasAddBiasAddlstm_826/lstm_cell_748/add:z:05lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_826/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_826/lstm_cell_748/splitSplit/lstm_826/lstm_cell_748/split/split_dim:output:0'lstm_826/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_826/lstm_cell_748/SigmoidSigmoid%lstm_826/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_826/lstm_cell_748/Sigmoid_1Sigmoid%lstm_826/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mulMul$lstm_826/lstm_cell_748/Sigmoid_1:y:0lstm_826/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_826/lstm_cell_748/ReluRelu%lstm_826/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mul_1Mul"lstm_826/lstm_cell_748/Sigmoid:y:0)lstm_826/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/add_1AddV2lstm_826/lstm_cell_748/mul:z:0 lstm_826/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_826/lstm_cell_748/Sigmoid_2Sigmoid%lstm_826/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_826/lstm_cell_748/Relu_1Relu lstm_826/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_826/lstm_cell_748/mul_2Mul$lstm_826/lstm_cell_748/Sigmoid_2:y:0+lstm_826/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_826/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_826/TensorArrayV2_1TensorListReserve/lstm_826/TensorArrayV2_1/element_shape:output:0!lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_826/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_826/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_826/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_826/whileWhile$lstm_826/while/loop_counter:output:0*lstm_826/while/maximum_iterations:output:0lstm_826/time:output:0!lstm_826/TensorArrayV2_1:handle:0lstm_826/zeros:output:0lstm_826/zeros_1:output:0!lstm_826/strided_slice_1:output:0@lstm_826/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_826_lstm_cell_748_matmul_readvariableop_resource7lstm_826_lstm_cell_748_matmul_1_readvariableop_resource6lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
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
lstm_826_while_body_4533077*'
condR
lstm_826_while_cond_4533076*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_826/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_826/TensorArrayV2Stack/TensorListStackTensorListStacklstm_826/while:output:3Blstm_826/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_826/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_826/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_826/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_826/strided_slice_3StridedSlice4lstm_826/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_826/strided_slice_3/stack:output:0)lstm_826/strided_slice_3/stack_1:output:0)lstm_826/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_826/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_826/transpose_1	Transpose4lstm_826/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_826/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_826/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_827/ShapeShapelstm_826/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_827/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_827/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_827/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_sliceStridedSlicelstm_827/Shape:output:0%lstm_827/strided_slice/stack:output:0'lstm_827/strided_slice/stack_1:output:0'lstm_827/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_827/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_827/zeros/packedPacklstm_827/strided_slice:output:0 lstm_827/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_827/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_827/zerosFilllstm_827/zeros/packed:output:0lstm_827/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_827/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_827/zeros_1/packedPacklstm_827/strided_slice:output:0"lstm_827/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_827/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_827/zeros_1Fill lstm_827/zeros_1/packed:output:0lstm_827/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_827/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_827/transpose	Transposelstm_826/transpose_1:y:0 lstm_827/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_827/Shape_1Shapelstm_827/transpose:y:0*
T0*
_output_shapes
:h
lstm_827/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_827/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_1StridedSlicelstm_827/Shape_1:output:0'lstm_827/strided_slice_1/stack:output:0)lstm_827/strided_slice_1/stack_1:output:0)lstm_827/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_827/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_827/TensorArrayV2TensorListReserve-lstm_827/TensorArrayV2/element_shape:output:0!lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_827/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_827/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_827/transpose:y:0Glstm_827/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_827/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_827/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_2StridedSlicelstm_827/transpose:y:0'lstm_827/strided_slice_2/stack:output:0)lstm_827/strided_slice_2/stack_1:output:0)lstm_827/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_827/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp5lstm_827_lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_827/lstm_cell_749/MatMulMatMul!lstm_827/strided_slice_2:output:04lstm_827/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_827/lstm_cell_749/MatMul_1MatMullstm_827/zeros:output:06lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_827/lstm_cell_749/addAddV2'lstm_827/lstm_cell_749/MatMul:product:0)lstm_827/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp6lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_827/lstm_cell_749/BiasAddBiasAddlstm_827/lstm_cell_749/add:z:05lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_827/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_827/lstm_cell_749/splitSplit/lstm_827/lstm_cell_749/split/split_dim:output:0'lstm_827/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_827/lstm_cell_749/SigmoidSigmoid%lstm_827/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_827/lstm_cell_749/Sigmoid_1Sigmoid%lstm_827/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mulMul$lstm_827/lstm_cell_749/Sigmoid_1:y:0lstm_827/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_827/lstm_cell_749/ReluRelu%lstm_827/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mul_1Mul"lstm_827/lstm_cell_749/Sigmoid:y:0)lstm_827/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/add_1AddV2lstm_827/lstm_cell_749/mul:z:0 lstm_827/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_827/lstm_cell_749/Sigmoid_2Sigmoid%lstm_827/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_827/lstm_cell_749/Relu_1Relu lstm_827/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_827/lstm_cell_749/mul_2Mul$lstm_827/lstm_cell_749/Sigmoid_2:y:0+lstm_827/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_827/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_827/TensorArrayV2_1TensorListReserve/lstm_827/TensorArrayV2_1/element_shape:output:0!lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_827/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_827/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_827/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_827/whileWhile$lstm_827/while/loop_counter:output:0*lstm_827/while/maximum_iterations:output:0lstm_827/time:output:0!lstm_827/TensorArrayV2_1:handle:0lstm_827/zeros:output:0lstm_827/zeros_1:output:0!lstm_827/strided_slice_1:output:0@lstm_827/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_827_lstm_cell_749_matmul_readvariableop_resource7lstm_827_lstm_cell_749_matmul_1_readvariableop_resource6lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
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
lstm_827_while_body_4533216*'
condR
lstm_827_while_cond_4533215*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_827/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_827/TensorArrayV2Stack/TensorListStackTensorListStacklstm_827/while:output:3Blstm_827/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_827/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_827/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_827/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_827/strided_slice_3StridedSlice4lstm_827/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_827/strided_slice_3/stack:output:0)lstm_827/strided_slice_3/stack_1:output:0)lstm_827/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_827/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_827/transpose_1	Transpose4lstm_827/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_827/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_827/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_275/MatMul/ReadVariableOpReadVariableOp(dense_275_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_275/MatMulMatMul!lstm_827/strided_slice_3:output:0'dense_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_275/BiasAdd/ReadVariableOpReadVariableOp)dense_275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_275/BiasAddBiasAdddense_275/MatMul:product:0(dense_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_275/BiasAdd/ReadVariableOp ^dense_275/MatMul/ReadVariableOp.^lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp-^lstm_825/lstm_cell_747/MatMul/ReadVariableOp/^lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp^lstm_825/while.^lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp-^lstm_826/lstm_cell_748/MatMul/ReadVariableOp/^lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp^lstm_826/while.^lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp-^lstm_827/lstm_cell_749/MatMul/ReadVariableOp/^lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp^lstm_827/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_275/BiasAdd/ReadVariableOp dense_275/BiasAdd/ReadVariableOp2B
dense_275/MatMul/ReadVariableOpdense_275/MatMul/ReadVariableOp2^
-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp-lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp2\
,lstm_825/lstm_cell_747/MatMul/ReadVariableOp,lstm_825/lstm_cell_747/MatMul/ReadVariableOp2`
.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp.lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp2 
lstm_825/whilelstm_825/while2^
-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp-lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp2\
,lstm_826/lstm_cell_748/MatMul/ReadVariableOp,lstm_826/lstm_cell_748/MatMul/ReadVariableOp2`
.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp.lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp2 
lstm_826/whilelstm_826/while2^
-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp-lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp2\
,lstm_827/lstm_cell_749/MatMul/ReadVariableOp,lstm_827/lstm_cell_749/MatMul/ReadVariableOp2`
.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp.lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp2 
lstm_827/whilelstm_827/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534868
inputs_0>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4534784*
condR
while_cond_4534783*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*sequential_275_lstm_825_while_cond_4529769L
Hsequential_275_lstm_825_while_sequential_275_lstm_825_while_loop_counterR
Nsequential_275_lstm_825_while_sequential_275_lstm_825_while_maximum_iterations-
)sequential_275_lstm_825_while_placeholder/
+sequential_275_lstm_825_while_placeholder_1/
+sequential_275_lstm_825_while_placeholder_2/
+sequential_275_lstm_825_while_placeholder_3N
Jsequential_275_lstm_825_while_less_sequential_275_lstm_825_strided_slice_1e
asequential_275_lstm_825_while_sequential_275_lstm_825_while_cond_4529769___redundant_placeholder0e
asequential_275_lstm_825_while_sequential_275_lstm_825_while_cond_4529769___redundant_placeholder1e
asequential_275_lstm_825_while_sequential_275_lstm_825_while_cond_4529769___redundant_placeholder2e
asequential_275_lstm_825_while_sequential_275_lstm_825_while_cond_4529769___redundant_placeholder3*
&sequential_275_lstm_825_while_identity
?
"sequential_275/lstm_825/while/LessLess)sequential_275_lstm_825_while_placeholderJsequential_275_lstm_825_while_less_sequential_275_lstm_825_strided_slice_1*
T0*
_output_shapes
: {
&sequential_275/lstm_825/while/IdentityIdentity&sequential_275/lstm_825/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_275_lstm_825_while_identity/sequential_275/lstm_825/while/Identity:output:0*(
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
while_body_4530219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_747_4530243_0:	?0
while_lstm_cell_747_4530245_0:	d?,
while_lstm_cell_747_4530247_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_747_4530243:	?.
while_lstm_cell_747_4530245:	d?*
while_lstm_cell_747_4530247:	???+while/lstm_cell_747/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_747/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_747_4530243_0while_lstm_cell_747_4530245_0while_lstm_cell_747_4530247_0*
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530205?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_747/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_747/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_747/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_747/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_747_4530243while_lstm_cell_747_4530243_0"<
while_lstm_cell_747_4530245while_lstm_cell_747_4530245_0"<
while_lstm_cell_747_4530247while_lstm_cell_747_4530247_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_747/StatefulPartitionedCall+while/lstm_cell_747/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532251

inputs#
lstm_825_4532224:	?#
lstm_825_4532226:	d?
lstm_825_4532228:	?#
lstm_826_4532231:	d?#
lstm_826_4532233:	2?
lstm_826_4532235:	?"
lstm_827_4532238:2("
lstm_827_4532240:
(
lstm_827_4532242:(#
dense_275_4532245:

dense_275_4532247:
identity??!dense_275/StatefulPartitionedCall? lstm_825/StatefulPartitionedCall? lstm_826/StatefulPartitionedCall? lstm_827/StatefulPartitionedCall?
 lstm_825/StatefulPartitionedCallStatefulPartitionedCallinputslstm_825_4532224lstm_825_4532226lstm_825_4532228*
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4532183?
 lstm_826/StatefulPartitionedCallStatefulPartitionedCall)lstm_825/StatefulPartitionedCall:output:0lstm_826_4532231lstm_826_4532233lstm_826_4532235*
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4532018?
 lstm_827/StatefulPartitionedCallStatefulPartitionedCall)lstm_826/StatefulPartitionedCall:output:0lstm_827_4532238lstm_827_4532240lstm_827_4532242*
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531853?
!dense_275/StatefulPartitionedCallStatefulPartitionedCall)lstm_827/StatefulPartitionedCall:output:0dense_275_4532245dense_275_4532247*
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655y
IdentityIdentity*dense_275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_275/StatefulPartitionedCall!^lstm_825/StatefulPartitionedCall!^lstm_826/StatefulPartitionedCall!^lstm_827/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_275/StatefulPartitionedCall!dense_275/StatefulPartitionedCall2D
 lstm_825/StatefulPartitionedCall lstm_825/StatefulPartitionedCall2D
 lstm_826/StatefulPartitionedCall lstm_826/StatefulPartitionedCall2D
 lstm_827/StatefulPartitionedCall lstm_827/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_275_layer_call_and_return_conditional_losses_4535173

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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4532018

inputs?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4531934*
condR
while_cond_4531933*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_275_layer_call_fn_4532425

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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4531662o
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
while_body_4534454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_827_while_body_4532789.
*lstm_827_while_lstm_827_while_loop_counter4
0lstm_827_while_lstm_827_while_maximum_iterations
lstm_827_while_placeholder 
lstm_827_while_placeholder_1 
lstm_827_while_placeholder_2 
lstm_827_while_placeholder_3-
)lstm_827_while_lstm_827_strided_slice_1_0i
elstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0:2(Q
?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(L
>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0:(
lstm_827_while_identity
lstm_827_while_identity_1
lstm_827_while_identity_2
lstm_827_while_identity_3
lstm_827_while_identity_4
lstm_827_while_identity_5+
'lstm_827_while_lstm_827_strided_slice_1g
clstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensorM
;lstm_827_while_lstm_cell_749_matmul_readvariableop_resource:2(O
=lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource:
(J
<lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource:(??3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp?2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp?4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp?
@lstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_827/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0lstm_827_while_placeholderIlstm_827/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_827/while/lstm_cell_749/MatMulMatMul9lstm_827/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_827/while/lstm_cell_749/MatMul_1MatMullstm_827_while_placeholder_2<lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_827/while/lstm_cell_749/addAddV2-lstm_827/while/lstm_cell_749/MatMul:product:0/lstm_827/while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_827/while/lstm_cell_749/BiasAddBiasAdd$lstm_827/while/lstm_cell_749/add:z:0;lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_827/while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_827/while/lstm_cell_749/splitSplit5lstm_827/while/lstm_cell_749/split/split_dim:output:0-lstm_827/while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_827/while/lstm_cell_749/SigmoidSigmoid+lstm_827/while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_827/while/lstm_cell_749/Sigmoid_1Sigmoid+lstm_827/while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_827/while/lstm_cell_749/mulMul*lstm_827/while/lstm_cell_749/Sigmoid_1:y:0lstm_827_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_827/while/lstm_cell_749/ReluRelu+lstm_827/while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/mul_1Mul(lstm_827/while/lstm_cell_749/Sigmoid:y:0/lstm_827/while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/add_1AddV2$lstm_827/while/lstm_cell_749/mul:z:0&lstm_827/while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_827/while/lstm_cell_749/Sigmoid_2Sigmoid+lstm_827/while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_827/while/lstm_cell_749/Relu_1Relu&lstm_827/while/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_827/while/lstm_cell_749/mul_2Mul*lstm_827/while/lstm_cell_749/Sigmoid_2:y:01lstm_827/while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_827/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_827_while_placeholder_1lstm_827_while_placeholder&lstm_827/while/lstm_cell_749/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_827/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_827/while/addAddV2lstm_827_while_placeholderlstm_827/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_827/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_827/while/add_1AddV2*lstm_827_while_lstm_827_while_loop_counterlstm_827/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_827/while/IdentityIdentitylstm_827/while/add_1:z:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_1Identity0lstm_827_while_lstm_827_while_maximum_iterations^lstm_827/while/NoOp*
T0*
_output_shapes
: t
lstm_827/while/Identity_2Identitylstm_827/while/add:z:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_3IdentityClstm_827/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_827/while/NoOp*
T0*
_output_shapes
: ?
lstm_827/while/Identity_4Identity&lstm_827/while/lstm_cell_749/mul_2:z:0^lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_827/while/Identity_5Identity&lstm_827/while/lstm_cell_749/add_1:z:0^lstm_827/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_827/while/NoOpNoOp4^lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp3^lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp5^lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_827_while_identity lstm_827/while/Identity:output:0"?
lstm_827_while_identity_1"lstm_827/while/Identity_1:output:0"?
lstm_827_while_identity_2"lstm_827/while/Identity_2:output:0"?
lstm_827_while_identity_3"lstm_827/while/Identity_3:output:0"?
lstm_827_while_identity_4"lstm_827/while/Identity_4:output:0"?
lstm_827_while_identity_5"lstm_827/while/Identity_5:output:0"T
'lstm_827_while_lstm_827_strided_slice_1)lstm_827_while_lstm_827_strided_slice_1_0"~
<lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource>lstm_827_while_lstm_cell_749_biasadd_readvariableop_resource_0"?
=lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource?lstm_827_while_lstm_cell_749_matmul_1_readvariableop_resource_0"|
;lstm_827_while_lstm_cell_749_matmul_readvariableop_resource=lstm_827_while_lstm_cell_749_matmul_readvariableop_resource_0"?
clstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensorelstm_827_while_tensorarrayv2read_tensorlistgetitem_lstm_827_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp3lstm_827/while/lstm_cell_749/BiasAdd/ReadVariableOp2h
2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp2lstm_827/while/lstm_cell_749/MatMul/ReadVariableOp2l
4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp4lstm_827/while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_749_layer_call_fn_4535403

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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4531051o
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534395

inputs?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4534311*
condR
while_cond_4534310*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_827_layer_call_fn_4534549
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4530988o
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
while_body_4531403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_825_while_body_4532938.
*lstm_825_while_lstm_825_while_loop_counter4
0lstm_825_while_lstm_825_while_maximum_iterations
lstm_825_while_placeholder 
lstm_825_while_placeholder_1 
lstm_825_while_placeholder_2 
lstm_825_while_placeholder_3-
)lstm_825_while_lstm_825_strided_slice_1_0i
elstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0:	?R
?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?M
>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
lstm_825_while_identity
lstm_825_while_identity_1
lstm_825_while_identity_2
lstm_825_while_identity_3
lstm_825_while_identity_4
lstm_825_while_identity_5+
'lstm_825_while_lstm_825_strided_slice_1g
clstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensorN
;lstm_825_while_lstm_cell_747_matmul_readvariableop_resource:	?P
=lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource:	d?K
<lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource:	???3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp?2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp?4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp?
@lstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_825/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0lstm_825_while_placeholderIlstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_825/while/lstm_cell_747/MatMulMatMul9lstm_825/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_825/while/lstm_cell_747/MatMul_1MatMullstm_825_while_placeholder_2<lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_825/while/lstm_cell_747/addAddV2-lstm_825/while/lstm_cell_747/MatMul:product:0/lstm_825/while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_825/while/lstm_cell_747/BiasAddBiasAdd$lstm_825/while/lstm_cell_747/add:z:0;lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_825/while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_825/while/lstm_cell_747/splitSplit5lstm_825/while/lstm_cell_747/split/split_dim:output:0-lstm_825/while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_825/while/lstm_cell_747/SigmoidSigmoid+lstm_825/while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_825/while/lstm_cell_747/Sigmoid_1Sigmoid+lstm_825/while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_825/while/lstm_cell_747/mulMul*lstm_825/while/lstm_cell_747/Sigmoid_1:y:0lstm_825_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_825/while/lstm_cell_747/ReluRelu+lstm_825/while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/mul_1Mul(lstm_825/while/lstm_cell_747/Sigmoid:y:0/lstm_825/while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/add_1AddV2$lstm_825/while/lstm_cell_747/mul:z:0&lstm_825/while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_825/while/lstm_cell_747/Sigmoid_2Sigmoid+lstm_825/while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_825/while/lstm_cell_747/Relu_1Relu&lstm_825/while/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_825/while/lstm_cell_747/mul_2Mul*lstm_825/while/lstm_cell_747/Sigmoid_2:y:01lstm_825/while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_825/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_825_while_placeholder_1lstm_825_while_placeholder&lstm_825/while/lstm_cell_747/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_825/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_825/while/addAddV2lstm_825_while_placeholderlstm_825/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_825/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_825/while/add_1AddV2*lstm_825_while_lstm_825_while_loop_counterlstm_825/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_825/while/IdentityIdentitylstm_825/while/add_1:z:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_1Identity0lstm_825_while_lstm_825_while_maximum_iterations^lstm_825/while/NoOp*
T0*
_output_shapes
: t
lstm_825/while/Identity_2Identitylstm_825/while/add:z:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_3IdentityClstm_825/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_825/while/NoOp*
T0*
_output_shapes
: ?
lstm_825/while/Identity_4Identity&lstm_825/while/lstm_cell_747/mul_2:z:0^lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_825/while/Identity_5Identity&lstm_825/while/lstm_cell_747/add_1:z:0^lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_825/while/NoOpNoOp4^lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp3^lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp5^lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_825_while_identity lstm_825/while/Identity:output:0"?
lstm_825_while_identity_1"lstm_825/while/Identity_1:output:0"?
lstm_825_while_identity_2"lstm_825/while/Identity_2:output:0"?
lstm_825_while_identity_3"lstm_825/while/Identity_3:output:0"?
lstm_825_while_identity_4"lstm_825/while/Identity_4:output:0"?
lstm_825_while_identity_5"lstm_825/while/Identity_5:output:0"T
'lstm_825_while_lstm_825_strided_slice_1)lstm_825_while_lstm_825_strided_slice_1_0"~
<lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource>lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0"?
=lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource?lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0"|
;lstm_825_while_lstm_cell_747_matmul_readvariableop_resource=lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0"?
clstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensorelstm_825_while_tensorarrayv2read_tensorlistgetitem_lstm_825_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp3lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp2h
2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp2lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp2l
4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp4lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530555

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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535337

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
?K
?
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534109
inputs_0?
,lstm_cell_748_matmul_readvariableop_resource:	d?A
.lstm_cell_748_matmul_1_readvariableop_resource:	2?<
-lstm_cell_748_biasadd_readvariableop_resource:	?
identity??$lstm_cell_748/BiasAdd/ReadVariableOp?#lstm_cell_748/MatMul/ReadVariableOp?%lstm_cell_748/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_748/MatMul/ReadVariableOpReadVariableOp,lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_748/MatMulMatMulstrided_slice_2:output:0+lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_748/MatMul_1MatMulzeros:output:0-lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_748/addAddV2lstm_cell_748/MatMul:product:0 lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_748/BiasAddBiasAddlstm_cell_748/add:z:0,lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_748/splitSplit&lstm_cell_748/split/split_dim:output:0lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_748/SigmoidSigmoidlstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_1Sigmoidlstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_748/mulMullstm_cell_748/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_748/ReluRelulstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_1Mullstm_cell_748/Sigmoid:y:0 lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_748/add_1AddV2lstm_cell_748/mul:z:0lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_748/Sigmoid_2Sigmoidlstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_748/Relu_1Relulstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_748/mul_2Mullstm_cell_748/Sigmoid_2:y:0"lstm_cell_748/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_748_matmul_readvariableop_resource.lstm_cell_748_matmul_1_readvariableop_resource-lstm_cell_748_biasadd_readvariableop_resource*
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
while_body_4534025*
condR
while_cond_4534024*K
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
NoOpNoOp%^lstm_cell_748/BiasAdd/ReadVariableOp$^lstm_cell_748/MatMul/ReadVariableOp&^lstm_cell_748/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_748/BiasAdd/ReadVariableOp$lstm_cell_748/BiasAdd/ReadVariableOp2J
#lstm_cell_748/MatMul/ReadVariableOp#lstm_cell_748/MatMul/ReadVariableOp2N
%lstm_cell_748/MatMul_1/ReadVariableOp%lstm_cell_748/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_4531110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_749_4531134_0:2(/
while_lstm_cell_749_4531136_0:
(+
while_lstm_cell_749_4531138_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_749_4531134:2(-
while_lstm_cell_749_4531136:
()
while_lstm_cell_749_4531138:(??+while/lstm_cell_749/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_749/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_749_4531134_0while_lstm_cell_749_4531136_0while_lstm_cell_749_4531138_0*
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4531051?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_749/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_749/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_749/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_749/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_749_4531134while_lstm_cell_749_4531134_0"<
while_lstm_cell_749_4531136while_lstm_cell_749_4531136_0"<
while_lstm_cell_749_4531138while_lstm_cell_749_4531138_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_749/StatefulPartitionedCall+while/lstm_cell_749/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4534641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533779

inputs?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4533695*
condR
while_cond_4533694*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_827_while_cond_4533215.
*lstm_827_while_lstm_827_while_loop_counter4
0lstm_827_while_lstm_827_while_maximum_iterations
lstm_827_while_placeholder 
lstm_827_while_placeholder_1 
lstm_827_while_placeholder_2 
lstm_827_while_placeholder_30
,lstm_827_while_less_lstm_827_strided_slice_1G
Clstm_827_while_lstm_827_while_cond_4533215___redundant_placeholder0G
Clstm_827_while_lstm_827_while_cond_4533215___redundant_placeholder1G
Clstm_827_while_lstm_827_while_cond_4533215___redundant_placeholder2G
Clstm_827_while_lstm_827_while_cond_4533215___redundant_placeholder3
lstm_827_while_identity
?
lstm_827/while/LessLesslstm_827_while_placeholder,lstm_827_while_less_lstm_827_strided_slice_1*
T0*
_output_shapes
: ]
lstm_827/while/IdentityIdentitylstm_827/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_827_while_identity lstm_827/while/Identity:output:0*(
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
while_body_4534311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_275_lstm_826_while_cond_4529908L
Hsequential_275_lstm_826_while_sequential_275_lstm_826_while_loop_counterR
Nsequential_275_lstm_826_while_sequential_275_lstm_826_while_maximum_iterations-
)sequential_275_lstm_826_while_placeholder/
+sequential_275_lstm_826_while_placeholder_1/
+sequential_275_lstm_826_while_placeholder_2/
+sequential_275_lstm_826_while_placeholder_3N
Jsequential_275_lstm_826_while_less_sequential_275_lstm_826_strided_slice_1e
asequential_275_lstm_826_while_sequential_275_lstm_826_while_cond_4529908___redundant_placeholder0e
asequential_275_lstm_826_while_sequential_275_lstm_826_while_cond_4529908___redundant_placeholder1e
asequential_275_lstm_826_while_sequential_275_lstm_826_while_cond_4529908___redundant_placeholder2e
asequential_275_lstm_826_while_sequential_275_lstm_826_while_cond_4529908___redundant_placeholder3*
&sequential_275_lstm_826_while_identity
?
"sequential_275/lstm_826/while/LessLess)sequential_275_lstm_826_while_placeholderJsequential_275_lstm_826_while_less_sequential_275_lstm_826_strided_slice_1*
T0*
_output_shapes
: {
&sequential_275/lstm_826/while/IdentityIdentity&sequential_275/lstm_826/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_275_lstm_826_while_identity/sequential_275/lstm_826/while/Identity:output:0*(
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
while_cond_4531252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531252___redundant_placeholder05
1while_while_cond_4531252___redundant_placeholder15
1while_while_cond_4531252___redundant_placeholder25
1while_while_cond_4531252___redundant_placeholder3
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4530829

inputs(
lstm_cell_748_4530747:	d?(
lstm_cell_748_4530749:	2?$
lstm_cell_748_4530751:	?
identity??%lstm_cell_748/StatefulPartitionedCall?while;
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
%lstm_cell_748/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_748_4530747lstm_cell_748_4530749lstm_cell_748_4530751*
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530701n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_748_4530747lstm_cell_748_4530749lstm_cell_748_4530751*
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
while_body_4530760*
condR
while_cond_4530759*K
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
NoOpNoOp&^lstm_cell_748/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_748/StatefulPartitionedCall%lstm_cell_748/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4534784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4533837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4533837___redundant_placeholder05
1while_while_cond_4533837___redundant_placeholder15
1while_while_cond_4533837___redundant_placeholder25
1while_while_cond_4533837___redundant_placeholder3
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
?
?
*__inference_lstm_827_layer_call_fn_4534582

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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531853o
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
while_body_4531769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4530759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4530759___redundant_placeholder05
1while_while_cond_4530759___redundant_placeholder15
1while_while_cond_4530759___redundant_placeholder25
1while_while_cond_4530759___redundant_placeholder3
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
lstm_825_while_cond_4532937.
*lstm_825_while_lstm_825_while_loop_counter4
0lstm_825_while_lstm_825_while_maximum_iterations
lstm_825_while_placeholder 
lstm_825_while_placeholder_1 
lstm_825_while_placeholder_2 
lstm_825_while_placeholder_30
,lstm_825_while_less_lstm_825_strided_slice_1G
Clstm_825_while_lstm_825_while_cond_4532937___redundant_placeholder0G
Clstm_825_while_lstm_825_while_cond_4532937___redundant_placeholder1G
Clstm_825_while_lstm_825_while_cond_4532937___redundant_placeholder2G
Clstm_825_while_lstm_825_while_cond_4532937___redundant_placeholder3
lstm_825_while_identity
?
lstm_825/while/LessLesslstm_825_while_placeholder,lstm_825_while_less_lstm_825_strided_slice_1*
T0*
_output_shapes
: ]
lstm_825/while/IdentityIdentitylstm_825/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_825_while_identity lstm_825/while/Identity:output:0*(
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
%__inference_signature_wrapper_4532398
lstm_825_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_825_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4530138o
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
_user_specified_namelstm_825_input
?T
?
*sequential_275_lstm_826_while_body_4529909L
Hsequential_275_lstm_826_while_sequential_275_lstm_826_while_loop_counterR
Nsequential_275_lstm_826_while_sequential_275_lstm_826_while_maximum_iterations-
)sequential_275_lstm_826_while_placeholder/
+sequential_275_lstm_826_while_placeholder_1/
+sequential_275_lstm_826_while_placeholder_2/
+sequential_275_lstm_826_while_placeholder_3K
Gsequential_275_lstm_826_while_sequential_275_lstm_826_strided_slice_1_0?
?sequential_275_lstm_826_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_826_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_275_lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0:	d?a
Nsequential_275_lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?\
Msequential_275_lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0:	?*
&sequential_275_lstm_826_while_identity,
(sequential_275_lstm_826_while_identity_1,
(sequential_275_lstm_826_while_identity_2,
(sequential_275_lstm_826_while_identity_3,
(sequential_275_lstm_826_while_identity_4,
(sequential_275_lstm_826_while_identity_5I
Esequential_275_lstm_826_while_sequential_275_lstm_826_strided_slice_1?
?sequential_275_lstm_826_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_826_tensorarrayunstack_tensorlistfromtensor]
Jsequential_275_lstm_826_while_lstm_cell_748_matmul_readvariableop_resource:	d?_
Lsequential_275_lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource:	2?Z
Ksequential_275_lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource:	???Bsequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp?Asequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp?Csequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp?
Osequential_275/lstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_275/lstm_826/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_275_lstm_826_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_826_tensorarrayunstack_tensorlistfromtensor_0)sequential_275_lstm_826_while_placeholderXsequential_275/lstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOpLsequential_275_lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_275/lstm_826/while/lstm_cell_748/MatMulMatMulHsequential_275/lstm_826/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOpNsequential_275_lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_275/lstm_826/while/lstm_cell_748/MatMul_1MatMul+sequential_275_lstm_826_while_placeholder_2Ksequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_275/lstm_826/while/lstm_cell_748/addAddV2<sequential_275/lstm_826/while/lstm_cell_748/MatMul:product:0>sequential_275/lstm_826/while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOpMsequential_275_lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_275/lstm_826/while/lstm_cell_748/BiasAddBiasAdd3sequential_275/lstm_826/while/lstm_cell_748/add:z:0Jsequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_275/lstm_826/while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_275/lstm_826/while/lstm_cell_748/splitSplitDsequential_275/lstm_826/while/lstm_cell_748/split/split_dim:output:0<sequential_275/lstm_826/while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_275/lstm_826/while/lstm_cell_748/SigmoidSigmoid:sequential_275/lstm_826/while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_275/lstm_826/while/lstm_cell_748/Sigmoid_1Sigmoid:sequential_275/lstm_826/while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_275/lstm_826/while/lstm_cell_748/mulMul9sequential_275/lstm_826/while/lstm_cell_748/Sigmoid_1:y:0+sequential_275_lstm_826_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_275/lstm_826/while/lstm_cell_748/ReluRelu:sequential_275/lstm_826/while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_275/lstm_826/while/lstm_cell_748/mul_1Mul7sequential_275/lstm_826/while/lstm_cell_748/Sigmoid:y:0>sequential_275/lstm_826/while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_275/lstm_826/while/lstm_cell_748/add_1AddV23sequential_275/lstm_826/while/lstm_cell_748/mul:z:05sequential_275/lstm_826/while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_275/lstm_826/while/lstm_cell_748/Sigmoid_2Sigmoid:sequential_275/lstm_826/while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_275/lstm_826/while/lstm_cell_748/Relu_1Relu5sequential_275/lstm_826/while/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_275/lstm_826/while/lstm_cell_748/mul_2Mul9sequential_275/lstm_826/while/lstm_cell_748/Sigmoid_2:y:0@sequential_275/lstm_826/while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_275/lstm_826/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_275_lstm_826_while_placeholder_1)sequential_275_lstm_826_while_placeholder5sequential_275/lstm_826/while/lstm_cell_748/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_275/lstm_826/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_275/lstm_826/while/addAddV2)sequential_275_lstm_826_while_placeholder,sequential_275/lstm_826/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_275/lstm_826/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_275/lstm_826/while/add_1AddV2Hsequential_275_lstm_826_while_sequential_275_lstm_826_while_loop_counter.sequential_275/lstm_826/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_275/lstm_826/while/IdentityIdentity'sequential_275/lstm_826/while/add_1:z:0#^sequential_275/lstm_826/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_826/while/Identity_1IdentityNsequential_275_lstm_826_while_sequential_275_lstm_826_while_maximum_iterations#^sequential_275/lstm_826/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_826/while/Identity_2Identity%sequential_275/lstm_826/while/add:z:0#^sequential_275/lstm_826/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_826/while/Identity_3IdentityRsequential_275/lstm_826/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_275/lstm_826/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_826/while/Identity_4Identity5sequential_275/lstm_826/while/lstm_cell_748/mul_2:z:0#^sequential_275/lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_275/lstm_826/while/Identity_5Identity5sequential_275/lstm_826/while/lstm_cell_748/add_1:z:0#^sequential_275/lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_275/lstm_826/while/NoOpNoOpC^sequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOpB^sequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOpD^sequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_275_lstm_826_while_identity/sequential_275/lstm_826/while/Identity:output:0"]
(sequential_275_lstm_826_while_identity_11sequential_275/lstm_826/while/Identity_1:output:0"]
(sequential_275_lstm_826_while_identity_21sequential_275/lstm_826/while/Identity_2:output:0"]
(sequential_275_lstm_826_while_identity_31sequential_275/lstm_826/while/Identity_3:output:0"]
(sequential_275_lstm_826_while_identity_41sequential_275/lstm_826/while/Identity_4:output:0"]
(sequential_275_lstm_826_while_identity_51sequential_275/lstm_826/while/Identity_5:output:0"?
Ksequential_275_lstm_826_while_lstm_cell_748_biasadd_readvariableop_resourceMsequential_275_lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0"?
Lsequential_275_lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resourceNsequential_275_lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0"?
Jsequential_275_lstm_826_while_lstm_cell_748_matmul_readvariableop_resourceLsequential_275_lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0"?
Esequential_275_lstm_826_while_sequential_275_lstm_826_strided_slice_1Gsequential_275_lstm_826_while_sequential_275_lstm_826_strided_slice_1_0"?
?sequential_275_lstm_826_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_826_tensorarrayunstack_tensorlistfromtensor?sequential_275_lstm_826_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_826_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOpBsequential_275/lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp2?
Asequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOpAsequential_275/lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp2?
Csequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOpCsequential_275/lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_275_layer_call_fn_4535163

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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655o
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
while_cond_4533408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4533408___redundant_placeholder05
1while_while_cond_4533408___redundant_placeholder15
1while_while_cond_4533408___redundant_placeholder25
1while_while_cond_4533408___redundant_placeholder3
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533636
inputs_0?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4533552*
condR
while_cond_4533551*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?T
?
*sequential_275_lstm_825_while_body_4529770L
Hsequential_275_lstm_825_while_sequential_275_lstm_825_while_loop_counterR
Nsequential_275_lstm_825_while_sequential_275_lstm_825_while_maximum_iterations-
)sequential_275_lstm_825_while_placeholder/
+sequential_275_lstm_825_while_placeholder_1/
+sequential_275_lstm_825_while_placeholder_2/
+sequential_275_lstm_825_while_placeholder_3K
Gsequential_275_lstm_825_while_sequential_275_lstm_825_strided_slice_1_0?
?sequential_275_lstm_825_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_825_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_275_lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0:	?a
Nsequential_275_lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?\
Msequential_275_lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0:	?*
&sequential_275_lstm_825_while_identity,
(sequential_275_lstm_825_while_identity_1,
(sequential_275_lstm_825_while_identity_2,
(sequential_275_lstm_825_while_identity_3,
(sequential_275_lstm_825_while_identity_4,
(sequential_275_lstm_825_while_identity_5I
Esequential_275_lstm_825_while_sequential_275_lstm_825_strided_slice_1?
?sequential_275_lstm_825_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_825_tensorarrayunstack_tensorlistfromtensor]
Jsequential_275_lstm_825_while_lstm_cell_747_matmul_readvariableop_resource:	?_
Lsequential_275_lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource:	d?Z
Ksequential_275_lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource:	???Bsequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp?Asequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp?Csequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp?
Osequential_275/lstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_275/lstm_825/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_275_lstm_825_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_825_tensorarrayunstack_tensorlistfromtensor_0)sequential_275_lstm_825_while_placeholderXsequential_275/lstm_825/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOpLsequential_275_lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_275/lstm_825/while/lstm_cell_747/MatMulMatMulHsequential_275/lstm_825/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOpNsequential_275_lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_275/lstm_825/while/lstm_cell_747/MatMul_1MatMul+sequential_275_lstm_825_while_placeholder_2Ksequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_275/lstm_825/while/lstm_cell_747/addAddV2<sequential_275/lstm_825/while/lstm_cell_747/MatMul:product:0>sequential_275/lstm_825/while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOpMsequential_275_lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_275/lstm_825/while/lstm_cell_747/BiasAddBiasAdd3sequential_275/lstm_825/while/lstm_cell_747/add:z:0Jsequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_275/lstm_825/while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_275/lstm_825/while/lstm_cell_747/splitSplitDsequential_275/lstm_825/while/lstm_cell_747/split/split_dim:output:0<sequential_275/lstm_825/while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_275/lstm_825/while/lstm_cell_747/SigmoidSigmoid:sequential_275/lstm_825/while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_275/lstm_825/while/lstm_cell_747/Sigmoid_1Sigmoid:sequential_275/lstm_825/while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_275/lstm_825/while/lstm_cell_747/mulMul9sequential_275/lstm_825/while/lstm_cell_747/Sigmoid_1:y:0+sequential_275_lstm_825_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_275/lstm_825/while/lstm_cell_747/ReluRelu:sequential_275/lstm_825/while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_275/lstm_825/while/lstm_cell_747/mul_1Mul7sequential_275/lstm_825/while/lstm_cell_747/Sigmoid:y:0>sequential_275/lstm_825/while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_275/lstm_825/while/lstm_cell_747/add_1AddV23sequential_275/lstm_825/while/lstm_cell_747/mul:z:05sequential_275/lstm_825/while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_275/lstm_825/while/lstm_cell_747/Sigmoid_2Sigmoid:sequential_275/lstm_825/while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_275/lstm_825/while/lstm_cell_747/Relu_1Relu5sequential_275/lstm_825/while/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_275/lstm_825/while/lstm_cell_747/mul_2Mul9sequential_275/lstm_825/while/lstm_cell_747/Sigmoid_2:y:0@sequential_275/lstm_825/while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_275/lstm_825/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_275_lstm_825_while_placeholder_1)sequential_275_lstm_825_while_placeholder5sequential_275/lstm_825/while/lstm_cell_747/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_275/lstm_825/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_275/lstm_825/while/addAddV2)sequential_275_lstm_825_while_placeholder,sequential_275/lstm_825/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_275/lstm_825/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_275/lstm_825/while/add_1AddV2Hsequential_275_lstm_825_while_sequential_275_lstm_825_while_loop_counter.sequential_275/lstm_825/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_275/lstm_825/while/IdentityIdentity'sequential_275/lstm_825/while/add_1:z:0#^sequential_275/lstm_825/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_825/while/Identity_1IdentityNsequential_275_lstm_825_while_sequential_275_lstm_825_while_maximum_iterations#^sequential_275/lstm_825/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_825/while/Identity_2Identity%sequential_275/lstm_825/while/add:z:0#^sequential_275/lstm_825/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_825/while/Identity_3IdentityRsequential_275/lstm_825/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_275/lstm_825/while/NoOp*
T0*
_output_shapes
: ?
(sequential_275/lstm_825/while/Identity_4Identity5sequential_275/lstm_825/while/lstm_cell_747/mul_2:z:0#^sequential_275/lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_275/lstm_825/while/Identity_5Identity5sequential_275/lstm_825/while/lstm_cell_747/add_1:z:0#^sequential_275/lstm_825/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_275/lstm_825/while/NoOpNoOpC^sequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOpB^sequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOpD^sequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_275_lstm_825_while_identity/sequential_275/lstm_825/while/Identity:output:0"]
(sequential_275_lstm_825_while_identity_11sequential_275/lstm_825/while/Identity_1:output:0"]
(sequential_275_lstm_825_while_identity_21sequential_275/lstm_825/while/Identity_2:output:0"]
(sequential_275_lstm_825_while_identity_31sequential_275/lstm_825/while/Identity_3:output:0"]
(sequential_275_lstm_825_while_identity_41sequential_275/lstm_825/while/Identity_4:output:0"]
(sequential_275_lstm_825_while_identity_51sequential_275/lstm_825/while/Identity_5:output:0"?
Ksequential_275_lstm_825_while_lstm_cell_747_biasadd_readvariableop_resourceMsequential_275_lstm_825_while_lstm_cell_747_biasadd_readvariableop_resource_0"?
Lsequential_275_lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resourceNsequential_275_lstm_825_while_lstm_cell_747_matmul_1_readvariableop_resource_0"?
Jsequential_275_lstm_825_while_lstm_cell_747_matmul_readvariableop_resourceLsequential_275_lstm_825_while_lstm_cell_747_matmul_readvariableop_resource_0"?
Esequential_275_lstm_825_while_sequential_275_lstm_825_strided_slice_1Gsequential_275_lstm_825_while_sequential_275_lstm_825_strided_slice_1_0"?
?sequential_275_lstm_825_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_825_tensorarrayunstack_tensorlistfromtensor?sequential_275_lstm_825_while_tensorarrayv2read_tensorlistgetitem_sequential_275_lstm_825_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOpBsequential_275/lstm_825/while/lstm_cell_747/BiasAdd/ReadVariableOp2?
Asequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOpAsequential_275/lstm_825/while/lstm_cell_747/MatMul/ReadVariableOp2?
Csequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOpCsequential_275/lstm_825/while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4535069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4535069___redundant_placeholder05
1while_while_cond_4535069___redundant_placeholder15
1while_while_cond_4535069___redundant_placeholder25
1while_while_cond_4535069___redundant_placeholder3
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
/__inference_lstm_cell_749_layer_call_fn_4535386

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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4530905o
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

?
lstm_827_while_cond_4532788.
*lstm_827_while_lstm_827_while_loop_counter4
0lstm_827_while_lstm_827_while_maximum_iterations
lstm_827_while_placeholder 
lstm_827_while_placeholder_1 
lstm_827_while_placeholder_2 
lstm_827_while_placeholder_30
,lstm_827_while_less_lstm_827_strided_slice_1G
Clstm_827_while_lstm_827_while_cond_4532788___redundant_placeholder0G
Clstm_827_while_lstm_827_while_cond_4532788___redundant_placeholder1G
Clstm_827_while_lstm_827_while_cond_4532788___redundant_placeholder2G
Clstm_827_while_lstm_827_while_cond_4532788___redundant_placeholder3
lstm_827_while_identity
?
lstm_827/while/LessLesslstm_827_while_placeholder,lstm_827_while_less_lstm_827_strided_slice_1*
T0*
_output_shapes
: ]
lstm_827/while/IdentityIdentitylstm_827/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_827_while_identity lstm_827/while/Identity:output:0*(
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
??
?
"__inference__wrapped_model_4530138
lstm_825_inputW
Dsequential_275_lstm_825_lstm_cell_747_matmul_readvariableop_resource:	?Y
Fsequential_275_lstm_825_lstm_cell_747_matmul_1_readvariableop_resource:	d?T
Esequential_275_lstm_825_lstm_cell_747_biasadd_readvariableop_resource:	?W
Dsequential_275_lstm_826_lstm_cell_748_matmul_readvariableop_resource:	d?Y
Fsequential_275_lstm_826_lstm_cell_748_matmul_1_readvariableop_resource:	2?T
Esequential_275_lstm_826_lstm_cell_748_biasadd_readvariableop_resource:	?V
Dsequential_275_lstm_827_lstm_cell_749_matmul_readvariableop_resource:2(X
Fsequential_275_lstm_827_lstm_cell_749_matmul_1_readvariableop_resource:
(S
Esequential_275_lstm_827_lstm_cell_749_biasadd_readvariableop_resource:(I
7sequential_275_dense_275_matmul_readvariableop_resource:
F
8sequential_275_dense_275_biasadd_readvariableop_resource:
identity??/sequential_275/dense_275/BiasAdd/ReadVariableOp?.sequential_275/dense_275/MatMul/ReadVariableOp?<sequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp?;sequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOp?=sequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp?sequential_275/lstm_825/while?<sequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp?;sequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOp?=sequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp?sequential_275/lstm_826/while?<sequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp?;sequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOp?=sequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp?sequential_275/lstm_827/while[
sequential_275/lstm_825/ShapeShapelstm_825_input*
T0*
_output_shapes
:u
+sequential_275/lstm_825/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_275/lstm_825/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_275/lstm_825/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_275/lstm_825/strided_sliceStridedSlice&sequential_275/lstm_825/Shape:output:04sequential_275/lstm_825/strided_slice/stack:output:06sequential_275/lstm_825/strided_slice/stack_1:output:06sequential_275/lstm_825/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_275/lstm_825/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_275/lstm_825/zeros/packedPack.sequential_275/lstm_825/strided_slice:output:0/sequential_275/lstm_825/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_275/lstm_825/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_825/zerosFill-sequential_275/lstm_825/zeros/packed:output:0,sequential_275/lstm_825/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_275/lstm_825/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_275/lstm_825/zeros_1/packedPack.sequential_275/lstm_825/strided_slice:output:01sequential_275/lstm_825/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_275/lstm_825/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_825/zeros_1Fill/sequential_275/lstm_825/zeros_1/packed:output:0.sequential_275/lstm_825/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_275/lstm_825/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_275/lstm_825/transpose	Transposelstm_825_input/sequential_275/lstm_825/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_275/lstm_825/Shape_1Shape%sequential_275/lstm_825/transpose:y:0*
T0*
_output_shapes
:w
-sequential_275/lstm_825/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_825/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_825/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_825/strided_slice_1StridedSlice(sequential_275/lstm_825/Shape_1:output:06sequential_275/lstm_825/strided_slice_1/stack:output:08sequential_275/lstm_825/strided_slice_1/stack_1:output:08sequential_275/lstm_825/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_275/lstm_825/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_275/lstm_825/TensorArrayV2TensorListReserve<sequential_275/lstm_825/TensorArrayV2/element_shape:output:00sequential_275/lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_275/lstm_825/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_275/lstm_825/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_275/lstm_825/transpose:y:0Vsequential_275/lstm_825/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_275/lstm_825/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_825/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_825/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_825/strided_slice_2StridedSlice%sequential_275/lstm_825/transpose:y:06sequential_275/lstm_825/strided_slice_2/stack:output:08sequential_275/lstm_825/strided_slice_2/stack_1:output:08sequential_275/lstm_825/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOpReadVariableOpDsequential_275_lstm_825_lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_275/lstm_825/lstm_cell_747/MatMulMatMul0sequential_275/lstm_825/strided_slice_2:output:0Csequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOpFsequential_275_lstm_825_lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_275/lstm_825/lstm_cell_747/MatMul_1MatMul&sequential_275/lstm_825/zeros:output:0Esequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_275/lstm_825/lstm_cell_747/addAddV26sequential_275/lstm_825/lstm_cell_747/MatMul:product:08sequential_275/lstm_825/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOpEsequential_275_lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_275/lstm_825/lstm_cell_747/BiasAddBiasAdd-sequential_275/lstm_825/lstm_cell_747/add:z:0Dsequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_275/lstm_825/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_275/lstm_825/lstm_cell_747/splitSplit>sequential_275/lstm_825/lstm_cell_747/split/split_dim:output:06sequential_275/lstm_825/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_275/lstm_825/lstm_cell_747/SigmoidSigmoid4sequential_275/lstm_825/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_275/lstm_825/lstm_cell_747/Sigmoid_1Sigmoid4sequential_275/lstm_825/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_275/lstm_825/lstm_cell_747/mulMul3sequential_275/lstm_825/lstm_cell_747/Sigmoid_1:y:0(sequential_275/lstm_825/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_275/lstm_825/lstm_cell_747/ReluRelu4sequential_275/lstm_825/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_275/lstm_825/lstm_cell_747/mul_1Mul1sequential_275/lstm_825/lstm_cell_747/Sigmoid:y:08sequential_275/lstm_825/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_275/lstm_825/lstm_cell_747/add_1AddV2-sequential_275/lstm_825/lstm_cell_747/mul:z:0/sequential_275/lstm_825/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_275/lstm_825/lstm_cell_747/Sigmoid_2Sigmoid4sequential_275/lstm_825/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_275/lstm_825/lstm_cell_747/Relu_1Relu/sequential_275/lstm_825/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_275/lstm_825/lstm_cell_747/mul_2Mul3sequential_275/lstm_825/lstm_cell_747/Sigmoid_2:y:0:sequential_275/lstm_825/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_275/lstm_825/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_275/lstm_825/TensorArrayV2_1TensorListReserve>sequential_275/lstm_825/TensorArrayV2_1/element_shape:output:00sequential_275/lstm_825/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_275/lstm_825/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_275/lstm_825/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_275/lstm_825/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_275/lstm_825/whileWhile3sequential_275/lstm_825/while/loop_counter:output:09sequential_275/lstm_825/while/maximum_iterations:output:0%sequential_275/lstm_825/time:output:00sequential_275/lstm_825/TensorArrayV2_1:handle:0&sequential_275/lstm_825/zeros:output:0(sequential_275/lstm_825/zeros_1:output:00sequential_275/lstm_825/strided_slice_1:output:0Osequential_275/lstm_825/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_275_lstm_825_lstm_cell_747_matmul_readvariableop_resourceFsequential_275_lstm_825_lstm_cell_747_matmul_1_readvariableop_resourceEsequential_275_lstm_825_lstm_cell_747_biasadd_readvariableop_resource*
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
*sequential_275_lstm_825_while_body_4529770*6
cond.R,
*sequential_275_lstm_825_while_cond_4529769*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_275/lstm_825/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_275/lstm_825/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_275/lstm_825/while:output:3Qsequential_275/lstm_825/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_275/lstm_825/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_275/lstm_825/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_825/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_825/strided_slice_3StridedSliceCsequential_275/lstm_825/TensorArrayV2Stack/TensorListStack:tensor:06sequential_275/lstm_825/strided_slice_3/stack:output:08sequential_275/lstm_825/strided_slice_3/stack_1:output:08sequential_275/lstm_825/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_275/lstm_825/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_275/lstm_825/transpose_1	TransposeCsequential_275/lstm_825/TensorArrayV2Stack/TensorListStack:tensor:01sequential_275/lstm_825/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_275/lstm_825/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_275/lstm_826/ShapeShape'sequential_275/lstm_825/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_275/lstm_826/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_275/lstm_826/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_275/lstm_826/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_275/lstm_826/strided_sliceStridedSlice&sequential_275/lstm_826/Shape:output:04sequential_275/lstm_826/strided_slice/stack:output:06sequential_275/lstm_826/strided_slice/stack_1:output:06sequential_275/lstm_826/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_275/lstm_826/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_275/lstm_826/zeros/packedPack.sequential_275/lstm_826/strided_slice:output:0/sequential_275/lstm_826/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_275/lstm_826/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_826/zerosFill-sequential_275/lstm_826/zeros/packed:output:0,sequential_275/lstm_826/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_275/lstm_826/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_275/lstm_826/zeros_1/packedPack.sequential_275/lstm_826/strided_slice:output:01sequential_275/lstm_826/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_275/lstm_826/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_826/zeros_1Fill/sequential_275/lstm_826/zeros_1/packed:output:0.sequential_275/lstm_826/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_275/lstm_826/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_275/lstm_826/transpose	Transpose'sequential_275/lstm_825/transpose_1:y:0/sequential_275/lstm_826/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_275/lstm_826/Shape_1Shape%sequential_275/lstm_826/transpose:y:0*
T0*
_output_shapes
:w
-sequential_275/lstm_826/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_826/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_826/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_826/strided_slice_1StridedSlice(sequential_275/lstm_826/Shape_1:output:06sequential_275/lstm_826/strided_slice_1/stack:output:08sequential_275/lstm_826/strided_slice_1/stack_1:output:08sequential_275/lstm_826/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_275/lstm_826/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_275/lstm_826/TensorArrayV2TensorListReserve<sequential_275/lstm_826/TensorArrayV2/element_shape:output:00sequential_275/lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_275/lstm_826/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_275/lstm_826/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_275/lstm_826/transpose:y:0Vsequential_275/lstm_826/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_275/lstm_826/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_826/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_826/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_826/strided_slice_2StridedSlice%sequential_275/lstm_826/transpose:y:06sequential_275/lstm_826/strided_slice_2/stack:output:08sequential_275/lstm_826/strided_slice_2/stack_1:output:08sequential_275/lstm_826/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOpReadVariableOpDsequential_275_lstm_826_lstm_cell_748_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_275/lstm_826/lstm_cell_748/MatMulMatMul0sequential_275/lstm_826/strided_slice_2:output:0Csequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOpFsequential_275_lstm_826_lstm_cell_748_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_275/lstm_826/lstm_cell_748/MatMul_1MatMul&sequential_275/lstm_826/zeros:output:0Esequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_275/lstm_826/lstm_cell_748/addAddV26sequential_275/lstm_826/lstm_cell_748/MatMul:product:08sequential_275/lstm_826/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOpEsequential_275_lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_275/lstm_826/lstm_cell_748/BiasAddBiasAdd-sequential_275/lstm_826/lstm_cell_748/add:z:0Dsequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_275/lstm_826/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_275/lstm_826/lstm_cell_748/splitSplit>sequential_275/lstm_826/lstm_cell_748/split/split_dim:output:06sequential_275/lstm_826/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_275/lstm_826/lstm_cell_748/SigmoidSigmoid4sequential_275/lstm_826/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_275/lstm_826/lstm_cell_748/Sigmoid_1Sigmoid4sequential_275/lstm_826/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_275/lstm_826/lstm_cell_748/mulMul3sequential_275/lstm_826/lstm_cell_748/Sigmoid_1:y:0(sequential_275/lstm_826/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_275/lstm_826/lstm_cell_748/ReluRelu4sequential_275/lstm_826/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_275/lstm_826/lstm_cell_748/mul_1Mul1sequential_275/lstm_826/lstm_cell_748/Sigmoid:y:08sequential_275/lstm_826/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_275/lstm_826/lstm_cell_748/add_1AddV2-sequential_275/lstm_826/lstm_cell_748/mul:z:0/sequential_275/lstm_826/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_275/lstm_826/lstm_cell_748/Sigmoid_2Sigmoid4sequential_275/lstm_826/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_275/lstm_826/lstm_cell_748/Relu_1Relu/sequential_275/lstm_826/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_275/lstm_826/lstm_cell_748/mul_2Mul3sequential_275/lstm_826/lstm_cell_748/Sigmoid_2:y:0:sequential_275/lstm_826/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_275/lstm_826/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_275/lstm_826/TensorArrayV2_1TensorListReserve>sequential_275/lstm_826/TensorArrayV2_1/element_shape:output:00sequential_275/lstm_826/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_275/lstm_826/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_275/lstm_826/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_275/lstm_826/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_275/lstm_826/whileWhile3sequential_275/lstm_826/while/loop_counter:output:09sequential_275/lstm_826/while/maximum_iterations:output:0%sequential_275/lstm_826/time:output:00sequential_275/lstm_826/TensorArrayV2_1:handle:0&sequential_275/lstm_826/zeros:output:0(sequential_275/lstm_826/zeros_1:output:00sequential_275/lstm_826/strided_slice_1:output:0Osequential_275/lstm_826/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_275_lstm_826_lstm_cell_748_matmul_readvariableop_resourceFsequential_275_lstm_826_lstm_cell_748_matmul_1_readvariableop_resourceEsequential_275_lstm_826_lstm_cell_748_biasadd_readvariableop_resource*
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
*sequential_275_lstm_826_while_body_4529909*6
cond.R,
*sequential_275_lstm_826_while_cond_4529908*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_275/lstm_826/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_275/lstm_826/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_275/lstm_826/while:output:3Qsequential_275/lstm_826/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_275/lstm_826/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_275/lstm_826/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_826/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_826/strided_slice_3StridedSliceCsequential_275/lstm_826/TensorArrayV2Stack/TensorListStack:tensor:06sequential_275/lstm_826/strided_slice_3/stack:output:08sequential_275/lstm_826/strided_slice_3/stack_1:output:08sequential_275/lstm_826/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_275/lstm_826/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_275/lstm_826/transpose_1	TransposeCsequential_275/lstm_826/TensorArrayV2Stack/TensorListStack:tensor:01sequential_275/lstm_826/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_275/lstm_826/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_275/lstm_827/ShapeShape'sequential_275/lstm_826/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_275/lstm_827/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_275/lstm_827/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_275/lstm_827/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_275/lstm_827/strided_sliceStridedSlice&sequential_275/lstm_827/Shape:output:04sequential_275/lstm_827/strided_slice/stack:output:06sequential_275/lstm_827/strided_slice/stack_1:output:06sequential_275/lstm_827/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_275/lstm_827/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_275/lstm_827/zeros/packedPack.sequential_275/lstm_827/strided_slice:output:0/sequential_275/lstm_827/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_275/lstm_827/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_827/zerosFill-sequential_275/lstm_827/zeros/packed:output:0,sequential_275/lstm_827/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_275/lstm_827/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_275/lstm_827/zeros_1/packedPack.sequential_275/lstm_827/strided_slice:output:01sequential_275/lstm_827/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_275/lstm_827/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_275/lstm_827/zeros_1Fill/sequential_275/lstm_827/zeros_1/packed:output:0.sequential_275/lstm_827/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_275/lstm_827/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_275/lstm_827/transpose	Transpose'sequential_275/lstm_826/transpose_1:y:0/sequential_275/lstm_827/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_275/lstm_827/Shape_1Shape%sequential_275/lstm_827/transpose:y:0*
T0*
_output_shapes
:w
-sequential_275/lstm_827/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_827/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_827/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_827/strided_slice_1StridedSlice(sequential_275/lstm_827/Shape_1:output:06sequential_275/lstm_827/strided_slice_1/stack:output:08sequential_275/lstm_827/strided_slice_1/stack_1:output:08sequential_275/lstm_827/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_275/lstm_827/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_275/lstm_827/TensorArrayV2TensorListReserve<sequential_275/lstm_827/TensorArrayV2/element_shape:output:00sequential_275/lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_275/lstm_827/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_275/lstm_827/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_275/lstm_827/transpose:y:0Vsequential_275/lstm_827/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_275/lstm_827/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_827/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_275/lstm_827/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_827/strided_slice_2StridedSlice%sequential_275/lstm_827/transpose:y:06sequential_275/lstm_827/strided_slice_2/stack:output:08sequential_275/lstm_827/strided_slice_2/stack_1:output:08sequential_275/lstm_827/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOpReadVariableOpDsequential_275_lstm_827_lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_275/lstm_827/lstm_cell_749/MatMulMatMul0sequential_275/lstm_827/strided_slice_2:output:0Csequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOpFsequential_275_lstm_827_lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_275/lstm_827/lstm_cell_749/MatMul_1MatMul&sequential_275/lstm_827/zeros:output:0Esequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_275/lstm_827/lstm_cell_749/addAddV26sequential_275/lstm_827/lstm_cell_749/MatMul:product:08sequential_275/lstm_827/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOpEsequential_275_lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_275/lstm_827/lstm_cell_749/BiasAddBiasAdd-sequential_275/lstm_827/lstm_cell_749/add:z:0Dsequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_275/lstm_827/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_275/lstm_827/lstm_cell_749/splitSplit>sequential_275/lstm_827/lstm_cell_749/split/split_dim:output:06sequential_275/lstm_827/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_275/lstm_827/lstm_cell_749/SigmoidSigmoid4sequential_275/lstm_827/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_275/lstm_827/lstm_cell_749/Sigmoid_1Sigmoid4sequential_275/lstm_827/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_275/lstm_827/lstm_cell_749/mulMul3sequential_275/lstm_827/lstm_cell_749/Sigmoid_1:y:0(sequential_275/lstm_827/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_275/lstm_827/lstm_cell_749/ReluRelu4sequential_275/lstm_827/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_275/lstm_827/lstm_cell_749/mul_1Mul1sequential_275/lstm_827/lstm_cell_749/Sigmoid:y:08sequential_275/lstm_827/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_275/lstm_827/lstm_cell_749/add_1AddV2-sequential_275/lstm_827/lstm_cell_749/mul:z:0/sequential_275/lstm_827/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_275/lstm_827/lstm_cell_749/Sigmoid_2Sigmoid4sequential_275/lstm_827/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_275/lstm_827/lstm_cell_749/Relu_1Relu/sequential_275/lstm_827/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_275/lstm_827/lstm_cell_749/mul_2Mul3sequential_275/lstm_827/lstm_cell_749/Sigmoid_2:y:0:sequential_275/lstm_827/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_275/lstm_827/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_275/lstm_827/TensorArrayV2_1TensorListReserve>sequential_275/lstm_827/TensorArrayV2_1/element_shape:output:00sequential_275/lstm_827/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_275/lstm_827/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_275/lstm_827/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_275/lstm_827/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_275/lstm_827/whileWhile3sequential_275/lstm_827/while/loop_counter:output:09sequential_275/lstm_827/while/maximum_iterations:output:0%sequential_275/lstm_827/time:output:00sequential_275/lstm_827/TensorArrayV2_1:handle:0&sequential_275/lstm_827/zeros:output:0(sequential_275/lstm_827/zeros_1:output:00sequential_275/lstm_827/strided_slice_1:output:0Osequential_275/lstm_827/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_275_lstm_827_lstm_cell_749_matmul_readvariableop_resourceFsequential_275_lstm_827_lstm_cell_749_matmul_1_readvariableop_resourceEsequential_275_lstm_827_lstm_cell_749_biasadd_readvariableop_resource*
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
*sequential_275_lstm_827_while_body_4530048*6
cond.R,
*sequential_275_lstm_827_while_cond_4530047*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_275/lstm_827/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_275/lstm_827/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_275/lstm_827/while:output:3Qsequential_275/lstm_827/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_275/lstm_827/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_275/lstm_827/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_275/lstm_827/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_275/lstm_827/strided_slice_3StridedSliceCsequential_275/lstm_827/TensorArrayV2Stack/TensorListStack:tensor:06sequential_275/lstm_827/strided_slice_3/stack:output:08sequential_275/lstm_827/strided_slice_3/stack_1:output:08sequential_275/lstm_827/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_275/lstm_827/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_275/lstm_827/transpose_1	TransposeCsequential_275/lstm_827/TensorArrayV2Stack/TensorListStack:tensor:01sequential_275/lstm_827/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_275/lstm_827/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_275/dense_275/MatMul/ReadVariableOpReadVariableOp7sequential_275_dense_275_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_275/dense_275/MatMulMatMul0sequential_275/lstm_827/strided_slice_3:output:06sequential_275/dense_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_275/dense_275/BiasAdd/ReadVariableOpReadVariableOp8sequential_275_dense_275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_275/dense_275/BiasAddBiasAdd)sequential_275/dense_275/MatMul:product:07sequential_275/dense_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_275/dense_275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_275/dense_275/BiasAdd/ReadVariableOp/^sequential_275/dense_275/MatMul/ReadVariableOp=^sequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp<^sequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOp>^sequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp^sequential_275/lstm_825/while=^sequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp<^sequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOp>^sequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp^sequential_275/lstm_826/while=^sequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp<^sequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOp>^sequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp^sequential_275/lstm_827/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_275/dense_275/BiasAdd/ReadVariableOp/sequential_275/dense_275/BiasAdd/ReadVariableOp2`
.sequential_275/dense_275/MatMul/ReadVariableOp.sequential_275/dense_275/MatMul/ReadVariableOp2|
<sequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp<sequential_275/lstm_825/lstm_cell_747/BiasAdd/ReadVariableOp2z
;sequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOp;sequential_275/lstm_825/lstm_cell_747/MatMul/ReadVariableOp2~
=sequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp=sequential_275/lstm_825/lstm_cell_747/MatMul_1/ReadVariableOp2>
sequential_275/lstm_825/whilesequential_275/lstm_825/while2|
<sequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp<sequential_275/lstm_826/lstm_cell_748/BiasAdd/ReadVariableOp2z
;sequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOp;sequential_275/lstm_826/lstm_cell_748/MatMul/ReadVariableOp2~
=sequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp=sequential_275/lstm_826/lstm_cell_748/MatMul_1/ReadVariableOp2>
sequential_275/lstm_826/whilesequential_275/lstm_826/while2|
<sequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp<sequential_275/lstm_827/lstm_cell_749/BiasAdd/ReadVariableOp2z
;sequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOp;sequential_275/lstm_827/lstm_cell_749/MatMul/ReadVariableOp2~
=sequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp=sequential_275/lstm_827/lstm_cell_749/MatMul_1/ReadVariableOp2>
sequential_275/lstm_827/whilesequential_275/lstm_827/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_825_input
?C
?

lstm_826_while_body_4532650.
*lstm_826_while_lstm_826_while_loop_counter4
0lstm_826_while_lstm_826_while_maximum_iterations
lstm_826_while_placeholder 
lstm_826_while_placeholder_1 
lstm_826_while_placeholder_2 
lstm_826_while_placeholder_3-
)lstm_826_while_lstm_826_strided_slice_1_0i
elstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0:	d?R
?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?M
>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
lstm_826_while_identity
lstm_826_while_identity_1
lstm_826_while_identity_2
lstm_826_while_identity_3
lstm_826_while_identity_4
lstm_826_while_identity_5+
'lstm_826_while_lstm_826_strided_slice_1g
clstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensorN
;lstm_826_while_lstm_cell_748_matmul_readvariableop_resource:	d?P
=lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource:	2?K
<lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource:	???3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp?2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp?4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp?
@lstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_826/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0lstm_826_while_placeholderIlstm_826/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_826/while/lstm_cell_748/MatMulMatMul9lstm_826/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_826/while/lstm_cell_748/MatMul_1MatMullstm_826_while_placeholder_2<lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_826/while/lstm_cell_748/addAddV2-lstm_826/while/lstm_cell_748/MatMul:product:0/lstm_826/while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_826/while/lstm_cell_748/BiasAddBiasAdd$lstm_826/while/lstm_cell_748/add:z:0;lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_826/while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_826/while/lstm_cell_748/splitSplit5lstm_826/while/lstm_cell_748/split/split_dim:output:0-lstm_826/while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_826/while/lstm_cell_748/SigmoidSigmoid+lstm_826/while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_826/while/lstm_cell_748/Sigmoid_1Sigmoid+lstm_826/while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_826/while/lstm_cell_748/mulMul*lstm_826/while/lstm_cell_748/Sigmoid_1:y:0lstm_826_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_826/while/lstm_cell_748/ReluRelu+lstm_826/while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/mul_1Mul(lstm_826/while/lstm_cell_748/Sigmoid:y:0/lstm_826/while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/add_1AddV2$lstm_826/while/lstm_cell_748/mul:z:0&lstm_826/while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_826/while/lstm_cell_748/Sigmoid_2Sigmoid+lstm_826/while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_826/while/lstm_cell_748/Relu_1Relu&lstm_826/while/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_826/while/lstm_cell_748/mul_2Mul*lstm_826/while/lstm_cell_748/Sigmoid_2:y:01lstm_826/while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_826/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_826_while_placeholder_1lstm_826_while_placeholder&lstm_826/while/lstm_cell_748/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_826/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_826/while/addAddV2lstm_826_while_placeholderlstm_826/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_826/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_826/while/add_1AddV2*lstm_826_while_lstm_826_while_loop_counterlstm_826/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_826/while/IdentityIdentitylstm_826/while/add_1:z:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_1Identity0lstm_826_while_lstm_826_while_maximum_iterations^lstm_826/while/NoOp*
T0*
_output_shapes
: t
lstm_826/while/Identity_2Identitylstm_826/while/add:z:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_3IdentityClstm_826/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_826/while/NoOp*
T0*
_output_shapes
: ?
lstm_826/while/Identity_4Identity&lstm_826/while/lstm_cell_748/mul_2:z:0^lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_826/while/Identity_5Identity&lstm_826/while/lstm_cell_748/add_1:z:0^lstm_826/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_826/while/NoOpNoOp4^lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp3^lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp5^lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_826_while_identity lstm_826/while/Identity:output:0"?
lstm_826_while_identity_1"lstm_826/while/Identity_1:output:0"?
lstm_826_while_identity_2"lstm_826/while/Identity_2:output:0"?
lstm_826_while_identity_3"lstm_826/while/Identity_3:output:0"?
lstm_826_while_identity_4"lstm_826/while/Identity_4:output:0"?
lstm_826_while_identity_5"lstm_826/while/Identity_5:output:0"T
'lstm_826_while_lstm_826_strided_slice_1)lstm_826_while_lstm_826_strided_slice_1_0"~
<lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource>lstm_826_while_lstm_cell_748_biasadd_readvariableop_resource_0"?
=lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource?lstm_826_while_lstm_cell_748_matmul_1_readvariableop_resource_0"|
;lstm_826_while_lstm_cell_748_matmul_readvariableop_resource=lstm_826_while_lstm_cell_748_matmul_readvariableop_resource_0"?
clstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensorelstm_826_while_tensorarrayv2read_tensorlistgetitem_lstm_826_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp3lstm_826/while/lstm_cell_748/BiasAdd/ReadVariableOp2h
2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp2lstm_826/while/lstm_cell_748/MatMul/ReadVariableOp2l
4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp4lstm_826/while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_826_layer_call_fn_4533955

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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4531487s
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
while_body_4533838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535271

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
while_cond_4531552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531552___redundant_placeholder05
1while_while_cond_4531552___redundant_placeholder15
1while_while_cond_4531552___redundant_placeholder25
1while_while_cond_4531552___redundant_placeholder3
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
0__inference_sequential_275_layer_call_fn_4531687
lstm_825_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_825_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4531662o
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
_user_specified_namelstm_825_input
?
?
while_cond_4534024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534024___redundant_placeholder05
1while_while_cond_4534024___redundant_placeholder15
1while_while_cond_4534024___redundant_placeholder25
1while_while_cond_4534024___redundant_placeholder3
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531179

inputs'
lstm_cell_749_4531097:2('
lstm_cell_749_4531099:
(#
lstm_cell_749_4531101:(
identity??%lstm_cell_749/StatefulPartitionedCall?while;
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
%lstm_cell_749/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_749_4531097lstm_cell_749_4531099lstm_cell_749_4531101*
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4531051n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_749_4531097lstm_cell_749_4531099lstm_cell_749_4531101*
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
while_body_4531110*
condR
while_cond_4531109*K
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
NoOpNoOp&^lstm_cell_749/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_749/StatefulPartitionedCall%lstm_cell_749/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533493
inputs_0?
,lstm_cell_747_matmul_readvariableop_resource:	?A
.lstm_cell_747_matmul_1_readvariableop_resource:	d?<
-lstm_cell_747_biasadd_readvariableop_resource:	?
identity??$lstm_cell_747/BiasAdd/ReadVariableOp?#lstm_cell_747/MatMul/ReadVariableOp?%lstm_cell_747/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_747/MatMul/ReadVariableOpReadVariableOp,lstm_cell_747_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_747/MatMulMatMulstrided_slice_2:output:0+lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_747_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_747/MatMul_1MatMulzeros:output:0-lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_747/addAddV2lstm_cell_747/MatMul:product:0 lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_747_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_747/BiasAddBiasAddlstm_cell_747/add:z:0,lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_747/splitSplit&lstm_cell_747/split/split_dim:output:0lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_747/SigmoidSigmoidlstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_1Sigmoidlstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_747/mulMullstm_cell_747/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_747/ReluRelulstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_1Mullstm_cell_747/Sigmoid:y:0 lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_747/add_1AddV2lstm_cell_747/mul:z:0lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_747/Sigmoid_2Sigmoidlstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_747/Relu_1Relulstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_747/mul_2Mullstm_cell_747/Sigmoid_2:y:0"lstm_cell_747/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_747_matmul_readvariableop_resource.lstm_cell_747_matmul_1_readvariableop_resource-lstm_cell_747_biasadd_readvariableop_resource*
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
while_body_4533409*
condR
while_cond_4533408*K
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
NoOpNoOp%^lstm_cell_747/BiasAdd/ReadVariableOp$^lstm_cell_747/MatMul/ReadVariableOp&^lstm_cell_747/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_747/BiasAdd/ReadVariableOp$lstm_cell_747/BiasAdd/ReadVariableOp2J
#lstm_cell_747/MatMul/ReadVariableOp#lstm_cell_747/MatMul/ReadVariableOp2N
%lstm_cell_747/MatMul_1/ReadVariableOp%lstm_cell_747/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_825_layer_call_fn_4533328
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4530479|
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
while_body_4534168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_748_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_748_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_748_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_748_matmul_readvariableop_resource:	d?G
4while_lstm_cell_748_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_748_biasadd_readvariableop_resource:	???*while/lstm_cell_748/BiasAdd/ReadVariableOp?)while/lstm_cell_748/MatMul/ReadVariableOp?+while/lstm_cell_748/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_748/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_748_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_748/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_748/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_748/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_748_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_748/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_748/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_748/addAddV2$while/lstm_cell_748/MatMul:product:0&while/lstm_cell_748/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_748/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_748_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_748/BiasAddBiasAddwhile/lstm_cell_748/add:z:02while/lstm_cell_748/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_748/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_748/splitSplit,while/lstm_cell_748/split/split_dim:output:0$while/lstm_cell_748/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_748/SigmoidSigmoid"while/lstm_cell_748/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_1Sigmoid"while/lstm_cell_748/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mulMul!while/lstm_cell_748/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_748/ReluRelu"while/lstm_cell_748/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_1Mulwhile/lstm_cell_748/Sigmoid:y:0&while/lstm_cell_748/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/add_1AddV2while/lstm_cell_748/mul:z:0while/lstm_cell_748/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_748/Sigmoid_2Sigmoid"while/lstm_cell_748/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_748/Relu_1Reluwhile/lstm_cell_748/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_748/mul_2Mul!while/lstm_cell_748/Sigmoid_2:y:0(while/lstm_cell_748/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_748/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_748/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_748/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_748/BiasAdd/ReadVariableOp*^while/lstm_cell_748/MatMul/ReadVariableOp,^while/lstm_cell_748/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_748_biasadd_readvariableop_resource5while_lstm_cell_748_biasadd_readvariableop_resource_0"n
4while_lstm_cell_748_matmul_1_readvariableop_resource6while_lstm_cell_748_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_748_matmul_readvariableop_resource4while_lstm_cell_748_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_748/BiasAdd/ReadVariableOp*while/lstm_cell_748/BiasAdd/ReadVariableOp2V
)while/lstm_cell_748/MatMul/ReadVariableOp)while/lstm_cell_748/MatMul/ReadVariableOp2Z
+while/lstm_cell_748/MatMul_1/ReadVariableOp+while/lstm_cell_748/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535239

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
?K
?
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534725
inputs_0>
,lstm_cell_749_matmul_readvariableop_resource:2(@
.lstm_cell_749_matmul_1_readvariableop_resource:
(;
-lstm_cell_749_biasadd_readvariableop_resource:(
identity??$lstm_cell_749/BiasAdd/ReadVariableOp?#lstm_cell_749/MatMul/ReadVariableOp?%lstm_cell_749/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_749/MatMul/ReadVariableOpReadVariableOp,lstm_cell_749_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_749/MatMulMatMulstrided_slice_2:output:0+lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_749_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_749/MatMul_1MatMulzeros:output:0-lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_749/addAddV2lstm_cell_749/MatMul:product:0 lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_749_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_749/BiasAddBiasAddlstm_cell_749/add:z:0,lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_749/splitSplit&lstm_cell_749/split/split_dim:output:0lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_749/SigmoidSigmoidlstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_1Sigmoidlstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_749/mulMullstm_cell_749/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_749/ReluRelulstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_1Mullstm_cell_749/Sigmoid:y:0 lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_749/add_1AddV2lstm_cell_749/mul:z:0lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_749/Sigmoid_2Sigmoidlstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_749/Relu_1Relulstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_749/mul_2Mullstm_cell_749/Sigmoid_2:y:0"lstm_cell_749/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_749_matmul_readvariableop_resource.lstm_cell_749_matmul_1_readvariableop_resource-lstm_cell_749_biasadd_readvariableop_resource*
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
while_body_4534641*
condR
while_cond_4534640*K
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
NoOpNoOp%^lstm_cell_749/BiasAdd/ReadVariableOp$^lstm_cell_749/MatMul/ReadVariableOp&^lstm_cell_749/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_749/BiasAdd/ReadVariableOp$lstm_cell_749/BiasAdd/ReadVariableOp2J
#lstm_cell_749/MatMul/ReadVariableOp#lstm_cell_749/MatMul/ReadVariableOp2N
%lstm_cell_749/MatMul_1/ReadVariableOp%lstm_cell_749/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_825_layer_call_fn_4533350

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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4532183s
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
while_cond_4534310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534310___redundant_placeholder05
1while_while_cond_4534310___redundant_placeholder15
1while_while_cond_4534310___redundant_placeholder25
1while_while_cond_4534310___redundant_placeholder3
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
?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532363
lstm_825_input#
lstm_825_4532336:	?#
lstm_825_4532338:	d?
lstm_825_4532340:	?#
lstm_826_4532343:	d?#
lstm_826_4532345:	2?
lstm_826_4532347:	?"
lstm_827_4532350:2("
lstm_827_4532352:
(
lstm_827_4532354:(#
dense_275_4532357:

dense_275_4532359:
identity??!dense_275/StatefulPartitionedCall? lstm_825/StatefulPartitionedCall? lstm_826/StatefulPartitionedCall? lstm_827/StatefulPartitionedCall?
 lstm_825/StatefulPartitionedCallStatefulPartitionedCalllstm_825_inputlstm_825_4532336lstm_825_4532338lstm_825_4532340*
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4532183?
 lstm_826/StatefulPartitionedCallStatefulPartitionedCall)lstm_825/StatefulPartitionedCall:output:0lstm_826_4532343lstm_826_4532345lstm_826_4532347*
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4532018?
 lstm_827/StatefulPartitionedCallStatefulPartitionedCall)lstm_826/StatefulPartitionedCall:output:0lstm_827_4532350lstm_827_4532352lstm_827_4532354*
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4531853?
!dense_275/StatefulPartitionedCallStatefulPartitionedCall)lstm_827/StatefulPartitionedCall:output:0dense_275_4532357dense_275_4532359*
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655y
IdentityIdentity*dense_275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_275/StatefulPartitionedCall!^lstm_825/StatefulPartitionedCall!^lstm_826/StatefulPartitionedCall!^lstm_827/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_275/StatefulPartitionedCall!dense_275/StatefulPartitionedCall2D
 lstm_825/StatefulPartitionedCall lstm_825/StatefulPartitionedCall2D
 lstm_826/StatefulPartitionedCall lstm_826/StatefulPartitionedCall2D
 lstm_827/StatefulPartitionedCall lstm_827/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_825_input
?8
?
while_body_4533409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4534167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534167___redundant_placeholder05
1while_while_cond_4534167___redundant_placeholder15
1while_while_cond_4534167___redundant_placeholder25
1while_while_cond_4534167___redundant_placeholder3
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
while_body_4535070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_749_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_749_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_749_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_749_matmul_readvariableop_resource:2(F
4while_lstm_cell_749_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_749_biasadd_readvariableop_resource:(??*while/lstm_cell_749/BiasAdd/ReadVariableOp?)while/lstm_cell_749/MatMul/ReadVariableOp?+while/lstm_cell_749/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_749/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_749_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_749/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_749/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_749/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_749_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_749/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_749/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_749/addAddV2$while/lstm_cell_749/MatMul:product:0&while/lstm_cell_749/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_749/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_749_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_749/BiasAddBiasAddwhile/lstm_cell_749/add:z:02while/lstm_cell_749/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_749/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_749/splitSplit,while/lstm_cell_749/split/split_dim:output:0$while/lstm_cell_749/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_749/SigmoidSigmoid"while/lstm_cell_749/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_1Sigmoid"while/lstm_cell_749/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mulMul!while/lstm_cell_749/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_749/ReluRelu"while/lstm_cell_749/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_1Mulwhile/lstm_cell_749/Sigmoid:y:0&while/lstm_cell_749/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/add_1AddV2while/lstm_cell_749/mul:z:0while/lstm_cell_749/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_749/Sigmoid_2Sigmoid"while/lstm_cell_749/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_749/Relu_1Reluwhile/lstm_cell_749/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_749/mul_2Mul!while/lstm_cell_749/Sigmoid_2:y:0(while/lstm_cell_749/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_749/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_749/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_749/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_749/BiasAdd/ReadVariableOp*^while/lstm_cell_749/MatMul/ReadVariableOp,^while/lstm_cell_749/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_749_biasadd_readvariableop_resource5while_lstm_cell_749_biasadd_readvariableop_resource_0"n
4while_lstm_cell_749_matmul_1_readvariableop_resource6while_lstm_cell_749_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_749_matmul_readvariableop_resource4while_lstm_cell_749_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_749/BiasAdd/ReadVariableOp*while/lstm_cell_749/BiasAdd/ReadVariableOp2V
)while/lstm_cell_749/MatMul/ReadVariableOp)while/lstm_cell_749/MatMul/ReadVariableOp2Z
+while/lstm_cell_749/MatMul_1/ReadVariableOp+while/lstm_cell_749/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4531655

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
while_body_4531253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_747_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_747_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_747_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_747_matmul_readvariableop_resource:	?G
4while_lstm_cell_747_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_747_biasadd_readvariableop_resource:	???*while/lstm_cell_747/BiasAdd/ReadVariableOp?)while/lstm_cell_747/MatMul/ReadVariableOp?+while/lstm_cell_747/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_747/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_747_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_747/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_747/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_747/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_747_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_747/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_747/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_747/addAddV2$while/lstm_cell_747/MatMul:product:0&while/lstm_cell_747/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_747/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_747_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_747/BiasAddBiasAddwhile/lstm_cell_747/add:z:02while/lstm_cell_747/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_747/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_747/splitSplit,while/lstm_cell_747/split/split_dim:output:0$while/lstm_cell_747/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_747/SigmoidSigmoid"while/lstm_cell_747/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_1Sigmoid"while/lstm_cell_747/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mulMul!while/lstm_cell_747/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_747/ReluRelu"while/lstm_cell_747/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_1Mulwhile/lstm_cell_747/Sigmoid:y:0&while/lstm_cell_747/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/add_1AddV2while/lstm_cell_747/mul:z:0while/lstm_cell_747/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_747/Sigmoid_2Sigmoid"while/lstm_cell_747/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_747/Relu_1Reluwhile/lstm_cell_747/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_747/mul_2Mul!while/lstm_cell_747/Sigmoid_2:y:0(while/lstm_cell_747/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_747/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_747/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_747/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_747/BiasAdd/ReadVariableOp*^while/lstm_cell_747/MatMul/ReadVariableOp,^while/lstm_cell_747/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_747_biasadd_readvariableop_resource5while_lstm_cell_747_biasadd_readvariableop_resource_0"n
4while_lstm_cell_747_matmul_1_readvariableop_resource6while_lstm_cell_747_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_747_matmul_readvariableop_resource4while_lstm_cell_747_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_747/BiasAdd/ReadVariableOp*while/lstm_cell_747/BiasAdd/ReadVariableOp2V
)while/lstm_cell_747/MatMul/ReadVariableOp)while/lstm_cell_747/MatMul/ReadVariableOp2Z
+while/lstm_cell_747/MatMul_1/ReadVariableOp+while/lstm_cell_747/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_747_layer_call_fn_4535190

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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530205o
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
 __inference__traced_save_4535610
file_prefix/
+savev2_dense_275_kernel_read_readvariableop-
)savev2_dense_275_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_825_lstm_cell_825_kernel_read_readvariableopF
Bsavev2_lstm_825_lstm_cell_825_recurrent_kernel_read_readvariableop:
6savev2_lstm_825_lstm_cell_825_bias_read_readvariableop<
8savev2_lstm_826_lstm_cell_826_kernel_read_readvariableopF
Bsavev2_lstm_826_lstm_cell_826_recurrent_kernel_read_readvariableop:
6savev2_lstm_826_lstm_cell_826_bias_read_readvariableop<
8savev2_lstm_827_lstm_cell_827_kernel_read_readvariableopF
Bsavev2_lstm_827_lstm_cell_827_recurrent_kernel_read_readvariableop:
6savev2_lstm_827_lstm_cell_827_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_275_kernel_m_read_readvariableop4
0savev2_adam_dense_275_bias_m_read_readvariableopC
?savev2_adam_lstm_825_lstm_cell_825_kernel_m_read_readvariableopM
Isavev2_adam_lstm_825_lstm_cell_825_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_825_lstm_cell_825_bias_m_read_readvariableopC
?savev2_adam_lstm_826_lstm_cell_826_kernel_m_read_readvariableopM
Isavev2_adam_lstm_826_lstm_cell_826_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_826_lstm_cell_826_bias_m_read_readvariableopC
?savev2_adam_lstm_827_lstm_cell_827_kernel_m_read_readvariableopM
Isavev2_adam_lstm_827_lstm_cell_827_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_827_lstm_cell_827_bias_m_read_readvariableop6
2savev2_adam_dense_275_kernel_v_read_readvariableop4
0savev2_adam_dense_275_bias_v_read_readvariableopC
?savev2_adam_lstm_825_lstm_cell_825_kernel_v_read_readvariableopM
Isavev2_adam_lstm_825_lstm_cell_825_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_825_lstm_cell_825_bias_v_read_readvariableopC
?savev2_adam_lstm_826_lstm_cell_826_kernel_v_read_readvariableopM
Isavev2_adam_lstm_826_lstm_cell_826_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_826_lstm_cell_826_bias_v_read_readvariableopC
?savev2_adam_lstm_827_lstm_cell_827_kernel_v_read_readvariableopM
Isavev2_adam_lstm_827_lstm_cell_827_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_827_lstm_cell_827_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_275_kernel_read_readvariableop)savev2_dense_275_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_825_lstm_cell_825_kernel_read_readvariableopBsavev2_lstm_825_lstm_cell_825_recurrent_kernel_read_readvariableop6savev2_lstm_825_lstm_cell_825_bias_read_readvariableop8savev2_lstm_826_lstm_cell_826_kernel_read_readvariableopBsavev2_lstm_826_lstm_cell_826_recurrent_kernel_read_readvariableop6savev2_lstm_826_lstm_cell_826_bias_read_readvariableop8savev2_lstm_827_lstm_cell_827_kernel_read_readvariableopBsavev2_lstm_827_lstm_cell_827_recurrent_kernel_read_readvariableop6savev2_lstm_827_lstm_cell_827_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_275_kernel_m_read_readvariableop0savev2_adam_dense_275_bias_m_read_readvariableop?savev2_adam_lstm_825_lstm_cell_825_kernel_m_read_readvariableopIsavev2_adam_lstm_825_lstm_cell_825_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_825_lstm_cell_825_bias_m_read_readvariableop?savev2_adam_lstm_826_lstm_cell_826_kernel_m_read_readvariableopIsavev2_adam_lstm_826_lstm_cell_826_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_826_lstm_cell_826_bias_m_read_readvariableop?savev2_adam_lstm_827_lstm_cell_827_kernel_m_read_readvariableopIsavev2_adam_lstm_827_lstm_cell_827_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_827_lstm_cell_827_bias_m_read_readvariableop2savev2_adam_dense_275_kernel_v_read_readvariableop0savev2_adam_dense_275_bias_v_read_readvariableop?savev2_adam_lstm_825_lstm_cell_825_kernel_v_read_readvariableopIsavev2_adam_lstm_825_lstm_cell_825_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_825_lstm_cell_825_bias_v_read_readvariableop?savev2_adam_lstm_826_lstm_cell_826_kernel_v_read_readvariableopIsavev2_adam_lstm_826_lstm_cell_826_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_826_lstm_cell_826_bias_v_read_readvariableop?savev2_adam_lstm_827_lstm_cell_827_kernel_v_read_readvariableopIsavev2_adam_lstm_827_lstm_cell_827_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_827_lstm_cell_827_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
*__inference_lstm_826_layer_call_fn_4533944
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4530829|
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4530701

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
while_cond_4534453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4534453___redundant_placeholder05
1while_while_cond_4534453___redundant_placeholder15
1while_while_cond_4534453___redundant_placeholder25
1while_while_cond_4534453___redundant_placeholder3
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
while_cond_4531768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531768___redundant_placeholder05
1while_while_cond_4531768___redundant_placeholder15
1while_while_cond_4531768___redundant_placeholder25
1while_while_cond_4531768___redundant_placeholder3
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
*sequential_275_lstm_827_while_cond_4530047L
Hsequential_275_lstm_827_while_sequential_275_lstm_827_while_loop_counterR
Nsequential_275_lstm_827_while_sequential_275_lstm_827_while_maximum_iterations-
)sequential_275_lstm_827_while_placeholder/
+sequential_275_lstm_827_while_placeholder_1/
+sequential_275_lstm_827_while_placeholder_2/
+sequential_275_lstm_827_while_placeholder_3N
Jsequential_275_lstm_827_while_less_sequential_275_lstm_827_strided_slice_1e
asequential_275_lstm_827_while_sequential_275_lstm_827_while_cond_4530047___redundant_placeholder0e
asequential_275_lstm_827_while_sequential_275_lstm_827_while_cond_4530047___redundant_placeholder1e
asequential_275_lstm_827_while_sequential_275_lstm_827_while_cond_4530047___redundant_placeholder2e
asequential_275_lstm_827_while_sequential_275_lstm_827_while_cond_4530047___redundant_placeholder3*
&sequential_275_lstm_827_while_identity
?
"sequential_275/lstm_827/while/LessLess)sequential_275_lstm_827_while_placeholderJsequential_275_lstm_827_while_less_sequential_275_lstm_827_strided_slice_1*
T0*
_output_shapes
: {
&sequential_275/lstm_827/while/IdentityIdentity&sequential_275/lstm_827/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_275_lstm_827_while_identity/sequential_275/lstm_827/while/Identity:output:0*(
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
*__inference_lstm_826_layer_call_fn_4533966

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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4532018s
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
*__inference_lstm_825_layer_call_fn_4533317
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4530288|
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
lstm_826_while_cond_4532649.
*lstm_826_while_lstm_826_while_loop_counter4
0lstm_826_while_lstm_826_while_maximum_iterations
lstm_826_while_placeholder 
lstm_826_while_placeholder_1 
lstm_826_while_placeholder_2 
lstm_826_while_placeholder_30
,lstm_826_while_less_lstm_826_strided_slice_1G
Clstm_826_while_lstm_826_while_cond_4532649___redundant_placeholder0G
Clstm_826_while_lstm_826_while_cond_4532649___redundant_placeholder1G
Clstm_826_while_lstm_826_while_cond_4532649___redundant_placeholder2G
Clstm_826_while_lstm_826_while_cond_4532649___redundant_placeholder3
lstm_826_while_identity
?
lstm_826/while/LessLesslstm_826_while_placeholder,lstm_826_while_less_lstm_826_strided_slice_1*
T0*
_output_shapes
: ]
lstm_826/while/IdentityIdentitylstm_826/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_826_while_identity lstm_826/while/Identity:output:0*(
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4530988

inputs'
lstm_cell_749_4530906:2('
lstm_cell_749_4530908:
(#
lstm_cell_749_4530910:(
identity??%lstm_cell_749/StatefulPartitionedCall?while;
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
%lstm_cell_749/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_749_4530906lstm_cell_749_4530908lstm_cell_749_4530910*
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4530905n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_749_4530906lstm_cell_749_4530908lstm_cell_749_4530910*
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
while_body_4530919*
condR
while_cond_4530918*K
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
NoOpNoOp&^lstm_cell_749/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_749/StatefulPartitionedCall%lstm_cell_749/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535369

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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4531051

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
while_cond_4531109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4531109___redundant_placeholder05
1while_while_cond_4531109___redundant_placeholder15
1while_while_cond_4531109___redundant_placeholder25
1while_while_cond_4531109___redundant_placeholder3
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
while_cond_4530218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4530218___redundant_placeholder05
1while_while_cond_4530218___redundant_placeholder15
1while_while_cond_4530218___redundant_placeholder25
1while_while_cond_4530218___redundant_placeholder3
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
0__inference_sequential_275_layer_call_fn_4532303
lstm_825_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_825_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532251o
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
_user_specified_namelstm_825_input
?
?
/__inference_lstm_cell_747_layer_call_fn_4535207

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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4530351o
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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_825_input;
 serving_default_lstm_825_input:0?????????=
	dense_2750
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
2dense_275/kernel
:2dense_275/bias
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
0:.	?2lstm_825/lstm_cell_825/kernel
::8	d?2'lstm_825/lstm_cell_825/recurrent_kernel
*:(?2lstm_825/lstm_cell_825/bias
0:.	d?2lstm_826/lstm_cell_826/kernel
::8	2?2'lstm_826/lstm_cell_826/recurrent_kernel
*:(?2lstm_826/lstm_cell_826/bias
/:-2(2lstm_827/lstm_cell_827/kernel
9:7
(2'lstm_827/lstm_cell_827/recurrent_kernel
):'(2lstm_827/lstm_cell_827/bias
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
2Adam/dense_275/kernel/m
!:2Adam/dense_275/bias/m
5:3	?2$Adam/lstm_825/lstm_cell_825/kernel/m
?:=	d?2.Adam/lstm_825/lstm_cell_825/recurrent_kernel/m
/:-?2"Adam/lstm_825/lstm_cell_825/bias/m
5:3	d?2$Adam/lstm_826/lstm_cell_826/kernel/m
?:=	2?2.Adam/lstm_826/lstm_cell_826/recurrent_kernel/m
/:-?2"Adam/lstm_826/lstm_cell_826/bias/m
4:22(2$Adam/lstm_827/lstm_cell_827/kernel/m
>:<
(2.Adam/lstm_827/lstm_cell_827/recurrent_kernel/m
.:,(2"Adam/lstm_827/lstm_cell_827/bias/m
':%
2Adam/dense_275/kernel/v
!:2Adam/dense_275/bias/v
5:3	?2$Adam/lstm_825/lstm_cell_825/kernel/v
?:=	d?2.Adam/lstm_825/lstm_cell_825/recurrent_kernel/v
/:-?2"Adam/lstm_825/lstm_cell_825/bias/v
5:3	d?2$Adam/lstm_826/lstm_cell_826/kernel/v
?:=	2?2.Adam/lstm_826/lstm_cell_826/recurrent_kernel/v
/:-?2"Adam/lstm_826/lstm_cell_826/bias/v
4:22(2$Adam/lstm_827/lstm_cell_827/kernel/v
>:<
(2.Adam/lstm_827/lstm_cell_827/recurrent_kernel/v
.:,(2"Adam/lstm_827/lstm_cell_827/bias/v
?2?
0__inference_sequential_275_layer_call_fn_4531687
0__inference_sequential_275_layer_call_fn_4532425
0__inference_sequential_275_layer_call_fn_4532452
0__inference_sequential_275_layer_call_fn_4532303?
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532879
K__inference_sequential_275_layer_call_and_return_conditional_losses_4533306
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532333
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532363?
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
"__inference__wrapped_model_4530138lstm_825_input"?
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
*__inference_lstm_825_layer_call_fn_4533317
*__inference_lstm_825_layer_call_fn_4533328
*__inference_lstm_825_layer_call_fn_4533339
*__inference_lstm_825_layer_call_fn_4533350?
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533493
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533636
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533779
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533922?
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
*__inference_lstm_826_layer_call_fn_4533933
*__inference_lstm_826_layer_call_fn_4533944
*__inference_lstm_826_layer_call_fn_4533955
*__inference_lstm_826_layer_call_fn_4533966?
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534109
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534252
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534395
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534538?
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
*__inference_lstm_827_layer_call_fn_4534549
*__inference_lstm_827_layer_call_fn_4534560
*__inference_lstm_827_layer_call_fn_4534571
*__inference_lstm_827_layer_call_fn_4534582?
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534725
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534868
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535011
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535154?
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
+__inference_dense_275_layer_call_fn_4535163?
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
F__inference_dense_275_layer_call_and_return_conditional_losses_4535173?
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
%__inference_signature_wrapper_4532398lstm_825_input"?
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
/__inference_lstm_cell_747_layer_call_fn_4535190
/__inference_lstm_cell_747_layer_call_fn_4535207?
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535239
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535271?
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
/__inference_lstm_cell_748_layer_call_fn_4535288
/__inference_lstm_cell_748_layer_call_fn_4535305?
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535337
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535369?
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
/__inference_lstm_cell_749_layer_call_fn_4535386
/__inference_lstm_cell_749_layer_call_fn_4535403?
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535435
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535467?
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
"__inference__wrapped_model_4530138?-./012345!";?8
1?.
,?)
lstm_825_input?????????
? "5?2
0
	dense_275#? 
	dense_275??????????
F__inference_dense_275_layer_call_and_return_conditional_losses_4535173\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_275_layer_call_fn_4535163O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533493?-./O?L
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533636?-./O?L
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533779q-./??<
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
E__inference_lstm_825_layer_call_and_return_conditional_losses_4533922q-./??<
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
*__inference_lstm_825_layer_call_fn_4533317}-./O?L
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
*__inference_lstm_825_layer_call_fn_4533328}-./O?L
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
*__inference_lstm_825_layer_call_fn_4533339d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_825_layer_call_fn_4533350d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534109?012O?L
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534252?012O?L
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534395q012??<
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
E__inference_lstm_826_layer_call_and_return_conditional_losses_4534538q012??<
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
*__inference_lstm_826_layer_call_fn_4533933}012O?L
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
*__inference_lstm_826_layer_call_fn_4533944}012O?L
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
*__inference_lstm_826_layer_call_fn_4533955d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_826_layer_call_fn_4533966d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534725}345O?L
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4534868}345O?L
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535011m345??<
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
E__inference_lstm_827_layer_call_and_return_conditional_losses_4535154m345??<
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
*__inference_lstm_827_layer_call_fn_4534549p345O?L
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
*__inference_lstm_827_layer_call_fn_4534560p345O?L
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
*__inference_lstm_827_layer_call_fn_4534571`345??<
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
*__inference_lstm_827_layer_call_fn_4534582`345??<
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535239?-./??}
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
J__inference_lstm_cell_747_layer_call_and_return_conditional_losses_4535271?-./??}
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
/__inference_lstm_cell_747_layer_call_fn_4535190?-./??}
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
/__inference_lstm_cell_747_layer_call_fn_4535207?-./??}
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535337?012??}
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
J__inference_lstm_cell_748_layer_call_and_return_conditional_losses_4535369?012??}
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
/__inference_lstm_cell_748_layer_call_fn_4535288?012??}
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
/__inference_lstm_cell_748_layer_call_fn_4535305?012??}
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535435?345??}
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
J__inference_lstm_cell_749_layer_call_and_return_conditional_losses_4535467?345??}
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
/__inference_lstm_cell_749_layer_call_fn_4535386?345??}
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
/__inference_lstm_cell_749_layer_call_fn_4535403?345??}
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532333y-./012345!"C?@
9?6
,?)
lstm_825_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532363y-./012345!"C?@
9?6
,?)
lstm_825_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_275_layer_call_and_return_conditional_losses_4532879q-./012345!";?8
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
K__inference_sequential_275_layer_call_and_return_conditional_losses_4533306q-./012345!";?8
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
0__inference_sequential_275_layer_call_fn_4531687l-./012345!"C?@
9?6
,?)
lstm_825_input?????????
p 

 
? "???????????
0__inference_sequential_275_layer_call_fn_4532303l-./012345!"C?@
9?6
,?)
lstm_825_input?????????
p

 
? "???????????
0__inference_sequential_275_layer_call_fn_4532425d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_275_layer_call_fn_4532452d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4532398?-./012345!"M?J
? 
C?@
>
lstm_825_input,?)
lstm_825_input?????????"5?2
0
	dense_275#? 
	dense_275?????????