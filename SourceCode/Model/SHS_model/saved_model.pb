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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ž-
|
dense_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_173/kernel
u
$dense_173/kernel/Read/ReadVariableOpReadVariableOpdense_173/kernel*
_output_shapes

:
*
dtype0
t
dense_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_173/bias
m
"dense_173/bias/Read/ReadVariableOpReadVariableOpdense_173/bias*
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
lstm_519/lstm_cell_519/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_519/lstm_cell_519/kernel
?
1lstm_519/lstm_cell_519/kernel/Read/ReadVariableOpReadVariableOplstm_519/lstm_cell_519/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_519/lstm_cell_519/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_519/lstm_cell_519/recurrent_kernel
?
;lstm_519/lstm_cell_519/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_519/lstm_cell_519/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_519/lstm_cell_519/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_519/lstm_cell_519/bias
?
/lstm_519/lstm_cell_519/bias/Read/ReadVariableOpReadVariableOplstm_519/lstm_cell_519/bias*
_output_shapes	
:?*
dtype0
?
lstm_520/lstm_cell_520/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_520/lstm_cell_520/kernel
?
1lstm_520/lstm_cell_520/kernel/Read/ReadVariableOpReadVariableOplstm_520/lstm_cell_520/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_520/lstm_cell_520/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_520/lstm_cell_520/recurrent_kernel
?
;lstm_520/lstm_cell_520/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_520/lstm_cell_520/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_520/lstm_cell_520/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_520/lstm_cell_520/bias
?
/lstm_520/lstm_cell_520/bias/Read/ReadVariableOpReadVariableOplstm_520/lstm_cell_520/bias*
_output_shapes	
:?*
dtype0
?
lstm_521/lstm_cell_521/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_521/lstm_cell_521/kernel
?
1lstm_521/lstm_cell_521/kernel/Read/ReadVariableOpReadVariableOplstm_521/lstm_cell_521/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_521/lstm_cell_521/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_521/lstm_cell_521/recurrent_kernel
?
;lstm_521/lstm_cell_521/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_521/lstm_cell_521/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_521/lstm_cell_521/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_521/lstm_cell_521/bias
?
/lstm_521/lstm_cell_521/bias/Read/ReadVariableOpReadVariableOplstm_521/lstm_cell_521/bias*
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
Adam/dense_173/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_173/kernel/m
?
+Adam/dense_173/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_173/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_173/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_173/bias/m
{
)Adam/dense_173/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_173/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_519/lstm_cell_519/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_519/lstm_cell_519/kernel/m
?
8Adam/lstm_519/lstm_cell_519/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_519/lstm_cell_519/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_519/lstm_cell_519/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_519/lstm_cell_519/recurrent_kernel/m
?
BAdam/lstm_519/lstm_cell_519/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_519/lstm_cell_519/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_519/lstm_cell_519/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_519/lstm_cell_519/bias/m
?
6Adam/lstm_519/lstm_cell_519/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_519/lstm_cell_519/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_520/lstm_cell_520/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_520/lstm_cell_520/kernel/m
?
8Adam/lstm_520/lstm_cell_520/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_520/lstm_cell_520/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_520/lstm_cell_520/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_520/lstm_cell_520/recurrent_kernel/m
?
BAdam/lstm_520/lstm_cell_520/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_520/lstm_cell_520/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_520/lstm_cell_520/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_520/lstm_cell_520/bias/m
?
6Adam/lstm_520/lstm_cell_520/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_520/lstm_cell_520/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_521/lstm_cell_521/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_521/lstm_cell_521/kernel/m
?
8Adam/lstm_521/lstm_cell_521/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_521/lstm_cell_521/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_521/lstm_cell_521/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_521/lstm_cell_521/recurrent_kernel/m
?
BAdam/lstm_521/lstm_cell_521/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_521/lstm_cell_521/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_521/lstm_cell_521/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_521/lstm_cell_521/bias/m
?
6Adam/lstm_521/lstm_cell_521/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_521/lstm_cell_521/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_173/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_173/kernel/v
?
+Adam/dense_173/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_173/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_173/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_173/bias/v
{
)Adam/dense_173/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_173/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_519/lstm_cell_519/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_519/lstm_cell_519/kernel/v
?
8Adam/lstm_519/lstm_cell_519/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_519/lstm_cell_519/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_519/lstm_cell_519/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_519/lstm_cell_519/recurrent_kernel/v
?
BAdam/lstm_519/lstm_cell_519/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_519/lstm_cell_519/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_519/lstm_cell_519/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_519/lstm_cell_519/bias/v
?
6Adam/lstm_519/lstm_cell_519/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_519/lstm_cell_519/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_520/lstm_cell_520/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_520/lstm_cell_520/kernel/v
?
8Adam/lstm_520/lstm_cell_520/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_520/lstm_cell_520/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_520/lstm_cell_520/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_520/lstm_cell_520/recurrent_kernel/v
?
BAdam/lstm_520/lstm_cell_520/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_520/lstm_cell_520/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_520/lstm_cell_520/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_520/lstm_cell_520/bias/v
?
6Adam/lstm_520/lstm_cell_520/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_520/lstm_cell_520/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_521/lstm_cell_521/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_521/lstm_cell_521/kernel/v
?
8Adam/lstm_521/lstm_cell_521/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_521/lstm_cell_521/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_521/lstm_cell_521/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_521/lstm_cell_521/recurrent_kernel/v
?
BAdam/lstm_521/lstm_cell_521/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_521/lstm_cell_521/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_521/lstm_cell_521/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_521/lstm_cell_521/bias/v
?
6Adam/lstm_521/lstm_cell_521/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_521/lstm_cell_521/bias/v*
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
VARIABLE_VALUEdense_173/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_173/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_519/lstm_cell_519/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_519/lstm_cell_519/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_519/lstm_cell_519/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_520/lstm_cell_520/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_520/lstm_cell_520/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_520/lstm_cell_520/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_521/lstm_cell_521/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_521/lstm_cell_521/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_521/lstm_cell_521/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_173/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_173/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_519/lstm_cell_519/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_519/lstm_cell_519/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_519/lstm_cell_519/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_520/lstm_cell_520/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_520/lstm_cell_520/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_520/lstm_cell_520/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_521/lstm_cell_521/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_521/lstm_cell_521/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_521/lstm_cell_521/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_173/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_173/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_519/lstm_cell_519/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_519/lstm_cell_519/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_519/lstm_cell_519/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_520/lstm_cell_520/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_520/lstm_cell_520/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_520/lstm_cell_520/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_521/lstm_cell_521/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_521/lstm_cell_521/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_521/lstm_cell_521/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_519_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_519_inputlstm_519/lstm_cell_519/kernel'lstm_519/lstm_cell_519/recurrent_kernellstm_519/lstm_cell_519/biaslstm_520/lstm_cell_520/kernel'lstm_520/lstm_cell_520/recurrent_kernellstm_520/lstm_cell_520/biaslstm_521/lstm_cell_521/kernel'lstm_521/lstm_cell_521/recurrent_kernellstm_521/lstm_cell_521/biasdense_173/kerneldense_173/bias*
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
GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_939976
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_173/kernel/Read/ReadVariableOp"dense_173/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_519/lstm_cell_519/kernel/Read/ReadVariableOp;lstm_519/lstm_cell_519/recurrent_kernel/Read/ReadVariableOp/lstm_519/lstm_cell_519/bias/Read/ReadVariableOp1lstm_520/lstm_cell_520/kernel/Read/ReadVariableOp;lstm_520/lstm_cell_520/recurrent_kernel/Read/ReadVariableOp/lstm_520/lstm_cell_520/bias/Read/ReadVariableOp1lstm_521/lstm_cell_521/kernel/Read/ReadVariableOp;lstm_521/lstm_cell_521/recurrent_kernel/Read/ReadVariableOp/lstm_521/lstm_cell_521/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_173/kernel/m/Read/ReadVariableOp)Adam/dense_173/bias/m/Read/ReadVariableOp8Adam/lstm_519/lstm_cell_519/kernel/m/Read/ReadVariableOpBAdam/lstm_519/lstm_cell_519/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_519/lstm_cell_519/bias/m/Read/ReadVariableOp8Adam/lstm_520/lstm_cell_520/kernel/m/Read/ReadVariableOpBAdam/lstm_520/lstm_cell_520/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_520/lstm_cell_520/bias/m/Read/ReadVariableOp8Adam/lstm_521/lstm_cell_521/kernel/m/Read/ReadVariableOpBAdam/lstm_521/lstm_cell_521/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_521/lstm_cell_521/bias/m/Read/ReadVariableOp+Adam/dense_173/kernel/v/Read/ReadVariableOp)Adam/dense_173/bias/v/Read/ReadVariableOp8Adam/lstm_519/lstm_cell_519/kernel/v/Read/ReadVariableOpBAdam/lstm_519/lstm_cell_519/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_519/lstm_cell_519/bias/v/Read/ReadVariableOp8Adam/lstm_520/lstm_cell_520/kernel/v/Read/ReadVariableOpBAdam/lstm_520/lstm_cell_520/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_520/lstm_cell_520/bias/v/Read/ReadVariableOp8Adam/lstm_521/lstm_cell_521/kernel/v/Read/ReadVariableOpBAdam/lstm_521/lstm_cell_521/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_521/lstm_cell_521/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *(
f#R!
__inference__traced_save_943188
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_173/kerneldense_173/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_519/lstm_cell_519/kernel'lstm_519/lstm_cell_519/recurrent_kernellstm_519/lstm_cell_519/biaslstm_520/lstm_cell_520/kernel'lstm_520/lstm_cell_520/recurrent_kernellstm_520/lstm_cell_520/biaslstm_521/lstm_cell_521/kernel'lstm_521/lstm_cell_521/recurrent_kernellstm_521/lstm_cell_521/biastotalcountAdam/dense_173/kernel/mAdam/dense_173/bias/m$Adam/lstm_519/lstm_cell_519/kernel/m.Adam/lstm_519/lstm_cell_519/recurrent_kernel/m"Adam/lstm_519/lstm_cell_519/bias/m$Adam/lstm_520/lstm_cell_520/kernel/m.Adam/lstm_520/lstm_cell_520/recurrent_kernel/m"Adam/lstm_520/lstm_cell_520/bias/m$Adam/lstm_521/lstm_cell_521/kernel/m.Adam/lstm_521/lstm_cell_521/recurrent_kernel/m"Adam/lstm_521/lstm_cell_521/bias/mAdam/dense_173/kernel/vAdam/dense_173/bias/v$Adam/lstm_519/lstm_cell_519/kernel/v.Adam/lstm_519/lstm_cell_519/recurrent_kernel/v"Adam/lstm_519/lstm_cell_519/bias/v$Adam/lstm_520/lstm_cell_520/kernel/v.Adam/lstm_520/lstm_cell_520/recurrent_kernel/v"Adam/lstm_520/lstm_cell_520/bias/v$Adam/lstm_521/lstm_cell_521/kernel/v.Adam/lstm_521/lstm_cell_521/recurrent_kernel/v"Adam/lstm_521/lstm_cell_521/bias/v*4
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_943318??+
?

?
lstm_521_while_cond_940793.
*lstm_521_while_lstm_521_while_loop_counter4
0lstm_521_while_lstm_521_while_maximum_iterations
lstm_521_while_placeholder 
lstm_521_while_placeholder_1 
lstm_521_while_placeholder_2 
lstm_521_while_placeholder_30
,lstm_521_while_less_lstm_521_strided_slice_1F
Blstm_521_while_lstm_521_while_cond_940793___redundant_placeholder0F
Blstm_521_while_lstm_521_while_cond_940793___redundant_placeholder1F
Blstm_521_while_lstm_521_while_cond_940793___redundant_placeholder2F
Blstm_521_while_lstm_521_while_cond_940793___redundant_placeholder3
lstm_521_while_identity
?
lstm_521/while/LessLesslstm_521_while_placeholder,lstm_521_while_less_lstm_521_strided_slice_1*
T0*
_output_shapes
: ]
lstm_521/while/IdentityIdentitylstm_521/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_521_while_identity lstm_521/while/Identity:output:0*(
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
while_cond_941272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941272___redundant_placeholder04
0while_while_cond_941272___redundant_placeholder14
0while_while_cond_941272___redundant_placeholder24
0while_while_cond_941272___redundant_placeholder3
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
while_cond_942361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_942361___redundant_placeholder04
0while_while_cond_942361___redundant_placeholder14
0while_while_cond_942361___redundant_placeholder24
0while_while_cond_942361___redundant_placeholder3
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_939065

inputs?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_938981*
condR
while_cond_938980*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_519_layer_call_and_return_conditional_losses_939761

inputs?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_939677*
condR
while_cond_939676*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_941130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_519_while_body_940089.
*lstm_519_while_lstm_519_while_loop_counter4
0lstm_519_while_lstm_519_while_maximum_iterations
lstm_519_while_placeholder 
lstm_519_while_placeholder_1 
lstm_519_while_placeholder_2 
lstm_519_while_placeholder_3-
)lstm_519_while_lstm_519_strided_slice_1_0i
elstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0:	?R
?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?M
>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
lstm_519_while_identity
lstm_519_while_identity_1
lstm_519_while_identity_2
lstm_519_while_identity_3
lstm_519_while_identity_4
lstm_519_while_identity_5+
'lstm_519_while_lstm_519_strided_slice_1g
clstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensorN
;lstm_519_while_lstm_cell_153_matmul_readvariableop_resource:	?P
=lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource:	d?K
<lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource:	???3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp?2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp?4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp?
@lstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_519/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0lstm_519_while_placeholderIlstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_519/while/lstm_cell_153/MatMulMatMul9lstm_519/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_519/while/lstm_cell_153/MatMul_1MatMullstm_519_while_placeholder_2<lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_519/while/lstm_cell_153/addAddV2-lstm_519/while/lstm_cell_153/MatMul:product:0/lstm_519/while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_519/while/lstm_cell_153/BiasAddBiasAdd$lstm_519/while/lstm_cell_153/add:z:0;lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_519/while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_519/while/lstm_cell_153/splitSplit5lstm_519/while/lstm_cell_153/split/split_dim:output:0-lstm_519/while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_519/while/lstm_cell_153/SigmoidSigmoid+lstm_519/while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_519/while/lstm_cell_153/Sigmoid_1Sigmoid+lstm_519/while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_519/while/lstm_cell_153/mulMul*lstm_519/while/lstm_cell_153/Sigmoid_1:y:0lstm_519_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_519/while/lstm_cell_153/ReluRelu+lstm_519/while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/mul_1Mul(lstm_519/while/lstm_cell_153/Sigmoid:y:0/lstm_519/while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/add_1AddV2$lstm_519/while/lstm_cell_153/mul:z:0&lstm_519/while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_519/while/lstm_cell_153/Sigmoid_2Sigmoid+lstm_519/while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_519/while/lstm_cell_153/Relu_1Relu&lstm_519/while/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/mul_2Mul*lstm_519/while/lstm_cell_153/Sigmoid_2:y:01lstm_519/while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_519/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_519_while_placeholder_1lstm_519_while_placeholder&lstm_519/while/lstm_cell_153/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_519/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_519/while/addAddV2lstm_519_while_placeholderlstm_519/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_519/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_519/while/add_1AddV2*lstm_519_while_lstm_519_while_loop_counterlstm_519/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_519/while/IdentityIdentitylstm_519/while/add_1:z:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_1Identity0lstm_519_while_lstm_519_while_maximum_iterations^lstm_519/while/NoOp*
T0*
_output_shapes
: t
lstm_519/while/Identity_2Identitylstm_519/while/add:z:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_3IdentityClstm_519/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_4Identity&lstm_519/while/lstm_cell_153/mul_2:z:0^lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_519/while/Identity_5Identity&lstm_519/while/lstm_cell_153/add_1:z:0^lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_519/while/NoOpNoOp4^lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp3^lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp5^lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_519_while_identity lstm_519/while/Identity:output:0"?
lstm_519_while_identity_1"lstm_519/while/Identity_1:output:0"?
lstm_519_while_identity_2"lstm_519/while/Identity_2:output:0"?
lstm_519_while_identity_3"lstm_519/while/Identity_3:output:0"?
lstm_519_while_identity_4"lstm_519/while/Identity_4:output:0"?
lstm_519_while_identity_5"lstm_519/while/Identity_5:output:0"T
'lstm_519_while_lstm_519_strided_slice_1)lstm_519_while_lstm_519_strided_slice_1_0"~
<lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0"?
=lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0"|
;lstm_519_while_lstm_cell_153_matmul_readvariableop_resource=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0"?
clstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensorelstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp2h
2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp2l
4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_938057

inputs'
lstm_cell_153_937975:	?'
lstm_cell_153_937977:	d?#
lstm_cell_153_937979:	?
identity??%lstm_cell_153/StatefulPartitionedCall?while;
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
%lstm_cell_153/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_153_937975lstm_cell_153_937977lstm_cell_153_937979*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937929n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_153_937975lstm_cell_153_937977lstm_cell_153_937979*
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
bodyR
while_body_937988*
condR
while_cond_937987*K
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
NoOpNoOp&^lstm_cell_153/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_153/StatefulPartitionedCall%lstm_cell_153/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938133

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
?"
?
while_body_937988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_153_938012_0:	?/
while_lstm_cell_153_938014_0:	d?+
while_lstm_cell_153_938016_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_153_938012:	?-
while_lstm_cell_153_938014:	d?)
while_lstm_cell_153_938016:	???+while/lstm_cell_153/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_153/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_153_938012_0while_lstm_cell_153_938014_0while_lstm_cell_153_938016_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937929?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_153/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_153/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_153/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_153/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_153_938012while_lstm_cell_153_938012_0":
while_lstm_cell_153_938014while_lstm_cell_153_938014_0":
while_lstm_cell_153_938016while_lstm_cell_153_938016_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_153/StatefulPartitionedCall+while/lstm_cell_153/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_520_while_body_940228.
*lstm_520_while_lstm_520_while_loop_counter4
0lstm_520_while_lstm_520_while_maximum_iterations
lstm_520_while_placeholder 
lstm_520_while_placeholder_1 
lstm_520_while_placeholder_2 
lstm_520_while_placeholder_3-
)lstm_520_while_lstm_520_strided_slice_1_0i
elstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0:	d?R
?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?M
>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
lstm_520_while_identity
lstm_520_while_identity_1
lstm_520_while_identity_2
lstm_520_while_identity_3
lstm_520_while_identity_4
lstm_520_while_identity_5+
'lstm_520_while_lstm_520_strided_slice_1g
clstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensorN
;lstm_520_while_lstm_cell_154_matmul_readvariableop_resource:	d?P
=lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource:	2?K
<lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource:	???3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp?2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp?4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp?
@lstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_520/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0lstm_520_while_placeholderIlstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_520/while/lstm_cell_154/MatMulMatMul9lstm_520/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_520/while/lstm_cell_154/MatMul_1MatMullstm_520_while_placeholder_2<lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_520/while/lstm_cell_154/addAddV2-lstm_520/while/lstm_cell_154/MatMul:product:0/lstm_520/while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_520/while/lstm_cell_154/BiasAddBiasAdd$lstm_520/while/lstm_cell_154/add:z:0;lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_520/while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_520/while/lstm_cell_154/splitSplit5lstm_520/while/lstm_cell_154/split/split_dim:output:0-lstm_520/while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_520/while/lstm_cell_154/SigmoidSigmoid+lstm_520/while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_520/while/lstm_cell_154/Sigmoid_1Sigmoid+lstm_520/while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_520/while/lstm_cell_154/mulMul*lstm_520/while/lstm_cell_154/Sigmoid_1:y:0lstm_520_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_520/while/lstm_cell_154/ReluRelu+lstm_520/while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/mul_1Mul(lstm_520/while/lstm_cell_154/Sigmoid:y:0/lstm_520/while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/add_1AddV2$lstm_520/while/lstm_cell_154/mul:z:0&lstm_520/while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_520/while/lstm_cell_154/Sigmoid_2Sigmoid+lstm_520/while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_520/while/lstm_cell_154/Relu_1Relu&lstm_520/while/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/mul_2Mul*lstm_520/while/lstm_cell_154/Sigmoid_2:y:01lstm_520/while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_520/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_520_while_placeholder_1lstm_520_while_placeholder&lstm_520/while/lstm_cell_154/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_520/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_520/while/addAddV2lstm_520_while_placeholderlstm_520/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_520/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_520/while/add_1AddV2*lstm_520_while_lstm_520_while_loop_counterlstm_520/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_520/while/IdentityIdentitylstm_520/while/add_1:z:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_1Identity0lstm_520_while_lstm_520_while_maximum_iterations^lstm_520/while/NoOp*
T0*
_output_shapes
: t
lstm_520/while/Identity_2Identitylstm_520/while/add:z:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_3IdentityClstm_520/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_4Identity&lstm_520/while/lstm_cell_154/mul_2:z:0^lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_520/while/Identity_5Identity&lstm_520/while/lstm_cell_154/add_1:z:0^lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_520/while/NoOpNoOp4^lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp3^lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp5^lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_520_while_identity lstm_520/while/Identity:output:0"?
lstm_520_while_identity_1"lstm_520/while/Identity_1:output:0"?
lstm_520_while_identity_2"lstm_520/while/Identity_2:output:0"?
lstm_520_while_identity_3"lstm_520/while/Identity_3:output:0"?
lstm_520_while_identity_4"lstm_520/while/Identity_4:output:0"?
lstm_520_while_identity_5"lstm_520/while/Identity_5:output:0"T
'lstm_520_while_lstm_520_strided_slice_1)lstm_520_while_lstm_520_strided_slice_1_0"~
<lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0"?
=lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0"|
;lstm_520_while_lstm_cell_154_matmul_readvariableop_resource=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0"?
clstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensorelstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp2h
2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp2l
4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_519_layer_call_fn_940928

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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_939761s
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
?J
?
D__inference_lstm_520_layer_call_and_return_conditional_losses_942116

inputs?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_942032*
condR
while_cond_942031*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_942362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_941745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941745___redundant_placeholder04
0while_while_cond_941745___redundant_placeholder14
0while_while_cond_941745___redundant_placeholder24
0while_while_cond_941745___redundant_placeholder3
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939829

inputs"
lstm_519_939802:	?"
lstm_519_939804:	d?
lstm_519_939806:	?"
lstm_520_939809:	d?"
lstm_520_939811:	2?
lstm_520_939813:	?!
lstm_521_939816:2(!
lstm_521_939818:
(
lstm_521_939820:("
dense_173_939823:

dense_173_939825:
identity??!dense_173/StatefulPartitionedCall? lstm_519/StatefulPartitionedCall? lstm_520/StatefulPartitionedCall? lstm_521/StatefulPartitionedCall?
 lstm_519/StatefulPartitionedCallStatefulPartitionedCallinputslstm_519_939802lstm_519_939804lstm_519_939806*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_939761?
 lstm_520/StatefulPartitionedCallStatefulPartitionedCall)lstm_519/StatefulPartitionedCall:output:0lstm_520_939809lstm_520_939811lstm_520_939813*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939596?
 lstm_521/StatefulPartitionedCallStatefulPartitionedCall)lstm_520/StatefulPartitionedCall:output:0lstm_521_939816lstm_521_939818lstm_521_939820*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939431?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_521/StatefulPartitionedCall:output:0dense_173_939823dense_173_939825*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_939233y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_173/StatefulPartitionedCall!^lstm_519/StatefulPartitionedCall!^lstm_520/StatefulPartitionedCall!^lstm_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2D
 lstm_519/StatefulPartitionedCall lstm_519/StatefulPartitionedCall2D
 lstm_520/StatefulPartitionedCall lstm_520/StatefulPartitionedCall2D
 lstm_521/StatefulPartitionedCall lstm_521/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_173_layer_call_and_return_conditional_losses_940884

inputsH
5lstm_519_lstm_cell_153_matmul_readvariableop_resource:	?J
7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource:	d?E
6lstm_519_lstm_cell_153_biasadd_readvariableop_resource:	?H
5lstm_520_lstm_cell_154_matmul_readvariableop_resource:	d?J
7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource:	2?E
6lstm_520_lstm_cell_154_biasadd_readvariableop_resource:	?G
5lstm_521_lstm_cell_155_matmul_readvariableop_resource:2(I
7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource:
(D
6lstm_521_lstm_cell_155_biasadd_readvariableop_resource:(:
(dense_173_matmul_readvariableop_resource:
7
)dense_173_biasadd_readvariableop_resource:
identity?? dense_173/BiasAdd/ReadVariableOp?dense_173/MatMul/ReadVariableOp?-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp?,lstm_519/lstm_cell_153/MatMul/ReadVariableOp?.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp?lstm_519/while?-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp?,lstm_520/lstm_cell_154/MatMul/ReadVariableOp?.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp?lstm_520/while?-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp?,lstm_521/lstm_cell_155/MatMul/ReadVariableOp?.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp?lstm_521/whileD
lstm_519/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_519/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_519/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_519/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_sliceStridedSlicelstm_519/Shape:output:0%lstm_519/strided_slice/stack:output:0'lstm_519/strided_slice/stack_1:output:0'lstm_519/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_519/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_519/zeros/packedPacklstm_519/strided_slice:output:0 lstm_519/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_519/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_519/zerosFilllstm_519/zeros/packed:output:0lstm_519/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_519/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_519/zeros_1/packedPacklstm_519/strided_slice:output:0"lstm_519/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_519/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_519/zeros_1Fill lstm_519/zeros_1/packed:output:0lstm_519/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_519/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_519/transpose	Transposeinputs lstm_519/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_519/Shape_1Shapelstm_519/transpose:y:0*
T0*
_output_shapes
:h
lstm_519/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_519/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_1StridedSlicelstm_519/Shape_1:output:0'lstm_519/strided_slice_1/stack:output:0)lstm_519/strided_slice_1/stack_1:output:0)lstm_519/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_519/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_519/TensorArrayV2TensorListReserve-lstm_519/TensorArrayV2/element_shape:output:0!lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_519/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_519/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_519/transpose:y:0Glstm_519/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_519/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_519/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_2StridedSlicelstm_519/transpose:y:0'lstm_519/strided_slice_2/stack:output:0)lstm_519/strided_slice_2/stack_1:output:0)lstm_519/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_519/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp5lstm_519_lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_519/lstm_cell_153/MatMulMatMul!lstm_519/strided_slice_2:output:04lstm_519/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_519/lstm_cell_153/MatMul_1MatMullstm_519/zeros:output:06lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_519/lstm_cell_153/addAddV2'lstm_519/lstm_cell_153/MatMul:product:0)lstm_519/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp6lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_519/lstm_cell_153/BiasAddBiasAddlstm_519/lstm_cell_153/add:z:05lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_519/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_519/lstm_cell_153/splitSplit/lstm_519/lstm_cell_153/split/split_dim:output:0'lstm_519/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_519/lstm_cell_153/SigmoidSigmoid%lstm_519/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_519/lstm_cell_153/Sigmoid_1Sigmoid%lstm_519/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mulMul$lstm_519/lstm_cell_153/Sigmoid_1:y:0lstm_519/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_519/lstm_cell_153/ReluRelu%lstm_519/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mul_1Mul"lstm_519/lstm_cell_153/Sigmoid:y:0)lstm_519/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/add_1AddV2lstm_519/lstm_cell_153/mul:z:0 lstm_519/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_519/lstm_cell_153/Sigmoid_2Sigmoid%lstm_519/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_519/lstm_cell_153/Relu_1Relu lstm_519/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mul_2Mul$lstm_519/lstm_cell_153/Sigmoid_2:y:0+lstm_519/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_519/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_519/TensorArrayV2_1TensorListReserve/lstm_519/TensorArrayV2_1/element_shape:output:0!lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_519/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_519/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_519/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_519/whileWhile$lstm_519/while/loop_counter:output:0*lstm_519/while/maximum_iterations:output:0lstm_519/time:output:0!lstm_519/TensorArrayV2_1:handle:0lstm_519/zeros:output:0lstm_519/zeros_1:output:0!lstm_519/strided_slice_1:output:0@lstm_519/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_519_lstm_cell_153_matmul_readvariableop_resource7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource6lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_519_while_body_940516*&
condR
lstm_519_while_cond_940515*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_519/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_519/TensorArrayV2Stack/TensorListStackTensorListStacklstm_519/while:output:3Blstm_519/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_519/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_519/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_3StridedSlice4lstm_519/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_519/strided_slice_3/stack:output:0)lstm_519/strided_slice_3/stack_1:output:0)lstm_519/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_519/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_519/transpose_1	Transpose4lstm_519/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_519/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_519/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_520/ShapeShapelstm_519/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_520/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_520/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_520/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_sliceStridedSlicelstm_520/Shape:output:0%lstm_520/strided_slice/stack:output:0'lstm_520/strided_slice/stack_1:output:0'lstm_520/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_520/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_520/zeros/packedPacklstm_520/strided_slice:output:0 lstm_520/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_520/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_520/zerosFilllstm_520/zeros/packed:output:0lstm_520/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_520/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_520/zeros_1/packedPacklstm_520/strided_slice:output:0"lstm_520/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_520/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_520/zeros_1Fill lstm_520/zeros_1/packed:output:0lstm_520/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_520/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_520/transpose	Transposelstm_519/transpose_1:y:0 lstm_520/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_520/Shape_1Shapelstm_520/transpose:y:0*
T0*
_output_shapes
:h
lstm_520/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_520/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_1StridedSlicelstm_520/Shape_1:output:0'lstm_520/strided_slice_1/stack:output:0)lstm_520/strided_slice_1/stack_1:output:0)lstm_520/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_520/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_520/TensorArrayV2TensorListReserve-lstm_520/TensorArrayV2/element_shape:output:0!lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_520/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_520/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_520/transpose:y:0Glstm_520/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_520/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_520/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_2StridedSlicelstm_520/transpose:y:0'lstm_520/strided_slice_2/stack:output:0)lstm_520/strided_slice_2/stack_1:output:0)lstm_520/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_520/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp5lstm_520_lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_520/lstm_cell_154/MatMulMatMul!lstm_520/strided_slice_2:output:04lstm_520/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_520/lstm_cell_154/MatMul_1MatMullstm_520/zeros:output:06lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_520/lstm_cell_154/addAddV2'lstm_520/lstm_cell_154/MatMul:product:0)lstm_520/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp6lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_520/lstm_cell_154/BiasAddBiasAddlstm_520/lstm_cell_154/add:z:05lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_520/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_520/lstm_cell_154/splitSplit/lstm_520/lstm_cell_154/split/split_dim:output:0'lstm_520/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_520/lstm_cell_154/SigmoidSigmoid%lstm_520/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_520/lstm_cell_154/Sigmoid_1Sigmoid%lstm_520/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mulMul$lstm_520/lstm_cell_154/Sigmoid_1:y:0lstm_520/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_520/lstm_cell_154/ReluRelu%lstm_520/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mul_1Mul"lstm_520/lstm_cell_154/Sigmoid:y:0)lstm_520/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/add_1AddV2lstm_520/lstm_cell_154/mul:z:0 lstm_520/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_520/lstm_cell_154/Sigmoid_2Sigmoid%lstm_520/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_520/lstm_cell_154/Relu_1Relu lstm_520/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mul_2Mul$lstm_520/lstm_cell_154/Sigmoid_2:y:0+lstm_520/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_520/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_520/TensorArrayV2_1TensorListReserve/lstm_520/TensorArrayV2_1/element_shape:output:0!lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_520/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_520/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_520/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_520/whileWhile$lstm_520/while/loop_counter:output:0*lstm_520/while/maximum_iterations:output:0lstm_520/time:output:0!lstm_520/TensorArrayV2_1:handle:0lstm_520/zeros:output:0lstm_520/zeros_1:output:0!lstm_520/strided_slice_1:output:0@lstm_520/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_520_lstm_cell_154_matmul_readvariableop_resource7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource6lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_520_while_body_940655*&
condR
lstm_520_while_cond_940654*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_520/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_520/TensorArrayV2Stack/TensorListStackTensorListStacklstm_520/while:output:3Blstm_520/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_520/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_520/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_3StridedSlice4lstm_520/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_520/strided_slice_3/stack:output:0)lstm_520/strided_slice_3/stack_1:output:0)lstm_520/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_520/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_520/transpose_1	Transpose4lstm_520/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_520/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_520/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_521/ShapeShapelstm_520/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_521/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_521/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_521/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_sliceStridedSlicelstm_521/Shape:output:0%lstm_521/strided_slice/stack:output:0'lstm_521/strided_slice/stack_1:output:0'lstm_521/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_521/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_521/zeros/packedPacklstm_521/strided_slice:output:0 lstm_521/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_521/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_521/zerosFilllstm_521/zeros/packed:output:0lstm_521/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_521/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_521/zeros_1/packedPacklstm_521/strided_slice:output:0"lstm_521/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_521/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_521/zeros_1Fill lstm_521/zeros_1/packed:output:0lstm_521/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_521/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_521/transpose	Transposelstm_520/transpose_1:y:0 lstm_521/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_521/Shape_1Shapelstm_521/transpose:y:0*
T0*
_output_shapes
:h
lstm_521/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_521/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_1StridedSlicelstm_521/Shape_1:output:0'lstm_521/strided_slice_1/stack:output:0)lstm_521/strided_slice_1/stack_1:output:0)lstm_521/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_521/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_521/TensorArrayV2TensorListReserve-lstm_521/TensorArrayV2/element_shape:output:0!lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_521/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_521/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_521/transpose:y:0Glstm_521/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_521/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_521/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_2StridedSlicelstm_521/transpose:y:0'lstm_521/strided_slice_2/stack:output:0)lstm_521/strided_slice_2/stack_1:output:0)lstm_521/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_521/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp5lstm_521_lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_521/lstm_cell_155/MatMulMatMul!lstm_521/strided_slice_2:output:04lstm_521/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_521/lstm_cell_155/MatMul_1MatMullstm_521/zeros:output:06lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_521/lstm_cell_155/addAddV2'lstm_521/lstm_cell_155/MatMul:product:0)lstm_521/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp6lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_521/lstm_cell_155/BiasAddBiasAddlstm_521/lstm_cell_155/add:z:05lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_521/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_521/lstm_cell_155/splitSplit/lstm_521/lstm_cell_155/split/split_dim:output:0'lstm_521/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_521/lstm_cell_155/SigmoidSigmoid%lstm_521/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_521/lstm_cell_155/Sigmoid_1Sigmoid%lstm_521/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mulMul$lstm_521/lstm_cell_155/Sigmoid_1:y:0lstm_521/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_521/lstm_cell_155/ReluRelu%lstm_521/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mul_1Mul"lstm_521/lstm_cell_155/Sigmoid:y:0)lstm_521/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/add_1AddV2lstm_521/lstm_cell_155/mul:z:0 lstm_521/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_521/lstm_cell_155/Sigmoid_2Sigmoid%lstm_521/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_521/lstm_cell_155/Relu_1Relu lstm_521/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mul_2Mul$lstm_521/lstm_cell_155/Sigmoid_2:y:0+lstm_521/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_521/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_521/TensorArrayV2_1TensorListReserve/lstm_521/TensorArrayV2_1/element_shape:output:0!lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_521/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_521/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_521/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_521/whileWhile$lstm_521/while/loop_counter:output:0*lstm_521/while/maximum_iterations:output:0lstm_521/time:output:0!lstm_521/TensorArrayV2_1:handle:0lstm_521/zeros:output:0lstm_521/zeros_1:output:0!lstm_521/strided_slice_1:output:0@lstm_521/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_521_lstm_cell_155_matmul_readvariableop_resource7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource6lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_521_while_body_940794*&
condR
lstm_521_while_cond_940793*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_521/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_521/TensorArrayV2Stack/TensorListStackTensorListStacklstm_521/while:output:3Blstm_521/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_521/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_521/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_3StridedSlice4lstm_521/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_521/strided_slice_3/stack:output:0)lstm_521/strided_slice_3/stack_1:output:0)lstm_521/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_521/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_521/transpose_1	Transpose4lstm_521/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_521/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_521/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_173/MatMulMatMul!lstm_521/strided_slice_3:output:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_173/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp.^lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp-^lstm_519/lstm_cell_153/MatMul/ReadVariableOp/^lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp^lstm_519/while.^lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp-^lstm_520/lstm_cell_154/MatMul/ReadVariableOp/^lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp^lstm_520/while.^lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp-^lstm_521/lstm_cell_155/MatMul/ReadVariableOp/^lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp^lstm_521/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp2^
-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp2\
,lstm_519/lstm_cell_153/MatMul/ReadVariableOp,lstm_519/lstm_cell_153/MatMul/ReadVariableOp2`
.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp2 
lstm_519/whilelstm_519/while2^
-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp2\
,lstm_520/lstm_cell_154/MatMul/ReadVariableOp,lstm_520/lstm_cell_154/MatMul/ReadVariableOp2`
.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp2 
lstm_520/whilelstm_520/while2^
-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp2\
,lstm_521/lstm_cell_155/MatMul/ReadVariableOp,lstm_521/lstm_cell_155/MatMul/ReadVariableOp2`
.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp2 
lstm_521/whilelstm_521/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942947

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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941500

inputs?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_941416*
condR
while_cond_941415*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_521_layer_call_fn_942160

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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939431o
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
/__inference_sequential_173_layer_call_fn_940003

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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939240o
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
?"
?
while_body_938147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_154_938171_0:	d?/
while_lstm_cell_154_938173_0:	2?+
while_lstm_cell_154_938175_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_154_938171:	d?-
while_lstm_cell_154_938173:	2?)
while_lstm_cell_154_938175:	???+while/lstm_cell_154/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_154/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_154_938171_0while_lstm_cell_154_938173_0while_lstm_cell_154_938175_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938133?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_154/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_154/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_154/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_154/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_154_938171while_lstm_cell_154_938171_0":
while_lstm_cell_154_938173while_lstm_cell_154_938173_0":
while_lstm_cell_154_938175while_lstm_cell_154_938175_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_154/StatefulPartitionedCall+while/lstm_cell_154/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942446
inputs_0>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_942362*
condR
while_cond_942361*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
!__inference__wrapped_model_937716
lstm_519_inputW
Dsequential_173_lstm_519_lstm_cell_153_matmul_readvariableop_resource:	?Y
Fsequential_173_lstm_519_lstm_cell_153_matmul_1_readvariableop_resource:	d?T
Esequential_173_lstm_519_lstm_cell_153_biasadd_readvariableop_resource:	?W
Dsequential_173_lstm_520_lstm_cell_154_matmul_readvariableop_resource:	d?Y
Fsequential_173_lstm_520_lstm_cell_154_matmul_1_readvariableop_resource:	2?T
Esequential_173_lstm_520_lstm_cell_154_biasadd_readvariableop_resource:	?V
Dsequential_173_lstm_521_lstm_cell_155_matmul_readvariableop_resource:2(X
Fsequential_173_lstm_521_lstm_cell_155_matmul_1_readvariableop_resource:
(S
Esequential_173_lstm_521_lstm_cell_155_biasadd_readvariableop_resource:(I
7sequential_173_dense_173_matmul_readvariableop_resource:
F
8sequential_173_dense_173_biasadd_readvariableop_resource:
identity??/sequential_173/dense_173/BiasAdd/ReadVariableOp?.sequential_173/dense_173/MatMul/ReadVariableOp?<sequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp?;sequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOp?=sequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp?sequential_173/lstm_519/while?<sequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp?;sequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOp?=sequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp?sequential_173/lstm_520/while?<sequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp?;sequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOp?=sequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp?sequential_173/lstm_521/while[
sequential_173/lstm_519/ShapeShapelstm_519_input*
T0*
_output_shapes
:u
+sequential_173/lstm_519/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_173/lstm_519/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_173/lstm_519/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_173/lstm_519/strided_sliceStridedSlice&sequential_173/lstm_519/Shape:output:04sequential_173/lstm_519/strided_slice/stack:output:06sequential_173/lstm_519/strided_slice/stack_1:output:06sequential_173/lstm_519/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_173/lstm_519/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_173/lstm_519/zeros/packedPack.sequential_173/lstm_519/strided_slice:output:0/sequential_173/lstm_519/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_173/lstm_519/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_519/zerosFill-sequential_173/lstm_519/zeros/packed:output:0,sequential_173/lstm_519/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_173/lstm_519/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_173/lstm_519/zeros_1/packedPack.sequential_173/lstm_519/strided_slice:output:01sequential_173/lstm_519/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_173/lstm_519/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_519/zeros_1Fill/sequential_173/lstm_519/zeros_1/packed:output:0.sequential_173/lstm_519/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_173/lstm_519/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_173/lstm_519/transpose	Transposelstm_519_input/sequential_173/lstm_519/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_173/lstm_519/Shape_1Shape%sequential_173/lstm_519/transpose:y:0*
T0*
_output_shapes
:w
-sequential_173/lstm_519/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_519/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_519/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_519/strided_slice_1StridedSlice(sequential_173/lstm_519/Shape_1:output:06sequential_173/lstm_519/strided_slice_1/stack:output:08sequential_173/lstm_519/strided_slice_1/stack_1:output:08sequential_173/lstm_519/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_173/lstm_519/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_173/lstm_519/TensorArrayV2TensorListReserve<sequential_173/lstm_519/TensorArrayV2/element_shape:output:00sequential_173/lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_173/lstm_519/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_173/lstm_519/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_173/lstm_519/transpose:y:0Vsequential_173/lstm_519/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_173/lstm_519/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_519/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_519/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_519/strided_slice_2StridedSlice%sequential_173/lstm_519/transpose:y:06sequential_173/lstm_519/strided_slice_2/stack:output:08sequential_173/lstm_519/strided_slice_2/stack_1:output:08sequential_173/lstm_519/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOpReadVariableOpDsequential_173_lstm_519_lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_173/lstm_519/lstm_cell_153/MatMulMatMul0sequential_173/lstm_519/strided_slice_2:output:0Csequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOpFsequential_173_lstm_519_lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_173/lstm_519/lstm_cell_153/MatMul_1MatMul&sequential_173/lstm_519/zeros:output:0Esequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_173/lstm_519/lstm_cell_153/addAddV26sequential_173/lstm_519/lstm_cell_153/MatMul:product:08sequential_173/lstm_519/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOpEsequential_173_lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_173/lstm_519/lstm_cell_153/BiasAddBiasAdd-sequential_173/lstm_519/lstm_cell_153/add:z:0Dsequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_173/lstm_519/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_173/lstm_519/lstm_cell_153/splitSplit>sequential_173/lstm_519/lstm_cell_153/split/split_dim:output:06sequential_173/lstm_519/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_173/lstm_519/lstm_cell_153/SigmoidSigmoid4sequential_173/lstm_519/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_173/lstm_519/lstm_cell_153/Sigmoid_1Sigmoid4sequential_173/lstm_519/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_173/lstm_519/lstm_cell_153/mulMul3sequential_173/lstm_519/lstm_cell_153/Sigmoid_1:y:0(sequential_173/lstm_519/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_173/lstm_519/lstm_cell_153/ReluRelu4sequential_173/lstm_519/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_173/lstm_519/lstm_cell_153/mul_1Mul1sequential_173/lstm_519/lstm_cell_153/Sigmoid:y:08sequential_173/lstm_519/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_173/lstm_519/lstm_cell_153/add_1AddV2-sequential_173/lstm_519/lstm_cell_153/mul:z:0/sequential_173/lstm_519/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_173/lstm_519/lstm_cell_153/Sigmoid_2Sigmoid4sequential_173/lstm_519/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_173/lstm_519/lstm_cell_153/Relu_1Relu/sequential_173/lstm_519/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_173/lstm_519/lstm_cell_153/mul_2Mul3sequential_173/lstm_519/lstm_cell_153/Sigmoid_2:y:0:sequential_173/lstm_519/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_173/lstm_519/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_173/lstm_519/TensorArrayV2_1TensorListReserve>sequential_173/lstm_519/TensorArrayV2_1/element_shape:output:00sequential_173/lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_173/lstm_519/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_173/lstm_519/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_173/lstm_519/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_173/lstm_519/whileWhile3sequential_173/lstm_519/while/loop_counter:output:09sequential_173/lstm_519/while/maximum_iterations:output:0%sequential_173/lstm_519/time:output:00sequential_173/lstm_519/TensorArrayV2_1:handle:0&sequential_173/lstm_519/zeros:output:0(sequential_173/lstm_519/zeros_1:output:00sequential_173/lstm_519/strided_slice_1:output:0Osequential_173/lstm_519/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_173_lstm_519_lstm_cell_153_matmul_readvariableop_resourceFsequential_173_lstm_519_lstm_cell_153_matmul_1_readvariableop_resourceEsequential_173_lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
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
)sequential_173_lstm_519_while_body_937348*5
cond-R+
)sequential_173_lstm_519_while_cond_937347*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_173/lstm_519/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_173/lstm_519/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_173/lstm_519/while:output:3Qsequential_173/lstm_519/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_173/lstm_519/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_173/lstm_519/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_519/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_519/strided_slice_3StridedSliceCsequential_173/lstm_519/TensorArrayV2Stack/TensorListStack:tensor:06sequential_173/lstm_519/strided_slice_3/stack:output:08sequential_173/lstm_519/strided_slice_3/stack_1:output:08sequential_173/lstm_519/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_173/lstm_519/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_173/lstm_519/transpose_1	TransposeCsequential_173/lstm_519/TensorArrayV2Stack/TensorListStack:tensor:01sequential_173/lstm_519/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_173/lstm_519/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_173/lstm_520/ShapeShape'sequential_173/lstm_519/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_173/lstm_520/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_173/lstm_520/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_173/lstm_520/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_173/lstm_520/strided_sliceStridedSlice&sequential_173/lstm_520/Shape:output:04sequential_173/lstm_520/strided_slice/stack:output:06sequential_173/lstm_520/strided_slice/stack_1:output:06sequential_173/lstm_520/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_173/lstm_520/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_173/lstm_520/zeros/packedPack.sequential_173/lstm_520/strided_slice:output:0/sequential_173/lstm_520/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_173/lstm_520/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_520/zerosFill-sequential_173/lstm_520/zeros/packed:output:0,sequential_173/lstm_520/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_173/lstm_520/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_173/lstm_520/zeros_1/packedPack.sequential_173/lstm_520/strided_slice:output:01sequential_173/lstm_520/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_173/lstm_520/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_520/zeros_1Fill/sequential_173/lstm_520/zeros_1/packed:output:0.sequential_173/lstm_520/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_173/lstm_520/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_173/lstm_520/transpose	Transpose'sequential_173/lstm_519/transpose_1:y:0/sequential_173/lstm_520/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_173/lstm_520/Shape_1Shape%sequential_173/lstm_520/transpose:y:0*
T0*
_output_shapes
:w
-sequential_173/lstm_520/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_520/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_520/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_520/strided_slice_1StridedSlice(sequential_173/lstm_520/Shape_1:output:06sequential_173/lstm_520/strided_slice_1/stack:output:08sequential_173/lstm_520/strided_slice_1/stack_1:output:08sequential_173/lstm_520/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_173/lstm_520/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_173/lstm_520/TensorArrayV2TensorListReserve<sequential_173/lstm_520/TensorArrayV2/element_shape:output:00sequential_173/lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_173/lstm_520/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_173/lstm_520/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_173/lstm_520/transpose:y:0Vsequential_173/lstm_520/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_173/lstm_520/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_520/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_520/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_520/strided_slice_2StridedSlice%sequential_173/lstm_520/transpose:y:06sequential_173/lstm_520/strided_slice_2/stack:output:08sequential_173/lstm_520/strided_slice_2/stack_1:output:08sequential_173/lstm_520/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOpReadVariableOpDsequential_173_lstm_520_lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_173/lstm_520/lstm_cell_154/MatMulMatMul0sequential_173/lstm_520/strided_slice_2:output:0Csequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOpFsequential_173_lstm_520_lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_173/lstm_520/lstm_cell_154/MatMul_1MatMul&sequential_173/lstm_520/zeros:output:0Esequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_173/lstm_520/lstm_cell_154/addAddV26sequential_173/lstm_520/lstm_cell_154/MatMul:product:08sequential_173/lstm_520/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOpEsequential_173_lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_173/lstm_520/lstm_cell_154/BiasAddBiasAdd-sequential_173/lstm_520/lstm_cell_154/add:z:0Dsequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_173/lstm_520/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_173/lstm_520/lstm_cell_154/splitSplit>sequential_173/lstm_520/lstm_cell_154/split/split_dim:output:06sequential_173/lstm_520/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_173/lstm_520/lstm_cell_154/SigmoidSigmoid4sequential_173/lstm_520/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_173/lstm_520/lstm_cell_154/Sigmoid_1Sigmoid4sequential_173/lstm_520/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_173/lstm_520/lstm_cell_154/mulMul3sequential_173/lstm_520/lstm_cell_154/Sigmoid_1:y:0(sequential_173/lstm_520/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_173/lstm_520/lstm_cell_154/ReluRelu4sequential_173/lstm_520/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_173/lstm_520/lstm_cell_154/mul_1Mul1sequential_173/lstm_520/lstm_cell_154/Sigmoid:y:08sequential_173/lstm_520/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_173/lstm_520/lstm_cell_154/add_1AddV2-sequential_173/lstm_520/lstm_cell_154/mul:z:0/sequential_173/lstm_520/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_173/lstm_520/lstm_cell_154/Sigmoid_2Sigmoid4sequential_173/lstm_520/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_173/lstm_520/lstm_cell_154/Relu_1Relu/sequential_173/lstm_520/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_173/lstm_520/lstm_cell_154/mul_2Mul3sequential_173/lstm_520/lstm_cell_154/Sigmoid_2:y:0:sequential_173/lstm_520/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_173/lstm_520/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_173/lstm_520/TensorArrayV2_1TensorListReserve>sequential_173/lstm_520/TensorArrayV2_1/element_shape:output:00sequential_173/lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_173/lstm_520/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_173/lstm_520/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_173/lstm_520/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_173/lstm_520/whileWhile3sequential_173/lstm_520/while/loop_counter:output:09sequential_173/lstm_520/while/maximum_iterations:output:0%sequential_173/lstm_520/time:output:00sequential_173/lstm_520/TensorArrayV2_1:handle:0&sequential_173/lstm_520/zeros:output:0(sequential_173/lstm_520/zeros_1:output:00sequential_173/lstm_520/strided_slice_1:output:0Osequential_173/lstm_520/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_173_lstm_520_lstm_cell_154_matmul_readvariableop_resourceFsequential_173_lstm_520_lstm_cell_154_matmul_1_readvariableop_resourceEsequential_173_lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
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
)sequential_173_lstm_520_while_body_937487*5
cond-R+
)sequential_173_lstm_520_while_cond_937486*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_173/lstm_520/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_173/lstm_520/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_173/lstm_520/while:output:3Qsequential_173/lstm_520/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_173/lstm_520/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_173/lstm_520/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_520/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_520/strided_slice_3StridedSliceCsequential_173/lstm_520/TensorArrayV2Stack/TensorListStack:tensor:06sequential_173/lstm_520/strided_slice_3/stack:output:08sequential_173/lstm_520/strided_slice_3/stack_1:output:08sequential_173/lstm_520/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_173/lstm_520/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_173/lstm_520/transpose_1	TransposeCsequential_173/lstm_520/TensorArrayV2Stack/TensorListStack:tensor:01sequential_173/lstm_520/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_173/lstm_520/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_173/lstm_521/ShapeShape'sequential_173/lstm_520/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_173/lstm_521/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_173/lstm_521/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_173/lstm_521/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_173/lstm_521/strided_sliceStridedSlice&sequential_173/lstm_521/Shape:output:04sequential_173/lstm_521/strided_slice/stack:output:06sequential_173/lstm_521/strided_slice/stack_1:output:06sequential_173/lstm_521/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_173/lstm_521/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_173/lstm_521/zeros/packedPack.sequential_173/lstm_521/strided_slice:output:0/sequential_173/lstm_521/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_173/lstm_521/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_521/zerosFill-sequential_173/lstm_521/zeros/packed:output:0,sequential_173/lstm_521/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_173/lstm_521/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_173/lstm_521/zeros_1/packedPack.sequential_173/lstm_521/strided_slice:output:01sequential_173/lstm_521/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_173/lstm_521/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_173/lstm_521/zeros_1Fill/sequential_173/lstm_521/zeros_1/packed:output:0.sequential_173/lstm_521/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_173/lstm_521/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_173/lstm_521/transpose	Transpose'sequential_173/lstm_520/transpose_1:y:0/sequential_173/lstm_521/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_173/lstm_521/Shape_1Shape%sequential_173/lstm_521/transpose:y:0*
T0*
_output_shapes
:w
-sequential_173/lstm_521/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_521/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_521/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_521/strided_slice_1StridedSlice(sequential_173/lstm_521/Shape_1:output:06sequential_173/lstm_521/strided_slice_1/stack:output:08sequential_173/lstm_521/strided_slice_1/stack_1:output:08sequential_173/lstm_521/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_173/lstm_521/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_173/lstm_521/TensorArrayV2TensorListReserve<sequential_173/lstm_521/TensorArrayV2/element_shape:output:00sequential_173/lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_173/lstm_521/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_173/lstm_521/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_173/lstm_521/transpose:y:0Vsequential_173/lstm_521/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_173/lstm_521/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_521/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_173/lstm_521/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_521/strided_slice_2StridedSlice%sequential_173/lstm_521/transpose:y:06sequential_173/lstm_521/strided_slice_2/stack:output:08sequential_173/lstm_521/strided_slice_2/stack_1:output:08sequential_173/lstm_521/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOpReadVariableOpDsequential_173_lstm_521_lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_173/lstm_521/lstm_cell_155/MatMulMatMul0sequential_173/lstm_521/strided_slice_2:output:0Csequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOpFsequential_173_lstm_521_lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_173/lstm_521/lstm_cell_155/MatMul_1MatMul&sequential_173/lstm_521/zeros:output:0Esequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_173/lstm_521/lstm_cell_155/addAddV26sequential_173/lstm_521/lstm_cell_155/MatMul:product:08sequential_173/lstm_521/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOpEsequential_173_lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_173/lstm_521/lstm_cell_155/BiasAddBiasAdd-sequential_173/lstm_521/lstm_cell_155/add:z:0Dsequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_173/lstm_521/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_173/lstm_521/lstm_cell_155/splitSplit>sequential_173/lstm_521/lstm_cell_155/split/split_dim:output:06sequential_173/lstm_521/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_173/lstm_521/lstm_cell_155/SigmoidSigmoid4sequential_173/lstm_521/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_173/lstm_521/lstm_cell_155/Sigmoid_1Sigmoid4sequential_173/lstm_521/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_173/lstm_521/lstm_cell_155/mulMul3sequential_173/lstm_521/lstm_cell_155/Sigmoid_1:y:0(sequential_173/lstm_521/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_173/lstm_521/lstm_cell_155/ReluRelu4sequential_173/lstm_521/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_173/lstm_521/lstm_cell_155/mul_1Mul1sequential_173/lstm_521/lstm_cell_155/Sigmoid:y:08sequential_173/lstm_521/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_173/lstm_521/lstm_cell_155/add_1AddV2-sequential_173/lstm_521/lstm_cell_155/mul:z:0/sequential_173/lstm_521/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_173/lstm_521/lstm_cell_155/Sigmoid_2Sigmoid4sequential_173/lstm_521/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_173/lstm_521/lstm_cell_155/Relu_1Relu/sequential_173/lstm_521/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_173/lstm_521/lstm_cell_155/mul_2Mul3sequential_173/lstm_521/lstm_cell_155/Sigmoid_2:y:0:sequential_173/lstm_521/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_173/lstm_521/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_173/lstm_521/TensorArrayV2_1TensorListReserve>sequential_173/lstm_521/TensorArrayV2_1/element_shape:output:00sequential_173/lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_173/lstm_521/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_173/lstm_521/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_173/lstm_521/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_173/lstm_521/whileWhile3sequential_173/lstm_521/while/loop_counter:output:09sequential_173/lstm_521/while/maximum_iterations:output:0%sequential_173/lstm_521/time:output:00sequential_173/lstm_521/TensorArrayV2_1:handle:0&sequential_173/lstm_521/zeros:output:0(sequential_173/lstm_521/zeros_1:output:00sequential_173/lstm_521/strided_slice_1:output:0Osequential_173/lstm_521/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_173_lstm_521_lstm_cell_155_matmul_readvariableop_resourceFsequential_173_lstm_521_lstm_cell_155_matmul_1_readvariableop_resourceEsequential_173_lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
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
)sequential_173_lstm_521_while_body_937626*5
cond-R+
)sequential_173_lstm_521_while_cond_937625*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_173/lstm_521/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_173/lstm_521/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_173/lstm_521/while:output:3Qsequential_173/lstm_521/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_173/lstm_521/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_173/lstm_521/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_173/lstm_521/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_173/lstm_521/strided_slice_3StridedSliceCsequential_173/lstm_521/TensorArrayV2Stack/TensorListStack:tensor:06sequential_173/lstm_521/strided_slice_3/stack:output:08sequential_173/lstm_521/strided_slice_3/stack_1:output:08sequential_173/lstm_521/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_173/lstm_521/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_173/lstm_521/transpose_1	TransposeCsequential_173/lstm_521/TensorArrayV2Stack/TensorListStack:tensor:01sequential_173/lstm_521/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_173/lstm_521/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_173/dense_173/MatMul/ReadVariableOpReadVariableOp7sequential_173_dense_173_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_173/dense_173/MatMulMatMul0sequential_173/lstm_521/strided_slice_3:output:06sequential_173/dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_173/dense_173/BiasAdd/ReadVariableOpReadVariableOp8sequential_173_dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_173/dense_173/BiasAddBiasAdd)sequential_173/dense_173/MatMul:product:07sequential_173/dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_173/dense_173/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_173/dense_173/BiasAdd/ReadVariableOp/^sequential_173/dense_173/MatMul/ReadVariableOp=^sequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp<^sequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOp>^sequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp^sequential_173/lstm_519/while=^sequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp<^sequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOp>^sequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp^sequential_173/lstm_520/while=^sequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp<^sequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOp>^sequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp^sequential_173/lstm_521/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_173/dense_173/BiasAdd/ReadVariableOp/sequential_173/dense_173/BiasAdd/ReadVariableOp2`
.sequential_173/dense_173/MatMul/ReadVariableOp.sequential_173/dense_173/MatMul/ReadVariableOp2|
<sequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp<sequential_173/lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp2z
;sequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOp;sequential_173/lstm_519/lstm_cell_153/MatMul/ReadVariableOp2~
=sequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp=sequential_173/lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp2>
sequential_173/lstm_519/whilesequential_173/lstm_519/while2|
<sequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp<sequential_173/lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp2z
;sequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOp;sequential_173/lstm_520/lstm_cell_154/MatMul/ReadVariableOp2~
=sequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp=sequential_173/lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp2>
sequential_173/lstm_520/whilesequential_173/lstm_520/while2|
<sequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp<sequential_173/lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp2z
;sequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOp;sequential_173/lstm_521/lstm_cell_155/MatMul/ReadVariableOp2~
=sequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp=sequential_173/lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp2>
sequential_173/lstm_521/whilesequential_173/lstm_521/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_519_input
?8
?
while_body_939347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
)sequential_173_lstm_520_while_cond_937486L
Hsequential_173_lstm_520_while_sequential_173_lstm_520_while_loop_counterR
Nsequential_173_lstm_520_while_sequential_173_lstm_520_while_maximum_iterations-
)sequential_173_lstm_520_while_placeholder/
+sequential_173_lstm_520_while_placeholder_1/
+sequential_173_lstm_520_while_placeholder_2/
+sequential_173_lstm_520_while_placeholder_3N
Jsequential_173_lstm_520_while_less_sequential_173_lstm_520_strided_slice_1d
`sequential_173_lstm_520_while_sequential_173_lstm_520_while_cond_937486___redundant_placeholder0d
`sequential_173_lstm_520_while_sequential_173_lstm_520_while_cond_937486___redundant_placeholder1d
`sequential_173_lstm_520_while_sequential_173_lstm_520_while_cond_937486___redundant_placeholder2d
`sequential_173_lstm_520_while_sequential_173_lstm_520_while_cond_937486___redundant_placeholder3*
&sequential_173_lstm_520_while_identity
?
"sequential_173/lstm_520/while/LessLess)sequential_173_lstm_520_while_placeholderJsequential_173_lstm_520_while_less_sequential_173_lstm_520_strided_slice_1*
T0*
_output_shapes
: {
&sequential_173/lstm_520/while/IdentityIdentity&sequential_173/lstm_520/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_173_lstm_520_while_identity/sequential_173/lstm_520/while/Identity:output:0*(
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
while_cond_942031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_942031___redundant_placeholder04
0while_while_cond_942031___redundant_placeholder14
0while_while_cond_942031___redundant_placeholder24
0while_while_cond_942031___redundant_placeholder3
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942817

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
?"
?
while_body_937797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_153_937821_0:	?/
while_lstm_cell_153_937823_0:	d?+
while_lstm_cell_153_937825_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_153_937821:	?-
while_lstm_cell_153_937823:	d?)
while_lstm_cell_153_937825:	???+while/lstm_cell_153/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_153/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_153_937821_0while_lstm_cell_153_937823_0while_lstm_cell_153_937825_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937783?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_153/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_153/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_153/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_153/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_153_937821while_lstm_cell_153_937821_0":
while_lstm_cell_153_937823while_lstm_cell_153_937823_0":
while_lstm_cell_153_937825while_lstm_cell_153_937825_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_153/StatefulPartitionedCall+while/lstm_cell_153/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_941603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943045

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

?
lstm_520_while_cond_940654.
*lstm_520_while_lstm_520_while_loop_counter4
0lstm_520_while_lstm_520_while_maximum_iterations
lstm_520_while_placeholder 
lstm_520_while_placeholder_1 
lstm_520_while_placeholder_2 
lstm_520_while_placeholder_30
,lstm_520_while_less_lstm_520_strided_slice_1F
Blstm_520_while_lstm_520_while_cond_940654___redundant_placeholder0F
Blstm_520_while_lstm_520_while_cond_940654___redundant_placeholder1F
Blstm_520_while_lstm_520_while_cond_940654___redundant_placeholder2F
Blstm_520_while_lstm_520_while_cond_940654___redundant_placeholder3
lstm_520_while_identity
?
lstm_520/while/LessLesslstm_520_while_placeholder,lstm_520_while_less_lstm_520_strided_slice_1*
T0*
_output_shapes
: ]
lstm_520/while/IdentityIdentitylstm_520/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_520_while_identity lstm_520/while/Identity:output:0*(
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
)sequential_173_lstm_519_while_body_937348L
Hsequential_173_lstm_519_while_sequential_173_lstm_519_while_loop_counterR
Nsequential_173_lstm_519_while_sequential_173_lstm_519_while_maximum_iterations-
)sequential_173_lstm_519_while_placeholder/
+sequential_173_lstm_519_while_placeholder_1/
+sequential_173_lstm_519_while_placeholder_2/
+sequential_173_lstm_519_while_placeholder_3K
Gsequential_173_lstm_519_while_sequential_173_lstm_519_strided_slice_1_0?
?sequential_173_lstm_519_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_519_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_173_lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0:	?a
Nsequential_173_lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?\
Msequential_173_lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0:	?*
&sequential_173_lstm_519_while_identity,
(sequential_173_lstm_519_while_identity_1,
(sequential_173_lstm_519_while_identity_2,
(sequential_173_lstm_519_while_identity_3,
(sequential_173_lstm_519_while_identity_4,
(sequential_173_lstm_519_while_identity_5I
Esequential_173_lstm_519_while_sequential_173_lstm_519_strided_slice_1?
?sequential_173_lstm_519_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_519_tensorarrayunstack_tensorlistfromtensor]
Jsequential_173_lstm_519_while_lstm_cell_153_matmul_readvariableop_resource:	?_
Lsequential_173_lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource:	d?Z
Ksequential_173_lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource:	???Bsequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp?Asequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp?Csequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp?
Osequential_173/lstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_173/lstm_519/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_173_lstm_519_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_519_tensorarrayunstack_tensorlistfromtensor_0)sequential_173_lstm_519_while_placeholderXsequential_173/lstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOpLsequential_173_lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_173/lstm_519/while/lstm_cell_153/MatMulMatMulHsequential_173/lstm_519/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOpNsequential_173_lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_173/lstm_519/while/lstm_cell_153/MatMul_1MatMul+sequential_173_lstm_519_while_placeholder_2Ksequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_173/lstm_519/while/lstm_cell_153/addAddV2<sequential_173/lstm_519/while/lstm_cell_153/MatMul:product:0>sequential_173/lstm_519/while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOpMsequential_173_lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_173/lstm_519/while/lstm_cell_153/BiasAddBiasAdd3sequential_173/lstm_519/while/lstm_cell_153/add:z:0Jsequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_173/lstm_519/while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_173/lstm_519/while/lstm_cell_153/splitSplitDsequential_173/lstm_519/while/lstm_cell_153/split/split_dim:output:0<sequential_173/lstm_519/while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_173/lstm_519/while/lstm_cell_153/SigmoidSigmoid:sequential_173/lstm_519/while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_173/lstm_519/while/lstm_cell_153/Sigmoid_1Sigmoid:sequential_173/lstm_519/while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_173/lstm_519/while/lstm_cell_153/mulMul9sequential_173/lstm_519/while/lstm_cell_153/Sigmoid_1:y:0+sequential_173_lstm_519_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_173/lstm_519/while/lstm_cell_153/ReluRelu:sequential_173/lstm_519/while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_173/lstm_519/while/lstm_cell_153/mul_1Mul7sequential_173/lstm_519/while/lstm_cell_153/Sigmoid:y:0>sequential_173/lstm_519/while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_173/lstm_519/while/lstm_cell_153/add_1AddV23sequential_173/lstm_519/while/lstm_cell_153/mul:z:05sequential_173/lstm_519/while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_173/lstm_519/while/lstm_cell_153/Sigmoid_2Sigmoid:sequential_173/lstm_519/while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_173/lstm_519/while/lstm_cell_153/Relu_1Relu5sequential_173/lstm_519/while/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_173/lstm_519/while/lstm_cell_153/mul_2Mul9sequential_173/lstm_519/while/lstm_cell_153/Sigmoid_2:y:0@sequential_173/lstm_519/while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_173/lstm_519/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_173_lstm_519_while_placeholder_1)sequential_173_lstm_519_while_placeholder5sequential_173/lstm_519/while/lstm_cell_153/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_173/lstm_519/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_173/lstm_519/while/addAddV2)sequential_173_lstm_519_while_placeholder,sequential_173/lstm_519/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_173/lstm_519/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_173/lstm_519/while/add_1AddV2Hsequential_173_lstm_519_while_sequential_173_lstm_519_while_loop_counter.sequential_173/lstm_519/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_173/lstm_519/while/IdentityIdentity'sequential_173/lstm_519/while/add_1:z:0#^sequential_173/lstm_519/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_519/while/Identity_1IdentityNsequential_173_lstm_519_while_sequential_173_lstm_519_while_maximum_iterations#^sequential_173/lstm_519/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_519/while/Identity_2Identity%sequential_173/lstm_519/while/add:z:0#^sequential_173/lstm_519/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_519/while/Identity_3IdentityRsequential_173/lstm_519/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_173/lstm_519/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_519/while/Identity_4Identity5sequential_173/lstm_519/while/lstm_cell_153/mul_2:z:0#^sequential_173/lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_173/lstm_519/while/Identity_5Identity5sequential_173/lstm_519/while/lstm_cell_153/add_1:z:0#^sequential_173/lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_173/lstm_519/while/NoOpNoOpC^sequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOpB^sequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOpD^sequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_173_lstm_519_while_identity/sequential_173/lstm_519/while/Identity:output:0"]
(sequential_173_lstm_519_while_identity_11sequential_173/lstm_519/while/Identity_1:output:0"]
(sequential_173_lstm_519_while_identity_21sequential_173/lstm_519/while/Identity_2:output:0"]
(sequential_173_lstm_519_while_identity_31sequential_173/lstm_519/while/Identity_3:output:0"]
(sequential_173_lstm_519_while_identity_41sequential_173/lstm_519/while/Identity_4:output:0"]
(sequential_173_lstm_519_while_identity_51sequential_173/lstm_519/while/Identity_5:output:0"?
Ksequential_173_lstm_519_while_lstm_cell_153_biasadd_readvariableop_resourceMsequential_173_lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0"?
Lsequential_173_lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resourceNsequential_173_lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0"?
Jsequential_173_lstm_519_while_lstm_cell_153_matmul_readvariableop_resourceLsequential_173_lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0"?
Esequential_173_lstm_519_while_sequential_173_lstm_519_strided_slice_1Gsequential_173_lstm_519_while_sequential_173_lstm_519_strided_slice_1_0"?
?sequential_173_lstm_519_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_519_tensorarrayunstack_tensorlistfromtensor?sequential_173_lstm_519_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_519_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOpBsequential_173/lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp2?
Asequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOpAsequential_173/lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp2?
Csequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOpCsequential_173/lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_519_while_body_940516.
*lstm_519_while_lstm_519_while_loop_counter4
0lstm_519_while_lstm_519_while_maximum_iterations
lstm_519_while_placeholder 
lstm_519_while_placeholder_1 
lstm_519_while_placeholder_2 
lstm_519_while_placeholder_3-
)lstm_519_while_lstm_519_strided_slice_1_0i
elstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0:	?R
?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?M
>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
lstm_519_while_identity
lstm_519_while_identity_1
lstm_519_while_identity_2
lstm_519_while_identity_3
lstm_519_while_identity_4
lstm_519_while_identity_5+
'lstm_519_while_lstm_519_strided_slice_1g
clstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensorN
;lstm_519_while_lstm_cell_153_matmul_readvariableop_resource:	?P
=lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource:	d?K
<lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource:	???3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp?2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp?4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp?
@lstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_519/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0lstm_519_while_placeholderIlstm_519/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_519/while/lstm_cell_153/MatMulMatMul9lstm_519/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_519/while/lstm_cell_153/MatMul_1MatMullstm_519_while_placeholder_2<lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_519/while/lstm_cell_153/addAddV2-lstm_519/while/lstm_cell_153/MatMul:product:0/lstm_519/while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_519/while/lstm_cell_153/BiasAddBiasAdd$lstm_519/while/lstm_cell_153/add:z:0;lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_519/while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_519/while/lstm_cell_153/splitSplit5lstm_519/while/lstm_cell_153/split/split_dim:output:0-lstm_519/while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_519/while/lstm_cell_153/SigmoidSigmoid+lstm_519/while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_519/while/lstm_cell_153/Sigmoid_1Sigmoid+lstm_519/while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_519/while/lstm_cell_153/mulMul*lstm_519/while/lstm_cell_153/Sigmoid_1:y:0lstm_519_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_519/while/lstm_cell_153/ReluRelu+lstm_519/while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/mul_1Mul(lstm_519/while/lstm_cell_153/Sigmoid:y:0/lstm_519/while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/add_1AddV2$lstm_519/while/lstm_cell_153/mul:z:0&lstm_519/while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_519/while/lstm_cell_153/Sigmoid_2Sigmoid+lstm_519/while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_519/while/lstm_cell_153/Relu_1Relu&lstm_519/while/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_519/while/lstm_cell_153/mul_2Mul*lstm_519/while/lstm_cell_153/Sigmoid_2:y:01lstm_519/while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_519/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_519_while_placeholder_1lstm_519_while_placeholder&lstm_519/while/lstm_cell_153/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_519/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_519/while/addAddV2lstm_519_while_placeholderlstm_519/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_519/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_519/while/add_1AddV2*lstm_519_while_lstm_519_while_loop_counterlstm_519/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_519/while/IdentityIdentitylstm_519/while/add_1:z:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_1Identity0lstm_519_while_lstm_519_while_maximum_iterations^lstm_519/while/NoOp*
T0*
_output_shapes
: t
lstm_519/while/Identity_2Identitylstm_519/while/add:z:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_3IdentityClstm_519/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_519/while/NoOp*
T0*
_output_shapes
: ?
lstm_519/while/Identity_4Identity&lstm_519/while/lstm_cell_153/mul_2:z:0^lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_519/while/Identity_5Identity&lstm_519/while/lstm_cell_153/add_1:z:0^lstm_519/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_519/while/NoOpNoOp4^lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp3^lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp5^lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_519_while_identity lstm_519/while/Identity:output:0"?
lstm_519_while_identity_1"lstm_519/while/Identity_1:output:0"?
lstm_519_while_identity_2"lstm_519/while/Identity_2:output:0"?
lstm_519_while_identity_3"lstm_519/while/Identity_3:output:0"?
lstm_519_while_identity_4"lstm_519/while/Identity_4:output:0"?
lstm_519_while_identity_5"lstm_519/while/Identity_5:output:0"T
'lstm_519_while_lstm_519_strided_slice_1)lstm_519_while_lstm_519_strided_slice_1_0"~
<lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource>lstm_519_while_lstm_cell_153_biasadd_readvariableop_resource_0"?
=lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource?lstm_519_while_lstm_cell_153_matmul_1_readvariableop_resource_0"|
;lstm_519_while_lstm_cell_153_matmul_readvariableop_resource=lstm_519_while_lstm_cell_153_matmul_readvariableop_resource_0"?
clstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensorelstm_519_while_tensorarrayv2read_tensorlistgetitem_lstm_519_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp3lstm_519/while/lstm_cell_153/BiasAdd/ReadVariableOp2h
2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp2lstm_519/while/lstm_cell_153/MatMul/ReadVariableOp2l
4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp4lstm_519/while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_938338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_154_938362_0:	d?/
while_lstm_cell_154_938364_0:	2?+
while_lstm_cell_154_938366_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_154_938362:	d?-
while_lstm_cell_154_938364:	2?)
while_lstm_cell_154_938366:	???+while/lstm_cell_154/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_154/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_154_938362_0while_lstm_cell_154_938364_0while_lstm_cell_154_938366_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938279?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_154/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_154/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_154/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_154/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_154_938362while_lstm_cell_154_938362_0":
while_lstm_cell_154_938364while_lstm_cell_154_938364_0":
while_lstm_cell_154_938366while_lstm_cell_154_938366_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_154/StatefulPartitionedCall+while/lstm_cell_154/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939240

inputs"
lstm_519_938916:	?"
lstm_519_938918:	d?
lstm_519_938920:	?"
lstm_520_939066:	d?"
lstm_520_939068:	2?
lstm_520_939070:	?!
lstm_521_939216:2(!
lstm_521_939218:
(
lstm_521_939220:("
dense_173_939234:

dense_173_939236:
identity??!dense_173/StatefulPartitionedCall? lstm_519/StatefulPartitionedCall? lstm_520/StatefulPartitionedCall? lstm_521/StatefulPartitionedCall?
 lstm_519/StatefulPartitionedCallStatefulPartitionedCallinputslstm_519_938916lstm_519_938918lstm_519_938920*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_938915?
 lstm_520/StatefulPartitionedCallStatefulPartitionedCall)lstm_519/StatefulPartitionedCall:output:0lstm_520_939066lstm_520_939068lstm_520_939070*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939065?
 lstm_521/StatefulPartitionedCallStatefulPartitionedCall)lstm_520/StatefulPartitionedCall:output:0lstm_521_939216lstm_521_939218lstm_521_939220*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939215?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_521/StatefulPartitionedCall:output:0dense_173_939234dense_173_939236*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_939233y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_173/StatefulPartitionedCall!^lstm_519/StatefulPartitionedCall!^lstm_520/StatefulPartitionedCall!^lstm_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2D
 lstm_519/StatefulPartitionedCall lstm_519/StatefulPartitionedCall2D
 lstm_520/StatefulPartitionedCall lstm_520/StatefulPartitionedCall2D
 lstm_521/StatefulPartitionedCall lstm_521/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_938496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938496___redundant_placeholder04
0while_while_cond_938496___redundant_placeholder14
0while_while_cond_938496___redundant_placeholder24
0while_while_cond_938496___redundant_placeholder3
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
while_body_942032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_520_while_body_940655.
*lstm_520_while_lstm_520_while_loop_counter4
0lstm_520_while_lstm_520_while_maximum_iterations
lstm_520_while_placeholder 
lstm_520_while_placeholder_1 
lstm_520_while_placeholder_2 
lstm_520_while_placeholder_3-
)lstm_520_while_lstm_520_strided_slice_1_0i
elstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0:	d?R
?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?M
>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
lstm_520_while_identity
lstm_520_while_identity_1
lstm_520_while_identity_2
lstm_520_while_identity_3
lstm_520_while_identity_4
lstm_520_while_identity_5+
'lstm_520_while_lstm_520_strided_slice_1g
clstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensorN
;lstm_520_while_lstm_cell_154_matmul_readvariableop_resource:	d?P
=lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource:	2?K
<lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource:	???3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp?2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp?4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp?
@lstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_520/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0lstm_520_while_placeholderIlstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_520/while/lstm_cell_154/MatMulMatMul9lstm_520/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_520/while/lstm_cell_154/MatMul_1MatMullstm_520_while_placeholder_2<lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_520/while/lstm_cell_154/addAddV2-lstm_520/while/lstm_cell_154/MatMul:product:0/lstm_520/while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_520/while/lstm_cell_154/BiasAddBiasAdd$lstm_520/while/lstm_cell_154/add:z:0;lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_520/while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_520/while/lstm_cell_154/splitSplit5lstm_520/while/lstm_cell_154/split/split_dim:output:0-lstm_520/while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_520/while/lstm_cell_154/SigmoidSigmoid+lstm_520/while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_520/while/lstm_cell_154/Sigmoid_1Sigmoid+lstm_520/while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_520/while/lstm_cell_154/mulMul*lstm_520/while/lstm_cell_154/Sigmoid_1:y:0lstm_520_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_520/while/lstm_cell_154/ReluRelu+lstm_520/while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/mul_1Mul(lstm_520/while/lstm_cell_154/Sigmoid:y:0/lstm_520/while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/add_1AddV2$lstm_520/while/lstm_cell_154/mul:z:0&lstm_520/while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_520/while/lstm_cell_154/Sigmoid_2Sigmoid+lstm_520/while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_520/while/lstm_cell_154/Relu_1Relu&lstm_520/while/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_520/while/lstm_cell_154/mul_2Mul*lstm_520/while/lstm_cell_154/Sigmoid_2:y:01lstm_520/while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_520/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_520_while_placeholder_1lstm_520_while_placeholder&lstm_520/while/lstm_cell_154/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_520/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_520/while/addAddV2lstm_520_while_placeholderlstm_520/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_520/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_520/while/add_1AddV2*lstm_520_while_lstm_520_while_loop_counterlstm_520/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_520/while/IdentityIdentitylstm_520/while/add_1:z:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_1Identity0lstm_520_while_lstm_520_while_maximum_iterations^lstm_520/while/NoOp*
T0*
_output_shapes
: t
lstm_520/while/Identity_2Identitylstm_520/while/add:z:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_3IdentityClstm_520/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_520/while/NoOp*
T0*
_output_shapes
: ?
lstm_520/while/Identity_4Identity&lstm_520/while/lstm_cell_154/mul_2:z:0^lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_520/while/Identity_5Identity&lstm_520/while/lstm_cell_154/add_1:z:0^lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_520/while/NoOpNoOp4^lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp3^lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp5^lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_520_while_identity lstm_520/while/Identity:output:0"?
lstm_520_while_identity_1"lstm_520/while/Identity_1:output:0"?
lstm_520_while_identity_2"lstm_520/while/Identity_2:output:0"?
lstm_520_while_identity_3"lstm_520/while/Identity_3:output:0"?
lstm_520_while_identity_4"lstm_520/while/Identity_4:output:0"?
lstm_520_while_identity_5"lstm_520/while/Identity_5:output:0"T
'lstm_520_while_lstm_520_strided_slice_1)lstm_520_while_lstm_520_strided_slice_1_0"~
<lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource>lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0"?
=lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource?lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0"|
;lstm_520_while_lstm_cell_154_matmul_readvariableop_resource=lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0"?
clstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensorelstm_520_while_tensorarrayv2read_tensorlistgetitem_lstm_520_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp3lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp2h
2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp2lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp2l
4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp4lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_942647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_942647___redundant_placeholder04
0while_while_cond_942647___redundant_placeholder14
0while_while_cond_942647___redundant_placeholder24
0while_while_cond_942647___redundant_placeholder3
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
E__inference_dense_173_layer_call_and_return_conditional_losses_942751

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
while_body_941416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941357

inputs?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_941273*
condR
while_cond_941272*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_521_layer_call_fn_942149

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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939215o
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
?
)sequential_173_lstm_519_while_cond_937347L
Hsequential_173_lstm_519_while_sequential_173_lstm_519_while_loop_counterR
Nsequential_173_lstm_519_while_sequential_173_lstm_519_while_maximum_iterations-
)sequential_173_lstm_519_while_placeholder/
+sequential_173_lstm_519_while_placeholder_1/
+sequential_173_lstm_519_while_placeholder_2/
+sequential_173_lstm_519_while_placeholder_3N
Jsequential_173_lstm_519_while_less_sequential_173_lstm_519_strided_slice_1d
`sequential_173_lstm_519_while_sequential_173_lstm_519_while_cond_937347___redundant_placeholder0d
`sequential_173_lstm_519_while_sequential_173_lstm_519_while_cond_937347___redundant_placeholder1d
`sequential_173_lstm_519_while_sequential_173_lstm_519_while_cond_937347___redundant_placeholder2d
`sequential_173_lstm_519_while_sequential_173_lstm_519_while_cond_937347___redundant_placeholder3*
&sequential_173_lstm_519_while_identity
?
"sequential_173/lstm_519/while/LessLess)sequential_173_lstm_519_while_placeholderJsequential_173_lstm_519_while_less_sequential_173_lstm_519_strided_slice_1*
T0*
_output_shapes
: {
&sequential_173/lstm_519/while/IdentityIdentity&sequential_173/lstm_519/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_173_lstm_519_while_identity/sequential_173/lstm_519/while/Identity:output:0*(
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
while_body_940987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_939677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939941
lstm_519_input"
lstm_519_939914:	?"
lstm_519_939916:	d?
lstm_519_939918:	?"
lstm_520_939921:	d?"
lstm_520_939923:	2?
lstm_520_939925:	?!
lstm_521_939928:2(!
lstm_521_939930:
(
lstm_521_939932:("
dense_173_939935:

dense_173_939937:
identity??!dense_173/StatefulPartitionedCall? lstm_519/StatefulPartitionedCall? lstm_520/StatefulPartitionedCall? lstm_521/StatefulPartitionedCall?
 lstm_519/StatefulPartitionedCallStatefulPartitionedCalllstm_519_inputlstm_519_939914lstm_519_939916lstm_519_939918*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_939761?
 lstm_520/StatefulPartitionedCallStatefulPartitionedCall)lstm_519/StatefulPartitionedCall:output:0lstm_520_939921lstm_520_939923lstm_520_939925*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939596?
 lstm_521/StatefulPartitionedCallStatefulPartitionedCall)lstm_520/StatefulPartitionedCall:output:0lstm_521_939928lstm_521_939930lstm_521_939932*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939431?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_521/StatefulPartitionedCall:output:0dense_173_939935dense_173_939937*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_939233y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_173/StatefulPartitionedCall!^lstm_519/StatefulPartitionedCall!^lstm_520/StatefulPartitionedCall!^lstm_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2D
 lstm_519/StatefulPartitionedCall lstm_519/StatefulPartitionedCall2D
 lstm_520/StatefulPartitionedCall lstm_520/StatefulPartitionedCall2D
 lstm_521/StatefulPartitionedCall lstm_521/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_519_input
?
?
while_cond_937987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_937987___redundant_placeholder04
0while_while_cond_937987___redundant_placeholder14
0while_while_cond_937987___redundant_placeholder24
0while_while_cond_937987___redundant_placeholder3
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_938566

inputs&
lstm_cell_155_938484:2(&
lstm_cell_155_938486:
("
lstm_cell_155_938488:(
identity??%lstm_cell_155/StatefulPartitionedCall?while;
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
%lstm_cell_155/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_155_938484lstm_cell_155_938486lstm_cell_155_938488*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938483n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_155_938484lstm_cell_155_938486lstm_cell_155_938488*
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
bodyR
while_body_938497*
condR
while_cond_938496*K
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
NoOpNoOp&^lstm_cell_155/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_155/StatefulPartitionedCall%lstm_cell_155/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_939512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_939130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_939130___redundant_placeholder04
0while_while_cond_939130___redundant_placeholder14
0while_while_cond_939130___redundant_placeholder24
0while_while_cond_939130___redundant_placeholder3
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941071
inputs_0?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_940987*
condR
while_cond_940986*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_519_while_cond_940088.
*lstm_519_while_lstm_519_while_loop_counter4
0lstm_519_while_lstm_519_while_maximum_iterations
lstm_519_while_placeholder 
lstm_519_while_placeholder_1 
lstm_519_while_placeholder_2 
lstm_519_while_placeholder_30
,lstm_519_while_less_lstm_519_strided_slice_1F
Blstm_519_while_lstm_519_while_cond_940088___redundant_placeholder0F
Blstm_519_while_lstm_519_while_cond_940088___redundant_placeholder1F
Blstm_519_while_lstm_519_while_cond_940088___redundant_placeholder2F
Blstm_519_while_lstm_519_while_cond_940088___redundant_placeholder3
lstm_519_while_identity
?
lstm_519/while/LessLesslstm_519_while_placeholder,lstm_519_while_less_lstm_519_strided_slice_1*
T0*
_output_shapes
: ]
lstm_519/while/IdentityIdentitylstm_519/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_519_while_identity lstm_519/while/Identity:output:0*(
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
?"
?
while_body_938497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_155_938521_0:2(.
while_lstm_cell_155_938523_0:
(*
while_lstm_cell_155_938525_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_155_938521:2(,
while_lstm_cell_155_938523:
((
while_lstm_cell_155_938525:(??+while/lstm_cell_155/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_155/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_155_938521_0while_lstm_cell_155_938523_0while_lstm_cell_155_938525_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938483?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_155/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_155/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_155/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_155_938521while_lstm_cell_155_938521_0":
while_lstm_cell_155_938523while_lstm_cell_155_938523_0":
while_lstm_cell_155_938525while_lstm_cell_155_938525_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_155/StatefulPartitionedCall+while/lstm_cell_155/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_521_layer_call_fn_942127
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_938566o
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
while_body_942648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_153_layer_call_fn_942785

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937929o
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
)__inference_lstm_519_layer_call_fn_940906
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_938057|
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941687
inputs_0?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_941603*
condR
while_cond_941602*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__traced_restore_943318
file_prefix3
!assignvariableop_dense_173_kernel:
/
!assignvariableop_1_dense_173_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_519_lstm_cell_519_kernel:	?M
:assignvariableop_8_lstm_519_lstm_cell_519_recurrent_kernel:	d?=
.assignvariableop_9_lstm_519_lstm_cell_519_bias:	?D
1assignvariableop_10_lstm_520_lstm_cell_520_kernel:	d?N
;assignvariableop_11_lstm_520_lstm_cell_520_recurrent_kernel:	2?>
/assignvariableop_12_lstm_520_lstm_cell_520_bias:	?C
1assignvariableop_13_lstm_521_lstm_cell_521_kernel:2(M
;assignvariableop_14_lstm_521_lstm_cell_521_recurrent_kernel:
(=
/assignvariableop_15_lstm_521_lstm_cell_521_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_173_kernel_m:
7
)assignvariableop_19_adam_dense_173_bias_m:K
8assignvariableop_20_adam_lstm_519_lstm_cell_519_kernel_m:	?U
Bassignvariableop_21_adam_lstm_519_lstm_cell_519_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_519_lstm_cell_519_bias_m:	?K
8assignvariableop_23_adam_lstm_520_lstm_cell_520_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_520_lstm_cell_520_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_520_lstm_cell_520_bias_m:	?J
8assignvariableop_26_adam_lstm_521_lstm_cell_521_kernel_m:2(T
Bassignvariableop_27_adam_lstm_521_lstm_cell_521_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_521_lstm_cell_521_bias_m:(=
+assignvariableop_29_adam_dense_173_kernel_v:
7
)assignvariableop_30_adam_dense_173_bias_v:K
8assignvariableop_31_adam_lstm_519_lstm_cell_519_kernel_v:	?U
Bassignvariableop_32_adam_lstm_519_lstm_cell_519_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_519_lstm_cell_519_bias_v:	?K
8assignvariableop_34_adam_lstm_520_lstm_cell_520_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_520_lstm_cell_520_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_520_lstm_cell_520_bias_v:	?J
8assignvariableop_37_adam_lstm_521_lstm_cell_521_kernel_v:2(T
Bassignvariableop_38_adam_lstm_521_lstm_cell_521_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_521_lstm_cell_521_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_173_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_173_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_519_lstm_cell_519_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_519_lstm_cell_519_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_519_lstm_cell_519_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_520_lstm_cell_520_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_520_lstm_cell_520_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_520_lstm_cell_520_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_521_lstm_cell_521_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_521_lstm_cell_521_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_521_lstm_cell_521_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_173_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_173_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_519_lstm_cell_519_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_519_lstm_cell_519_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_519_lstm_cell_519_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_520_lstm_cell_520_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_520_lstm_cell_520_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_520_lstm_cell_520_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_521_lstm_cell_521_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_521_lstm_cell_521_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_521_lstm_cell_521_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_173_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_173_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_519_lstm_cell_519_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_519_lstm_cell_519_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_519_lstm_cell_519_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_520_lstm_cell_520_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_520_lstm_cell_520_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_520_lstm_cell_520_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_521_lstm_cell_521_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_521_lstm_cell_521_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_521_lstm_cell_521_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937929

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
D__inference_lstm_519_layer_call_and_return_conditional_losses_938915

inputs?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_938831*
condR
while_cond_938830*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_520_layer_call_fn_941522
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_938407|
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
while_cond_939676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_939676___redundant_placeholder04
0while_while_cond_939676___redundant_placeholder14
0while_while_cond_939676___redundant_placeholder24
0while_while_cond_939676___redundant_placeholder3
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
while_body_938831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941973

inputs?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_941889*
condR
while_cond_941888*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_lstm_519_layer_call_fn_940917

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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_938915s
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
)__inference_lstm_520_layer_call_fn_941533

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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939065s
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
while_body_941889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_154_layer_call_fn_942866

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938133o
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
while_cond_938687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938687___redundant_placeholder04
0while_while_cond_938687___redundant_placeholder14
0while_while_cond_938687___redundant_placeholder24
0while_while_cond_938687___redundant_placeholder3
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942732

inputs>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_942648*
condR
while_cond_942647*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_519_while_cond_940515.
*lstm_519_while_lstm_519_while_loop_counter4
0lstm_519_while_lstm_519_while_maximum_iterations
lstm_519_while_placeholder 
lstm_519_while_placeholder_1 
lstm_519_while_placeholder_2 
lstm_519_while_placeholder_30
,lstm_519_while_less_lstm_519_strided_slice_1F
Blstm_519_while_lstm_519_while_cond_940515___redundant_placeholder0F
Blstm_519_while_lstm_519_while_cond_940515___redundant_placeholder1F
Blstm_519_while_lstm_519_while_cond_940515___redundant_placeholder2F
Blstm_519_while_lstm_519_while_cond_940515___redundant_placeholder3
lstm_519_while_identity
?
lstm_519/while/LessLesslstm_519_while_placeholder,lstm_519_while_less_lstm_519_strided_slice_1*
T0*
_output_shapes
: ]
lstm_519/while/IdentityIdentitylstm_519/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_519_while_identity lstm_519/while/Identity:output:0*(
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_938216

inputs'
lstm_cell_154_938134:	d?'
lstm_cell_154_938136:	2?#
lstm_cell_154_938138:	?
identity??%lstm_cell_154/StatefulPartitionedCall?while;
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
%lstm_cell_154/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_154_938134lstm_cell_154_938136lstm_cell_154_938138*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938133n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_154_938134lstm_cell_154_938136lstm_cell_154_938138*
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
bodyR
while_body_938147*
condR
while_cond_938146*K
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
NoOpNoOp&^lstm_cell_154/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_154/StatefulPartitionedCall%lstm_cell_154/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_939976
lstm_519_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_519_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? **
f%R#
!__inference__wrapped_model_937716o
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
_user_specified_namelstm_519_input
?8
?
D__inference_lstm_520_layer_call_and_return_conditional_losses_938407

inputs'
lstm_cell_154_938325:	d?'
lstm_cell_154_938327:	2?#
lstm_cell_154_938329:	?
identity??%lstm_cell_154/StatefulPartitionedCall?while;
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
%lstm_cell_154/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_154_938325lstm_cell_154_938327lstm_cell_154_938329*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938279n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_154_938325lstm_cell_154_938327lstm_cell_154_938329*
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
bodyR
while_body_938338*
condR
while_cond_938337*K
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
NoOpNoOp&^lstm_cell_154/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_154/StatefulPartitionedCall%lstm_cell_154/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_938830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938830___redundant_placeholder04
0while_while_cond_938830___redundant_placeholder14
0while_while_cond_938830___redundant_placeholder24
0while_while_cond_938830___redundant_placeholder3
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
while_cond_941129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941129___redundant_placeholder04
0while_while_cond_941129___redundant_placeholder14
0while_while_cond_941129___redundant_placeholder24
0while_while_cond_941129___redundant_placeholder3
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
)__inference_lstm_520_layer_call_fn_941544

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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939596s
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
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938629

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
while_cond_942218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_942218___redundant_placeholder04
0while_while_cond_942218___redundant_placeholder14
0while_while_cond_942218___redundant_placeholder24
0while_while_cond_942218___redundant_placeholder3
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
.__inference_lstm_cell_153_layer_call_fn_942768

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937783o
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
while_body_942505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_173_layer_call_fn_939265
lstm_519_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_519_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939240o
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
_user_specified_namelstm_519_input
?J
?
D__inference_lstm_520_layer_call_and_return_conditional_losses_939596

inputs?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_939512*
condR
while_cond_939511*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_173_layer_call_and_return_conditional_losses_939233

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
)__inference_lstm_520_layer_call_fn_941511
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_938216|
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
?C
?

lstm_521_while_body_940794.
*lstm_521_while_lstm_521_while_loop_counter4
0lstm_521_while_lstm_521_while_maximum_iterations
lstm_521_while_placeholder 
lstm_521_while_placeholder_1 
lstm_521_while_placeholder_2 
lstm_521_while_placeholder_3-
)lstm_521_while_lstm_521_strided_slice_1_0i
elstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0:2(Q
?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(L
>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0:(
lstm_521_while_identity
lstm_521_while_identity_1
lstm_521_while_identity_2
lstm_521_while_identity_3
lstm_521_while_identity_4
lstm_521_while_identity_5+
'lstm_521_while_lstm_521_strided_slice_1g
clstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensorM
;lstm_521_while_lstm_cell_155_matmul_readvariableop_resource:2(O
=lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource:
(J
<lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource:(??3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp?2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp?4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp?
@lstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_521/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0lstm_521_while_placeholderIlstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_521/while/lstm_cell_155/MatMulMatMul9lstm_521/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_521/while/lstm_cell_155/MatMul_1MatMullstm_521_while_placeholder_2<lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_521/while/lstm_cell_155/addAddV2-lstm_521/while/lstm_cell_155/MatMul:product:0/lstm_521/while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_521/while/lstm_cell_155/BiasAddBiasAdd$lstm_521/while/lstm_cell_155/add:z:0;lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_521/while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_521/while/lstm_cell_155/splitSplit5lstm_521/while/lstm_cell_155/split/split_dim:output:0-lstm_521/while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_521/while/lstm_cell_155/SigmoidSigmoid+lstm_521/while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_521/while/lstm_cell_155/Sigmoid_1Sigmoid+lstm_521/while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_521/while/lstm_cell_155/mulMul*lstm_521/while/lstm_cell_155/Sigmoid_1:y:0lstm_521_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_521/while/lstm_cell_155/ReluRelu+lstm_521/while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/mul_1Mul(lstm_521/while/lstm_cell_155/Sigmoid:y:0/lstm_521/while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/add_1AddV2$lstm_521/while/lstm_cell_155/mul:z:0&lstm_521/while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_521/while/lstm_cell_155/Sigmoid_2Sigmoid+lstm_521/while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_521/while/lstm_cell_155/Relu_1Relu&lstm_521/while/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/mul_2Mul*lstm_521/while/lstm_cell_155/Sigmoid_2:y:01lstm_521/while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_521/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_521_while_placeholder_1lstm_521_while_placeholder&lstm_521/while/lstm_cell_155/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_521/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_521/while/addAddV2lstm_521_while_placeholderlstm_521/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_521/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_521/while/add_1AddV2*lstm_521_while_lstm_521_while_loop_counterlstm_521/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_521/while/IdentityIdentitylstm_521/while/add_1:z:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_1Identity0lstm_521_while_lstm_521_while_maximum_iterations^lstm_521/while/NoOp*
T0*
_output_shapes
: t
lstm_521/while/Identity_2Identitylstm_521/while/add:z:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_3IdentityClstm_521/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_4Identity&lstm_521/while/lstm_cell_155/mul_2:z:0^lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_521/while/Identity_5Identity&lstm_521/while/lstm_cell_155/add_1:z:0^lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_521/while/NoOpNoOp4^lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp3^lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp5^lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_521_while_identity lstm_521/while/Identity:output:0"?
lstm_521_while_identity_1"lstm_521/while/Identity_1:output:0"?
lstm_521_while_identity_2"lstm_521/while/Identity_2:output:0"?
lstm_521_while_identity_3"lstm_521/while/Identity_3:output:0"?
lstm_521_while_identity_4"lstm_521/while/Identity_4:output:0"?
lstm_521_while_identity_5"lstm_521/while/Identity_5:output:0"T
'lstm_521_while_lstm_521_strided_slice_1)lstm_521_while_lstm_521_strided_slice_1_0"~
<lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0"?
=lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0"|
;lstm_521_while_lstm_cell_155_matmul_readvariableop_resource=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0"?
clstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensorelstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp2h
2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp2l
4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_521_layer_call_fn_942138
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_938757o
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
.__inference_lstm_cell_155_layer_call_fn_942964

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938483o
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
.__inference_lstm_cell_155_layer_call_fn_942981

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938629o
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
?W
?
__inference__traced_save_943188
file_prefix/
+savev2_dense_173_kernel_read_readvariableop-
)savev2_dense_173_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_519_lstm_cell_519_kernel_read_readvariableopF
Bsavev2_lstm_519_lstm_cell_519_recurrent_kernel_read_readvariableop:
6savev2_lstm_519_lstm_cell_519_bias_read_readvariableop<
8savev2_lstm_520_lstm_cell_520_kernel_read_readvariableopF
Bsavev2_lstm_520_lstm_cell_520_recurrent_kernel_read_readvariableop:
6savev2_lstm_520_lstm_cell_520_bias_read_readvariableop<
8savev2_lstm_521_lstm_cell_521_kernel_read_readvariableopF
Bsavev2_lstm_521_lstm_cell_521_recurrent_kernel_read_readvariableop:
6savev2_lstm_521_lstm_cell_521_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_173_kernel_m_read_readvariableop4
0savev2_adam_dense_173_bias_m_read_readvariableopC
?savev2_adam_lstm_519_lstm_cell_519_kernel_m_read_readvariableopM
Isavev2_adam_lstm_519_lstm_cell_519_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_519_lstm_cell_519_bias_m_read_readvariableopC
?savev2_adam_lstm_520_lstm_cell_520_kernel_m_read_readvariableopM
Isavev2_adam_lstm_520_lstm_cell_520_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_520_lstm_cell_520_bias_m_read_readvariableopC
?savev2_adam_lstm_521_lstm_cell_521_kernel_m_read_readvariableopM
Isavev2_adam_lstm_521_lstm_cell_521_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_521_lstm_cell_521_bias_m_read_readvariableop6
2savev2_adam_dense_173_kernel_v_read_readvariableop4
0savev2_adam_dense_173_bias_v_read_readvariableopC
?savev2_adam_lstm_519_lstm_cell_519_kernel_v_read_readvariableopM
Isavev2_adam_lstm_519_lstm_cell_519_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_519_lstm_cell_519_bias_v_read_readvariableopC
?savev2_adam_lstm_520_lstm_cell_520_kernel_v_read_readvariableopM
Isavev2_adam_lstm_520_lstm_cell_520_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_520_lstm_cell_520_bias_v_read_readvariableopC
?savev2_adam_lstm_521_lstm_cell_521_kernel_v_read_readvariableopM
Isavev2_adam_lstm_521_lstm_cell_521_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_521_lstm_cell_521_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_173_kernel_read_readvariableop)savev2_dense_173_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_519_lstm_cell_519_kernel_read_readvariableopBsavev2_lstm_519_lstm_cell_519_recurrent_kernel_read_readvariableop6savev2_lstm_519_lstm_cell_519_bias_read_readvariableop8savev2_lstm_520_lstm_cell_520_kernel_read_readvariableopBsavev2_lstm_520_lstm_cell_520_recurrent_kernel_read_readvariableop6savev2_lstm_520_lstm_cell_520_bias_read_readvariableop8savev2_lstm_521_lstm_cell_521_kernel_read_readvariableopBsavev2_lstm_521_lstm_cell_521_recurrent_kernel_read_readvariableop6savev2_lstm_521_lstm_cell_521_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_173_kernel_m_read_readvariableop0savev2_adam_dense_173_bias_m_read_readvariableop?savev2_adam_lstm_519_lstm_cell_519_kernel_m_read_readvariableopIsavev2_adam_lstm_519_lstm_cell_519_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_519_lstm_cell_519_bias_m_read_readvariableop?savev2_adam_lstm_520_lstm_cell_520_kernel_m_read_readvariableopIsavev2_adam_lstm_520_lstm_cell_520_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_520_lstm_cell_520_bias_m_read_readvariableop?savev2_adam_lstm_521_lstm_cell_521_kernel_m_read_readvariableopIsavev2_adam_lstm_521_lstm_cell_521_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_521_lstm_cell_521_bias_m_read_readvariableop2savev2_adam_dense_173_kernel_v_read_readvariableop0savev2_adam_dense_173_bias_v_read_readvariableop?savev2_adam_lstm_519_lstm_cell_519_kernel_v_read_readvariableopIsavev2_adam_lstm_519_lstm_cell_519_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_519_lstm_cell_519_bias_v_read_readvariableop?savev2_adam_lstm_520_lstm_cell_520_kernel_v_read_readvariableopIsavev2_adam_lstm_520_lstm_cell_520_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_520_lstm_cell_520_bias_v_read_readvariableop?savev2_adam_lstm_521_lstm_cell_521_kernel_v_read_readvariableopIsavev2_adam_lstm_521_lstm_cell_521_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_521_lstm_cell_521_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_940457

inputsH
5lstm_519_lstm_cell_153_matmul_readvariableop_resource:	?J
7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource:	d?E
6lstm_519_lstm_cell_153_biasadd_readvariableop_resource:	?H
5lstm_520_lstm_cell_154_matmul_readvariableop_resource:	d?J
7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource:	2?E
6lstm_520_lstm_cell_154_biasadd_readvariableop_resource:	?G
5lstm_521_lstm_cell_155_matmul_readvariableop_resource:2(I
7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource:
(D
6lstm_521_lstm_cell_155_biasadd_readvariableop_resource:(:
(dense_173_matmul_readvariableop_resource:
7
)dense_173_biasadd_readvariableop_resource:
identity?? dense_173/BiasAdd/ReadVariableOp?dense_173/MatMul/ReadVariableOp?-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp?,lstm_519/lstm_cell_153/MatMul/ReadVariableOp?.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp?lstm_519/while?-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp?,lstm_520/lstm_cell_154/MatMul/ReadVariableOp?.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp?lstm_520/while?-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp?,lstm_521/lstm_cell_155/MatMul/ReadVariableOp?.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp?lstm_521/whileD
lstm_519/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_519/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_519/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_519/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_sliceStridedSlicelstm_519/Shape:output:0%lstm_519/strided_slice/stack:output:0'lstm_519/strided_slice/stack_1:output:0'lstm_519/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_519/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_519/zeros/packedPacklstm_519/strided_slice:output:0 lstm_519/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_519/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_519/zerosFilllstm_519/zeros/packed:output:0lstm_519/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_519/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_519/zeros_1/packedPacklstm_519/strided_slice:output:0"lstm_519/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_519/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_519/zeros_1Fill lstm_519/zeros_1/packed:output:0lstm_519/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_519/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_519/transpose	Transposeinputs lstm_519/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_519/Shape_1Shapelstm_519/transpose:y:0*
T0*
_output_shapes
:h
lstm_519/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_519/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_1StridedSlicelstm_519/Shape_1:output:0'lstm_519/strided_slice_1/stack:output:0)lstm_519/strided_slice_1/stack_1:output:0)lstm_519/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_519/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_519/TensorArrayV2TensorListReserve-lstm_519/TensorArrayV2/element_shape:output:0!lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_519/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_519/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_519/transpose:y:0Glstm_519/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_519/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_519/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_2StridedSlicelstm_519/transpose:y:0'lstm_519/strided_slice_2/stack:output:0)lstm_519/strided_slice_2/stack_1:output:0)lstm_519/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_519/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp5lstm_519_lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_519/lstm_cell_153/MatMulMatMul!lstm_519/strided_slice_2:output:04lstm_519/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_519/lstm_cell_153/MatMul_1MatMullstm_519/zeros:output:06lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_519/lstm_cell_153/addAddV2'lstm_519/lstm_cell_153/MatMul:product:0)lstm_519/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp6lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_519/lstm_cell_153/BiasAddBiasAddlstm_519/lstm_cell_153/add:z:05lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_519/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_519/lstm_cell_153/splitSplit/lstm_519/lstm_cell_153/split/split_dim:output:0'lstm_519/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_519/lstm_cell_153/SigmoidSigmoid%lstm_519/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_519/lstm_cell_153/Sigmoid_1Sigmoid%lstm_519/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mulMul$lstm_519/lstm_cell_153/Sigmoid_1:y:0lstm_519/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_519/lstm_cell_153/ReluRelu%lstm_519/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mul_1Mul"lstm_519/lstm_cell_153/Sigmoid:y:0)lstm_519/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/add_1AddV2lstm_519/lstm_cell_153/mul:z:0 lstm_519/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_519/lstm_cell_153/Sigmoid_2Sigmoid%lstm_519/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_519/lstm_cell_153/Relu_1Relu lstm_519/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_519/lstm_cell_153/mul_2Mul$lstm_519/lstm_cell_153/Sigmoid_2:y:0+lstm_519/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_519/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_519/TensorArrayV2_1TensorListReserve/lstm_519/TensorArrayV2_1/element_shape:output:0!lstm_519/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_519/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_519/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_519/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_519/whileWhile$lstm_519/while/loop_counter:output:0*lstm_519/while/maximum_iterations:output:0lstm_519/time:output:0!lstm_519/TensorArrayV2_1:handle:0lstm_519/zeros:output:0lstm_519/zeros_1:output:0!lstm_519/strided_slice_1:output:0@lstm_519/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_519_lstm_cell_153_matmul_readvariableop_resource7lstm_519_lstm_cell_153_matmul_1_readvariableop_resource6lstm_519_lstm_cell_153_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_519_while_body_940089*&
condR
lstm_519_while_cond_940088*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_519/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_519/TensorArrayV2Stack/TensorListStackTensorListStacklstm_519/while:output:3Blstm_519/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_519/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_519/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_519/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_519/strided_slice_3StridedSlice4lstm_519/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_519/strided_slice_3/stack:output:0)lstm_519/strided_slice_3/stack_1:output:0)lstm_519/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_519/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_519/transpose_1	Transpose4lstm_519/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_519/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_519/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_520/ShapeShapelstm_519/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_520/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_520/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_520/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_sliceStridedSlicelstm_520/Shape:output:0%lstm_520/strided_slice/stack:output:0'lstm_520/strided_slice/stack_1:output:0'lstm_520/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_520/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_520/zeros/packedPacklstm_520/strided_slice:output:0 lstm_520/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_520/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_520/zerosFilllstm_520/zeros/packed:output:0lstm_520/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_520/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_520/zeros_1/packedPacklstm_520/strided_slice:output:0"lstm_520/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_520/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_520/zeros_1Fill lstm_520/zeros_1/packed:output:0lstm_520/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_520/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_520/transpose	Transposelstm_519/transpose_1:y:0 lstm_520/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_520/Shape_1Shapelstm_520/transpose:y:0*
T0*
_output_shapes
:h
lstm_520/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_520/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_1StridedSlicelstm_520/Shape_1:output:0'lstm_520/strided_slice_1/stack:output:0)lstm_520/strided_slice_1/stack_1:output:0)lstm_520/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_520/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_520/TensorArrayV2TensorListReserve-lstm_520/TensorArrayV2/element_shape:output:0!lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_520/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_520/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_520/transpose:y:0Glstm_520/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_520/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_520/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_2StridedSlicelstm_520/transpose:y:0'lstm_520/strided_slice_2/stack:output:0)lstm_520/strided_slice_2/stack_1:output:0)lstm_520/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_520/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp5lstm_520_lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_520/lstm_cell_154/MatMulMatMul!lstm_520/strided_slice_2:output:04lstm_520/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_520/lstm_cell_154/MatMul_1MatMullstm_520/zeros:output:06lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_520/lstm_cell_154/addAddV2'lstm_520/lstm_cell_154/MatMul:product:0)lstm_520/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp6lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_520/lstm_cell_154/BiasAddBiasAddlstm_520/lstm_cell_154/add:z:05lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_520/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_520/lstm_cell_154/splitSplit/lstm_520/lstm_cell_154/split/split_dim:output:0'lstm_520/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_520/lstm_cell_154/SigmoidSigmoid%lstm_520/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_520/lstm_cell_154/Sigmoid_1Sigmoid%lstm_520/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mulMul$lstm_520/lstm_cell_154/Sigmoid_1:y:0lstm_520/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_520/lstm_cell_154/ReluRelu%lstm_520/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mul_1Mul"lstm_520/lstm_cell_154/Sigmoid:y:0)lstm_520/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/add_1AddV2lstm_520/lstm_cell_154/mul:z:0 lstm_520/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_520/lstm_cell_154/Sigmoid_2Sigmoid%lstm_520/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_520/lstm_cell_154/Relu_1Relu lstm_520/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_520/lstm_cell_154/mul_2Mul$lstm_520/lstm_cell_154/Sigmoid_2:y:0+lstm_520/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_520/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_520/TensorArrayV2_1TensorListReserve/lstm_520/TensorArrayV2_1/element_shape:output:0!lstm_520/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_520/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_520/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_520/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_520/whileWhile$lstm_520/while/loop_counter:output:0*lstm_520/while/maximum_iterations:output:0lstm_520/time:output:0!lstm_520/TensorArrayV2_1:handle:0lstm_520/zeros:output:0lstm_520/zeros_1:output:0!lstm_520/strided_slice_1:output:0@lstm_520/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_520_lstm_cell_154_matmul_readvariableop_resource7lstm_520_lstm_cell_154_matmul_1_readvariableop_resource6lstm_520_lstm_cell_154_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_520_while_body_940228*&
condR
lstm_520_while_cond_940227*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_520/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_520/TensorArrayV2Stack/TensorListStackTensorListStacklstm_520/while:output:3Blstm_520/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_520/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_520/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_520/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_520/strided_slice_3StridedSlice4lstm_520/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_520/strided_slice_3/stack:output:0)lstm_520/strided_slice_3/stack_1:output:0)lstm_520/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_520/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_520/transpose_1	Transpose4lstm_520/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_520/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_520/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_521/ShapeShapelstm_520/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_521/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_521/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_521/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_sliceStridedSlicelstm_521/Shape:output:0%lstm_521/strided_slice/stack:output:0'lstm_521/strided_slice/stack_1:output:0'lstm_521/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_521/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_521/zeros/packedPacklstm_521/strided_slice:output:0 lstm_521/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_521/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_521/zerosFilllstm_521/zeros/packed:output:0lstm_521/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_521/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_521/zeros_1/packedPacklstm_521/strided_slice:output:0"lstm_521/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_521/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_521/zeros_1Fill lstm_521/zeros_1/packed:output:0lstm_521/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_521/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_521/transpose	Transposelstm_520/transpose_1:y:0 lstm_521/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_521/Shape_1Shapelstm_521/transpose:y:0*
T0*
_output_shapes
:h
lstm_521/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_521/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_1StridedSlicelstm_521/Shape_1:output:0'lstm_521/strided_slice_1/stack:output:0)lstm_521/strided_slice_1/stack_1:output:0)lstm_521/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_521/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_521/TensorArrayV2TensorListReserve-lstm_521/TensorArrayV2/element_shape:output:0!lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_521/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_521/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_521/transpose:y:0Glstm_521/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_521/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_521/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_2StridedSlicelstm_521/transpose:y:0'lstm_521/strided_slice_2/stack:output:0)lstm_521/strided_slice_2/stack_1:output:0)lstm_521/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_521/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp5lstm_521_lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_521/lstm_cell_155/MatMulMatMul!lstm_521/strided_slice_2:output:04lstm_521/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_521/lstm_cell_155/MatMul_1MatMullstm_521/zeros:output:06lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_521/lstm_cell_155/addAddV2'lstm_521/lstm_cell_155/MatMul:product:0)lstm_521/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp6lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_521/lstm_cell_155/BiasAddBiasAddlstm_521/lstm_cell_155/add:z:05lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_521/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_521/lstm_cell_155/splitSplit/lstm_521/lstm_cell_155/split/split_dim:output:0'lstm_521/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_521/lstm_cell_155/SigmoidSigmoid%lstm_521/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_521/lstm_cell_155/Sigmoid_1Sigmoid%lstm_521/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mulMul$lstm_521/lstm_cell_155/Sigmoid_1:y:0lstm_521/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_521/lstm_cell_155/ReluRelu%lstm_521/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mul_1Mul"lstm_521/lstm_cell_155/Sigmoid:y:0)lstm_521/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/add_1AddV2lstm_521/lstm_cell_155/mul:z:0 lstm_521/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_521/lstm_cell_155/Sigmoid_2Sigmoid%lstm_521/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_521/lstm_cell_155/Relu_1Relu lstm_521/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_521/lstm_cell_155/mul_2Mul$lstm_521/lstm_cell_155/Sigmoid_2:y:0+lstm_521/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_521/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_521/TensorArrayV2_1TensorListReserve/lstm_521/TensorArrayV2_1/element_shape:output:0!lstm_521/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_521/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_521/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_521/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_521/whileWhile$lstm_521/while/loop_counter:output:0*lstm_521/while/maximum_iterations:output:0lstm_521/time:output:0!lstm_521/TensorArrayV2_1:handle:0lstm_521/zeros:output:0lstm_521/zeros_1:output:0!lstm_521/strided_slice_1:output:0@lstm_521/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_521_lstm_cell_155_matmul_readvariableop_resource7lstm_521_lstm_cell_155_matmul_1_readvariableop_resource6lstm_521_lstm_cell_155_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_521_while_body_940367*&
condR
lstm_521_while_cond_940366*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_521/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_521/TensorArrayV2Stack/TensorListStackTensorListStacklstm_521/while:output:3Blstm_521/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_521/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_521/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_521/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_521/strided_slice_3StridedSlice4lstm_521/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_521/strided_slice_3/stack:output:0)lstm_521/strided_slice_3/stack_1:output:0)lstm_521/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_521/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_521/transpose_1	Transpose4lstm_521/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_521/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_521/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_173/MatMulMatMul!lstm_521/strided_slice_3:output:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_173/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp.^lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp-^lstm_519/lstm_cell_153/MatMul/ReadVariableOp/^lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp^lstm_519/while.^lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp-^lstm_520/lstm_cell_154/MatMul/ReadVariableOp/^lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp^lstm_520/while.^lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp-^lstm_521/lstm_cell_155/MatMul/ReadVariableOp/^lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp^lstm_521/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp2^
-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp-lstm_519/lstm_cell_153/BiasAdd/ReadVariableOp2\
,lstm_519/lstm_cell_153/MatMul/ReadVariableOp,lstm_519/lstm_cell_153/MatMul/ReadVariableOp2`
.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp.lstm_519/lstm_cell_153/MatMul_1/ReadVariableOp2 
lstm_519/whilelstm_519/while2^
-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp-lstm_520/lstm_cell_154/BiasAdd/ReadVariableOp2\
,lstm_520/lstm_cell_154/MatMul/ReadVariableOp,lstm_520/lstm_cell_154/MatMul/ReadVariableOp2`
.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp.lstm_520/lstm_cell_154/MatMul_1/ReadVariableOp2 
lstm_520/whilelstm_520/while2^
-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp-lstm_521/lstm_cell_155/BiasAdd/ReadVariableOp2\
,lstm_521/lstm_cell_155/MatMul/ReadVariableOp,lstm_521/lstm_cell_155/MatMul/ReadVariableOp2`
.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp.lstm_521/lstm_cell_155/MatMul_1/ReadVariableOp2 
lstm_521/whilelstm_521/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_941746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_521_while_cond_940366.
*lstm_521_while_lstm_521_while_loop_counter4
0lstm_521_while_lstm_521_while_maximum_iterations
lstm_521_while_placeholder 
lstm_521_while_placeholder_1 
lstm_521_while_placeholder_2 
lstm_521_while_placeholder_30
,lstm_521_while_less_lstm_521_strided_slice_1F
Blstm_521_while_lstm_521_while_cond_940366___redundant_placeholder0F
Blstm_521_while_lstm_521_while_cond_940366___redundant_placeholder1F
Blstm_521_while_lstm_521_while_cond_940366___redundant_placeholder2F
Blstm_521_while_lstm_521_while_cond_940366___redundant_placeholder3
lstm_521_while_identity
?
lstm_521/while/LessLesslstm_521_while_placeholder,lstm_521_while_less_lstm_521_strided_slice_1*
T0*
_output_shapes
: ]
lstm_521/while/IdentityIdentitylstm_521/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_521_while_identity lstm_521/while/Identity:output:0*(
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
.__inference_lstm_cell_154_layer_call_fn_942883

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938279o
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
*__inference_dense_173_layer_call_fn_942741

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
E__inference_dense_173_layer_call_and_return_conditional_losses_939233o
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
?"
?
while_body_938688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_155_938712_0:2(.
while_lstm_cell_155_938714_0:
(*
while_lstm_cell_155_938716_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_155_938712:2(,
while_lstm_cell_155_938714:
((
while_lstm_cell_155_938716:(??+while/lstm_cell_155/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_155/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_155_938712_0while_lstm_cell_155_938714_0while_lstm_cell_155_938716_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938629?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_155/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_155/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_155/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_155_938712while_lstm_cell_155_938712_0":
while_lstm_cell_155_938714while_lstm_cell_155_938714_0":
while_lstm_cell_155_938716while_lstm_cell_155_938716_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_155/StatefulPartitionedCall+while/lstm_cell_155/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_942504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_942504___redundant_placeholder04
0while_while_cond_942504___redundant_placeholder14
0while_while_cond_942504___redundant_placeholder24
0while_while_cond_942504___redundant_placeholder3
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_939431

inputs>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_939347*
condR
while_cond_939346*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
D__inference_lstm_521_layer_call_and_return_conditional_losses_942303
inputs_0>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_942219*
condR
while_cond_942218*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
D__inference_lstm_519_layer_call_and_return_conditional_losses_937866

inputs'
lstm_cell_153_937784:	?'
lstm_cell_153_937786:	d?#
lstm_cell_153_937788:	?
identity??%lstm_cell_153/StatefulPartitionedCall?while;
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
%lstm_cell_153/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_153_937784lstm_cell_153_937786lstm_cell_153_937788*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937783n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_153_937784lstm_cell_153_937786lstm_cell_153_937788*
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
bodyR
while_body_937797*
condR
while_cond_937796*K
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
NoOpNoOp&^lstm_cell_153/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_153/StatefulPartitionedCall%lstm_cell_153/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_941415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941415___redundant_placeholder04
0while_while_cond_941415___redundant_placeholder14
0while_while_cond_941415___redundant_placeholder24
0while_while_cond_941415___redundant_placeholder3
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
while_cond_940986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_940986___redundant_placeholder04
0while_while_cond_940986___redundant_placeholder14
0while_while_cond_940986___redundant_placeholder24
0while_while_cond_940986___redundant_placeholder3
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
?
)sequential_173_lstm_521_while_cond_937625L
Hsequential_173_lstm_521_while_sequential_173_lstm_521_while_loop_counterR
Nsequential_173_lstm_521_while_sequential_173_lstm_521_while_maximum_iterations-
)sequential_173_lstm_521_while_placeholder/
+sequential_173_lstm_521_while_placeholder_1/
+sequential_173_lstm_521_while_placeholder_2/
+sequential_173_lstm_521_while_placeholder_3N
Jsequential_173_lstm_521_while_less_sequential_173_lstm_521_strided_slice_1d
`sequential_173_lstm_521_while_sequential_173_lstm_521_while_cond_937625___redundant_placeholder0d
`sequential_173_lstm_521_while_sequential_173_lstm_521_while_cond_937625___redundant_placeholder1d
`sequential_173_lstm_521_while_sequential_173_lstm_521_while_cond_937625___redundant_placeholder2d
`sequential_173_lstm_521_while_sequential_173_lstm_521_while_cond_937625___redundant_placeholder3*
&sequential_173_lstm_521_while_identity
?
"sequential_173/lstm_521/while/LessLess)sequential_173_lstm_521_while_placeholderJsequential_173_lstm_521_while_less_sequential_173_lstm_521_strided_slice_1*
T0*
_output_shapes
: {
&sequential_173/lstm_521/while/IdentityIdentity&sequential_173/lstm_521/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_173_lstm_521_while_identity/sequential_173/lstm_521/while/Identity:output:0*(
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941830
inputs_0?
,lstm_cell_154_matmul_readvariableop_resource:	d?A
.lstm_cell_154_matmul_1_readvariableop_resource:	2?<
-lstm_cell_154_biasadd_readvariableop_resource:	?
identity??$lstm_cell_154/BiasAdd/ReadVariableOp?#lstm_cell_154/MatMul/ReadVariableOp?%lstm_cell_154/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_154/MatMul/ReadVariableOpReadVariableOp,lstm_cell_154_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_154/MatMulMatMulstrided_slice_2:output:0+lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_154_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_154/MatMul_1MatMulzeros:output:0-lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_154/addAddV2lstm_cell_154/MatMul:product:0 lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_154_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_154/BiasAddBiasAddlstm_cell_154/add:z:0,lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_154/splitSplit&lstm_cell_154/split/split_dim:output:0lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_154/SigmoidSigmoidlstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_1Sigmoidlstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_154/mulMullstm_cell_154/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_154/ReluRelulstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_1Mullstm_cell_154/Sigmoid:y:0 lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_154/add_1AddV2lstm_cell_154/mul:z:0lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_154/Sigmoid_2Sigmoidlstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_154/Relu_1Relulstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_154/mul_2Mullstm_cell_154/Sigmoid_2:y:0"lstm_cell_154/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_154_matmul_readvariableop_resource.lstm_cell_154_matmul_1_readvariableop_resource-lstm_cell_154_biasadd_readvariableop_resource*
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
bodyR
while_body_941746*
condR
while_cond_941745*K
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
NoOpNoOp%^lstm_cell_154/BiasAdd/ReadVariableOp$^lstm_cell_154/MatMul/ReadVariableOp&^lstm_cell_154/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_154/BiasAdd/ReadVariableOp$lstm_cell_154/BiasAdd/ReadVariableOp2J
#lstm_cell_154/MatMul/ReadVariableOp#lstm_cell_154/MatMul/ReadVariableOp2N
%lstm_cell_154/MatMul_1/ReadVariableOp%lstm_cell_154/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943013

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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942589

inputs>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_942505*
condR
while_cond_942504*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_941273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_153_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_153_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_153_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_153_matmul_readvariableop_resource:	?G
4while_lstm_cell_153_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_153_biasadd_readvariableop_resource:	???*while/lstm_cell_153/BiasAdd/ReadVariableOp?)while/lstm_cell_153/MatMul/ReadVariableOp?+while/lstm_cell_153/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_153/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_153_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_153/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_153_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_153/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_153/addAddV2$while/lstm_cell_153/MatMul:product:0&while/lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_153_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_153/BiasAddBiasAddwhile/lstm_cell_153/add:z:02while/lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_153/splitSplit,while/lstm_cell_153/split/split_dim:output:0$while/lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_153/SigmoidSigmoid"while/lstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_1Sigmoid"while/lstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mulMul!while/lstm_cell_153/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_153/ReluRelu"while/lstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_1Mulwhile/lstm_cell_153/Sigmoid:y:0&while/lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/add_1AddV2while/lstm_cell_153/mul:z:0while/lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_153/Sigmoid_2Sigmoid"while/lstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_153/Relu_1Reluwhile/lstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_153/mul_2Mul!while/lstm_cell_153/Sigmoid_2:y:0(while/lstm_cell_153/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_153/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_153/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_153/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_153/BiasAdd/ReadVariableOp*^while/lstm_cell_153/MatMul/ReadVariableOp,^while/lstm_cell_153/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_153_biasadd_readvariableop_resource5while_lstm_cell_153_biasadd_readvariableop_resource_0"n
4while_lstm_cell_153_matmul_1_readvariableop_resource6while_lstm_cell_153_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_153_matmul_readvariableop_resource4while_lstm_cell_153_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_153/BiasAdd/ReadVariableOp*while/lstm_cell_153/BiasAdd/ReadVariableOp2V
)while/lstm_cell_153/MatMul/ReadVariableOp)while/lstm_cell_153/MatMul/ReadVariableOp2Z
+while/lstm_cell_153/MatMul_1/ReadVariableOp+while/lstm_cell_153/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_939511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_939511___redundant_placeholder04
0while_while_cond_939511___redundant_placeholder14
0while_while_cond_939511___redundant_placeholder24
0while_while_cond_939511___redundant_placeholder3
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

?
/__inference_sequential_173_layer_call_fn_940030

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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939829o
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
while_cond_937796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_937796___redundant_placeholder04
0while_while_cond_937796___redundant_placeholder14
0while_while_cond_937796___redundant_placeholder24
0while_while_cond_937796___redundant_placeholder3
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
while_cond_938337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938337___redundant_placeholder04
0while_while_cond_938337___redundant_placeholder14
0while_while_cond_938337___redundant_placeholder24
0while_while_cond_938337___redundant_placeholder3
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942849

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
while_cond_938146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938146___redundant_placeholder04
0while_while_cond_938146___redundant_placeholder14
0while_while_cond_938146___redundant_placeholder24
0while_while_cond_938146___redundant_placeholder3
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_937783

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
while_body_938981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_154_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_154_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_154_matmul_readvariableop_resource:	d?G
4while_lstm_cell_154_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_154_biasadd_readvariableop_resource:	???*while/lstm_cell_154/BiasAdd/ReadVariableOp?)while/lstm_cell_154/MatMul/ReadVariableOp?+while/lstm_cell_154/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_154/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_154/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_154/addAddV2$while/lstm_cell_154/MatMul:product:0&while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_154/BiasAddBiasAddwhile/lstm_cell_154/add:z:02while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_154/splitSplit,while/lstm_cell_154/split/split_dim:output:0$while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_154/SigmoidSigmoid"while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_1Sigmoid"while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mulMul!while/lstm_cell_154/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_154/ReluRelu"while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_1Mulwhile/lstm_cell_154/Sigmoid:y:0&while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/add_1AddV2while/lstm_cell_154/mul:z:0while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_154/Sigmoid_2Sigmoid"while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_154/Relu_1Reluwhile/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_154/mul_2Mul!while/lstm_cell_154/Sigmoid_2:y:0(while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_154/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_154/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_154/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_154/BiasAdd/ReadVariableOp*^while/lstm_cell_154/MatMul/ReadVariableOp,^while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_154_biasadd_readvariableop_resource5while_lstm_cell_154_biasadd_readvariableop_resource_0"n
4while_lstm_cell_154_matmul_1_readvariableop_resource6while_lstm_cell_154_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_154_matmul_readvariableop_resource4while_lstm_cell_154_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_154/BiasAdd/ReadVariableOp*while/lstm_cell_154/BiasAdd/ReadVariableOp2V
)while/lstm_cell_154/MatMul/ReadVariableOp)while/lstm_cell_154/MatMul/ReadVariableOp2Z
+while/lstm_cell_154/MatMul_1/ReadVariableOp+while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_938980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_938980___redundant_placeholder04
0while_while_cond_938980___redundant_placeholder14
0while_while_cond_938980___redundant_placeholder24
0while_while_cond_938980___redundant_placeholder3
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
while_cond_941888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941888___redundant_placeholder04
0while_while_cond_941888___redundant_placeholder14
0while_while_cond_941888___redundant_placeholder24
0while_while_cond_941888___redundant_placeholder3
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

?
/__inference_sequential_173_layer_call_fn_939881
lstm_519_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_519_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939829o
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
_user_specified_namelstm_519_input
?
?
while_cond_939346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_939346___redundant_placeholder04
0while_while_cond_939346___redundant_placeholder14
0while_while_cond_939346___redundant_placeholder24
0while_while_cond_939346___redundant_placeholder3
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
while_cond_941602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_941602___redundant_placeholder04
0while_while_cond_941602___redundant_placeholder14
0while_while_cond_941602___redundant_placeholder24
0while_while_cond_941602___redundant_placeholder3
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
)sequential_173_lstm_520_while_body_937487L
Hsequential_173_lstm_520_while_sequential_173_lstm_520_while_loop_counterR
Nsequential_173_lstm_520_while_sequential_173_lstm_520_while_maximum_iterations-
)sequential_173_lstm_520_while_placeholder/
+sequential_173_lstm_520_while_placeholder_1/
+sequential_173_lstm_520_while_placeholder_2/
+sequential_173_lstm_520_while_placeholder_3K
Gsequential_173_lstm_520_while_sequential_173_lstm_520_strided_slice_1_0?
?sequential_173_lstm_520_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_520_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_173_lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0:	d?a
Nsequential_173_lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0:	2?\
Msequential_173_lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0:	?*
&sequential_173_lstm_520_while_identity,
(sequential_173_lstm_520_while_identity_1,
(sequential_173_lstm_520_while_identity_2,
(sequential_173_lstm_520_while_identity_3,
(sequential_173_lstm_520_while_identity_4,
(sequential_173_lstm_520_while_identity_5I
Esequential_173_lstm_520_while_sequential_173_lstm_520_strided_slice_1?
?sequential_173_lstm_520_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_520_tensorarrayunstack_tensorlistfromtensor]
Jsequential_173_lstm_520_while_lstm_cell_154_matmul_readvariableop_resource:	d?_
Lsequential_173_lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource:	2?Z
Ksequential_173_lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource:	???Bsequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp?Asequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp?Csequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp?
Osequential_173/lstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_173/lstm_520/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_173_lstm_520_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_520_tensorarrayunstack_tensorlistfromtensor_0)sequential_173_lstm_520_while_placeholderXsequential_173/lstm_520/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOpReadVariableOpLsequential_173_lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_173/lstm_520/while/lstm_cell_154/MatMulMatMulHsequential_173/lstm_520/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOpReadVariableOpNsequential_173_lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_173/lstm_520/while/lstm_cell_154/MatMul_1MatMul+sequential_173_lstm_520_while_placeholder_2Ksequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_173/lstm_520/while/lstm_cell_154/addAddV2<sequential_173/lstm_520/while/lstm_cell_154/MatMul:product:0>sequential_173/lstm_520/while/lstm_cell_154/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOpReadVariableOpMsequential_173_lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_173/lstm_520/while/lstm_cell_154/BiasAddBiasAdd3sequential_173/lstm_520/while/lstm_cell_154/add:z:0Jsequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_173/lstm_520/while/lstm_cell_154/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_173/lstm_520/while/lstm_cell_154/splitSplitDsequential_173/lstm_520/while/lstm_cell_154/split/split_dim:output:0<sequential_173/lstm_520/while/lstm_cell_154/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_173/lstm_520/while/lstm_cell_154/SigmoidSigmoid:sequential_173/lstm_520/while/lstm_cell_154/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_173/lstm_520/while/lstm_cell_154/Sigmoid_1Sigmoid:sequential_173/lstm_520/while/lstm_cell_154/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_173/lstm_520/while/lstm_cell_154/mulMul9sequential_173/lstm_520/while/lstm_cell_154/Sigmoid_1:y:0+sequential_173_lstm_520_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_173/lstm_520/while/lstm_cell_154/ReluRelu:sequential_173/lstm_520/while/lstm_cell_154/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_173/lstm_520/while/lstm_cell_154/mul_1Mul7sequential_173/lstm_520/while/lstm_cell_154/Sigmoid:y:0>sequential_173/lstm_520/while/lstm_cell_154/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_173/lstm_520/while/lstm_cell_154/add_1AddV23sequential_173/lstm_520/while/lstm_cell_154/mul:z:05sequential_173/lstm_520/while/lstm_cell_154/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_173/lstm_520/while/lstm_cell_154/Sigmoid_2Sigmoid:sequential_173/lstm_520/while/lstm_cell_154/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_173/lstm_520/while/lstm_cell_154/Relu_1Relu5sequential_173/lstm_520/while/lstm_cell_154/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_173/lstm_520/while/lstm_cell_154/mul_2Mul9sequential_173/lstm_520/while/lstm_cell_154/Sigmoid_2:y:0@sequential_173/lstm_520/while/lstm_cell_154/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_173/lstm_520/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_173_lstm_520_while_placeholder_1)sequential_173_lstm_520_while_placeholder5sequential_173/lstm_520/while/lstm_cell_154/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_173/lstm_520/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_173/lstm_520/while/addAddV2)sequential_173_lstm_520_while_placeholder,sequential_173/lstm_520/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_173/lstm_520/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_173/lstm_520/while/add_1AddV2Hsequential_173_lstm_520_while_sequential_173_lstm_520_while_loop_counter.sequential_173/lstm_520/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_173/lstm_520/while/IdentityIdentity'sequential_173/lstm_520/while/add_1:z:0#^sequential_173/lstm_520/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_520/while/Identity_1IdentityNsequential_173_lstm_520_while_sequential_173_lstm_520_while_maximum_iterations#^sequential_173/lstm_520/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_520/while/Identity_2Identity%sequential_173/lstm_520/while/add:z:0#^sequential_173/lstm_520/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_520/while/Identity_3IdentityRsequential_173/lstm_520/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_173/lstm_520/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_520/while/Identity_4Identity5sequential_173/lstm_520/while/lstm_cell_154/mul_2:z:0#^sequential_173/lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_173/lstm_520/while/Identity_5Identity5sequential_173/lstm_520/while/lstm_cell_154/add_1:z:0#^sequential_173/lstm_520/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_173/lstm_520/while/NoOpNoOpC^sequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOpB^sequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOpD^sequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_173_lstm_520_while_identity/sequential_173/lstm_520/while/Identity:output:0"]
(sequential_173_lstm_520_while_identity_11sequential_173/lstm_520/while/Identity_1:output:0"]
(sequential_173_lstm_520_while_identity_21sequential_173/lstm_520/while/Identity_2:output:0"]
(sequential_173_lstm_520_while_identity_31sequential_173/lstm_520/while/Identity_3:output:0"]
(sequential_173_lstm_520_while_identity_41sequential_173/lstm_520/while/Identity_4:output:0"]
(sequential_173_lstm_520_while_identity_51sequential_173/lstm_520/while/Identity_5:output:0"?
Ksequential_173_lstm_520_while_lstm_cell_154_biasadd_readvariableop_resourceMsequential_173_lstm_520_while_lstm_cell_154_biasadd_readvariableop_resource_0"?
Lsequential_173_lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resourceNsequential_173_lstm_520_while_lstm_cell_154_matmul_1_readvariableop_resource_0"?
Jsequential_173_lstm_520_while_lstm_cell_154_matmul_readvariableop_resourceLsequential_173_lstm_520_while_lstm_cell_154_matmul_readvariableop_resource_0"?
Esequential_173_lstm_520_while_sequential_173_lstm_520_strided_slice_1Gsequential_173_lstm_520_while_sequential_173_lstm_520_strided_slice_1_0"?
?sequential_173_lstm_520_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_520_tensorarrayunstack_tensorlistfromtensor?sequential_173_lstm_520_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_520_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOpBsequential_173/lstm_520/while/lstm_cell_154/BiasAdd/ReadVariableOp2?
Asequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOpAsequential_173/lstm_520/while/lstm_cell_154/MatMul/ReadVariableOp2?
Csequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOpCsequential_173/lstm_520/while/lstm_cell_154/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_939131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_521_while_body_940367.
*lstm_521_while_lstm_521_while_loop_counter4
0lstm_521_while_lstm_521_while_maximum_iterations
lstm_521_while_placeholder 
lstm_521_while_placeholder_1 
lstm_521_while_placeholder_2 
lstm_521_while_placeholder_3-
)lstm_521_while_lstm_521_strided_slice_1_0i
elstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0:2(Q
?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(L
>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0:(
lstm_521_while_identity
lstm_521_while_identity_1
lstm_521_while_identity_2
lstm_521_while_identity_3
lstm_521_while_identity_4
lstm_521_while_identity_5+
'lstm_521_while_lstm_521_strided_slice_1g
clstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensorM
;lstm_521_while_lstm_cell_155_matmul_readvariableop_resource:2(O
=lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource:
(J
<lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource:(??3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp?2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp?4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp?
@lstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_521/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0lstm_521_while_placeholderIlstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_521/while/lstm_cell_155/MatMulMatMul9lstm_521/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_521/while/lstm_cell_155/MatMul_1MatMullstm_521_while_placeholder_2<lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_521/while/lstm_cell_155/addAddV2-lstm_521/while/lstm_cell_155/MatMul:product:0/lstm_521/while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_521/while/lstm_cell_155/BiasAddBiasAdd$lstm_521/while/lstm_cell_155/add:z:0;lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_521/while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_521/while/lstm_cell_155/splitSplit5lstm_521/while/lstm_cell_155/split/split_dim:output:0-lstm_521/while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_521/while/lstm_cell_155/SigmoidSigmoid+lstm_521/while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_521/while/lstm_cell_155/Sigmoid_1Sigmoid+lstm_521/while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_521/while/lstm_cell_155/mulMul*lstm_521/while/lstm_cell_155/Sigmoid_1:y:0lstm_521_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_521/while/lstm_cell_155/ReluRelu+lstm_521/while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/mul_1Mul(lstm_521/while/lstm_cell_155/Sigmoid:y:0/lstm_521/while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/add_1AddV2$lstm_521/while/lstm_cell_155/mul:z:0&lstm_521/while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_521/while/lstm_cell_155/Sigmoid_2Sigmoid+lstm_521/while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_521/while/lstm_cell_155/Relu_1Relu&lstm_521/while/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_521/while/lstm_cell_155/mul_2Mul*lstm_521/while/lstm_cell_155/Sigmoid_2:y:01lstm_521/while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_521/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_521_while_placeholder_1lstm_521_while_placeholder&lstm_521/while/lstm_cell_155/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_521/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_521/while/addAddV2lstm_521_while_placeholderlstm_521/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_521/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_521/while/add_1AddV2*lstm_521_while_lstm_521_while_loop_counterlstm_521/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_521/while/IdentityIdentitylstm_521/while/add_1:z:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_1Identity0lstm_521_while_lstm_521_while_maximum_iterations^lstm_521/while/NoOp*
T0*
_output_shapes
: t
lstm_521/while/Identity_2Identitylstm_521/while/add:z:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_3IdentityClstm_521/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_521/while/NoOp*
T0*
_output_shapes
: ?
lstm_521/while/Identity_4Identity&lstm_521/while/lstm_cell_155/mul_2:z:0^lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_521/while/Identity_5Identity&lstm_521/while/lstm_cell_155/add_1:z:0^lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_521/while/NoOpNoOp4^lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp3^lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp5^lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_521_while_identity lstm_521/while/Identity:output:0"?
lstm_521_while_identity_1"lstm_521/while/Identity_1:output:0"?
lstm_521_while_identity_2"lstm_521/while/Identity_2:output:0"?
lstm_521_while_identity_3"lstm_521/while/Identity_3:output:0"?
lstm_521_while_identity_4"lstm_521/while/Identity_4:output:0"?
lstm_521_while_identity_5"lstm_521/while/Identity_5:output:0"T
'lstm_521_while_lstm_521_strided_slice_1)lstm_521_while_lstm_521_strided_slice_1_0"~
<lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource>lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0"?
=lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource?lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0"|
;lstm_521_while_lstm_cell_155_matmul_readvariableop_resource=lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0"?
clstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensorelstm_521_while_tensorarrayv2read_tensorlistgetitem_lstm_521_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp3lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp2h
2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp2lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp2l
4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp4lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_519_layer_call_fn_940895
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_937866|
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939911
lstm_519_input"
lstm_519_939884:	?"
lstm_519_939886:	d?
lstm_519_939888:	?"
lstm_520_939891:	d?"
lstm_520_939893:	2?
lstm_520_939895:	?!
lstm_521_939898:2(!
lstm_521_939900:
(
lstm_521_939902:("
dense_173_939905:

dense_173_939907:
identity??!dense_173/StatefulPartitionedCall? lstm_519/StatefulPartitionedCall? lstm_520/StatefulPartitionedCall? lstm_521/StatefulPartitionedCall?
 lstm_519/StatefulPartitionedCallStatefulPartitionedCalllstm_519_inputlstm_519_939884lstm_519_939886lstm_519_939888*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_519_layer_call_and_return_conditional_losses_938915?
 lstm_520/StatefulPartitionedCallStatefulPartitionedCall)lstm_519/StatefulPartitionedCall:output:0lstm_520_939891lstm_520_939893lstm_520_939895*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_520_layer_call_and_return_conditional_losses_939065?
 lstm_521/StatefulPartitionedCallStatefulPartitionedCall)lstm_520/StatefulPartitionedCall:output:0lstm_521_939898lstm_521_939900lstm_521_939902*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_521_layer_call_and_return_conditional_losses_939215?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_521/StatefulPartitionedCall:output:0dense_173_939905dense_173_939907*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_939233y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_173/StatefulPartitionedCall!^lstm_519/StatefulPartitionedCall!^lstm_520/StatefulPartitionedCall!^lstm_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2D
 lstm_519/StatefulPartitionedCall lstm_519/StatefulPartitionedCall2D
 lstm_520/StatefulPartitionedCall lstm_520/StatefulPartitionedCall2D
 lstm_521/StatefulPartitionedCall lstm_521/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_519_input
?8
?
while_body_942219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_155_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_155_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_155_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_155_matmul_readvariableop_resource:2(F
4while_lstm_cell_155_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_155_biasadd_readvariableop_resource:(??*while/lstm_cell_155/BiasAdd/ReadVariableOp?)while/lstm_cell_155/MatMul/ReadVariableOp?+while/lstm_cell_155/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_155/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_155/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_155/addAddV2$while/lstm_cell_155/MatMul:product:0&while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_155/BiasAddBiasAddwhile/lstm_cell_155/add:z:02while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_155/splitSplit,while/lstm_cell_155/split/split_dim:output:0$while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_155/SigmoidSigmoid"while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_1Sigmoid"while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mulMul!while/lstm_cell_155/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_155/ReluRelu"while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_1Mulwhile/lstm_cell_155/Sigmoid:y:0&while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/add_1AddV2while/lstm_cell_155/mul:z:0while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_155/Sigmoid_2Sigmoid"while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_155/Relu_1Reluwhile/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_155/mul_2Mul!while/lstm_cell_155/Sigmoid_2:y:0(while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_155/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_155/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_155/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_155/BiasAdd/ReadVariableOp*^while/lstm_cell_155/MatMul/ReadVariableOp,^while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_155_biasadd_readvariableop_resource5while_lstm_cell_155_biasadd_readvariableop_resource_0"n
4while_lstm_cell_155_matmul_1_readvariableop_resource6while_lstm_cell_155_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_155_matmul_readvariableop_resource4while_lstm_cell_155_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_155/BiasAdd/ReadVariableOp*while/lstm_cell_155/BiasAdd/ReadVariableOp2V
)while/lstm_cell_155/MatMul/ReadVariableOp)while/lstm_cell_155/MatMul/ReadVariableOp2Z
+while/lstm_cell_155/MatMul_1/ReadVariableOp+while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_939215

inputs>
,lstm_cell_155_matmul_readvariableop_resource:2(@
.lstm_cell_155_matmul_1_readvariableop_resource:
(;
-lstm_cell_155_biasadd_readvariableop_resource:(
identity??$lstm_cell_155/BiasAdd/ReadVariableOp?#lstm_cell_155/MatMul/ReadVariableOp?%lstm_cell_155/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_155/MatMul/ReadVariableOpReadVariableOp,lstm_cell_155_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_155/MatMulMatMulstrided_slice_2:output:0+lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_155_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_155/MatMul_1MatMulzeros:output:0-lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_155/addAddV2lstm_cell_155/MatMul:product:0 lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_155_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_155/BiasAddBiasAddlstm_cell_155/add:z:0,lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_155/splitSplit&lstm_cell_155/split/split_dim:output:0lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_155/SigmoidSigmoidlstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_1Sigmoidlstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_155/mulMullstm_cell_155/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_155/ReluRelulstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_1Mullstm_cell_155/Sigmoid:y:0 lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_155/add_1AddV2lstm_cell_155/mul:z:0lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_155/Sigmoid_2Sigmoidlstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_155/Relu_1Relulstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_155/mul_2Mullstm_cell_155/Sigmoid_2:y:0"lstm_cell_155/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_155_matmul_readvariableop_resource.lstm_cell_155_matmul_1_readvariableop_resource-lstm_cell_155_biasadd_readvariableop_resource*
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
bodyR
while_body_939131*
condR
while_cond_939130*K
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
NoOpNoOp%^lstm_cell_155/BiasAdd/ReadVariableOp$^lstm_cell_155/MatMul/ReadVariableOp&^lstm_cell_155/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_155/BiasAdd/ReadVariableOp$lstm_cell_155/BiasAdd/ReadVariableOp2J
#lstm_cell_155/MatMul/ReadVariableOp#lstm_cell_155/MatMul/ReadVariableOp2N
%lstm_cell_155/MatMul_1/ReadVariableOp%lstm_cell_155/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
D__inference_lstm_519_layer_call_and_return_conditional_losses_941214
inputs_0?
,lstm_cell_153_matmul_readvariableop_resource:	?A
.lstm_cell_153_matmul_1_readvariableop_resource:	d?<
-lstm_cell_153_biasadd_readvariableop_resource:	?
identity??$lstm_cell_153/BiasAdd/ReadVariableOp?#lstm_cell_153/MatMul/ReadVariableOp?%lstm_cell_153/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_153/MatMul/ReadVariableOpReadVariableOp,lstm_cell_153_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_153/MatMulMatMulstrided_slice_2:output:0+lstm_cell_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_153/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_153_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_153/MatMul_1MatMulzeros:output:0-lstm_cell_153/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_153/addAddV2lstm_cell_153/MatMul:product:0 lstm_cell_153/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_153/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_153_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_153/BiasAddBiasAddlstm_cell_153/add:z:0,lstm_cell_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_153/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_153/splitSplit&lstm_cell_153/split/split_dim:output:0lstm_cell_153/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_153/SigmoidSigmoidlstm_cell_153/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_1Sigmoidlstm_cell_153/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_153/mulMullstm_cell_153/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_153/ReluRelulstm_cell_153/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_1Mullstm_cell_153/Sigmoid:y:0 lstm_cell_153/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_153/add_1AddV2lstm_cell_153/mul:z:0lstm_cell_153/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_153/Sigmoid_2Sigmoidlstm_cell_153/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_153/Relu_1Relulstm_cell_153/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_153/mul_2Mullstm_cell_153/Sigmoid_2:y:0"lstm_cell_153/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_153_matmul_readvariableop_resource.lstm_cell_153_matmul_1_readvariableop_resource-lstm_cell_153_biasadd_readvariableop_resource*
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
bodyR
while_body_941130*
condR
while_cond_941129*K
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
NoOpNoOp%^lstm_cell_153/BiasAdd/ReadVariableOp$^lstm_cell_153/MatMul/ReadVariableOp&^lstm_cell_153/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_153/BiasAdd/ReadVariableOp$lstm_cell_153/BiasAdd/ReadVariableOp2J
#lstm_cell_153/MatMul/ReadVariableOp#lstm_cell_153/MatMul/ReadVariableOp2N
%lstm_cell_153/MatMul_1/ReadVariableOp%lstm_cell_153/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_938279

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
?
D__inference_lstm_521_layer_call_and_return_conditional_losses_938757

inputs&
lstm_cell_155_938675:2(&
lstm_cell_155_938677:
("
lstm_cell_155_938679:(
identity??%lstm_cell_155/StatefulPartitionedCall?while;
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
%lstm_cell_155/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_155_938675lstm_cell_155_938677lstm_cell_155_938679*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938629n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_155_938675lstm_cell_155_938677lstm_cell_155_938679*
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
bodyR
while_body_938688*
condR
while_cond_938687*K
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
NoOpNoOp&^lstm_cell_155/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_155/StatefulPartitionedCall%lstm_cell_155/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_938483

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
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942915

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
?T
?
)sequential_173_lstm_521_while_body_937626L
Hsequential_173_lstm_521_while_sequential_173_lstm_521_while_loop_counterR
Nsequential_173_lstm_521_while_sequential_173_lstm_521_while_maximum_iterations-
)sequential_173_lstm_521_while_placeholder/
+sequential_173_lstm_521_while_placeholder_1/
+sequential_173_lstm_521_while_placeholder_2/
+sequential_173_lstm_521_while_placeholder_3K
Gsequential_173_lstm_521_while_sequential_173_lstm_521_strided_slice_1_0?
?sequential_173_lstm_521_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_521_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_173_lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0:2(`
Nsequential_173_lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0:
([
Msequential_173_lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0:(*
&sequential_173_lstm_521_while_identity,
(sequential_173_lstm_521_while_identity_1,
(sequential_173_lstm_521_while_identity_2,
(sequential_173_lstm_521_while_identity_3,
(sequential_173_lstm_521_while_identity_4,
(sequential_173_lstm_521_while_identity_5I
Esequential_173_lstm_521_while_sequential_173_lstm_521_strided_slice_1?
?sequential_173_lstm_521_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_521_tensorarrayunstack_tensorlistfromtensor\
Jsequential_173_lstm_521_while_lstm_cell_155_matmul_readvariableop_resource:2(^
Lsequential_173_lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource:
(Y
Ksequential_173_lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource:(??Bsequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp?Asequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp?Csequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp?
Osequential_173/lstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_173/lstm_521/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_173_lstm_521_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_521_tensorarrayunstack_tensorlistfromtensor_0)sequential_173_lstm_521_while_placeholderXsequential_173/lstm_521/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOpReadVariableOpLsequential_173_lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_173/lstm_521/while/lstm_cell_155/MatMulMatMulHsequential_173/lstm_521/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOpReadVariableOpNsequential_173_lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_173/lstm_521/while/lstm_cell_155/MatMul_1MatMul+sequential_173_lstm_521_while_placeholder_2Ksequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_173/lstm_521/while/lstm_cell_155/addAddV2<sequential_173/lstm_521/while/lstm_cell_155/MatMul:product:0>sequential_173/lstm_521/while/lstm_cell_155/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOpReadVariableOpMsequential_173_lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_173/lstm_521/while/lstm_cell_155/BiasAddBiasAdd3sequential_173/lstm_521/while/lstm_cell_155/add:z:0Jsequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_173/lstm_521/while/lstm_cell_155/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_173/lstm_521/while/lstm_cell_155/splitSplitDsequential_173/lstm_521/while/lstm_cell_155/split/split_dim:output:0<sequential_173/lstm_521/while/lstm_cell_155/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_173/lstm_521/while/lstm_cell_155/SigmoidSigmoid:sequential_173/lstm_521/while/lstm_cell_155/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_173/lstm_521/while/lstm_cell_155/Sigmoid_1Sigmoid:sequential_173/lstm_521/while/lstm_cell_155/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_173/lstm_521/while/lstm_cell_155/mulMul9sequential_173/lstm_521/while/lstm_cell_155/Sigmoid_1:y:0+sequential_173_lstm_521_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_173/lstm_521/while/lstm_cell_155/ReluRelu:sequential_173/lstm_521/while/lstm_cell_155/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_173/lstm_521/while/lstm_cell_155/mul_1Mul7sequential_173/lstm_521/while/lstm_cell_155/Sigmoid:y:0>sequential_173/lstm_521/while/lstm_cell_155/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_173/lstm_521/while/lstm_cell_155/add_1AddV23sequential_173/lstm_521/while/lstm_cell_155/mul:z:05sequential_173/lstm_521/while/lstm_cell_155/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_173/lstm_521/while/lstm_cell_155/Sigmoid_2Sigmoid:sequential_173/lstm_521/while/lstm_cell_155/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_173/lstm_521/while/lstm_cell_155/Relu_1Relu5sequential_173/lstm_521/while/lstm_cell_155/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_173/lstm_521/while/lstm_cell_155/mul_2Mul9sequential_173/lstm_521/while/lstm_cell_155/Sigmoid_2:y:0@sequential_173/lstm_521/while/lstm_cell_155/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_173/lstm_521/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_173_lstm_521_while_placeholder_1)sequential_173_lstm_521_while_placeholder5sequential_173/lstm_521/while/lstm_cell_155/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_173/lstm_521/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_173/lstm_521/while/addAddV2)sequential_173_lstm_521_while_placeholder,sequential_173/lstm_521/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_173/lstm_521/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_173/lstm_521/while/add_1AddV2Hsequential_173_lstm_521_while_sequential_173_lstm_521_while_loop_counter.sequential_173/lstm_521/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_173/lstm_521/while/IdentityIdentity'sequential_173/lstm_521/while/add_1:z:0#^sequential_173/lstm_521/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_521/while/Identity_1IdentityNsequential_173_lstm_521_while_sequential_173_lstm_521_while_maximum_iterations#^sequential_173/lstm_521/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_521/while/Identity_2Identity%sequential_173/lstm_521/while/add:z:0#^sequential_173/lstm_521/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_521/while/Identity_3IdentityRsequential_173/lstm_521/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_173/lstm_521/while/NoOp*
T0*
_output_shapes
: ?
(sequential_173/lstm_521/while/Identity_4Identity5sequential_173/lstm_521/while/lstm_cell_155/mul_2:z:0#^sequential_173/lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_173/lstm_521/while/Identity_5Identity5sequential_173/lstm_521/while/lstm_cell_155/add_1:z:0#^sequential_173/lstm_521/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_173/lstm_521/while/NoOpNoOpC^sequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOpB^sequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOpD^sequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_173_lstm_521_while_identity/sequential_173/lstm_521/while/Identity:output:0"]
(sequential_173_lstm_521_while_identity_11sequential_173/lstm_521/while/Identity_1:output:0"]
(sequential_173_lstm_521_while_identity_21sequential_173/lstm_521/while/Identity_2:output:0"]
(sequential_173_lstm_521_while_identity_31sequential_173/lstm_521/while/Identity_3:output:0"]
(sequential_173_lstm_521_while_identity_41sequential_173/lstm_521/while/Identity_4:output:0"]
(sequential_173_lstm_521_while_identity_51sequential_173/lstm_521/while/Identity_5:output:0"?
Ksequential_173_lstm_521_while_lstm_cell_155_biasadd_readvariableop_resourceMsequential_173_lstm_521_while_lstm_cell_155_biasadd_readvariableop_resource_0"?
Lsequential_173_lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resourceNsequential_173_lstm_521_while_lstm_cell_155_matmul_1_readvariableop_resource_0"?
Jsequential_173_lstm_521_while_lstm_cell_155_matmul_readvariableop_resourceLsequential_173_lstm_521_while_lstm_cell_155_matmul_readvariableop_resource_0"?
Esequential_173_lstm_521_while_sequential_173_lstm_521_strided_slice_1Gsequential_173_lstm_521_while_sequential_173_lstm_521_strided_slice_1_0"?
?sequential_173_lstm_521_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_521_tensorarrayunstack_tensorlistfromtensor?sequential_173_lstm_521_while_tensorarrayv2read_tensorlistgetitem_sequential_173_lstm_521_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOpBsequential_173/lstm_521/while/lstm_cell_155/BiasAdd/ReadVariableOp2?
Asequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOpAsequential_173/lstm_521/while/lstm_cell_155/MatMul/ReadVariableOp2?
Csequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOpCsequential_173/lstm_521/while/lstm_cell_155/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_520_while_cond_940227.
*lstm_520_while_lstm_520_while_loop_counter4
0lstm_520_while_lstm_520_while_maximum_iterations
lstm_520_while_placeholder 
lstm_520_while_placeholder_1 
lstm_520_while_placeholder_2 
lstm_520_while_placeholder_30
,lstm_520_while_less_lstm_520_strided_slice_1F
Blstm_520_while_lstm_520_while_cond_940227___redundant_placeholder0F
Blstm_520_while_lstm_520_while_cond_940227___redundant_placeholder1F
Blstm_520_while_lstm_520_while_cond_940227___redundant_placeholder2F
Blstm_520_while_lstm_520_while_cond_940227___redundant_placeholder3
lstm_520_while_identity
?
lstm_520/while/LessLesslstm_520_while_placeholder,lstm_520_while_less_lstm_520_strided_slice_1*
T0*
_output_shapes
: ]
lstm_520/while/IdentityIdentitylstm_520/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_520_while_identity lstm_520/while/Identity:output:0*(
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
lstm_519_input;
 serving_default_lstm_519_input:0?????????=
	dense_1730
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
2dense_173/kernel
:2dense_173/bias
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
0:.	?2lstm_519/lstm_cell_519/kernel
::8	d?2'lstm_519/lstm_cell_519/recurrent_kernel
*:(?2lstm_519/lstm_cell_519/bias
0:.	d?2lstm_520/lstm_cell_520/kernel
::8	2?2'lstm_520/lstm_cell_520/recurrent_kernel
*:(?2lstm_520/lstm_cell_520/bias
/:-2(2lstm_521/lstm_cell_521/kernel
9:7
(2'lstm_521/lstm_cell_521/recurrent_kernel
):'(2lstm_521/lstm_cell_521/bias
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
2Adam/dense_173/kernel/m
!:2Adam/dense_173/bias/m
5:3	?2$Adam/lstm_519/lstm_cell_519/kernel/m
?:=	d?2.Adam/lstm_519/lstm_cell_519/recurrent_kernel/m
/:-?2"Adam/lstm_519/lstm_cell_519/bias/m
5:3	d?2$Adam/lstm_520/lstm_cell_520/kernel/m
?:=	2?2.Adam/lstm_520/lstm_cell_520/recurrent_kernel/m
/:-?2"Adam/lstm_520/lstm_cell_520/bias/m
4:22(2$Adam/lstm_521/lstm_cell_521/kernel/m
>:<
(2.Adam/lstm_521/lstm_cell_521/recurrent_kernel/m
.:,(2"Adam/lstm_521/lstm_cell_521/bias/m
':%
2Adam/dense_173/kernel/v
!:2Adam/dense_173/bias/v
5:3	?2$Adam/lstm_519/lstm_cell_519/kernel/v
?:=	d?2.Adam/lstm_519/lstm_cell_519/recurrent_kernel/v
/:-?2"Adam/lstm_519/lstm_cell_519/bias/v
5:3	d?2$Adam/lstm_520/lstm_cell_520/kernel/v
?:=	2?2.Adam/lstm_520/lstm_cell_520/recurrent_kernel/v
/:-?2"Adam/lstm_520/lstm_cell_520/bias/v
4:22(2$Adam/lstm_521/lstm_cell_521/kernel/v
>:<
(2.Adam/lstm_521/lstm_cell_521/recurrent_kernel/v
.:,(2"Adam/lstm_521/lstm_cell_521/bias/v
?2?
/__inference_sequential_173_layer_call_fn_939265
/__inference_sequential_173_layer_call_fn_940003
/__inference_sequential_173_layer_call_fn_940030
/__inference_sequential_173_layer_call_fn_939881?
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_940457
J__inference_sequential_173_layer_call_and_return_conditional_losses_940884
J__inference_sequential_173_layer_call_and_return_conditional_losses_939911
J__inference_sequential_173_layer_call_and_return_conditional_losses_939941?
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
!__inference__wrapped_model_937716lstm_519_input"?
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
)__inference_lstm_519_layer_call_fn_940895
)__inference_lstm_519_layer_call_fn_940906
)__inference_lstm_519_layer_call_fn_940917
)__inference_lstm_519_layer_call_fn_940928?
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941071
D__inference_lstm_519_layer_call_and_return_conditional_losses_941214
D__inference_lstm_519_layer_call_and_return_conditional_losses_941357
D__inference_lstm_519_layer_call_and_return_conditional_losses_941500?
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
)__inference_lstm_520_layer_call_fn_941511
)__inference_lstm_520_layer_call_fn_941522
)__inference_lstm_520_layer_call_fn_941533
)__inference_lstm_520_layer_call_fn_941544?
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941687
D__inference_lstm_520_layer_call_and_return_conditional_losses_941830
D__inference_lstm_520_layer_call_and_return_conditional_losses_941973
D__inference_lstm_520_layer_call_and_return_conditional_losses_942116?
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
)__inference_lstm_521_layer_call_fn_942127
)__inference_lstm_521_layer_call_fn_942138
)__inference_lstm_521_layer_call_fn_942149
)__inference_lstm_521_layer_call_fn_942160?
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942303
D__inference_lstm_521_layer_call_and_return_conditional_losses_942446
D__inference_lstm_521_layer_call_and_return_conditional_losses_942589
D__inference_lstm_521_layer_call_and_return_conditional_losses_942732?
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
*__inference_dense_173_layer_call_fn_942741?
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
E__inference_dense_173_layer_call_and_return_conditional_losses_942751?
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
$__inference_signature_wrapper_939976lstm_519_input"?
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
.__inference_lstm_cell_153_layer_call_fn_942768
.__inference_lstm_cell_153_layer_call_fn_942785?
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942817
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942849?
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
.__inference_lstm_cell_154_layer_call_fn_942866
.__inference_lstm_cell_154_layer_call_fn_942883?
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
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942915
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942947?
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
.__inference_lstm_cell_155_layer_call_fn_942964
.__inference_lstm_cell_155_layer_call_fn_942981?
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
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943013
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943045?
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
!__inference__wrapped_model_937716?-./012345!";?8
1?.
,?)
lstm_519_input?????????
? "5?2
0
	dense_173#? 
	dense_173??????????
E__inference_dense_173_layer_call_and_return_conditional_losses_942751\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_173_layer_call_fn_942741O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_519_layer_call_and_return_conditional_losses_941071?-./O?L
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941214?-./O?L
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941357q-./??<
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
D__inference_lstm_519_layer_call_and_return_conditional_losses_941500q-./??<
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
)__inference_lstm_519_layer_call_fn_940895}-./O?L
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
)__inference_lstm_519_layer_call_fn_940906}-./O?L
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
)__inference_lstm_519_layer_call_fn_940917d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_519_layer_call_fn_940928d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_520_layer_call_and_return_conditional_losses_941687?012O?L
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941830?012O?L
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_941973q012??<
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
D__inference_lstm_520_layer_call_and_return_conditional_losses_942116q012??<
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
)__inference_lstm_520_layer_call_fn_941511}012O?L
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
)__inference_lstm_520_layer_call_fn_941522}012O?L
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
)__inference_lstm_520_layer_call_fn_941533d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_520_layer_call_fn_941544d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_521_layer_call_and_return_conditional_losses_942303}345O?L
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942446}345O?L
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942589m345??<
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
D__inference_lstm_521_layer_call_and_return_conditional_losses_942732m345??<
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
)__inference_lstm_521_layer_call_fn_942127p345O?L
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
)__inference_lstm_521_layer_call_fn_942138p345O?L
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
)__inference_lstm_521_layer_call_fn_942149`345??<
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
)__inference_lstm_521_layer_call_fn_942160`345??<
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942817?-./??}
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
I__inference_lstm_cell_153_layer_call_and_return_conditional_losses_942849?-./??}
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
.__inference_lstm_cell_153_layer_call_fn_942768?-./??}
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
.__inference_lstm_cell_153_layer_call_fn_942785?-./??}
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
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942915?012??}
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
I__inference_lstm_cell_154_layer_call_and_return_conditional_losses_942947?012??}
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
.__inference_lstm_cell_154_layer_call_fn_942866?012??}
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
.__inference_lstm_cell_154_layer_call_fn_942883?012??}
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
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943013?345??}
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
I__inference_lstm_cell_155_layer_call_and_return_conditional_losses_943045?345??}
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
.__inference_lstm_cell_155_layer_call_fn_942964?345??}
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
.__inference_lstm_cell_155_layer_call_fn_942981?345??}
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_939911y-./012345!"C?@
9?6
,?)
lstm_519_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_173_layer_call_and_return_conditional_losses_939941y-./012345!"C?@
9?6
,?)
lstm_519_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_173_layer_call_and_return_conditional_losses_940457q-./012345!";?8
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
J__inference_sequential_173_layer_call_and_return_conditional_losses_940884q-./012345!";?8
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
/__inference_sequential_173_layer_call_fn_939265l-./012345!"C?@
9?6
,?)
lstm_519_input?????????
p 

 
? "???????????
/__inference_sequential_173_layer_call_fn_939881l-./012345!"C?@
9?6
,?)
lstm_519_input?????????
p

 
? "???????????
/__inference_sequential_173_layer_call_fn_940003d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_173_layer_call_fn_940030d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_939976?-./012345!"M?J
? 
C?@
>
lstm_519_input,?)
lstm_519_input?????????"5?2
0
	dense_173#? 
	dense_173?????????