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
dense_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_146/kernel
u
$dense_146/kernel/Read/ReadVariableOpReadVariableOpdense_146/kernel*
_output_shapes

:
*
dtype0
t
dense_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_146/bias
m
"dense_146/bias/Read/ReadVariableOpReadVariableOpdense_146/bias*
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
lstm_438/lstm_cell_438/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_438/lstm_cell_438/kernel
?
1lstm_438/lstm_cell_438/kernel/Read/ReadVariableOpReadVariableOplstm_438/lstm_cell_438/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_438/lstm_cell_438/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_438/lstm_cell_438/recurrent_kernel
?
;lstm_438/lstm_cell_438/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_438/lstm_cell_438/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_438/lstm_cell_438/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_438/lstm_cell_438/bias
?
/lstm_438/lstm_cell_438/bias/Read/ReadVariableOpReadVariableOplstm_438/lstm_cell_438/bias*
_output_shapes	
:?*
dtype0
?
lstm_439/lstm_cell_439/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_439/lstm_cell_439/kernel
?
1lstm_439/lstm_cell_439/kernel/Read/ReadVariableOpReadVariableOplstm_439/lstm_cell_439/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_439/lstm_cell_439/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_439/lstm_cell_439/recurrent_kernel
?
;lstm_439/lstm_cell_439/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_439/lstm_cell_439/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_439/lstm_cell_439/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_439/lstm_cell_439/bias
?
/lstm_439/lstm_cell_439/bias/Read/ReadVariableOpReadVariableOplstm_439/lstm_cell_439/bias*
_output_shapes	
:?*
dtype0
?
lstm_440/lstm_cell_440/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_440/lstm_cell_440/kernel
?
1lstm_440/lstm_cell_440/kernel/Read/ReadVariableOpReadVariableOplstm_440/lstm_cell_440/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_440/lstm_cell_440/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_440/lstm_cell_440/recurrent_kernel
?
;lstm_440/lstm_cell_440/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_440/lstm_cell_440/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_440/lstm_cell_440/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_440/lstm_cell_440/bias
?
/lstm_440/lstm_cell_440/bias/Read/ReadVariableOpReadVariableOplstm_440/lstm_cell_440/bias*
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
Adam/dense_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_146/kernel/m
?
+Adam/dense_146/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_146/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_146/bias/m
{
)Adam/dense_146/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_146/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_438/lstm_cell_438/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_438/lstm_cell_438/kernel/m
?
8Adam/lstm_438/lstm_cell_438/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_438/lstm_cell_438/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_438/lstm_cell_438/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_438/lstm_cell_438/recurrent_kernel/m
?
BAdam/lstm_438/lstm_cell_438/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_438/lstm_cell_438/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_438/lstm_cell_438/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_438/lstm_cell_438/bias/m
?
6Adam/lstm_438/lstm_cell_438/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_438/lstm_cell_438/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_439/lstm_cell_439/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_439/lstm_cell_439/kernel/m
?
8Adam/lstm_439/lstm_cell_439/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_439/lstm_cell_439/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_439/lstm_cell_439/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_439/lstm_cell_439/recurrent_kernel/m
?
BAdam/lstm_439/lstm_cell_439/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_439/lstm_cell_439/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_439/lstm_cell_439/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_439/lstm_cell_439/bias/m
?
6Adam/lstm_439/lstm_cell_439/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_439/lstm_cell_439/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_440/lstm_cell_440/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_440/lstm_cell_440/kernel/m
?
8Adam/lstm_440/lstm_cell_440/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_440/lstm_cell_440/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_440/lstm_cell_440/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_440/lstm_cell_440/recurrent_kernel/m
?
BAdam/lstm_440/lstm_cell_440/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_440/lstm_cell_440/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_440/lstm_cell_440/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_440/lstm_cell_440/bias/m
?
6Adam/lstm_440/lstm_cell_440/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_440/lstm_cell_440/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_146/kernel/v
?
+Adam/dense_146/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_146/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_146/bias/v
{
)Adam/dense_146/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_146/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_438/lstm_cell_438/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_438/lstm_cell_438/kernel/v
?
8Adam/lstm_438/lstm_cell_438/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_438/lstm_cell_438/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_438/lstm_cell_438/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_438/lstm_cell_438/recurrent_kernel/v
?
BAdam/lstm_438/lstm_cell_438/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_438/lstm_cell_438/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_438/lstm_cell_438/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_438/lstm_cell_438/bias/v
?
6Adam/lstm_438/lstm_cell_438/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_438/lstm_cell_438/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_439/lstm_cell_439/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_439/lstm_cell_439/kernel/v
?
8Adam/lstm_439/lstm_cell_439/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_439/lstm_cell_439/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_439/lstm_cell_439/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_439/lstm_cell_439/recurrent_kernel/v
?
BAdam/lstm_439/lstm_cell_439/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_439/lstm_cell_439/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_439/lstm_cell_439/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_439/lstm_cell_439/bias/v
?
6Adam/lstm_439/lstm_cell_439/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_439/lstm_cell_439/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_440/lstm_cell_440/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_440/lstm_cell_440/kernel/v
?
8Adam/lstm_440/lstm_cell_440/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_440/lstm_cell_440/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_440/lstm_cell_440/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_440/lstm_cell_440/recurrent_kernel/v
?
BAdam/lstm_440/lstm_cell_440/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_440/lstm_cell_440/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_440/lstm_cell_440/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_440/lstm_cell_440/bias/v
?
6Adam/lstm_440/lstm_cell_440/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_440/lstm_cell_440/bias/v*
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
VARIABLE_VALUEdense_146/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_146/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_438/lstm_cell_438/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_438/lstm_cell_438/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_438/lstm_cell_438/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_439/lstm_cell_439/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_439/lstm_cell_439/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_439/lstm_cell_439/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_440/lstm_cell_440/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_440/lstm_cell_440/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_440/lstm_cell_440/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_146/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_146/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_438/lstm_cell_438/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_438/lstm_cell_438/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_438/lstm_cell_438/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_439/lstm_cell_439/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_439/lstm_cell_439/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_439/lstm_cell_439/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_440/lstm_cell_440/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_440/lstm_cell_440/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_440/lstm_cell_440/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_146/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_146/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_438/lstm_cell_438/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_438/lstm_cell_438/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_438/lstm_cell_438/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_439/lstm_cell_439/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_439/lstm_cell_439/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_439/lstm_cell_439/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_440/lstm_cell_440/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_440/lstm_cell_440/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_440/lstm_cell_440/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_438_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_438_inputlstm_438/lstm_cell_438/kernel'lstm_438/lstm_cell_438/recurrent_kernellstm_438/lstm_cell_438/biaslstm_439/lstm_cell_439/kernel'lstm_439/lstm_cell_439/recurrent_kernellstm_439/lstm_cell_439/biaslstm_440/lstm_cell_440/kernel'lstm_440/lstm_cell_440/recurrent_kernellstm_440/lstm_cell_440/biasdense_146/kerneldense_146/bias*
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
%__inference_signature_wrapper_3390633
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_146/kernel/Read/ReadVariableOp"dense_146/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_438/lstm_cell_438/kernel/Read/ReadVariableOp;lstm_438/lstm_cell_438/recurrent_kernel/Read/ReadVariableOp/lstm_438/lstm_cell_438/bias/Read/ReadVariableOp1lstm_439/lstm_cell_439/kernel/Read/ReadVariableOp;lstm_439/lstm_cell_439/recurrent_kernel/Read/ReadVariableOp/lstm_439/lstm_cell_439/bias/Read/ReadVariableOp1lstm_440/lstm_cell_440/kernel/Read/ReadVariableOp;lstm_440/lstm_cell_440/recurrent_kernel/Read/ReadVariableOp/lstm_440/lstm_cell_440/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_146/kernel/m/Read/ReadVariableOp)Adam/dense_146/bias/m/Read/ReadVariableOp8Adam/lstm_438/lstm_cell_438/kernel/m/Read/ReadVariableOpBAdam/lstm_438/lstm_cell_438/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_438/lstm_cell_438/bias/m/Read/ReadVariableOp8Adam/lstm_439/lstm_cell_439/kernel/m/Read/ReadVariableOpBAdam/lstm_439/lstm_cell_439/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_439/lstm_cell_439/bias/m/Read/ReadVariableOp8Adam/lstm_440/lstm_cell_440/kernel/m/Read/ReadVariableOpBAdam/lstm_440/lstm_cell_440/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_440/lstm_cell_440/bias/m/Read/ReadVariableOp+Adam/dense_146/kernel/v/Read/ReadVariableOp)Adam/dense_146/bias/v/Read/ReadVariableOp8Adam/lstm_438/lstm_cell_438/kernel/v/Read/ReadVariableOpBAdam/lstm_438/lstm_cell_438/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_438/lstm_cell_438/bias/v/Read/ReadVariableOp8Adam/lstm_439/lstm_cell_439/kernel/v/Read/ReadVariableOpBAdam/lstm_439/lstm_cell_439/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_439/lstm_cell_439/bias/v/Read/ReadVariableOp8Adam/lstm_440/lstm_cell_440/kernel/v/Read/ReadVariableOpBAdam/lstm_440/lstm_cell_440/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_440/lstm_cell_440/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3393845
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_146/kerneldense_146/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_438/lstm_cell_438/kernel'lstm_438/lstm_cell_438/recurrent_kernellstm_438/lstm_cell_438/biaslstm_439/lstm_cell_439/kernel'lstm_439/lstm_cell_439/recurrent_kernellstm_439/lstm_cell_439/biaslstm_440/lstm_cell_440/kernel'lstm_440/lstm_cell_440/recurrent_kernellstm_440/lstm_cell_440/biastotalcountAdam/dense_146/kernel/mAdam/dense_146/bias/m$Adam/lstm_438/lstm_cell_438/kernel/m.Adam/lstm_438/lstm_cell_438/recurrent_kernel/m"Adam/lstm_438/lstm_cell_438/bias/m$Adam/lstm_439/lstm_cell_439/kernel/m.Adam/lstm_439/lstm_cell_439/recurrent_kernel/m"Adam/lstm_439/lstm_cell_439/bias/m$Adam/lstm_440/lstm_cell_440/kernel/m.Adam/lstm_440/lstm_cell_440/recurrent_kernel/m"Adam/lstm_440/lstm_cell_440/bias/mAdam/dense_146/kernel/vAdam/dense_146/bias/v$Adam/lstm_438/lstm_cell_438/kernel/v.Adam/lstm_438/lstm_cell_438/recurrent_kernel/v"Adam/lstm_438/lstm_cell_438/bias/v$Adam/lstm_439/lstm_cell_439/kernel/v.Adam/lstm_439/lstm_cell_439/recurrent_kernel/v"Adam/lstm_439/lstm_cell_439/bias/v$Adam/lstm_440/lstm_cell_440/kernel/v.Adam/lstm_440/lstm_cell_440/recurrent_kernel/v"Adam/lstm_440/lstm_cell_440/bias/v*4
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
#__inference__traced_restore_3393975??+
?

?
0__inference_sequential_146_layer_call_fn_3390538
lstm_438_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_438_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390486o
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
_user_specified_namelstm_438_input
?
?
*__inference_lstm_440_layer_call_fn_3392784
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389223o
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
lstm_440_while_cond_3391023.
*lstm_440_while_lstm_440_while_loop_counter4
0lstm_440_while_lstm_440_while_maximum_iterations
lstm_440_while_placeholder 
lstm_440_while_placeholder_1 
lstm_440_while_placeholder_2 
lstm_440_while_placeholder_30
,lstm_440_while_less_lstm_440_strided_slice_1G
Clstm_440_while_lstm_440_while_cond_3391023___redundant_placeholder0G
Clstm_440_while_lstm_440_while_cond_3391023___redundant_placeholder1G
Clstm_440_while_lstm_440_while_cond_3391023___redundant_placeholder2G
Clstm_440_while_lstm_440_while_cond_3391023___redundant_placeholder3
lstm_440_while_identity
?
lstm_440/while/LessLesslstm_440_while_placeholder,lstm_440_while_less_lstm_440_strided_slice_1*
T0*
_output_shapes
: ]
lstm_440/while/IdentityIdentitylstm_440/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_440_while_identity lstm_440/while/Identity:output:0*(
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
while_cond_3388803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3388803___redundant_placeholder05
1while_while_cond_3388803___redundant_placeholder15
1while_while_cond_3388803___redundant_placeholder25
1while_while_cond_3388803___redundant_placeholder3
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
while_cond_3391643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3391643___redundant_placeholder05
1while_while_cond_3391643___redundant_placeholder15
1while_while_cond_3391643___redundant_placeholder25
1while_while_cond_3391643___redundant_placeholder3
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
*__inference_lstm_440_layer_call_fn_3392806

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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389872o
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
?
?
+__inference_dense_146_layer_call_fn_3393398

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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890o
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
while_cond_3388453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3388453___redundant_placeholder05
1while_while_cond_3388453___redundant_placeholder15
1while_while_cond_3388453___redundant_placeholder25
1while_while_cond_3388453___redundant_placeholder3
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
while_body_3392403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3390333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3390333___redundant_placeholder05
1while_while_cond_3390333___redundant_placeholder15
1while_while_cond_3390333___redundant_placeholder25
1while_while_cond_3390333___redundant_placeholder3
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
?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3389897

inputs#
lstm_438_3389573:	?#
lstm_438_3389575:	d?
lstm_438_3389577:	?#
lstm_439_3389723:	d?#
lstm_439_3389725:	2?
lstm_439_3389727:	?"
lstm_440_3389873:2("
lstm_440_3389875:
(
lstm_440_3389877:(#
dense_146_3389891:

dense_146_3389893:
identity??!dense_146/StatefulPartitionedCall? lstm_438/StatefulPartitionedCall? lstm_439/StatefulPartitionedCall? lstm_440/StatefulPartitionedCall?
 lstm_438/StatefulPartitionedCallStatefulPartitionedCallinputslstm_438_3389573lstm_438_3389575lstm_438_3389577*
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3389572?
 lstm_439/StatefulPartitionedCallStatefulPartitionedCall)lstm_438/StatefulPartitionedCall:output:0lstm_439_3389723lstm_439_3389725lstm_439_3389727*
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389722?
 lstm_440/StatefulPartitionedCallStatefulPartitionedCall)lstm_439/StatefulPartitionedCall:output:0lstm_440_3389873lstm_440_3389875lstm_440_3389877*
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389872?
!dense_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_440/StatefulPartitionedCall:output:0dense_146_3389891dense_146_3389893*
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890y
IdentityIdentity*dense_146/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_146/StatefulPartitionedCall!^lstm_438/StatefulPartitionedCall!^lstm_439/StatefulPartitionedCall!^lstm_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2D
 lstm_438/StatefulPartitionedCall lstm_438/StatefulPartitionedCall2D
 lstm_439/StatefulPartitionedCall lstm_439/StatefulPartitionedCall2D
 lstm_440/StatefulPartitionedCall lstm_440/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3391644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_439_layer_call_fn_3392168
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3388873|
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
?
/__inference_lstm_cell_559_layer_call_fn_3393523

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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388790o
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
while_cond_3391786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3391786___redundant_placeholder05
1while_while_cond_3391786___redundant_placeholder15
1while_while_cond_3391786___redundant_placeholder25
1while_while_cond_3391786___redundant_placeholder3
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
*__inference_lstm_440_layer_call_fn_3392795
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389414o
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
?
*__inference_lstm_439_layer_call_fn_3392179
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389064|
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389286

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
lstm_438_while_cond_3390745.
*lstm_438_while_lstm_438_while_loop_counter4
0lstm_438_while_lstm_438_while_maximum_iterations
lstm_438_while_placeholder 
lstm_438_while_placeholder_1 
lstm_438_while_placeholder_2 
lstm_438_while_placeholder_30
,lstm_438_while_less_lstm_438_strided_slice_1G
Clstm_438_while_lstm_438_while_cond_3390745___redundant_placeholder0G
Clstm_438_while_lstm_438_while_cond_3390745___redundant_placeholder1G
Clstm_438_while_lstm_438_while_cond_3390745___redundant_placeholder2G
Clstm_438_while_lstm_438_while_cond_3390745___redundant_placeholder3
lstm_438_while_identity
?
lstm_438/while/LessLesslstm_438_while_placeholder,lstm_438_while_less_lstm_438_strided_slice_1*
T0*
_output_shapes
: ]
lstm_438/while/IdentityIdentitylstm_438/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_438_while_identity lstm_438/while/Identity:output:0*(
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389414

inputs'
lstm_cell_560_3389332:2('
lstm_cell_560_3389334:
(#
lstm_cell_560_3389336:(
identity??%lstm_cell_560/StatefulPartitionedCall?while;
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
%lstm_cell_560/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_560_3389332lstm_cell_560_3389334lstm_cell_560_3389336*
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389286n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_560_3389332lstm_cell_560_3389334lstm_cell_560_3389336*
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
while_body_3389345*
condR
while_cond_3389344*K
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
NoOpNoOp&^lstm_cell_560/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_560/StatefulPartitionedCall%lstm_cell_560/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_558_layer_call_fn_3393442

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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388586o
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
?
while_cond_3389637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3389637___redundant_placeholder05
1while_while_cond_3389637___redundant_placeholder15
1while_while_cond_3389637___redundant_placeholder25
1while_while_cond_3389637___redundant_placeholder3
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391871
inputs_0?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3391787*
condR
while_cond_3391786*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389223

inputs'
lstm_cell_560_3389141:2('
lstm_cell_560_3389143:
(#
lstm_cell_560_3389145:(
identity??%lstm_cell_560/StatefulPartitionedCall?while;
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
%lstm_cell_560/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_560_3389141lstm_cell_560_3389143lstm_cell_560_3389145*
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389140n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_560_3389141lstm_cell_560_3389143lstm_cell_560_3389145*
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
while_body_3389154*
condR
while_cond_3389153*K
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
NoOpNoOp&^lstm_cell_560/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_560/StatefulPartitionedCall%lstm_cell_560/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388936

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
while_cond_3389344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3389344___redundant_placeholder05
1while_while_cond_3389344___redundant_placeholder15
1while_while_cond_3389344___redundant_placeholder25
1while_while_cond_3389344___redundant_placeholder3
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
*__inference_lstm_439_layer_call_fn_3392190

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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389722s
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393246

inputs>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3393162*
condR
while_cond_3393161*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_558_layer_call_fn_3393425

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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388440o
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393506

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
?C
?

lstm_439_while_body_3391312.
*lstm_439_while_lstm_439_while_loop_counter4
0lstm_439_while_lstm_439_while_maximum_iterations
lstm_439_while_placeholder 
lstm_439_while_placeholder_1 
lstm_439_while_placeholder_2 
lstm_439_while_placeholder_3-
)lstm_439_while_lstm_439_strided_slice_1_0i
elstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0:	d?R
?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?M
>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
lstm_439_while_identity
lstm_439_while_identity_1
lstm_439_while_identity_2
lstm_439_while_identity_3
lstm_439_while_identity_4
lstm_439_while_identity_5+
'lstm_439_while_lstm_439_strided_slice_1g
clstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensorN
;lstm_439_while_lstm_cell_559_matmul_readvariableop_resource:	d?P
=lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource:	2?K
<lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource:	???3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp?2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp?4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp?
@lstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_439/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0lstm_439_while_placeholderIlstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_439/while/lstm_cell_559/MatMulMatMul9lstm_439/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_439/while/lstm_cell_559/MatMul_1MatMullstm_439_while_placeholder_2<lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_439/while/lstm_cell_559/addAddV2-lstm_439/while/lstm_cell_559/MatMul:product:0/lstm_439/while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_439/while/lstm_cell_559/BiasAddBiasAdd$lstm_439/while/lstm_cell_559/add:z:0;lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_439/while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_439/while/lstm_cell_559/splitSplit5lstm_439/while/lstm_cell_559/split/split_dim:output:0-lstm_439/while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_439/while/lstm_cell_559/SigmoidSigmoid+lstm_439/while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_439/while/lstm_cell_559/Sigmoid_1Sigmoid+lstm_439/while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_439/while/lstm_cell_559/mulMul*lstm_439/while/lstm_cell_559/Sigmoid_1:y:0lstm_439_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_439/while/lstm_cell_559/ReluRelu+lstm_439/while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/mul_1Mul(lstm_439/while/lstm_cell_559/Sigmoid:y:0/lstm_439/while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/add_1AddV2$lstm_439/while/lstm_cell_559/mul:z:0&lstm_439/while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_439/while/lstm_cell_559/Sigmoid_2Sigmoid+lstm_439/while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_439/while/lstm_cell_559/Relu_1Relu&lstm_439/while/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/mul_2Mul*lstm_439/while/lstm_cell_559/Sigmoid_2:y:01lstm_439/while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_439/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_439_while_placeholder_1lstm_439_while_placeholder&lstm_439/while/lstm_cell_559/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_439/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_439/while/addAddV2lstm_439_while_placeholderlstm_439/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_439/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_439/while/add_1AddV2*lstm_439_while_lstm_439_while_loop_counterlstm_439/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_439/while/IdentityIdentitylstm_439/while/add_1:z:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_1Identity0lstm_439_while_lstm_439_while_maximum_iterations^lstm_439/while/NoOp*
T0*
_output_shapes
: t
lstm_439/while/Identity_2Identitylstm_439/while/add:z:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_3IdentityClstm_439/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_4Identity&lstm_439/while/lstm_cell_559/mul_2:z:0^lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_439/while/Identity_5Identity&lstm_439/while/lstm_cell_559/add_1:z:0^lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_439/while/NoOpNoOp4^lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp3^lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp5^lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_439_while_identity lstm_439/while/Identity:output:0"?
lstm_439_while_identity_1"lstm_439/while/Identity_1:output:0"?
lstm_439_while_identity_2"lstm_439/while/Identity_2:output:0"?
lstm_439_while_identity_3"lstm_439/while/Identity_3:output:0"?
lstm_439_while_identity_4"lstm_439/while/Identity_4:output:0"?
lstm_439_while_identity_5"lstm_439/while/Identity_5:output:0"T
'lstm_439_while_lstm_439_strided_slice_1)lstm_439_while_lstm_439_strided_slice_1_0"~
<lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0"?
=lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0"|
;lstm_439_while_lstm_cell_559_matmul_readvariableop_resource=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0"?
clstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensorelstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp2h
2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp2l
4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3389787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3389787___redundant_placeholder05
1while_while_cond_3389787___redundant_placeholder15
1while_while_cond_3389787___redundant_placeholder25
1while_while_cond_3389787___redundant_placeholder3
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
while_cond_3390168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3390168___redundant_placeholder05
1while_while_cond_3390168___redundant_placeholder15
1while_while_cond_3390168___redundant_placeholder25
1while_while_cond_3390168___redundant_placeholder3
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
while_body_3393162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_438_layer_call_fn_3391563
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3388714|
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
??
?
"__inference__wrapped_model_3388373
lstm_438_inputW
Dsequential_146_lstm_438_lstm_cell_558_matmul_readvariableop_resource:	?Y
Fsequential_146_lstm_438_lstm_cell_558_matmul_1_readvariableop_resource:	d?T
Esequential_146_lstm_438_lstm_cell_558_biasadd_readvariableop_resource:	?W
Dsequential_146_lstm_439_lstm_cell_559_matmul_readvariableop_resource:	d?Y
Fsequential_146_lstm_439_lstm_cell_559_matmul_1_readvariableop_resource:	2?T
Esequential_146_lstm_439_lstm_cell_559_biasadd_readvariableop_resource:	?V
Dsequential_146_lstm_440_lstm_cell_560_matmul_readvariableop_resource:2(X
Fsequential_146_lstm_440_lstm_cell_560_matmul_1_readvariableop_resource:
(S
Esequential_146_lstm_440_lstm_cell_560_biasadd_readvariableop_resource:(I
7sequential_146_dense_146_matmul_readvariableop_resource:
F
8sequential_146_dense_146_biasadd_readvariableop_resource:
identity??/sequential_146/dense_146/BiasAdd/ReadVariableOp?.sequential_146/dense_146/MatMul/ReadVariableOp?<sequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp?;sequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOp?=sequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp?sequential_146/lstm_438/while?<sequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp?;sequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOp?=sequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp?sequential_146/lstm_439/while?<sequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp?;sequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOp?=sequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp?sequential_146/lstm_440/while[
sequential_146/lstm_438/ShapeShapelstm_438_input*
T0*
_output_shapes
:u
+sequential_146/lstm_438/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_146/lstm_438/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_146/lstm_438/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_146/lstm_438/strided_sliceStridedSlice&sequential_146/lstm_438/Shape:output:04sequential_146/lstm_438/strided_slice/stack:output:06sequential_146/lstm_438/strided_slice/stack_1:output:06sequential_146/lstm_438/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_146/lstm_438/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_146/lstm_438/zeros/packedPack.sequential_146/lstm_438/strided_slice:output:0/sequential_146/lstm_438/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_146/lstm_438/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_438/zerosFill-sequential_146/lstm_438/zeros/packed:output:0,sequential_146/lstm_438/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_146/lstm_438/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_146/lstm_438/zeros_1/packedPack.sequential_146/lstm_438/strided_slice:output:01sequential_146/lstm_438/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_146/lstm_438/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_438/zeros_1Fill/sequential_146/lstm_438/zeros_1/packed:output:0.sequential_146/lstm_438/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_146/lstm_438/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_146/lstm_438/transpose	Transposelstm_438_input/sequential_146/lstm_438/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_146/lstm_438/Shape_1Shape%sequential_146/lstm_438/transpose:y:0*
T0*
_output_shapes
:w
-sequential_146/lstm_438/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_438/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_438/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_438/strided_slice_1StridedSlice(sequential_146/lstm_438/Shape_1:output:06sequential_146/lstm_438/strided_slice_1/stack:output:08sequential_146/lstm_438/strided_slice_1/stack_1:output:08sequential_146/lstm_438/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_146/lstm_438/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_146/lstm_438/TensorArrayV2TensorListReserve<sequential_146/lstm_438/TensorArrayV2/element_shape:output:00sequential_146/lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_146/lstm_438/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_146/lstm_438/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_146/lstm_438/transpose:y:0Vsequential_146/lstm_438/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_146/lstm_438/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_438/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_438/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_438/strided_slice_2StridedSlice%sequential_146/lstm_438/transpose:y:06sequential_146/lstm_438/strided_slice_2/stack:output:08sequential_146/lstm_438/strided_slice_2/stack_1:output:08sequential_146/lstm_438/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOpReadVariableOpDsequential_146_lstm_438_lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_146/lstm_438/lstm_cell_558/MatMulMatMul0sequential_146/lstm_438/strided_slice_2:output:0Csequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOpFsequential_146_lstm_438_lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_146/lstm_438/lstm_cell_558/MatMul_1MatMul&sequential_146/lstm_438/zeros:output:0Esequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_146/lstm_438/lstm_cell_558/addAddV26sequential_146/lstm_438/lstm_cell_558/MatMul:product:08sequential_146/lstm_438/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOpEsequential_146_lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_146/lstm_438/lstm_cell_558/BiasAddBiasAdd-sequential_146/lstm_438/lstm_cell_558/add:z:0Dsequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_146/lstm_438/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_146/lstm_438/lstm_cell_558/splitSplit>sequential_146/lstm_438/lstm_cell_558/split/split_dim:output:06sequential_146/lstm_438/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_146/lstm_438/lstm_cell_558/SigmoidSigmoid4sequential_146/lstm_438/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_146/lstm_438/lstm_cell_558/Sigmoid_1Sigmoid4sequential_146/lstm_438/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_146/lstm_438/lstm_cell_558/mulMul3sequential_146/lstm_438/lstm_cell_558/Sigmoid_1:y:0(sequential_146/lstm_438/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_146/lstm_438/lstm_cell_558/ReluRelu4sequential_146/lstm_438/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_146/lstm_438/lstm_cell_558/mul_1Mul1sequential_146/lstm_438/lstm_cell_558/Sigmoid:y:08sequential_146/lstm_438/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_146/lstm_438/lstm_cell_558/add_1AddV2-sequential_146/lstm_438/lstm_cell_558/mul:z:0/sequential_146/lstm_438/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_146/lstm_438/lstm_cell_558/Sigmoid_2Sigmoid4sequential_146/lstm_438/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_146/lstm_438/lstm_cell_558/Relu_1Relu/sequential_146/lstm_438/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_146/lstm_438/lstm_cell_558/mul_2Mul3sequential_146/lstm_438/lstm_cell_558/Sigmoid_2:y:0:sequential_146/lstm_438/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_146/lstm_438/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_146/lstm_438/TensorArrayV2_1TensorListReserve>sequential_146/lstm_438/TensorArrayV2_1/element_shape:output:00sequential_146/lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_146/lstm_438/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_146/lstm_438/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_146/lstm_438/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_146/lstm_438/whileWhile3sequential_146/lstm_438/while/loop_counter:output:09sequential_146/lstm_438/while/maximum_iterations:output:0%sequential_146/lstm_438/time:output:00sequential_146/lstm_438/TensorArrayV2_1:handle:0&sequential_146/lstm_438/zeros:output:0(sequential_146/lstm_438/zeros_1:output:00sequential_146/lstm_438/strided_slice_1:output:0Osequential_146/lstm_438/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_146_lstm_438_lstm_cell_558_matmul_readvariableop_resourceFsequential_146_lstm_438_lstm_cell_558_matmul_1_readvariableop_resourceEsequential_146_lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
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
*sequential_146_lstm_438_while_body_3388005*6
cond.R,
*sequential_146_lstm_438_while_cond_3388004*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_146/lstm_438/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_146/lstm_438/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_146/lstm_438/while:output:3Qsequential_146/lstm_438/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_146/lstm_438/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_146/lstm_438/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_438/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_438/strided_slice_3StridedSliceCsequential_146/lstm_438/TensorArrayV2Stack/TensorListStack:tensor:06sequential_146/lstm_438/strided_slice_3/stack:output:08sequential_146/lstm_438/strided_slice_3/stack_1:output:08sequential_146/lstm_438/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_146/lstm_438/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_146/lstm_438/transpose_1	TransposeCsequential_146/lstm_438/TensorArrayV2Stack/TensorListStack:tensor:01sequential_146/lstm_438/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_146/lstm_438/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_146/lstm_439/ShapeShape'sequential_146/lstm_438/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_146/lstm_439/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_146/lstm_439/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_146/lstm_439/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_146/lstm_439/strided_sliceStridedSlice&sequential_146/lstm_439/Shape:output:04sequential_146/lstm_439/strided_slice/stack:output:06sequential_146/lstm_439/strided_slice/stack_1:output:06sequential_146/lstm_439/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_146/lstm_439/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_146/lstm_439/zeros/packedPack.sequential_146/lstm_439/strided_slice:output:0/sequential_146/lstm_439/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_146/lstm_439/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_439/zerosFill-sequential_146/lstm_439/zeros/packed:output:0,sequential_146/lstm_439/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_146/lstm_439/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_146/lstm_439/zeros_1/packedPack.sequential_146/lstm_439/strided_slice:output:01sequential_146/lstm_439/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_146/lstm_439/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_439/zeros_1Fill/sequential_146/lstm_439/zeros_1/packed:output:0.sequential_146/lstm_439/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_146/lstm_439/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_146/lstm_439/transpose	Transpose'sequential_146/lstm_438/transpose_1:y:0/sequential_146/lstm_439/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_146/lstm_439/Shape_1Shape%sequential_146/lstm_439/transpose:y:0*
T0*
_output_shapes
:w
-sequential_146/lstm_439/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_439/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_439/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_439/strided_slice_1StridedSlice(sequential_146/lstm_439/Shape_1:output:06sequential_146/lstm_439/strided_slice_1/stack:output:08sequential_146/lstm_439/strided_slice_1/stack_1:output:08sequential_146/lstm_439/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_146/lstm_439/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_146/lstm_439/TensorArrayV2TensorListReserve<sequential_146/lstm_439/TensorArrayV2/element_shape:output:00sequential_146/lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_146/lstm_439/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_146/lstm_439/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_146/lstm_439/transpose:y:0Vsequential_146/lstm_439/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_146/lstm_439/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_439/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_439/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_439/strided_slice_2StridedSlice%sequential_146/lstm_439/transpose:y:06sequential_146/lstm_439/strided_slice_2/stack:output:08sequential_146/lstm_439/strided_slice_2/stack_1:output:08sequential_146/lstm_439/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOpReadVariableOpDsequential_146_lstm_439_lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_146/lstm_439/lstm_cell_559/MatMulMatMul0sequential_146/lstm_439/strided_slice_2:output:0Csequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOpFsequential_146_lstm_439_lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_146/lstm_439/lstm_cell_559/MatMul_1MatMul&sequential_146/lstm_439/zeros:output:0Esequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_146/lstm_439/lstm_cell_559/addAddV26sequential_146/lstm_439/lstm_cell_559/MatMul:product:08sequential_146/lstm_439/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOpEsequential_146_lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_146/lstm_439/lstm_cell_559/BiasAddBiasAdd-sequential_146/lstm_439/lstm_cell_559/add:z:0Dsequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_146/lstm_439/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_146/lstm_439/lstm_cell_559/splitSplit>sequential_146/lstm_439/lstm_cell_559/split/split_dim:output:06sequential_146/lstm_439/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_146/lstm_439/lstm_cell_559/SigmoidSigmoid4sequential_146/lstm_439/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_146/lstm_439/lstm_cell_559/Sigmoid_1Sigmoid4sequential_146/lstm_439/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_146/lstm_439/lstm_cell_559/mulMul3sequential_146/lstm_439/lstm_cell_559/Sigmoid_1:y:0(sequential_146/lstm_439/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_146/lstm_439/lstm_cell_559/ReluRelu4sequential_146/lstm_439/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_146/lstm_439/lstm_cell_559/mul_1Mul1sequential_146/lstm_439/lstm_cell_559/Sigmoid:y:08sequential_146/lstm_439/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_146/lstm_439/lstm_cell_559/add_1AddV2-sequential_146/lstm_439/lstm_cell_559/mul:z:0/sequential_146/lstm_439/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_146/lstm_439/lstm_cell_559/Sigmoid_2Sigmoid4sequential_146/lstm_439/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_146/lstm_439/lstm_cell_559/Relu_1Relu/sequential_146/lstm_439/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_146/lstm_439/lstm_cell_559/mul_2Mul3sequential_146/lstm_439/lstm_cell_559/Sigmoid_2:y:0:sequential_146/lstm_439/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_146/lstm_439/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_146/lstm_439/TensorArrayV2_1TensorListReserve>sequential_146/lstm_439/TensorArrayV2_1/element_shape:output:00sequential_146/lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_146/lstm_439/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_146/lstm_439/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_146/lstm_439/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_146/lstm_439/whileWhile3sequential_146/lstm_439/while/loop_counter:output:09sequential_146/lstm_439/while/maximum_iterations:output:0%sequential_146/lstm_439/time:output:00sequential_146/lstm_439/TensorArrayV2_1:handle:0&sequential_146/lstm_439/zeros:output:0(sequential_146/lstm_439/zeros_1:output:00sequential_146/lstm_439/strided_slice_1:output:0Osequential_146/lstm_439/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_146_lstm_439_lstm_cell_559_matmul_readvariableop_resourceFsequential_146_lstm_439_lstm_cell_559_matmul_1_readvariableop_resourceEsequential_146_lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
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
*sequential_146_lstm_439_while_body_3388144*6
cond.R,
*sequential_146_lstm_439_while_cond_3388143*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_146/lstm_439/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_146/lstm_439/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_146/lstm_439/while:output:3Qsequential_146/lstm_439/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_146/lstm_439/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_146/lstm_439/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_439/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_439/strided_slice_3StridedSliceCsequential_146/lstm_439/TensorArrayV2Stack/TensorListStack:tensor:06sequential_146/lstm_439/strided_slice_3/stack:output:08sequential_146/lstm_439/strided_slice_3/stack_1:output:08sequential_146/lstm_439/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_146/lstm_439/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_146/lstm_439/transpose_1	TransposeCsequential_146/lstm_439/TensorArrayV2Stack/TensorListStack:tensor:01sequential_146/lstm_439/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_146/lstm_439/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_146/lstm_440/ShapeShape'sequential_146/lstm_439/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_146/lstm_440/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_146/lstm_440/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_146/lstm_440/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_146/lstm_440/strided_sliceStridedSlice&sequential_146/lstm_440/Shape:output:04sequential_146/lstm_440/strided_slice/stack:output:06sequential_146/lstm_440/strided_slice/stack_1:output:06sequential_146/lstm_440/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_146/lstm_440/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_146/lstm_440/zeros/packedPack.sequential_146/lstm_440/strided_slice:output:0/sequential_146/lstm_440/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_146/lstm_440/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_440/zerosFill-sequential_146/lstm_440/zeros/packed:output:0,sequential_146/lstm_440/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_146/lstm_440/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_146/lstm_440/zeros_1/packedPack.sequential_146/lstm_440/strided_slice:output:01sequential_146/lstm_440/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_146/lstm_440/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_146/lstm_440/zeros_1Fill/sequential_146/lstm_440/zeros_1/packed:output:0.sequential_146/lstm_440/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_146/lstm_440/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_146/lstm_440/transpose	Transpose'sequential_146/lstm_439/transpose_1:y:0/sequential_146/lstm_440/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_146/lstm_440/Shape_1Shape%sequential_146/lstm_440/transpose:y:0*
T0*
_output_shapes
:w
-sequential_146/lstm_440/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_440/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_440/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_440/strided_slice_1StridedSlice(sequential_146/lstm_440/Shape_1:output:06sequential_146/lstm_440/strided_slice_1/stack:output:08sequential_146/lstm_440/strided_slice_1/stack_1:output:08sequential_146/lstm_440/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_146/lstm_440/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_146/lstm_440/TensorArrayV2TensorListReserve<sequential_146/lstm_440/TensorArrayV2/element_shape:output:00sequential_146/lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_146/lstm_440/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_146/lstm_440/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_146/lstm_440/transpose:y:0Vsequential_146/lstm_440/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_146/lstm_440/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_440/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_146/lstm_440/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_440/strided_slice_2StridedSlice%sequential_146/lstm_440/transpose:y:06sequential_146/lstm_440/strided_slice_2/stack:output:08sequential_146/lstm_440/strided_slice_2/stack_1:output:08sequential_146/lstm_440/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOpReadVariableOpDsequential_146_lstm_440_lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_146/lstm_440/lstm_cell_560/MatMulMatMul0sequential_146/lstm_440/strided_slice_2:output:0Csequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOpFsequential_146_lstm_440_lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_146/lstm_440/lstm_cell_560/MatMul_1MatMul&sequential_146/lstm_440/zeros:output:0Esequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_146/lstm_440/lstm_cell_560/addAddV26sequential_146/lstm_440/lstm_cell_560/MatMul:product:08sequential_146/lstm_440/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOpEsequential_146_lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_146/lstm_440/lstm_cell_560/BiasAddBiasAdd-sequential_146/lstm_440/lstm_cell_560/add:z:0Dsequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_146/lstm_440/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_146/lstm_440/lstm_cell_560/splitSplit>sequential_146/lstm_440/lstm_cell_560/split/split_dim:output:06sequential_146/lstm_440/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_146/lstm_440/lstm_cell_560/SigmoidSigmoid4sequential_146/lstm_440/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_146/lstm_440/lstm_cell_560/Sigmoid_1Sigmoid4sequential_146/lstm_440/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_146/lstm_440/lstm_cell_560/mulMul3sequential_146/lstm_440/lstm_cell_560/Sigmoid_1:y:0(sequential_146/lstm_440/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_146/lstm_440/lstm_cell_560/ReluRelu4sequential_146/lstm_440/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_146/lstm_440/lstm_cell_560/mul_1Mul1sequential_146/lstm_440/lstm_cell_560/Sigmoid:y:08sequential_146/lstm_440/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_146/lstm_440/lstm_cell_560/add_1AddV2-sequential_146/lstm_440/lstm_cell_560/mul:z:0/sequential_146/lstm_440/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_146/lstm_440/lstm_cell_560/Sigmoid_2Sigmoid4sequential_146/lstm_440/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_146/lstm_440/lstm_cell_560/Relu_1Relu/sequential_146/lstm_440/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_146/lstm_440/lstm_cell_560/mul_2Mul3sequential_146/lstm_440/lstm_cell_560/Sigmoid_2:y:0:sequential_146/lstm_440/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_146/lstm_440/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_146/lstm_440/TensorArrayV2_1TensorListReserve>sequential_146/lstm_440/TensorArrayV2_1/element_shape:output:00sequential_146/lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_146/lstm_440/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_146/lstm_440/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_146/lstm_440/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_146/lstm_440/whileWhile3sequential_146/lstm_440/while/loop_counter:output:09sequential_146/lstm_440/while/maximum_iterations:output:0%sequential_146/lstm_440/time:output:00sequential_146/lstm_440/TensorArrayV2_1:handle:0&sequential_146/lstm_440/zeros:output:0(sequential_146/lstm_440/zeros_1:output:00sequential_146/lstm_440/strided_slice_1:output:0Osequential_146/lstm_440/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_146_lstm_440_lstm_cell_560_matmul_readvariableop_resourceFsequential_146_lstm_440_lstm_cell_560_matmul_1_readvariableop_resourceEsequential_146_lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
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
*sequential_146_lstm_440_while_body_3388283*6
cond.R,
*sequential_146_lstm_440_while_cond_3388282*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_146/lstm_440/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_146/lstm_440/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_146/lstm_440/while:output:3Qsequential_146/lstm_440/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_146/lstm_440/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_146/lstm_440/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_146/lstm_440/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_146/lstm_440/strided_slice_3StridedSliceCsequential_146/lstm_440/TensorArrayV2Stack/TensorListStack:tensor:06sequential_146/lstm_440/strided_slice_3/stack:output:08sequential_146/lstm_440/strided_slice_3/stack_1:output:08sequential_146/lstm_440/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_146/lstm_440/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_146/lstm_440/transpose_1	TransposeCsequential_146/lstm_440/TensorArrayV2Stack/TensorListStack:tensor:01sequential_146/lstm_440/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_146/lstm_440/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_146/dense_146/MatMul/ReadVariableOpReadVariableOp7sequential_146_dense_146_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_146/dense_146/MatMulMatMul0sequential_146/lstm_440/strided_slice_3:output:06sequential_146/dense_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_146/dense_146/BiasAdd/ReadVariableOpReadVariableOp8sequential_146_dense_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_146/dense_146/BiasAddBiasAdd)sequential_146/dense_146/MatMul:product:07sequential_146/dense_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_146/dense_146/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_146/dense_146/BiasAdd/ReadVariableOp/^sequential_146/dense_146/MatMul/ReadVariableOp=^sequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp<^sequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOp>^sequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp^sequential_146/lstm_438/while=^sequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp<^sequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOp>^sequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp^sequential_146/lstm_439/while=^sequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp<^sequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOp>^sequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp^sequential_146/lstm_440/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_146/dense_146/BiasAdd/ReadVariableOp/sequential_146/dense_146/BiasAdd/ReadVariableOp2`
.sequential_146/dense_146/MatMul/ReadVariableOp.sequential_146/dense_146/MatMul/ReadVariableOp2|
<sequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp<sequential_146/lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp2z
;sequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOp;sequential_146/lstm_438/lstm_cell_558/MatMul/ReadVariableOp2~
=sequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp=sequential_146/lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp2>
sequential_146/lstm_438/whilesequential_146/lstm_438/while2|
<sequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp<sequential_146/lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp2z
;sequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOp;sequential_146/lstm_439/lstm_cell_559/MatMul/ReadVariableOp2~
=sequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp=sequential_146/lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp2>
sequential_146/lstm_439/whilesequential_146/lstm_439/while2|
<sequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp<sequential_146/lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp2z
;sequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOp;sequential_146/lstm_440/lstm_cell_560/MatMul/ReadVariableOp2~
=sequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp=sequential_146/lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp2>
sequential_146/lstm_440/whilesequential_146/lstm_440/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_438_input
?
?
while_cond_3389153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3389153___redundant_placeholder05
1while_while_cond_3389153___redundant_placeholder15
1while_while_cond_3389153___redundant_placeholder25
1while_while_cond_3389153___redundant_placeholder3
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
 __inference__traced_save_3393845
file_prefix/
+savev2_dense_146_kernel_read_readvariableop-
)savev2_dense_146_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_438_lstm_cell_438_kernel_read_readvariableopF
Bsavev2_lstm_438_lstm_cell_438_recurrent_kernel_read_readvariableop:
6savev2_lstm_438_lstm_cell_438_bias_read_readvariableop<
8savev2_lstm_439_lstm_cell_439_kernel_read_readvariableopF
Bsavev2_lstm_439_lstm_cell_439_recurrent_kernel_read_readvariableop:
6savev2_lstm_439_lstm_cell_439_bias_read_readvariableop<
8savev2_lstm_440_lstm_cell_440_kernel_read_readvariableopF
Bsavev2_lstm_440_lstm_cell_440_recurrent_kernel_read_readvariableop:
6savev2_lstm_440_lstm_cell_440_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_146_kernel_m_read_readvariableop4
0savev2_adam_dense_146_bias_m_read_readvariableopC
?savev2_adam_lstm_438_lstm_cell_438_kernel_m_read_readvariableopM
Isavev2_adam_lstm_438_lstm_cell_438_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_438_lstm_cell_438_bias_m_read_readvariableopC
?savev2_adam_lstm_439_lstm_cell_439_kernel_m_read_readvariableopM
Isavev2_adam_lstm_439_lstm_cell_439_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_439_lstm_cell_439_bias_m_read_readvariableopC
?savev2_adam_lstm_440_lstm_cell_440_kernel_m_read_readvariableopM
Isavev2_adam_lstm_440_lstm_cell_440_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_440_lstm_cell_440_bias_m_read_readvariableop6
2savev2_adam_dense_146_kernel_v_read_readvariableop4
0savev2_adam_dense_146_bias_v_read_readvariableopC
?savev2_adam_lstm_438_lstm_cell_438_kernel_v_read_readvariableopM
Isavev2_adam_lstm_438_lstm_cell_438_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_438_lstm_cell_438_bias_v_read_readvariableopC
?savev2_adam_lstm_439_lstm_cell_439_kernel_v_read_readvariableopM
Isavev2_adam_lstm_439_lstm_cell_439_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_439_lstm_cell_439_bias_v_read_readvariableopC
?savev2_adam_lstm_440_lstm_cell_440_kernel_v_read_readvariableopM
Isavev2_adam_lstm_440_lstm_cell_440_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_440_lstm_cell_440_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_146_kernel_read_readvariableop)savev2_dense_146_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_438_lstm_cell_438_kernel_read_readvariableopBsavev2_lstm_438_lstm_cell_438_recurrent_kernel_read_readvariableop6savev2_lstm_438_lstm_cell_438_bias_read_readvariableop8savev2_lstm_439_lstm_cell_439_kernel_read_readvariableopBsavev2_lstm_439_lstm_cell_439_recurrent_kernel_read_readvariableop6savev2_lstm_439_lstm_cell_439_bias_read_readvariableop8savev2_lstm_440_lstm_cell_440_kernel_read_readvariableopBsavev2_lstm_440_lstm_cell_440_recurrent_kernel_read_readvariableop6savev2_lstm_440_lstm_cell_440_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_146_kernel_m_read_readvariableop0savev2_adam_dense_146_bias_m_read_readvariableop?savev2_adam_lstm_438_lstm_cell_438_kernel_m_read_readvariableopIsavev2_adam_lstm_438_lstm_cell_438_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_438_lstm_cell_438_bias_m_read_readvariableop?savev2_adam_lstm_439_lstm_cell_439_kernel_m_read_readvariableopIsavev2_adam_lstm_439_lstm_cell_439_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_439_lstm_cell_439_bias_m_read_readvariableop?savev2_adam_lstm_440_lstm_cell_440_kernel_m_read_readvariableopIsavev2_adam_lstm_440_lstm_cell_440_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_440_lstm_cell_440_bias_m_read_readvariableop2savev2_adam_dense_146_kernel_v_read_readvariableop0savev2_adam_dense_146_bias_v_read_readvariableop?savev2_adam_lstm_438_lstm_cell_438_kernel_v_read_readvariableopIsavev2_adam_lstm_438_lstm_cell_438_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_438_lstm_cell_438_bias_v_read_readvariableop?savev2_adam_lstm_439_lstm_cell_439_kernel_v_read_readvariableopIsavev2_adam_lstm_439_lstm_cell_439_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_439_lstm_cell_439_bias_v_read_readvariableop?savev2_adam_lstm_440_lstm_cell_440_kernel_v_read_readvariableopIsavev2_adam_lstm_440_lstm_cell_440_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_440_lstm_cell_440_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_3389487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3389487___redundant_placeholder05
1while_while_cond_3389487___redundant_placeholder15
1while_while_cond_3389487___redundant_placeholder25
1while_while_cond_3389487___redundant_placeholder3
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
lstm_439_while_cond_3391311.
*lstm_439_while_lstm_439_while_loop_counter4
0lstm_439_while_lstm_439_while_maximum_iterations
lstm_439_while_placeholder 
lstm_439_while_placeholder_1 
lstm_439_while_placeholder_2 
lstm_439_while_placeholder_30
,lstm_439_while_less_lstm_439_strided_slice_1G
Clstm_439_while_lstm_439_while_cond_3391311___redundant_placeholder0G
Clstm_439_while_lstm_439_while_cond_3391311___redundant_placeholder1G
Clstm_439_while_lstm_439_while_cond_3391311___redundant_placeholder2G
Clstm_439_while_lstm_439_while_cond_3391311___redundant_placeholder3
lstm_439_while_identity
?
lstm_439/while/LessLesslstm_439_while_placeholder,lstm_439_while_less_lstm_439_strided_slice_1*
T0*
_output_shapes
: ]
lstm_439/while/IdentityIdentitylstm_439/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_439_while_identity lstm_439/while/Identity:output:0*(
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
while_body_3389788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_146_layer_call_fn_3389922
lstm_438_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_438_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3389897o
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
_user_specified_namelstm_438_input
?C
?

lstm_438_while_body_3391173.
*lstm_438_while_lstm_438_while_loop_counter4
0lstm_438_while_lstm_438_while_maximum_iterations
lstm_438_while_placeholder 
lstm_438_while_placeholder_1 
lstm_438_while_placeholder_2 
lstm_438_while_placeholder_3-
)lstm_438_while_lstm_438_strided_slice_1_0i
elstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0:	?R
?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?M
>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
lstm_438_while_identity
lstm_438_while_identity_1
lstm_438_while_identity_2
lstm_438_while_identity_3
lstm_438_while_identity_4
lstm_438_while_identity_5+
'lstm_438_while_lstm_438_strided_slice_1g
clstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensorN
;lstm_438_while_lstm_cell_558_matmul_readvariableop_resource:	?P
=lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource:	d?K
<lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource:	???3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp?2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp?4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp?
@lstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_438/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0lstm_438_while_placeholderIlstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_438/while/lstm_cell_558/MatMulMatMul9lstm_438/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_438/while/lstm_cell_558/MatMul_1MatMullstm_438_while_placeholder_2<lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_438/while/lstm_cell_558/addAddV2-lstm_438/while/lstm_cell_558/MatMul:product:0/lstm_438/while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_438/while/lstm_cell_558/BiasAddBiasAdd$lstm_438/while/lstm_cell_558/add:z:0;lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_438/while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_438/while/lstm_cell_558/splitSplit5lstm_438/while/lstm_cell_558/split/split_dim:output:0-lstm_438/while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_438/while/lstm_cell_558/SigmoidSigmoid+lstm_438/while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_438/while/lstm_cell_558/Sigmoid_1Sigmoid+lstm_438/while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_438/while/lstm_cell_558/mulMul*lstm_438/while/lstm_cell_558/Sigmoid_1:y:0lstm_438_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_438/while/lstm_cell_558/ReluRelu+lstm_438/while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/mul_1Mul(lstm_438/while/lstm_cell_558/Sigmoid:y:0/lstm_438/while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/add_1AddV2$lstm_438/while/lstm_cell_558/mul:z:0&lstm_438/while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_438/while/lstm_cell_558/Sigmoid_2Sigmoid+lstm_438/while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_438/while/lstm_cell_558/Relu_1Relu&lstm_438/while/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/mul_2Mul*lstm_438/while/lstm_cell_558/Sigmoid_2:y:01lstm_438/while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_438/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_438_while_placeholder_1lstm_438_while_placeholder&lstm_438/while/lstm_cell_558/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_438/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_438/while/addAddV2lstm_438_while_placeholderlstm_438/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_438/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_438/while/add_1AddV2*lstm_438_while_lstm_438_while_loop_counterlstm_438/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_438/while/IdentityIdentitylstm_438/while/add_1:z:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_1Identity0lstm_438_while_lstm_438_while_maximum_iterations^lstm_438/while/NoOp*
T0*
_output_shapes
: t
lstm_438/while/Identity_2Identitylstm_438/while/add:z:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_3IdentityClstm_438/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_4Identity&lstm_438/while/lstm_cell_558/mul_2:z:0^lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_438/while/Identity_5Identity&lstm_438/while/lstm_cell_558/add_1:z:0^lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_438/while/NoOpNoOp4^lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp3^lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp5^lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_438_while_identity lstm_438/while/Identity:output:0"?
lstm_438_while_identity_1"lstm_438/while/Identity_1:output:0"?
lstm_438_while_identity_2"lstm_438/while/Identity_2:output:0"?
lstm_438_while_identity_3"lstm_438/while/Identity_3:output:0"?
lstm_438_while_identity_4"lstm_438/while/Identity_4:output:0"?
lstm_438_while_identity_5"lstm_438/while/Identity_5:output:0"T
'lstm_438_while_lstm_438_strided_slice_1)lstm_438_while_lstm_438_strided_slice_1_0"~
<lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0"?
=lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0"|
;lstm_438_while_lstm_cell_558_matmul_readvariableop_resource=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0"?
clstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensorelstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp2h
2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp2l
4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388440

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
?
*__inference_lstm_438_layer_call_fn_3391574

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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3389572s
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393389

inputs>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3393305*
condR
while_cond_3393304*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_438_layer_call_fn_3391585

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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3390418s
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
*__inference_lstm_439_layer_call_fn_3392201

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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3390253s
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
?K
?
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392344
inputs_0?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3392260*
condR
while_cond_3392259*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3390169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3392875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392875___redundant_placeholder05
1while_while_cond_3392875___redundant_placeholder15
1while_while_cond_3392875___redundant_placeholder25
1while_while_cond_3392875___redundant_placeholder3
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
*sequential_146_lstm_439_while_body_3388144L
Hsequential_146_lstm_439_while_sequential_146_lstm_439_while_loop_counterR
Nsequential_146_lstm_439_while_sequential_146_lstm_439_while_maximum_iterations-
)sequential_146_lstm_439_while_placeholder/
+sequential_146_lstm_439_while_placeholder_1/
+sequential_146_lstm_439_while_placeholder_2/
+sequential_146_lstm_439_while_placeholder_3K
Gsequential_146_lstm_439_while_sequential_146_lstm_439_strided_slice_1_0?
?sequential_146_lstm_439_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_439_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_146_lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0:	d?a
Nsequential_146_lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?\
Msequential_146_lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0:	?*
&sequential_146_lstm_439_while_identity,
(sequential_146_lstm_439_while_identity_1,
(sequential_146_lstm_439_while_identity_2,
(sequential_146_lstm_439_while_identity_3,
(sequential_146_lstm_439_while_identity_4,
(sequential_146_lstm_439_while_identity_5I
Esequential_146_lstm_439_while_sequential_146_lstm_439_strided_slice_1?
?sequential_146_lstm_439_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_439_tensorarrayunstack_tensorlistfromtensor]
Jsequential_146_lstm_439_while_lstm_cell_559_matmul_readvariableop_resource:	d?_
Lsequential_146_lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource:	2?Z
Ksequential_146_lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource:	???Bsequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp?Asequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp?Csequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp?
Osequential_146/lstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_146/lstm_439/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_146_lstm_439_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_439_tensorarrayunstack_tensorlistfromtensor_0)sequential_146_lstm_439_while_placeholderXsequential_146/lstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOpLsequential_146_lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_146/lstm_439/while/lstm_cell_559/MatMulMatMulHsequential_146/lstm_439/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOpNsequential_146_lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_146/lstm_439/while/lstm_cell_559/MatMul_1MatMul+sequential_146_lstm_439_while_placeholder_2Ksequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_146/lstm_439/while/lstm_cell_559/addAddV2<sequential_146/lstm_439/while/lstm_cell_559/MatMul:product:0>sequential_146/lstm_439/while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOpMsequential_146_lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_146/lstm_439/while/lstm_cell_559/BiasAddBiasAdd3sequential_146/lstm_439/while/lstm_cell_559/add:z:0Jsequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_146/lstm_439/while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_146/lstm_439/while/lstm_cell_559/splitSplitDsequential_146/lstm_439/while/lstm_cell_559/split/split_dim:output:0<sequential_146/lstm_439/while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_146/lstm_439/while/lstm_cell_559/SigmoidSigmoid:sequential_146/lstm_439/while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_146/lstm_439/while/lstm_cell_559/Sigmoid_1Sigmoid:sequential_146/lstm_439/while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_146/lstm_439/while/lstm_cell_559/mulMul9sequential_146/lstm_439/while/lstm_cell_559/Sigmoid_1:y:0+sequential_146_lstm_439_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_146/lstm_439/while/lstm_cell_559/ReluRelu:sequential_146/lstm_439/while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_146/lstm_439/while/lstm_cell_559/mul_1Mul7sequential_146/lstm_439/while/lstm_cell_559/Sigmoid:y:0>sequential_146/lstm_439/while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_146/lstm_439/while/lstm_cell_559/add_1AddV23sequential_146/lstm_439/while/lstm_cell_559/mul:z:05sequential_146/lstm_439/while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_146/lstm_439/while/lstm_cell_559/Sigmoid_2Sigmoid:sequential_146/lstm_439/while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_146/lstm_439/while/lstm_cell_559/Relu_1Relu5sequential_146/lstm_439/while/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_146/lstm_439/while/lstm_cell_559/mul_2Mul9sequential_146/lstm_439/while/lstm_cell_559/Sigmoid_2:y:0@sequential_146/lstm_439/while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_146/lstm_439/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_146_lstm_439_while_placeholder_1)sequential_146_lstm_439_while_placeholder5sequential_146/lstm_439/while/lstm_cell_559/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_146/lstm_439/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_146/lstm_439/while/addAddV2)sequential_146_lstm_439_while_placeholder,sequential_146/lstm_439/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_146/lstm_439/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_146/lstm_439/while/add_1AddV2Hsequential_146_lstm_439_while_sequential_146_lstm_439_while_loop_counter.sequential_146/lstm_439/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_146/lstm_439/while/IdentityIdentity'sequential_146/lstm_439/while/add_1:z:0#^sequential_146/lstm_439/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_439/while/Identity_1IdentityNsequential_146_lstm_439_while_sequential_146_lstm_439_while_maximum_iterations#^sequential_146/lstm_439/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_439/while/Identity_2Identity%sequential_146/lstm_439/while/add:z:0#^sequential_146/lstm_439/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_439/while/Identity_3IdentityRsequential_146/lstm_439/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_146/lstm_439/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_439/while/Identity_4Identity5sequential_146/lstm_439/while/lstm_cell_559/mul_2:z:0#^sequential_146/lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_146/lstm_439/while/Identity_5Identity5sequential_146/lstm_439/while/lstm_cell_559/add_1:z:0#^sequential_146/lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_146/lstm_439/while/NoOpNoOpC^sequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOpB^sequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOpD^sequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_146_lstm_439_while_identity/sequential_146/lstm_439/while/Identity:output:0"]
(sequential_146_lstm_439_while_identity_11sequential_146/lstm_439/while/Identity_1:output:0"]
(sequential_146_lstm_439_while_identity_21sequential_146/lstm_439/while/Identity_2:output:0"]
(sequential_146_lstm_439_while_identity_31sequential_146/lstm_439/while/Identity_3:output:0"]
(sequential_146_lstm_439_while_identity_41sequential_146/lstm_439/while/Identity_4:output:0"]
(sequential_146_lstm_439_while_identity_51sequential_146/lstm_439/while/Identity_5:output:0"?
Ksequential_146_lstm_439_while_lstm_cell_559_biasadd_readvariableop_resourceMsequential_146_lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0"?
Lsequential_146_lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resourceNsequential_146_lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0"?
Jsequential_146_lstm_439_while_lstm_cell_559_matmul_readvariableop_resourceLsequential_146_lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0"?
Esequential_146_lstm_439_while_sequential_146_lstm_439_strided_slice_1Gsequential_146_lstm_439_while_sequential_146_lstm_439_strided_slice_1_0"?
?sequential_146_lstm_439_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_439_tensorarrayunstack_tensorlistfromtensor?sequential_146_lstm_439_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_439_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOpBsequential_146/lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp2?
Asequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOpAsequential_146/lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp2?
Csequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOpCsequential_146/lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392014

inputs?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3391930*
condR
while_cond_3391929*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389722

inputs?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3389638*
condR
while_cond_3389637*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_438_layer_call_and_return_conditional_losses_3388714

inputs(
lstm_cell_558_3388632:	?(
lstm_cell_558_3388634:	d?$
lstm_cell_558_3388636:	?
identity??%lstm_cell_558/StatefulPartitionedCall?while;
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
%lstm_cell_558/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_558_3388632lstm_cell_558_3388634lstm_cell_558_3388636*
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388586n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_558_3388632lstm_cell_558_3388634lstm_cell_558_3388636*
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
while_body_3388645*
condR
while_cond_3388644*K
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
NoOpNoOp&^lstm_cell_558/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_558/StatefulPartitionedCall%lstm_cell_558/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3391787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_438_while_body_3390746.
*lstm_438_while_lstm_438_while_loop_counter4
0lstm_438_while_lstm_438_while_maximum_iterations
lstm_438_while_placeholder 
lstm_438_while_placeholder_1 
lstm_438_while_placeholder_2 
lstm_438_while_placeholder_3-
)lstm_438_while_lstm_438_strided_slice_1_0i
elstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0:	?R
?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?M
>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
lstm_438_while_identity
lstm_438_while_identity_1
lstm_438_while_identity_2
lstm_438_while_identity_3
lstm_438_while_identity_4
lstm_438_while_identity_5+
'lstm_438_while_lstm_438_strided_slice_1g
clstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensorN
;lstm_438_while_lstm_cell_558_matmul_readvariableop_resource:	?P
=lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource:	d?K
<lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource:	???3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp?2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp?4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp?
@lstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_438/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0lstm_438_while_placeholderIlstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_438/while/lstm_cell_558/MatMulMatMul9lstm_438/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_438/while/lstm_cell_558/MatMul_1MatMullstm_438_while_placeholder_2<lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_438/while/lstm_cell_558/addAddV2-lstm_438/while/lstm_cell_558/MatMul:product:0/lstm_438/while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_438/while/lstm_cell_558/BiasAddBiasAdd$lstm_438/while/lstm_cell_558/add:z:0;lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_438/while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_438/while/lstm_cell_558/splitSplit5lstm_438/while/lstm_cell_558/split/split_dim:output:0-lstm_438/while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_438/while/lstm_cell_558/SigmoidSigmoid+lstm_438/while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_438/while/lstm_cell_558/Sigmoid_1Sigmoid+lstm_438/while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_438/while/lstm_cell_558/mulMul*lstm_438/while/lstm_cell_558/Sigmoid_1:y:0lstm_438_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_438/while/lstm_cell_558/ReluRelu+lstm_438/while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/mul_1Mul(lstm_438/while/lstm_cell_558/Sigmoid:y:0/lstm_438/while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/add_1AddV2$lstm_438/while/lstm_cell_558/mul:z:0&lstm_438/while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_438/while/lstm_cell_558/Sigmoid_2Sigmoid+lstm_438/while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_438/while/lstm_cell_558/Relu_1Relu&lstm_438/while/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_438/while/lstm_cell_558/mul_2Mul*lstm_438/while/lstm_cell_558/Sigmoid_2:y:01lstm_438/while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_438/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_438_while_placeholder_1lstm_438_while_placeholder&lstm_438/while/lstm_cell_558/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_438/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_438/while/addAddV2lstm_438_while_placeholderlstm_438/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_438/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_438/while/add_1AddV2*lstm_438_while_lstm_438_while_loop_counterlstm_438/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_438/while/IdentityIdentitylstm_438/while/add_1:z:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_1Identity0lstm_438_while_lstm_438_while_maximum_iterations^lstm_438/while/NoOp*
T0*
_output_shapes
: t
lstm_438/while/Identity_2Identitylstm_438/while/add:z:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_3IdentityClstm_438/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_438/while/NoOp*
T0*
_output_shapes
: ?
lstm_438/while/Identity_4Identity&lstm_438/while/lstm_cell_558/mul_2:z:0^lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_438/while/Identity_5Identity&lstm_438/while/lstm_cell_558/add_1:z:0^lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_438/while/NoOpNoOp4^lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp3^lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp5^lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_438_while_identity lstm_438/while/Identity:output:0"?
lstm_438_while_identity_1"lstm_438/while/Identity_1:output:0"?
lstm_438_while_identity_2"lstm_438/while/Identity_2:output:0"?
lstm_438_while_identity_3"lstm_438/while/Identity_3:output:0"?
lstm_438_while_identity_4"lstm_438/while/Identity_4:output:0"?
lstm_438_while_identity_5"lstm_438/while/Identity_5:output:0"T
'lstm_438_while_lstm_438_strided_slice_1)lstm_438_while_lstm_438_strided_slice_1_0"~
<lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource>lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0"?
=lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource?lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0"|
;lstm_438_while_lstm_cell_558_matmul_readvariableop_resource=lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0"?
clstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensorelstm_438_while_tensorarrayv2read_tensorlistgetitem_lstm_438_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp3lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp2h
2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp2lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp2l
4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp4lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393670

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

lstm_440_while_body_3391451.
*lstm_440_while_lstm_440_while_loop_counter4
0lstm_440_while_lstm_440_while_maximum_iterations
lstm_440_while_placeholder 
lstm_440_while_placeholder_1 
lstm_440_while_placeholder_2 
lstm_440_while_placeholder_3-
)lstm_440_while_lstm_440_strided_slice_1_0i
elstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0:2(Q
?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(L
>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0:(
lstm_440_while_identity
lstm_440_while_identity_1
lstm_440_while_identity_2
lstm_440_while_identity_3
lstm_440_while_identity_4
lstm_440_while_identity_5+
'lstm_440_while_lstm_440_strided_slice_1g
clstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensorM
;lstm_440_while_lstm_cell_560_matmul_readvariableop_resource:2(O
=lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource:
(J
<lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource:(??3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp?2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp?4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp?
@lstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_440/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0lstm_440_while_placeholderIlstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_440/while/lstm_cell_560/MatMulMatMul9lstm_440/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_440/while/lstm_cell_560/MatMul_1MatMullstm_440_while_placeholder_2<lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_440/while/lstm_cell_560/addAddV2-lstm_440/while/lstm_cell_560/MatMul:product:0/lstm_440/while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_440/while/lstm_cell_560/BiasAddBiasAdd$lstm_440/while/lstm_cell_560/add:z:0;lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_440/while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_440/while/lstm_cell_560/splitSplit5lstm_440/while/lstm_cell_560/split/split_dim:output:0-lstm_440/while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_440/while/lstm_cell_560/SigmoidSigmoid+lstm_440/while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_440/while/lstm_cell_560/Sigmoid_1Sigmoid+lstm_440/while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_440/while/lstm_cell_560/mulMul*lstm_440/while/lstm_cell_560/Sigmoid_1:y:0lstm_440_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_440/while/lstm_cell_560/ReluRelu+lstm_440/while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/mul_1Mul(lstm_440/while/lstm_cell_560/Sigmoid:y:0/lstm_440/while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/add_1AddV2$lstm_440/while/lstm_cell_560/mul:z:0&lstm_440/while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_440/while/lstm_cell_560/Sigmoid_2Sigmoid+lstm_440/while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_440/while/lstm_cell_560/Relu_1Relu&lstm_440/while/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/mul_2Mul*lstm_440/while/lstm_cell_560/Sigmoid_2:y:01lstm_440/while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_440/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_440_while_placeholder_1lstm_440_while_placeholder&lstm_440/while/lstm_cell_560/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_440/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_440/while/addAddV2lstm_440_while_placeholderlstm_440/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_440/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_440/while/add_1AddV2*lstm_440_while_lstm_440_while_loop_counterlstm_440/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_440/while/IdentityIdentitylstm_440/while/add_1:z:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_1Identity0lstm_440_while_lstm_440_while_maximum_iterations^lstm_440/while/NoOp*
T0*
_output_shapes
: t
lstm_440/while/Identity_2Identitylstm_440/while/add:z:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_3IdentityClstm_440/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_4Identity&lstm_440/while/lstm_cell_560/mul_2:z:0^lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_440/while/Identity_5Identity&lstm_440/while/lstm_cell_560/add_1:z:0^lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_440/while/NoOpNoOp4^lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp3^lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp5^lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_440_while_identity lstm_440/while/Identity:output:0"?
lstm_440_while_identity_1"lstm_440/while/Identity_1:output:0"?
lstm_440_while_identity_2"lstm_440/while/Identity_2:output:0"?
lstm_440_while_identity_3"lstm_440/while/Identity_3:output:0"?
lstm_440_while_identity_4"lstm_440/while/Identity_4:output:0"?
lstm_440_while_identity_5"lstm_440/while/Identity_5:output:0"T
'lstm_440_while_lstm_440_strided_slice_1)lstm_440_while_lstm_440_strided_slice_1_0"~
<lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0"?
=lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0"|
;lstm_440_while_lstm_cell_560_matmul_readvariableop_resource=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0"?
clstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensorelstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp2h
2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp2l
4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3388995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_559_3389019_0:	d?0
while_lstm_cell_559_3389021_0:	2?,
while_lstm_cell_559_3389023_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_559_3389019:	d?.
while_lstm_cell_559_3389021:	2?*
while_lstm_cell_559_3389023:	???+while/lstm_cell_559/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_559/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_559_3389019_0while_lstm_cell_559_3389021_0while_lstm_cell_559_3389023_0*
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388936?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_559/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_559/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_559/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_559/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_559_3389019while_lstm_cell_559_3389019_0"<
while_lstm_cell_559_3389021while_lstm_cell_559_3389021_0"<
while_lstm_cell_559_3389023while_lstm_cell_559_3389023_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_559/StatefulPartitionedCall+while/lstm_cell_559/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_146_lstm_440_while_body_3388283L
Hsequential_146_lstm_440_while_sequential_146_lstm_440_while_loop_counterR
Nsequential_146_lstm_440_while_sequential_146_lstm_440_while_maximum_iterations-
)sequential_146_lstm_440_while_placeholder/
+sequential_146_lstm_440_while_placeholder_1/
+sequential_146_lstm_440_while_placeholder_2/
+sequential_146_lstm_440_while_placeholder_3K
Gsequential_146_lstm_440_while_sequential_146_lstm_440_strided_slice_1_0?
?sequential_146_lstm_440_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_440_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_146_lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0:2(`
Nsequential_146_lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0:
([
Msequential_146_lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0:(*
&sequential_146_lstm_440_while_identity,
(sequential_146_lstm_440_while_identity_1,
(sequential_146_lstm_440_while_identity_2,
(sequential_146_lstm_440_while_identity_3,
(sequential_146_lstm_440_while_identity_4,
(sequential_146_lstm_440_while_identity_5I
Esequential_146_lstm_440_while_sequential_146_lstm_440_strided_slice_1?
?sequential_146_lstm_440_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_440_tensorarrayunstack_tensorlistfromtensor\
Jsequential_146_lstm_440_while_lstm_cell_560_matmul_readvariableop_resource:2(^
Lsequential_146_lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource:
(Y
Ksequential_146_lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource:(??Bsequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp?Asequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp?Csequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp?
Osequential_146/lstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_146/lstm_440/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_146_lstm_440_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_440_tensorarrayunstack_tensorlistfromtensor_0)sequential_146_lstm_440_while_placeholderXsequential_146/lstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOpLsequential_146_lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_146/lstm_440/while/lstm_cell_560/MatMulMatMulHsequential_146/lstm_440/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOpNsequential_146_lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_146/lstm_440/while/lstm_cell_560/MatMul_1MatMul+sequential_146_lstm_440_while_placeholder_2Ksequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_146/lstm_440/while/lstm_cell_560/addAddV2<sequential_146/lstm_440/while/lstm_cell_560/MatMul:product:0>sequential_146/lstm_440/while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOpMsequential_146_lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_146/lstm_440/while/lstm_cell_560/BiasAddBiasAdd3sequential_146/lstm_440/while/lstm_cell_560/add:z:0Jsequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_146/lstm_440/while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_146/lstm_440/while/lstm_cell_560/splitSplitDsequential_146/lstm_440/while/lstm_cell_560/split/split_dim:output:0<sequential_146/lstm_440/while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_146/lstm_440/while/lstm_cell_560/SigmoidSigmoid:sequential_146/lstm_440/while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_146/lstm_440/while/lstm_cell_560/Sigmoid_1Sigmoid:sequential_146/lstm_440/while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_146/lstm_440/while/lstm_cell_560/mulMul9sequential_146/lstm_440/while/lstm_cell_560/Sigmoid_1:y:0+sequential_146_lstm_440_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_146/lstm_440/while/lstm_cell_560/ReluRelu:sequential_146/lstm_440/while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_146/lstm_440/while/lstm_cell_560/mul_1Mul7sequential_146/lstm_440/while/lstm_cell_560/Sigmoid:y:0>sequential_146/lstm_440/while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_146/lstm_440/while/lstm_cell_560/add_1AddV23sequential_146/lstm_440/while/lstm_cell_560/mul:z:05sequential_146/lstm_440/while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_146/lstm_440/while/lstm_cell_560/Sigmoid_2Sigmoid:sequential_146/lstm_440/while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_146/lstm_440/while/lstm_cell_560/Relu_1Relu5sequential_146/lstm_440/while/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_146/lstm_440/while/lstm_cell_560/mul_2Mul9sequential_146/lstm_440/while/lstm_cell_560/Sigmoid_2:y:0@sequential_146/lstm_440/while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_146/lstm_440/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_146_lstm_440_while_placeholder_1)sequential_146_lstm_440_while_placeholder5sequential_146/lstm_440/while/lstm_cell_560/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_146/lstm_440/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_146/lstm_440/while/addAddV2)sequential_146_lstm_440_while_placeholder,sequential_146/lstm_440/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_146/lstm_440/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_146/lstm_440/while/add_1AddV2Hsequential_146_lstm_440_while_sequential_146_lstm_440_while_loop_counter.sequential_146/lstm_440/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_146/lstm_440/while/IdentityIdentity'sequential_146/lstm_440/while/add_1:z:0#^sequential_146/lstm_440/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_440/while/Identity_1IdentityNsequential_146_lstm_440_while_sequential_146_lstm_440_while_maximum_iterations#^sequential_146/lstm_440/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_440/while/Identity_2Identity%sequential_146/lstm_440/while/add:z:0#^sequential_146/lstm_440/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_440/while/Identity_3IdentityRsequential_146/lstm_440/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_146/lstm_440/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_440/while/Identity_4Identity5sequential_146/lstm_440/while/lstm_cell_560/mul_2:z:0#^sequential_146/lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_146/lstm_440/while/Identity_5Identity5sequential_146/lstm_440/while/lstm_cell_560/add_1:z:0#^sequential_146/lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_146/lstm_440/while/NoOpNoOpC^sequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOpB^sequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOpD^sequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_146_lstm_440_while_identity/sequential_146/lstm_440/while/Identity:output:0"]
(sequential_146_lstm_440_while_identity_11sequential_146/lstm_440/while/Identity_1:output:0"]
(sequential_146_lstm_440_while_identity_21sequential_146/lstm_440/while/Identity_2:output:0"]
(sequential_146_lstm_440_while_identity_31sequential_146/lstm_440/while/Identity_3:output:0"]
(sequential_146_lstm_440_while_identity_41sequential_146/lstm_440/while/Identity_4:output:0"]
(sequential_146_lstm_440_while_identity_51sequential_146/lstm_440/while/Identity_5:output:0"?
Ksequential_146_lstm_440_while_lstm_cell_560_biasadd_readvariableop_resourceMsequential_146_lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0"?
Lsequential_146_lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resourceNsequential_146_lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0"?
Jsequential_146_lstm_440_while_lstm_cell_560_matmul_readvariableop_resourceLsequential_146_lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0"?
Esequential_146_lstm_440_while_sequential_146_lstm_440_strided_slice_1Gsequential_146_lstm_440_while_sequential_146_lstm_440_strided_slice_1_0"?
?sequential_146_lstm_440_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_440_tensorarrayunstack_tensorlistfromtensor?sequential_146_lstm_440_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_440_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOpBsequential_146/lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp2?
Asequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOpAsequential_146/lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp2?
Csequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOpCsequential_146/lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393702

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
?K
?
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392487
inputs_0?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3392403*
condR
while_cond_3392402*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_560_layer_call_fn_3393621

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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389140o
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
?
?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390598
lstm_438_input#
lstm_438_3390571:	?#
lstm_438_3390573:	d?
lstm_438_3390575:	?#
lstm_439_3390578:	d?#
lstm_439_3390580:	2?
lstm_439_3390582:	?"
lstm_440_3390585:2("
lstm_440_3390587:
(
lstm_440_3390589:(#
dense_146_3390592:

dense_146_3390594:
identity??!dense_146/StatefulPartitionedCall? lstm_438/StatefulPartitionedCall? lstm_439/StatefulPartitionedCall? lstm_440/StatefulPartitionedCall?
 lstm_438/StatefulPartitionedCallStatefulPartitionedCalllstm_438_inputlstm_438_3390571lstm_438_3390573lstm_438_3390575*
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3390418?
 lstm_439/StatefulPartitionedCallStatefulPartitionedCall)lstm_438/StatefulPartitionedCall:output:0lstm_439_3390578lstm_439_3390580lstm_439_3390582*
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3390253?
 lstm_440/StatefulPartitionedCallStatefulPartitionedCall)lstm_439/StatefulPartitionedCall:output:0lstm_440_3390585lstm_440_3390587lstm_440_3390589*
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3390088?
!dense_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_440/StatefulPartitionedCall:output:0dense_146_3390592dense_146_3390594*
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890y
IdentityIdentity*dense_146/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_146/StatefulPartitionedCall!^lstm_438/StatefulPartitionedCall!^lstm_439/StatefulPartitionedCall!^lstm_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2D
 lstm_438/StatefulPartitionedCall lstm_438/StatefulPartitionedCall2D
 lstm_439/StatefulPartitionedCall lstm_439/StatefulPartitionedCall2D
 lstm_440/StatefulPartitionedCall lstm_440/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_438_input
?
?
while_cond_3392688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392688___redundant_placeholder05
1while_while_cond_3392688___redundant_placeholder15
1while_while_cond_3392688___redundant_placeholder25
1while_while_cond_3392688___redundant_placeholder3
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3392960
inputs_0>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3392876*
condR
while_cond_3392875*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_3393975
file_prefix3
!assignvariableop_dense_146_kernel:
/
!assignvariableop_1_dense_146_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_438_lstm_cell_438_kernel:	?M
:assignvariableop_8_lstm_438_lstm_cell_438_recurrent_kernel:	d?=
.assignvariableop_9_lstm_438_lstm_cell_438_bias:	?D
1assignvariableop_10_lstm_439_lstm_cell_439_kernel:	d?N
;assignvariableop_11_lstm_439_lstm_cell_439_recurrent_kernel:	2?>
/assignvariableop_12_lstm_439_lstm_cell_439_bias:	?C
1assignvariableop_13_lstm_440_lstm_cell_440_kernel:2(M
;assignvariableop_14_lstm_440_lstm_cell_440_recurrent_kernel:
(=
/assignvariableop_15_lstm_440_lstm_cell_440_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_146_kernel_m:
7
)assignvariableop_19_adam_dense_146_bias_m:K
8assignvariableop_20_adam_lstm_438_lstm_cell_438_kernel_m:	?U
Bassignvariableop_21_adam_lstm_438_lstm_cell_438_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_438_lstm_cell_438_bias_m:	?K
8assignvariableop_23_adam_lstm_439_lstm_cell_439_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_439_lstm_cell_439_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_439_lstm_cell_439_bias_m:	?J
8assignvariableop_26_adam_lstm_440_lstm_cell_440_kernel_m:2(T
Bassignvariableop_27_adam_lstm_440_lstm_cell_440_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_440_lstm_cell_440_bias_m:(=
+assignvariableop_29_adam_dense_146_kernel_v:
7
)assignvariableop_30_adam_dense_146_bias_v:K
8assignvariableop_31_adam_lstm_438_lstm_cell_438_kernel_v:	?U
Bassignvariableop_32_adam_lstm_438_lstm_cell_438_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_438_lstm_cell_438_bias_v:	?K
8assignvariableop_34_adam_lstm_439_lstm_cell_439_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_439_lstm_cell_439_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_439_lstm_cell_439_bias_v:	?J
8assignvariableop_37_adam_lstm_440_lstm_cell_440_kernel_v:2(T
Bassignvariableop_38_adam_lstm_440_lstm_cell_440_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_440_lstm_cell_440_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_146_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_146_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_438_lstm_cell_438_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_438_lstm_cell_438_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_438_lstm_cell_438_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_439_lstm_cell_439_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_439_lstm_cell_439_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_439_lstm_cell_439_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_440_lstm_cell_440_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_440_lstm_cell_440_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_440_lstm_cell_440_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_146_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_146_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_438_lstm_cell_438_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_438_lstm_cell_438_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_438_lstm_cell_438_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_439_lstm_cell_439_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_439_lstm_cell_439_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_439_lstm_cell_439_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_440_lstm_cell_440_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_440_lstm_cell_440_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_440_lstm_cell_440_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_146_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_146_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_438_lstm_cell_438_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_438_lstm_cell_438_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_438_lstm_cell_438_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_439_lstm_cell_439_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_439_lstm_cell_439_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_439_lstm_cell_439_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_440_lstm_cell_440_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_440_lstm_cell_440_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_440_lstm_cell_440_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_lstm_438_layer_call_and_return_conditional_losses_3388523

inputs(
lstm_cell_558_3388441:	?(
lstm_cell_558_3388443:	d?$
lstm_cell_558_3388445:	?
identity??%lstm_cell_558/StatefulPartitionedCall?while;
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
%lstm_cell_558/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_558_3388441lstm_cell_558_3388443lstm_cell_558_3388445*
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388440n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_558_3388441lstm_cell_558_3388443lstm_cell_558_3388445*
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
while_body_3388454*
condR
while_cond_3388453*K
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
NoOpNoOp&^lstm_cell_558/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_558/StatefulPartitionedCall%lstm_cell_558/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391541

inputsH
5lstm_438_lstm_cell_558_matmul_readvariableop_resource:	?J
7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource:	d?E
6lstm_438_lstm_cell_558_biasadd_readvariableop_resource:	?H
5lstm_439_lstm_cell_559_matmul_readvariableop_resource:	d?J
7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource:	2?E
6lstm_439_lstm_cell_559_biasadd_readvariableop_resource:	?G
5lstm_440_lstm_cell_560_matmul_readvariableop_resource:2(I
7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource:
(D
6lstm_440_lstm_cell_560_biasadd_readvariableop_resource:(:
(dense_146_matmul_readvariableop_resource:
7
)dense_146_biasadd_readvariableop_resource:
identity?? dense_146/BiasAdd/ReadVariableOp?dense_146/MatMul/ReadVariableOp?-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp?,lstm_438/lstm_cell_558/MatMul/ReadVariableOp?.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp?lstm_438/while?-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp?,lstm_439/lstm_cell_559/MatMul/ReadVariableOp?.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp?lstm_439/while?-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp?,lstm_440/lstm_cell_560/MatMul/ReadVariableOp?.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp?lstm_440/whileD
lstm_438/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_438/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_438/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_438/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_sliceStridedSlicelstm_438/Shape:output:0%lstm_438/strided_slice/stack:output:0'lstm_438/strided_slice/stack_1:output:0'lstm_438/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_438/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_438/zeros/packedPacklstm_438/strided_slice:output:0 lstm_438/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_438/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_438/zerosFilllstm_438/zeros/packed:output:0lstm_438/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_438/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_438/zeros_1/packedPacklstm_438/strided_slice:output:0"lstm_438/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_438/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_438/zeros_1Fill lstm_438/zeros_1/packed:output:0lstm_438/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_438/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_438/transpose	Transposeinputs lstm_438/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_438/Shape_1Shapelstm_438/transpose:y:0*
T0*
_output_shapes
:h
lstm_438/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_438/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_1StridedSlicelstm_438/Shape_1:output:0'lstm_438/strided_slice_1/stack:output:0)lstm_438/strided_slice_1/stack_1:output:0)lstm_438/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_438/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_438/TensorArrayV2TensorListReserve-lstm_438/TensorArrayV2/element_shape:output:0!lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_438/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_438/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_438/transpose:y:0Glstm_438/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_438/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_438/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_2StridedSlicelstm_438/transpose:y:0'lstm_438/strided_slice_2/stack:output:0)lstm_438/strided_slice_2/stack_1:output:0)lstm_438/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_438/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp5lstm_438_lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_438/lstm_cell_558/MatMulMatMul!lstm_438/strided_slice_2:output:04lstm_438/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_438/lstm_cell_558/MatMul_1MatMullstm_438/zeros:output:06lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_438/lstm_cell_558/addAddV2'lstm_438/lstm_cell_558/MatMul:product:0)lstm_438/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp6lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_438/lstm_cell_558/BiasAddBiasAddlstm_438/lstm_cell_558/add:z:05lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_438/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_438/lstm_cell_558/splitSplit/lstm_438/lstm_cell_558/split/split_dim:output:0'lstm_438/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_438/lstm_cell_558/SigmoidSigmoid%lstm_438/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_438/lstm_cell_558/Sigmoid_1Sigmoid%lstm_438/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mulMul$lstm_438/lstm_cell_558/Sigmoid_1:y:0lstm_438/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_438/lstm_cell_558/ReluRelu%lstm_438/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mul_1Mul"lstm_438/lstm_cell_558/Sigmoid:y:0)lstm_438/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/add_1AddV2lstm_438/lstm_cell_558/mul:z:0 lstm_438/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_438/lstm_cell_558/Sigmoid_2Sigmoid%lstm_438/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_438/lstm_cell_558/Relu_1Relu lstm_438/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mul_2Mul$lstm_438/lstm_cell_558/Sigmoid_2:y:0+lstm_438/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_438/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_438/TensorArrayV2_1TensorListReserve/lstm_438/TensorArrayV2_1/element_shape:output:0!lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_438/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_438/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_438/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_438/whileWhile$lstm_438/while/loop_counter:output:0*lstm_438/while/maximum_iterations:output:0lstm_438/time:output:0!lstm_438/TensorArrayV2_1:handle:0lstm_438/zeros:output:0lstm_438/zeros_1:output:0!lstm_438/strided_slice_1:output:0@lstm_438/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_438_lstm_cell_558_matmul_readvariableop_resource7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource6lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
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
lstm_438_while_body_3391173*'
condR
lstm_438_while_cond_3391172*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_438/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_438/TensorArrayV2Stack/TensorListStackTensorListStacklstm_438/while:output:3Blstm_438/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_438/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_438/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_3StridedSlice4lstm_438/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_438/strided_slice_3/stack:output:0)lstm_438/strided_slice_3/stack_1:output:0)lstm_438/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_438/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_438/transpose_1	Transpose4lstm_438/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_438/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_438/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_439/ShapeShapelstm_438/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_439/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_439/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_439/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_sliceStridedSlicelstm_439/Shape:output:0%lstm_439/strided_slice/stack:output:0'lstm_439/strided_slice/stack_1:output:0'lstm_439/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_439/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_439/zeros/packedPacklstm_439/strided_slice:output:0 lstm_439/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_439/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_439/zerosFilllstm_439/zeros/packed:output:0lstm_439/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_439/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_439/zeros_1/packedPacklstm_439/strided_slice:output:0"lstm_439/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_439/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_439/zeros_1Fill lstm_439/zeros_1/packed:output:0lstm_439/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_439/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_439/transpose	Transposelstm_438/transpose_1:y:0 lstm_439/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_439/Shape_1Shapelstm_439/transpose:y:0*
T0*
_output_shapes
:h
lstm_439/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_439/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_1StridedSlicelstm_439/Shape_1:output:0'lstm_439/strided_slice_1/stack:output:0)lstm_439/strided_slice_1/stack_1:output:0)lstm_439/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_439/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_439/TensorArrayV2TensorListReserve-lstm_439/TensorArrayV2/element_shape:output:0!lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_439/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_439/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_439/transpose:y:0Glstm_439/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_439/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_439/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_2StridedSlicelstm_439/transpose:y:0'lstm_439/strided_slice_2/stack:output:0)lstm_439/strided_slice_2/stack_1:output:0)lstm_439/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_439/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp5lstm_439_lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_439/lstm_cell_559/MatMulMatMul!lstm_439/strided_slice_2:output:04lstm_439/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_439/lstm_cell_559/MatMul_1MatMullstm_439/zeros:output:06lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_439/lstm_cell_559/addAddV2'lstm_439/lstm_cell_559/MatMul:product:0)lstm_439/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp6lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_439/lstm_cell_559/BiasAddBiasAddlstm_439/lstm_cell_559/add:z:05lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_439/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_439/lstm_cell_559/splitSplit/lstm_439/lstm_cell_559/split/split_dim:output:0'lstm_439/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_439/lstm_cell_559/SigmoidSigmoid%lstm_439/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_439/lstm_cell_559/Sigmoid_1Sigmoid%lstm_439/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mulMul$lstm_439/lstm_cell_559/Sigmoid_1:y:0lstm_439/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_439/lstm_cell_559/ReluRelu%lstm_439/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mul_1Mul"lstm_439/lstm_cell_559/Sigmoid:y:0)lstm_439/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/add_1AddV2lstm_439/lstm_cell_559/mul:z:0 lstm_439/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_439/lstm_cell_559/Sigmoid_2Sigmoid%lstm_439/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_439/lstm_cell_559/Relu_1Relu lstm_439/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mul_2Mul$lstm_439/lstm_cell_559/Sigmoid_2:y:0+lstm_439/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_439/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_439/TensorArrayV2_1TensorListReserve/lstm_439/TensorArrayV2_1/element_shape:output:0!lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_439/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_439/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_439/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_439/whileWhile$lstm_439/while/loop_counter:output:0*lstm_439/while/maximum_iterations:output:0lstm_439/time:output:0!lstm_439/TensorArrayV2_1:handle:0lstm_439/zeros:output:0lstm_439/zeros_1:output:0!lstm_439/strided_slice_1:output:0@lstm_439/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_439_lstm_cell_559_matmul_readvariableop_resource7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource6lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
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
lstm_439_while_body_3391312*'
condR
lstm_439_while_cond_3391311*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_439/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_439/TensorArrayV2Stack/TensorListStackTensorListStacklstm_439/while:output:3Blstm_439/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_439/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_439/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_3StridedSlice4lstm_439/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_439/strided_slice_3/stack:output:0)lstm_439/strided_slice_3/stack_1:output:0)lstm_439/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_439/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_439/transpose_1	Transpose4lstm_439/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_439/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_439/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_440/ShapeShapelstm_439/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_440/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_440/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_440/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_sliceStridedSlicelstm_440/Shape:output:0%lstm_440/strided_slice/stack:output:0'lstm_440/strided_slice/stack_1:output:0'lstm_440/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_440/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_440/zeros/packedPacklstm_440/strided_slice:output:0 lstm_440/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_440/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_440/zerosFilllstm_440/zeros/packed:output:0lstm_440/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_440/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_440/zeros_1/packedPacklstm_440/strided_slice:output:0"lstm_440/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_440/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_440/zeros_1Fill lstm_440/zeros_1/packed:output:0lstm_440/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_440/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_440/transpose	Transposelstm_439/transpose_1:y:0 lstm_440/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_440/Shape_1Shapelstm_440/transpose:y:0*
T0*
_output_shapes
:h
lstm_440/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_440/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_1StridedSlicelstm_440/Shape_1:output:0'lstm_440/strided_slice_1/stack:output:0)lstm_440/strided_slice_1/stack_1:output:0)lstm_440/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_440/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_440/TensorArrayV2TensorListReserve-lstm_440/TensorArrayV2/element_shape:output:0!lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_440/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_440/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_440/transpose:y:0Glstm_440/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_440/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_440/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_2StridedSlicelstm_440/transpose:y:0'lstm_440/strided_slice_2/stack:output:0)lstm_440/strided_slice_2/stack_1:output:0)lstm_440/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_440/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp5lstm_440_lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_440/lstm_cell_560/MatMulMatMul!lstm_440/strided_slice_2:output:04lstm_440/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_440/lstm_cell_560/MatMul_1MatMullstm_440/zeros:output:06lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_440/lstm_cell_560/addAddV2'lstm_440/lstm_cell_560/MatMul:product:0)lstm_440/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp6lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_440/lstm_cell_560/BiasAddBiasAddlstm_440/lstm_cell_560/add:z:05lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_440/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_440/lstm_cell_560/splitSplit/lstm_440/lstm_cell_560/split/split_dim:output:0'lstm_440/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_440/lstm_cell_560/SigmoidSigmoid%lstm_440/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_440/lstm_cell_560/Sigmoid_1Sigmoid%lstm_440/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mulMul$lstm_440/lstm_cell_560/Sigmoid_1:y:0lstm_440/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_440/lstm_cell_560/ReluRelu%lstm_440/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mul_1Mul"lstm_440/lstm_cell_560/Sigmoid:y:0)lstm_440/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/add_1AddV2lstm_440/lstm_cell_560/mul:z:0 lstm_440/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_440/lstm_cell_560/Sigmoid_2Sigmoid%lstm_440/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_440/lstm_cell_560/Relu_1Relu lstm_440/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mul_2Mul$lstm_440/lstm_cell_560/Sigmoid_2:y:0+lstm_440/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_440/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_440/TensorArrayV2_1TensorListReserve/lstm_440/TensorArrayV2_1/element_shape:output:0!lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_440/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_440/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_440/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_440/whileWhile$lstm_440/while/loop_counter:output:0*lstm_440/while/maximum_iterations:output:0lstm_440/time:output:0!lstm_440/TensorArrayV2_1:handle:0lstm_440/zeros:output:0lstm_440/zeros_1:output:0!lstm_440/strided_slice_1:output:0@lstm_440/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_440_lstm_cell_560_matmul_readvariableop_resource7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource6lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
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
lstm_440_while_body_3391451*'
condR
lstm_440_while_cond_3391450*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_440/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_440/TensorArrayV2Stack/TensorListStackTensorListStacklstm_440/while:output:3Blstm_440/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_440/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_440/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_3StridedSlice4lstm_440/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_440/strided_slice_3/stack:output:0)lstm_440/strided_slice_3/stack_1:output:0)lstm_440/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_440/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_440/transpose_1	Transpose4lstm_440/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_440/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_440/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_146/MatMul/ReadVariableOpReadVariableOp(dense_146_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_146/MatMulMatMul!lstm_440/strided_slice_3:output:0'dense_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_146/BiasAdd/ReadVariableOpReadVariableOp)dense_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_146/BiasAddBiasAdddense_146/MatMul:product:0(dense_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_146/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_146/BiasAdd/ReadVariableOp ^dense_146/MatMul/ReadVariableOp.^lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp-^lstm_438/lstm_cell_558/MatMul/ReadVariableOp/^lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp^lstm_438/while.^lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp-^lstm_439/lstm_cell_559/MatMul/ReadVariableOp/^lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp^lstm_439/while.^lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp-^lstm_440/lstm_cell_560/MatMul/ReadVariableOp/^lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp^lstm_440/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_146/BiasAdd/ReadVariableOp dense_146/BiasAdd/ReadVariableOp2B
dense_146/MatMul/ReadVariableOpdense_146/MatMul/ReadVariableOp2^
-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp2\
,lstm_438/lstm_cell_558/MatMul/ReadVariableOp,lstm_438/lstm_cell_558/MatMul/ReadVariableOp2`
.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp2 
lstm_438/whilelstm_438/while2^
-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp2\
,lstm_439/lstm_cell_559/MatMul/ReadVariableOp,lstm_439/lstm_cell_559/MatMul/ReadVariableOp2`
.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp2 
lstm_439/whilelstm_439/while2^
-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp2\
,lstm_440/lstm_cell_560/MatMul/ReadVariableOp,lstm_440/lstm_cell_560/MatMul/ReadVariableOp2`
.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp2 
lstm_440/whilelstm_440/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_440_while_cond_3391450.
*lstm_440_while_lstm_440_while_loop_counter4
0lstm_440_while_lstm_440_while_maximum_iterations
lstm_440_while_placeholder 
lstm_440_while_placeholder_1 
lstm_440_while_placeholder_2 
lstm_440_while_placeholder_30
,lstm_440_while_less_lstm_440_strided_slice_1G
Clstm_440_while_lstm_440_while_cond_3391450___redundant_placeholder0G
Clstm_440_while_lstm_440_while_cond_3391450___redundant_placeholder1G
Clstm_440_while_lstm_440_while_cond_3391450___redundant_placeholder2G
Clstm_440_while_lstm_440_while_cond_3391450___redundant_placeholder3
lstm_440_while_identity
?
lstm_440/while/LessLesslstm_440_while_placeholder,lstm_440_while_less_lstm_440_strided_slice_1*
T0*
_output_shapes
: ]
lstm_440/while/IdentityIdentitylstm_440/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_440_while_identity lstm_440/while/Identity:output:0*(
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
while_body_3389638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3393018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3393018___redundant_placeholder05
1while_while_cond_3393018___redundant_placeholder15
1while_while_cond_3393018___redundant_placeholder25
1while_while_cond_3393018___redundant_placeholder3
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
while_cond_3390003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3390003___redundant_placeholder05
1while_while_cond_3390003___redundant_placeholder15
1while_while_cond_3390003___redundant_placeholder25
1while_while_cond_3390003___redundant_placeholder3
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
while_body_3392260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3390633
lstm_438_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_438_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3388373o
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
_user_specified_namelstm_438_input
?8
?
while_body_3390334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3392689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3391930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3393161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3393161___redundant_placeholder05
1while_while_cond_3393161___redundant_placeholder15
1while_while_cond_3393161___redundant_placeholder25
1while_while_cond_3393161___redundant_placeholder3
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3393408

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
while_body_3392876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3390418

inputs?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3390334*
condR
while_cond_3390333*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_146_layer_call_fn_3390660

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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3389897o
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389872

inputs>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3389788*
condR
while_cond_3389787*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3389488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391728
inputs_0?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3391644*
condR
while_cond_3391643*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3391929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3391929___redundant_placeholder05
1while_while_cond_3391929___redundant_placeholder15
1while_while_cond_3391929___redundant_placeholder25
1while_while_cond_3391929___redundant_placeholder3
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392157

inputs?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3392073*
condR
while_cond_3392072*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_438_layer_call_and_return_conditional_losses_3389572

inputs?
,lstm_cell_558_matmul_readvariableop_resource:	?A
.lstm_cell_558_matmul_1_readvariableop_resource:	d?<
-lstm_cell_558_biasadd_readvariableop_resource:	?
identity??$lstm_cell_558/BiasAdd/ReadVariableOp?#lstm_cell_558/MatMul/ReadVariableOp?%lstm_cell_558/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_558/MatMul/ReadVariableOpReadVariableOp,lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_558/MatMulMatMulstrided_slice_2:output:0+lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_558/MatMul_1MatMulzeros:output:0-lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_558/addAddV2lstm_cell_558/MatMul:product:0 lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_558/BiasAddBiasAddlstm_cell_558/add:z:0,lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_558/splitSplit&lstm_cell_558/split/split_dim:output:0lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_558/SigmoidSigmoidlstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_1Sigmoidlstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_558/mulMullstm_cell_558/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_558/ReluRelulstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_1Mullstm_cell_558/Sigmoid:y:0 lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_558/add_1AddV2lstm_cell_558/mul:z:0lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_558/Sigmoid_2Sigmoidlstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_558/Relu_1Relulstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_558/mul_2Mullstm_cell_558/Sigmoid_2:y:0"lstm_cell_558/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_558_matmul_readvariableop_resource.lstm_cell_558_matmul_1_readvariableop_resource-lstm_cell_558_biasadd_readvariableop_resource*
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
while_body_3389488*
condR
while_cond_3389487*K
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
NoOpNoOp%^lstm_cell_558/BiasAdd/ReadVariableOp$^lstm_cell_558/MatMul/ReadVariableOp&^lstm_cell_558/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_558/BiasAdd/ReadVariableOp$lstm_cell_558/BiasAdd/ReadVariableOp2J
#lstm_cell_558/MatMul/ReadVariableOp#lstm_cell_558/MatMul/ReadVariableOp2N
%lstm_cell_558/MatMul_1/ReadVariableOp%lstm_cell_558/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3389154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_560_3389178_0:2(/
while_lstm_cell_560_3389180_0:
(+
while_lstm_cell_560_3389182_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_560_3389178:2(-
while_lstm_cell_560_3389180:
()
while_lstm_cell_560_3389182:(??+while/lstm_cell_560/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_560/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_560_3389178_0while_lstm_cell_560_3389180_0while_lstm_cell_560_3389182_0*
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389140?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_560/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_560/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_560/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_560/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_560_3389178while_lstm_cell_560_3389178_0"<
while_lstm_cell_560_3389180while_lstm_cell_560_3389180_0"<
while_lstm_cell_560_3389182while_lstm_cell_560_3389182_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_560/StatefulPartitionedCall+while/lstm_cell_560/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3388454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_558_3388478_0:	?0
while_lstm_cell_558_3388480_0:	d?,
while_lstm_cell_558_3388482_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_558_3388478:	?.
while_lstm_cell_558_3388480:	d?*
while_lstm_cell_558_3388482:	???+while/lstm_cell_558/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_558/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_558_3388478_0while_lstm_cell_558_3388480_0while_lstm_cell_558_3388482_0*
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388440?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_558/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_558/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_558/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_558/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_558_3388478while_lstm_cell_558_3388478_0"<
while_lstm_cell_558_3388480while_lstm_cell_558_3388480_0"<
while_lstm_cell_558_3388482while_lstm_cell_558_3388482_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_558/StatefulPartitionedCall+while/lstm_cell_558/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3393304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3393304___redundant_placeholder05
1while_while_cond_3393304___redundant_placeholder15
1while_while_cond_3393304___redundant_placeholder25
1while_while_cond_3393304___redundant_placeholder3
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
while_cond_3392259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392259___redundant_placeholder05
1while_while_cond_3392259___redundant_placeholder15
1while_while_cond_3392259___redundant_placeholder25
1while_while_cond_3392259___redundant_placeholder3
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

lstm_440_while_body_3391024.
*lstm_440_while_lstm_440_while_loop_counter4
0lstm_440_while_lstm_440_while_maximum_iterations
lstm_440_while_placeholder 
lstm_440_while_placeholder_1 
lstm_440_while_placeholder_2 
lstm_440_while_placeholder_3-
)lstm_440_while_lstm_440_strided_slice_1_0i
elstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0:2(Q
?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(L
>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0:(
lstm_440_while_identity
lstm_440_while_identity_1
lstm_440_while_identity_2
lstm_440_while_identity_3
lstm_440_while_identity_4
lstm_440_while_identity_5+
'lstm_440_while_lstm_440_strided_slice_1g
clstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensorM
;lstm_440_while_lstm_cell_560_matmul_readvariableop_resource:2(O
=lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource:
(J
<lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource:(??3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp?2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp?4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp?
@lstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_440/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0lstm_440_while_placeholderIlstm_440/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_440/while/lstm_cell_560/MatMulMatMul9lstm_440/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_440/while/lstm_cell_560/MatMul_1MatMullstm_440_while_placeholder_2<lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_440/while/lstm_cell_560/addAddV2-lstm_440/while/lstm_cell_560/MatMul:product:0/lstm_440/while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_440/while/lstm_cell_560/BiasAddBiasAdd$lstm_440/while/lstm_cell_560/add:z:0;lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_440/while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_440/while/lstm_cell_560/splitSplit5lstm_440/while/lstm_cell_560/split/split_dim:output:0-lstm_440/while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_440/while/lstm_cell_560/SigmoidSigmoid+lstm_440/while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_440/while/lstm_cell_560/Sigmoid_1Sigmoid+lstm_440/while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_440/while/lstm_cell_560/mulMul*lstm_440/while/lstm_cell_560/Sigmoid_1:y:0lstm_440_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_440/while/lstm_cell_560/ReluRelu+lstm_440/while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/mul_1Mul(lstm_440/while/lstm_cell_560/Sigmoid:y:0/lstm_440/while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/add_1AddV2$lstm_440/while/lstm_cell_560/mul:z:0&lstm_440/while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_440/while/lstm_cell_560/Sigmoid_2Sigmoid+lstm_440/while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_440/while/lstm_cell_560/Relu_1Relu&lstm_440/while/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_440/while/lstm_cell_560/mul_2Mul*lstm_440/while/lstm_cell_560/Sigmoid_2:y:01lstm_440/while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_440/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_440_while_placeholder_1lstm_440_while_placeholder&lstm_440/while/lstm_cell_560/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_440/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_440/while/addAddV2lstm_440_while_placeholderlstm_440/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_440/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_440/while/add_1AddV2*lstm_440_while_lstm_440_while_loop_counterlstm_440/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_440/while/IdentityIdentitylstm_440/while/add_1:z:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_1Identity0lstm_440_while_lstm_440_while_maximum_iterations^lstm_440/while/NoOp*
T0*
_output_shapes
: t
lstm_440/while/Identity_2Identitylstm_440/while/add:z:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_3IdentityClstm_440/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_440/while/NoOp*
T0*
_output_shapes
: ?
lstm_440/while/Identity_4Identity&lstm_440/while/lstm_cell_560/mul_2:z:0^lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_440/while/Identity_5Identity&lstm_440/while/lstm_cell_560/add_1:z:0^lstm_440/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_440/while/NoOpNoOp4^lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp3^lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp5^lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_440_while_identity lstm_440/while/Identity:output:0"?
lstm_440_while_identity_1"lstm_440/while/Identity_1:output:0"?
lstm_440_while_identity_2"lstm_440/while/Identity_2:output:0"?
lstm_440_while_identity_3"lstm_440/while/Identity_3:output:0"?
lstm_440_while_identity_4"lstm_440/while/Identity_4:output:0"?
lstm_440_while_identity_5"lstm_440/while/Identity_5:output:0"T
'lstm_440_while_lstm_440_strided_slice_1)lstm_440_while_lstm_440_strided_slice_1_0"~
<lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource>lstm_440_while_lstm_cell_560_biasadd_readvariableop_resource_0"?
=lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource?lstm_440_while_lstm_cell_560_matmul_1_readvariableop_resource_0"|
;lstm_440_while_lstm_cell_560_matmul_readvariableop_resource=lstm_440_while_lstm_cell_560_matmul_readvariableop_resource_0"?
clstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensorelstm_440_while_tensorarrayv2read_tensorlistgetitem_lstm_440_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp3lstm_440/while/lstm_cell_560/BiasAdd/ReadVariableOp2h
2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp2lstm_440/while/lstm_cell_560/MatMul/ReadVariableOp2l
4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp4lstm_440/while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3388645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_558_3388669_0:	?0
while_lstm_cell_558_3388671_0:	d?,
while_lstm_cell_558_3388673_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_558_3388669:	?.
while_lstm_cell_558_3388671:	d?*
while_lstm_cell_558_3388673:	???+while/lstm_cell_558/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_558/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_558_3388669_0while_lstm_cell_558_3388671_0while_lstm_cell_558_3388673_0*
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388586?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_558/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_558/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_558/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_558/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_558_3388669while_lstm_cell_558_3388669_0"<
while_lstm_cell_558_3388671while_lstm_cell_558_3388671_0"<
while_lstm_cell_558_3388673while_lstm_cell_558_3388673_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_558/StatefulPartitionedCall+while/lstm_cell_558/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3389345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_560_3389369_0:2(/
while_lstm_cell_560_3389371_0:
(+
while_lstm_cell_560_3389373_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_560_3389369:2(-
while_lstm_cell_560_3389371:
()
while_lstm_cell_560_3389373:(??+while/lstm_cell_560/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_560/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_560_3389369_0while_lstm_cell_560_3389371_0while_lstm_cell_560_3389373_0*
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389286?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_560/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_560/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_560/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_560/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_560_3389369while_lstm_cell_560_3389369_0"<
while_lstm_cell_560_3389371while_lstm_cell_560_3389371_0"<
while_lstm_cell_560_3389373while_lstm_cell_560_3389373_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_560/StatefulPartitionedCall+while/lstm_cell_560/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_146_lstm_440_while_cond_3388282L
Hsequential_146_lstm_440_while_sequential_146_lstm_440_while_loop_counterR
Nsequential_146_lstm_440_while_sequential_146_lstm_440_while_maximum_iterations-
)sequential_146_lstm_440_while_placeholder/
+sequential_146_lstm_440_while_placeholder_1/
+sequential_146_lstm_440_while_placeholder_2/
+sequential_146_lstm_440_while_placeholder_3N
Jsequential_146_lstm_440_while_less_sequential_146_lstm_440_strided_slice_1e
asequential_146_lstm_440_while_sequential_146_lstm_440_while_cond_3388282___redundant_placeholder0e
asequential_146_lstm_440_while_sequential_146_lstm_440_while_cond_3388282___redundant_placeholder1e
asequential_146_lstm_440_while_sequential_146_lstm_440_while_cond_3388282___redundant_placeholder2e
asequential_146_lstm_440_while_sequential_146_lstm_440_while_cond_3388282___redundant_placeholder3*
&sequential_146_lstm_440_while_identity
?
"sequential_146/lstm_440/while/LessLess)sequential_146_lstm_440_while_placeholderJsequential_146_lstm_440_while_less_sequential_146_lstm_440_strided_slice_1*
T0*
_output_shapes
: {
&sequential_146/lstm_440/while/IdentityIdentity&sequential_146/lstm_440/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_146_lstm_440_while_identity/sequential_146/lstm_440/while/Identity:output:0*(
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
0__inference_sequential_146_layer_call_fn_3390687

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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390486o
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
while_body_3390004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3388586

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
while_cond_3392545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392545___redundant_placeholder05
1while_while_cond_3392545___redundant_placeholder15
1while_while_cond_3392545___redundant_placeholder25
1while_while_cond_3392545___redundant_placeholder3
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
while_cond_3388644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3388644___redundant_placeholder05
1while_while_cond_3388644___redundant_placeholder15
1while_while_cond_3388644___redundant_placeholder25
1while_while_cond_3388644___redundant_placeholder3
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3388873

inputs(
lstm_cell_559_3388791:	d?(
lstm_cell_559_3388793:	2?$
lstm_cell_559_3388795:	?
identity??%lstm_cell_559/StatefulPartitionedCall?while;
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
%lstm_cell_559/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_559_3388791lstm_cell_559_3388793lstm_cell_559_3388795*
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388790n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_559_3388791lstm_cell_559_3388793lstm_cell_559_3388795*
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
while_body_3388804*
condR
while_cond_3388803*K
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
NoOpNoOp&^lstm_cell_559/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_559/StatefulPartitionedCall%lstm_cell_559/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390486

inputs#
lstm_438_3390459:	?#
lstm_438_3390461:	d?
lstm_438_3390463:	?#
lstm_439_3390466:	d?#
lstm_439_3390468:	2?
lstm_439_3390470:	?"
lstm_440_3390473:2("
lstm_440_3390475:
(
lstm_440_3390477:(#
dense_146_3390480:

dense_146_3390482:
identity??!dense_146/StatefulPartitionedCall? lstm_438/StatefulPartitionedCall? lstm_439/StatefulPartitionedCall? lstm_440/StatefulPartitionedCall?
 lstm_438/StatefulPartitionedCallStatefulPartitionedCallinputslstm_438_3390459lstm_438_3390461lstm_438_3390463*
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3390418?
 lstm_439/StatefulPartitionedCallStatefulPartitionedCall)lstm_438/StatefulPartitionedCall:output:0lstm_439_3390466lstm_439_3390468lstm_439_3390470*
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3390253?
 lstm_440/StatefulPartitionedCallStatefulPartitionedCall)lstm_439/StatefulPartitionedCall:output:0lstm_440_3390473lstm_440_3390475lstm_440_3390477*
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3390088?
!dense_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_440/StatefulPartitionedCall:output:0dense_146_3390480dense_146_3390482*
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890y
IdentityIdentity*dense_146/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_146/StatefulPartitionedCall!^lstm_438/StatefulPartitionedCall!^lstm_439/StatefulPartitionedCall!^lstm_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2D
 lstm_438/StatefulPartitionedCall lstm_438/StatefulPartitionedCall2D
 lstm_439/StatefulPartitionedCall lstm_439/StatefulPartitionedCall2D
 lstm_440/StatefulPartitionedCall lstm_440/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_146_lstm_439_while_cond_3388143L
Hsequential_146_lstm_439_while_sequential_146_lstm_439_while_loop_counterR
Nsequential_146_lstm_439_while_sequential_146_lstm_439_while_maximum_iterations-
)sequential_146_lstm_439_while_placeholder/
+sequential_146_lstm_439_while_placeholder_1/
+sequential_146_lstm_439_while_placeholder_2/
+sequential_146_lstm_439_while_placeholder_3N
Jsequential_146_lstm_439_while_less_sequential_146_lstm_439_strided_slice_1e
asequential_146_lstm_439_while_sequential_146_lstm_439_while_cond_3388143___redundant_placeholder0e
asequential_146_lstm_439_while_sequential_146_lstm_439_while_cond_3388143___redundant_placeholder1e
asequential_146_lstm_439_while_sequential_146_lstm_439_while_cond_3388143___redundant_placeholder2e
asequential_146_lstm_439_while_sequential_146_lstm_439_while_cond_3388143___redundant_placeholder3*
&sequential_146_lstm_439_while_identity
?
"sequential_146/lstm_439/while/LessLess)sequential_146_lstm_439_while_placeholderJsequential_146_lstm_439_while_less_sequential_146_lstm_439_strided_slice_1*
T0*
_output_shapes
: {
&sequential_146/lstm_439/while/IdentityIdentity&sequential_146/lstm_439/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_146_lstm_439_while_identity/sequential_146/lstm_439/while/Identity:output:0*(
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
while_body_3392546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_559_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_559_matmul_readvariableop_resource:	d?G
4while_lstm_cell_559_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_559_biasadd_readvariableop_resource:	???*while/lstm_cell_559/BiasAdd/ReadVariableOp?)while/lstm_cell_559/MatMul/ReadVariableOp?+while/lstm_cell_559/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_559/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_559/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_559/addAddV2$while/lstm_cell_559/MatMul:product:0&while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_559/BiasAddBiasAddwhile/lstm_cell_559/add:z:02while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_559/splitSplit,while/lstm_cell_559/split/split_dim:output:0$while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_559/SigmoidSigmoid"while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_1Sigmoid"while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mulMul!while/lstm_cell_559/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_559/ReluRelu"while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_1Mulwhile/lstm_cell_559/Sigmoid:y:0&while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/add_1AddV2while/lstm_cell_559/mul:z:0while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_559/Sigmoid_2Sigmoid"while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_559/Relu_1Reluwhile/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_559/mul_2Mul!while/lstm_cell_559/Sigmoid_2:y:0(while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_559/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_559/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_559/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_559/BiasAdd/ReadVariableOp*^while/lstm_cell_559/MatMul/ReadVariableOp,^while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_559_biasadd_readvariableop_resource5while_lstm_cell_559_biasadd_readvariableop_resource_0"n
4while_lstm_cell_559_matmul_1_readvariableop_resource6while_lstm_cell_559_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_559_matmul_readvariableop_resource4while_lstm_cell_559_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_559/BiasAdd/ReadVariableOp*while/lstm_cell_559/BiasAdd/ReadVariableOp2V
)while/lstm_cell_559/MatMul/ReadVariableOp)while/lstm_cell_559/MatMul/ReadVariableOp2Z
+while/lstm_cell_559/MatMul_1/ReadVariableOp+while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3392073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_558_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_558_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_558_matmul_readvariableop_resource:	?G
4while_lstm_cell_558_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_558_biasadd_readvariableop_resource:	???*while/lstm_cell_558/BiasAdd/ReadVariableOp?)while/lstm_cell_558/MatMul/ReadVariableOp?+while/lstm_cell_558/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_558/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_558/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_558/addAddV2$while/lstm_cell_558/MatMul:product:0&while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_558/BiasAddBiasAddwhile/lstm_cell_558/add:z:02while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_558/splitSplit,while/lstm_cell_558/split/split_dim:output:0$while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_558/SigmoidSigmoid"while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_1Sigmoid"while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mulMul!while/lstm_cell_558/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_558/ReluRelu"while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_1Mulwhile/lstm_cell_558/Sigmoid:y:0&while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/add_1AddV2while/lstm_cell_558/mul:z:0while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_558/Sigmoid_2Sigmoid"while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_558/Relu_1Reluwhile/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_558/mul_2Mul!while/lstm_cell_558/Sigmoid_2:y:0(while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_558/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_558/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_558/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_558/BiasAdd/ReadVariableOp*^while/lstm_cell_558/MatMul/ReadVariableOp,^while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_558_biasadd_readvariableop_resource5while_lstm_cell_558_biasadd_readvariableop_resource_0"n
4while_lstm_cell_558_matmul_1_readvariableop_resource6while_lstm_cell_558_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_558_matmul_readvariableop_resource4while_lstm_cell_558_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_558/BiasAdd/ReadVariableOp*while/lstm_cell_558/BiasAdd/ReadVariableOp2V
)while/lstm_cell_558/MatMul/ReadVariableOp)while/lstm_cell_558/MatMul/ReadVariableOp2Z
+while/lstm_cell_558/MatMul_1/ReadVariableOp+while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_440_layer_call_fn_3392817

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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3390088o
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392773

inputs?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3392689*
condR
while_cond_3392688*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3393019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3388804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_559_3388828_0:	d?0
while_lstm_cell_559_3388830_0:	2?,
while_lstm_cell_559_3388832_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_559_3388828:	d?.
while_lstm_cell_559_3388830:	2?*
while_lstm_cell_559_3388832:	???+while/lstm_cell_559/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_559/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_559_3388828_0while_lstm_cell_559_3388830_0while_lstm_cell_559_3388832_0*
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388790?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_559/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_559/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_559/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_559/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_559_3388828while_lstm_cell_559_3388828_0"<
while_lstm_cell_559_3388830while_lstm_cell_559_3388830_0"<
while_lstm_cell_559_3388832while_lstm_cell_559_3388832_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_559/StatefulPartitionedCall+while/lstm_cell_559/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_559_layer_call_fn_3393540

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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388936o
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393474

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
*__inference_lstm_438_layer_call_fn_3391552
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3388523|
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
?
*sequential_146_lstm_438_while_cond_3388004L
Hsequential_146_lstm_438_while_sequential_146_lstm_438_while_loop_counterR
Nsequential_146_lstm_438_while_sequential_146_lstm_438_while_maximum_iterations-
)sequential_146_lstm_438_while_placeholder/
+sequential_146_lstm_438_while_placeholder_1/
+sequential_146_lstm_438_while_placeholder_2/
+sequential_146_lstm_438_while_placeholder_3N
Jsequential_146_lstm_438_while_less_sequential_146_lstm_438_strided_slice_1e
asequential_146_lstm_438_while_sequential_146_lstm_438_while_cond_3388004___redundant_placeholder0e
asequential_146_lstm_438_while_sequential_146_lstm_438_while_cond_3388004___redundant_placeholder1e
asequential_146_lstm_438_while_sequential_146_lstm_438_while_cond_3388004___redundant_placeholder2e
asequential_146_lstm_438_while_sequential_146_lstm_438_while_cond_3388004___redundant_placeholder3*
&sequential_146_lstm_438_while_identity
?
"sequential_146/lstm_438/while/LessLess)sequential_146_lstm_438_while_placeholderJsequential_146_lstm_438_while_less_sequential_146_lstm_438_strided_slice_1*
T0*
_output_shapes
: {
&sequential_146/lstm_438/while/IdentityIdentity&sequential_146/lstm_438/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_146_lstm_438_while_identity/sequential_146/lstm_438/while/Identity:output:0*(
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
lstm_439_while_cond_3390884.
*lstm_439_while_lstm_439_while_loop_counter4
0lstm_439_while_lstm_439_while_maximum_iterations
lstm_439_while_placeholder 
lstm_439_while_placeholder_1 
lstm_439_while_placeholder_2 
lstm_439_while_placeholder_30
,lstm_439_while_less_lstm_439_strided_slice_1G
Clstm_439_while_lstm_439_while_cond_3390884___redundant_placeholder0G
Clstm_439_while_lstm_439_while_cond_3390884___redundant_placeholder1G
Clstm_439_while_lstm_439_while_cond_3390884___redundant_placeholder2G
Clstm_439_while_lstm_439_while_cond_3390884___redundant_placeholder3
lstm_439_while_identity
?
lstm_439/while/LessLesslstm_439_while_placeholder,lstm_439_while_less_lstm_439_strided_slice_1*
T0*
_output_shapes
: ]
lstm_439/while/IdentityIdentitylstm_439/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_439_while_identity lstm_439/while/Identity:output:0*(
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
while_cond_3392072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392072___redundant_placeholder05
1while_while_cond_3392072___redundant_placeholder15
1while_while_cond_3392072___redundant_placeholder25
1while_while_cond_3392072___redundant_placeholder3
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390568
lstm_438_input#
lstm_438_3390541:	?#
lstm_438_3390543:	d?
lstm_438_3390545:	?#
lstm_439_3390548:	d?#
lstm_439_3390550:	2?
lstm_439_3390552:	?"
lstm_440_3390555:2("
lstm_440_3390557:
(
lstm_440_3390559:(#
dense_146_3390562:

dense_146_3390564:
identity??!dense_146/StatefulPartitionedCall? lstm_438/StatefulPartitionedCall? lstm_439/StatefulPartitionedCall? lstm_440/StatefulPartitionedCall?
 lstm_438/StatefulPartitionedCallStatefulPartitionedCalllstm_438_inputlstm_438_3390541lstm_438_3390543lstm_438_3390545*
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3389572?
 lstm_439/StatefulPartitionedCallStatefulPartitionedCall)lstm_438/StatefulPartitionedCall:output:0lstm_439_3390548lstm_439_3390550lstm_439_3390552*
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389722?
 lstm_440/StatefulPartitionedCallStatefulPartitionedCall)lstm_439/StatefulPartitionedCall:output:0lstm_440_3390555lstm_440_3390557lstm_440_3390559*
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3389872?
!dense_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_440/StatefulPartitionedCall:output:0dense_146_3390562dense_146_3390564*
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890y
IdentityIdentity*dense_146/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_146/StatefulPartitionedCall!^lstm_438/StatefulPartitionedCall!^lstm_439/StatefulPartitionedCall!^lstm_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2D
 lstm_438/StatefulPartitionedCall lstm_438/StatefulPartitionedCall2D
 lstm_439/StatefulPartitionedCall lstm_439/StatefulPartitionedCall2D
 lstm_440/StatefulPartitionedCall lstm_440/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_438_input
?
?
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389140

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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392630

inputs?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3392546*
condR
while_cond_3392545*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3393305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_560_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_560_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_560_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_560_matmul_readvariableop_resource:2(F
4while_lstm_cell_560_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_560_biasadd_readvariableop_resource:(??*while/lstm_cell_560/BiasAdd/ReadVariableOp?)while/lstm_cell_560/MatMul/ReadVariableOp?+while/lstm_cell_560/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_560_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_560/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_560_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_560/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_560/addAddV2$while/lstm_cell_560/MatMul:product:0&while/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_560_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_560/BiasAddBiasAddwhile/lstm_cell_560/add:z:02while/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_560/splitSplit,while/lstm_cell_560/split/split_dim:output:0$while/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_560/SigmoidSigmoid"while/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_1Sigmoid"while/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mulMul!while/lstm_cell_560/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_560/ReluRelu"while/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_1Mulwhile/lstm_cell_560/Sigmoid:y:0&while/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/add_1AddV2while/lstm_cell_560/mul:z:0while/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_560/Sigmoid_2Sigmoid"while/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_560/Relu_1Reluwhile/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_560/mul_2Mul!while/lstm_cell_560/Sigmoid_2:y:0(while/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_560/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_560/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_560/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_560/BiasAdd/ReadVariableOp*^while/lstm_cell_560/MatMul/ReadVariableOp,^while/lstm_cell_560/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_560_biasadd_readvariableop_resource5while_lstm_cell_560_biasadd_readvariableop_resource_0"n
4while_lstm_cell_560_matmul_1_readvariableop_resource6while_lstm_cell_560_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_560_matmul_readvariableop_resource4while_lstm_cell_560_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_560/BiasAdd/ReadVariableOp*while/lstm_cell_560/BiasAdd/ReadVariableOp2V
)while/lstm_cell_560/MatMul/ReadVariableOp)while/lstm_cell_560/MatMul/ReadVariableOp2Z
+while/lstm_cell_560/MatMul_1/ReadVariableOp+while/lstm_cell_560/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3390253

inputs?
,lstm_cell_559_matmul_readvariableop_resource:	d?A
.lstm_cell_559_matmul_1_readvariableop_resource:	2?<
-lstm_cell_559_biasadd_readvariableop_resource:	?
identity??$lstm_cell_559/BiasAdd/ReadVariableOp?#lstm_cell_559/MatMul/ReadVariableOp?%lstm_cell_559/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_559/MatMul/ReadVariableOpReadVariableOp,lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_559/MatMulMatMulstrided_slice_2:output:0+lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_559/MatMul_1MatMulzeros:output:0-lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_559/addAddV2lstm_cell_559/MatMul:product:0 lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_559/BiasAddBiasAddlstm_cell_559/add:z:0,lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_559/splitSplit&lstm_cell_559/split/split_dim:output:0lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_559/SigmoidSigmoidlstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_1Sigmoidlstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_559/mulMullstm_cell_559/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_559/ReluRelulstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_1Mullstm_cell_559/Sigmoid:y:0 lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_559/add_1AddV2lstm_cell_559/mul:z:0lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_559/Sigmoid_2Sigmoidlstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_559/Relu_1Relulstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_559/mul_2Mullstm_cell_559/Sigmoid_2:y:0"lstm_cell_559/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_559_matmul_readvariableop_resource.lstm_cell_559_matmul_1_readvariableop_resource-lstm_cell_559_biasadd_readvariableop_resource*
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
while_body_3390169*
condR
while_cond_3390168*K
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
NoOpNoOp%^lstm_cell_559/BiasAdd/ReadVariableOp$^lstm_cell_559/MatMul/ReadVariableOp&^lstm_cell_559/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_559/BiasAdd/ReadVariableOp$lstm_cell_559/BiasAdd/ReadVariableOp2J
#lstm_cell_559/MatMul/ReadVariableOp#lstm_cell_559/MatMul/ReadVariableOp2N
%lstm_cell_559/MatMul_1/ReadVariableOp%lstm_cell_559/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3388994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3388994___redundant_placeholder05
1while_while_cond_3388994___redundant_placeholder15
1while_while_cond_3388994___redundant_placeholder25
1while_while_cond_3388994___redundant_placeholder3
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3389064

inputs(
lstm_cell_559_3388982:	d?(
lstm_cell_559_3388984:	2?$
lstm_cell_559_3388986:	?
identity??%lstm_cell_559/StatefulPartitionedCall?while;
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
%lstm_cell_559/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_559_3388982lstm_cell_559_3388984lstm_cell_559_3388986*
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388936n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_559_3388982lstm_cell_559_3388984lstm_cell_559_3388986*
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
while_body_3388995*
condR
while_cond_3388994*K
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
NoOpNoOp&^lstm_cell_559/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_559/StatefulPartitionedCall%lstm_cell_559/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393572

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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3390088

inputs>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3390004*
condR
while_cond_3390003*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391114

inputsH
5lstm_438_lstm_cell_558_matmul_readvariableop_resource:	?J
7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource:	d?E
6lstm_438_lstm_cell_558_biasadd_readvariableop_resource:	?H
5lstm_439_lstm_cell_559_matmul_readvariableop_resource:	d?J
7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource:	2?E
6lstm_439_lstm_cell_559_biasadd_readvariableop_resource:	?G
5lstm_440_lstm_cell_560_matmul_readvariableop_resource:2(I
7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource:
(D
6lstm_440_lstm_cell_560_biasadd_readvariableop_resource:(:
(dense_146_matmul_readvariableop_resource:
7
)dense_146_biasadd_readvariableop_resource:
identity?? dense_146/BiasAdd/ReadVariableOp?dense_146/MatMul/ReadVariableOp?-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp?,lstm_438/lstm_cell_558/MatMul/ReadVariableOp?.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp?lstm_438/while?-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp?,lstm_439/lstm_cell_559/MatMul/ReadVariableOp?.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp?lstm_439/while?-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp?,lstm_440/lstm_cell_560/MatMul/ReadVariableOp?.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp?lstm_440/whileD
lstm_438/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_438/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_438/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_438/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_sliceStridedSlicelstm_438/Shape:output:0%lstm_438/strided_slice/stack:output:0'lstm_438/strided_slice/stack_1:output:0'lstm_438/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_438/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_438/zeros/packedPacklstm_438/strided_slice:output:0 lstm_438/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_438/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_438/zerosFilllstm_438/zeros/packed:output:0lstm_438/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_438/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_438/zeros_1/packedPacklstm_438/strided_slice:output:0"lstm_438/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_438/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_438/zeros_1Fill lstm_438/zeros_1/packed:output:0lstm_438/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_438/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_438/transpose	Transposeinputs lstm_438/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_438/Shape_1Shapelstm_438/transpose:y:0*
T0*
_output_shapes
:h
lstm_438/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_438/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_1StridedSlicelstm_438/Shape_1:output:0'lstm_438/strided_slice_1/stack:output:0)lstm_438/strided_slice_1/stack_1:output:0)lstm_438/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_438/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_438/TensorArrayV2TensorListReserve-lstm_438/TensorArrayV2/element_shape:output:0!lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_438/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_438/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_438/transpose:y:0Glstm_438/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_438/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_438/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_2StridedSlicelstm_438/transpose:y:0'lstm_438/strided_slice_2/stack:output:0)lstm_438/strided_slice_2/stack_1:output:0)lstm_438/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_438/lstm_cell_558/MatMul/ReadVariableOpReadVariableOp5lstm_438_lstm_cell_558_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_438/lstm_cell_558/MatMulMatMul!lstm_438/strided_slice_2:output:04lstm_438/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOp7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_438/lstm_cell_558/MatMul_1MatMullstm_438/zeros:output:06lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_438/lstm_cell_558/addAddV2'lstm_438/lstm_cell_558/MatMul:product:0)lstm_438/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOp6lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_438/lstm_cell_558/BiasAddBiasAddlstm_438/lstm_cell_558/add:z:05lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_438/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_438/lstm_cell_558/splitSplit/lstm_438/lstm_cell_558/split/split_dim:output:0'lstm_438/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_438/lstm_cell_558/SigmoidSigmoid%lstm_438/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_438/lstm_cell_558/Sigmoid_1Sigmoid%lstm_438/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mulMul$lstm_438/lstm_cell_558/Sigmoid_1:y:0lstm_438/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_438/lstm_cell_558/ReluRelu%lstm_438/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mul_1Mul"lstm_438/lstm_cell_558/Sigmoid:y:0)lstm_438/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/add_1AddV2lstm_438/lstm_cell_558/mul:z:0 lstm_438/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_438/lstm_cell_558/Sigmoid_2Sigmoid%lstm_438/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_438/lstm_cell_558/Relu_1Relu lstm_438/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_438/lstm_cell_558/mul_2Mul$lstm_438/lstm_cell_558/Sigmoid_2:y:0+lstm_438/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_438/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_438/TensorArrayV2_1TensorListReserve/lstm_438/TensorArrayV2_1/element_shape:output:0!lstm_438/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_438/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_438/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_438/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_438/whileWhile$lstm_438/while/loop_counter:output:0*lstm_438/while/maximum_iterations:output:0lstm_438/time:output:0!lstm_438/TensorArrayV2_1:handle:0lstm_438/zeros:output:0lstm_438/zeros_1:output:0!lstm_438/strided_slice_1:output:0@lstm_438/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_438_lstm_cell_558_matmul_readvariableop_resource7lstm_438_lstm_cell_558_matmul_1_readvariableop_resource6lstm_438_lstm_cell_558_biasadd_readvariableop_resource*
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
lstm_438_while_body_3390746*'
condR
lstm_438_while_cond_3390745*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_438/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_438/TensorArrayV2Stack/TensorListStackTensorListStacklstm_438/while:output:3Blstm_438/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_438/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_438/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_438/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_438/strided_slice_3StridedSlice4lstm_438/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_438/strided_slice_3/stack:output:0)lstm_438/strided_slice_3/stack_1:output:0)lstm_438/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_438/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_438/transpose_1	Transpose4lstm_438/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_438/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_438/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_439/ShapeShapelstm_438/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_439/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_439/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_439/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_sliceStridedSlicelstm_439/Shape:output:0%lstm_439/strided_slice/stack:output:0'lstm_439/strided_slice/stack_1:output:0'lstm_439/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_439/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_439/zeros/packedPacklstm_439/strided_slice:output:0 lstm_439/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_439/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_439/zerosFilllstm_439/zeros/packed:output:0lstm_439/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_439/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_439/zeros_1/packedPacklstm_439/strided_slice:output:0"lstm_439/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_439/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_439/zeros_1Fill lstm_439/zeros_1/packed:output:0lstm_439/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_439/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_439/transpose	Transposelstm_438/transpose_1:y:0 lstm_439/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_439/Shape_1Shapelstm_439/transpose:y:0*
T0*
_output_shapes
:h
lstm_439/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_439/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_1StridedSlicelstm_439/Shape_1:output:0'lstm_439/strided_slice_1/stack:output:0)lstm_439/strided_slice_1/stack_1:output:0)lstm_439/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_439/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_439/TensorArrayV2TensorListReserve-lstm_439/TensorArrayV2/element_shape:output:0!lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_439/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_439/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_439/transpose:y:0Glstm_439/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_439/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_439/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_2StridedSlicelstm_439/transpose:y:0'lstm_439/strided_slice_2/stack:output:0)lstm_439/strided_slice_2/stack_1:output:0)lstm_439/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_439/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp5lstm_439_lstm_cell_559_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_439/lstm_cell_559/MatMulMatMul!lstm_439/strided_slice_2:output:04lstm_439/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_439/lstm_cell_559/MatMul_1MatMullstm_439/zeros:output:06lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_439/lstm_cell_559/addAddV2'lstm_439/lstm_cell_559/MatMul:product:0)lstm_439/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp6lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_439/lstm_cell_559/BiasAddBiasAddlstm_439/lstm_cell_559/add:z:05lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_439/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_439/lstm_cell_559/splitSplit/lstm_439/lstm_cell_559/split/split_dim:output:0'lstm_439/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_439/lstm_cell_559/SigmoidSigmoid%lstm_439/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_439/lstm_cell_559/Sigmoid_1Sigmoid%lstm_439/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mulMul$lstm_439/lstm_cell_559/Sigmoid_1:y:0lstm_439/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_439/lstm_cell_559/ReluRelu%lstm_439/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mul_1Mul"lstm_439/lstm_cell_559/Sigmoid:y:0)lstm_439/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/add_1AddV2lstm_439/lstm_cell_559/mul:z:0 lstm_439/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_439/lstm_cell_559/Sigmoid_2Sigmoid%lstm_439/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_439/lstm_cell_559/Relu_1Relu lstm_439/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_439/lstm_cell_559/mul_2Mul$lstm_439/lstm_cell_559/Sigmoid_2:y:0+lstm_439/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_439/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_439/TensorArrayV2_1TensorListReserve/lstm_439/TensorArrayV2_1/element_shape:output:0!lstm_439/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_439/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_439/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_439/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_439/whileWhile$lstm_439/while/loop_counter:output:0*lstm_439/while/maximum_iterations:output:0lstm_439/time:output:0!lstm_439/TensorArrayV2_1:handle:0lstm_439/zeros:output:0lstm_439/zeros_1:output:0!lstm_439/strided_slice_1:output:0@lstm_439/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_439_lstm_cell_559_matmul_readvariableop_resource7lstm_439_lstm_cell_559_matmul_1_readvariableop_resource6lstm_439_lstm_cell_559_biasadd_readvariableop_resource*
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
lstm_439_while_body_3390885*'
condR
lstm_439_while_cond_3390884*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_439/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_439/TensorArrayV2Stack/TensorListStackTensorListStacklstm_439/while:output:3Blstm_439/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_439/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_439/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_439/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_439/strided_slice_3StridedSlice4lstm_439/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_439/strided_slice_3/stack:output:0)lstm_439/strided_slice_3/stack_1:output:0)lstm_439/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_439/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_439/transpose_1	Transpose4lstm_439/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_439/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_439/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_440/ShapeShapelstm_439/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_440/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_440/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_440/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_sliceStridedSlicelstm_440/Shape:output:0%lstm_440/strided_slice/stack:output:0'lstm_440/strided_slice/stack_1:output:0'lstm_440/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_440/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_440/zeros/packedPacklstm_440/strided_slice:output:0 lstm_440/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_440/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_440/zerosFilllstm_440/zeros/packed:output:0lstm_440/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_440/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_440/zeros_1/packedPacklstm_440/strided_slice:output:0"lstm_440/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_440/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_440/zeros_1Fill lstm_440/zeros_1/packed:output:0lstm_440/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_440/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_440/transpose	Transposelstm_439/transpose_1:y:0 lstm_440/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_440/Shape_1Shapelstm_440/transpose:y:0*
T0*
_output_shapes
:h
lstm_440/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_440/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_1StridedSlicelstm_440/Shape_1:output:0'lstm_440/strided_slice_1/stack:output:0)lstm_440/strided_slice_1/stack_1:output:0)lstm_440/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_440/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_440/TensorArrayV2TensorListReserve-lstm_440/TensorArrayV2/element_shape:output:0!lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_440/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_440/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_440/transpose:y:0Glstm_440/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_440/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_440/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_2StridedSlicelstm_440/transpose:y:0'lstm_440/strided_slice_2/stack:output:0)lstm_440/strided_slice_2/stack_1:output:0)lstm_440/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_440/lstm_cell_560/MatMul/ReadVariableOpReadVariableOp5lstm_440_lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_440/lstm_cell_560/MatMulMatMul!lstm_440/strided_slice_2:output:04lstm_440/lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_440/lstm_cell_560/MatMul_1MatMullstm_440/zeros:output:06lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_440/lstm_cell_560/addAddV2'lstm_440/lstm_cell_560/MatMul:product:0)lstm_440/lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp6lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_440/lstm_cell_560/BiasAddBiasAddlstm_440/lstm_cell_560/add:z:05lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_440/lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_440/lstm_cell_560/splitSplit/lstm_440/lstm_cell_560/split/split_dim:output:0'lstm_440/lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_440/lstm_cell_560/SigmoidSigmoid%lstm_440/lstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_440/lstm_cell_560/Sigmoid_1Sigmoid%lstm_440/lstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mulMul$lstm_440/lstm_cell_560/Sigmoid_1:y:0lstm_440/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_440/lstm_cell_560/ReluRelu%lstm_440/lstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mul_1Mul"lstm_440/lstm_cell_560/Sigmoid:y:0)lstm_440/lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/add_1AddV2lstm_440/lstm_cell_560/mul:z:0 lstm_440/lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_440/lstm_cell_560/Sigmoid_2Sigmoid%lstm_440/lstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_440/lstm_cell_560/Relu_1Relu lstm_440/lstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_440/lstm_cell_560/mul_2Mul$lstm_440/lstm_cell_560/Sigmoid_2:y:0+lstm_440/lstm_cell_560/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_440/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_440/TensorArrayV2_1TensorListReserve/lstm_440/TensorArrayV2_1/element_shape:output:0!lstm_440/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_440/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_440/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_440/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_440/whileWhile$lstm_440/while/loop_counter:output:0*lstm_440/while/maximum_iterations:output:0lstm_440/time:output:0!lstm_440/TensorArrayV2_1:handle:0lstm_440/zeros:output:0lstm_440/zeros_1:output:0!lstm_440/strided_slice_1:output:0@lstm_440/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_440_lstm_cell_560_matmul_readvariableop_resource7lstm_440_lstm_cell_560_matmul_1_readvariableop_resource6lstm_440_lstm_cell_560_biasadd_readvariableop_resource*
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
lstm_440_while_body_3391024*'
condR
lstm_440_while_cond_3391023*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_440/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_440/TensorArrayV2Stack/TensorListStackTensorListStacklstm_440/while:output:3Blstm_440/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_440/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_440/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_440/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_440/strided_slice_3StridedSlice4lstm_440/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_440/strided_slice_3/stack:output:0)lstm_440/strided_slice_3/stack_1:output:0)lstm_440/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_440/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_440/transpose_1	Transpose4lstm_440/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_440/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_440/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_146/MatMul/ReadVariableOpReadVariableOp(dense_146_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_146/MatMulMatMul!lstm_440/strided_slice_3:output:0'dense_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_146/BiasAdd/ReadVariableOpReadVariableOp)dense_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_146/BiasAddBiasAdddense_146/MatMul:product:0(dense_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_146/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_146/BiasAdd/ReadVariableOp ^dense_146/MatMul/ReadVariableOp.^lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp-^lstm_438/lstm_cell_558/MatMul/ReadVariableOp/^lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp^lstm_438/while.^lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp-^lstm_439/lstm_cell_559/MatMul/ReadVariableOp/^lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp^lstm_439/while.^lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp-^lstm_440/lstm_cell_560/MatMul/ReadVariableOp/^lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp^lstm_440/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_146/BiasAdd/ReadVariableOp dense_146/BiasAdd/ReadVariableOp2B
dense_146/MatMul/ReadVariableOpdense_146/MatMul/ReadVariableOp2^
-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp-lstm_438/lstm_cell_558/BiasAdd/ReadVariableOp2\
,lstm_438/lstm_cell_558/MatMul/ReadVariableOp,lstm_438/lstm_cell_558/MatMul/ReadVariableOp2`
.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp.lstm_438/lstm_cell_558/MatMul_1/ReadVariableOp2 
lstm_438/whilelstm_438/while2^
-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp-lstm_439/lstm_cell_559/BiasAdd/ReadVariableOp2\
,lstm_439/lstm_cell_559/MatMul/ReadVariableOp,lstm_439/lstm_cell_559/MatMul/ReadVariableOp2`
.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp.lstm_439/lstm_cell_559/MatMul_1/ReadVariableOp2 
lstm_439/whilelstm_439/while2^
-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp-lstm_440/lstm_cell_560/BiasAdd/ReadVariableOp2\
,lstm_440/lstm_cell_560/MatMul/ReadVariableOp,lstm_440/lstm_cell_560/MatMul/ReadVariableOp2`
.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp.lstm_440/lstm_cell_560/MatMul_1/ReadVariableOp2 
lstm_440/whilelstm_440/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393103
inputs_0>
,lstm_cell_560_matmul_readvariableop_resource:2(@
.lstm_cell_560_matmul_1_readvariableop_resource:
(;
-lstm_cell_560_biasadd_readvariableop_resource:(
identity??$lstm_cell_560/BiasAdd/ReadVariableOp?#lstm_cell_560/MatMul/ReadVariableOp?%lstm_cell_560/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_560/MatMul/ReadVariableOpReadVariableOp,lstm_cell_560_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_560/MatMulMatMulstrided_slice_2:output:0+lstm_cell_560/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_560/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_560_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_560/MatMul_1MatMulzeros:output:0-lstm_cell_560/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_560/addAddV2lstm_cell_560/MatMul:product:0 lstm_cell_560/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_560/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_560_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_560/BiasAddBiasAddlstm_cell_560/add:z:0,lstm_cell_560/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_560/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_560/splitSplit&lstm_cell_560/split/split_dim:output:0lstm_cell_560/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_560/SigmoidSigmoidlstm_cell_560/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_1Sigmoidlstm_cell_560/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_560/mulMullstm_cell_560/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_560/ReluRelulstm_cell_560/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_1Mullstm_cell_560/Sigmoid:y:0 lstm_cell_560/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_560/add_1AddV2lstm_cell_560/mul:z:0lstm_cell_560/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_560/Sigmoid_2Sigmoidlstm_cell_560/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_560/Relu_1Relulstm_cell_560/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_560/mul_2Mullstm_cell_560/Sigmoid_2:y:0"lstm_cell_560/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_560_matmul_readvariableop_resource.lstm_cell_560_matmul_1_readvariableop_resource-lstm_cell_560_biasadd_readvariableop_resource*
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
while_body_3393019*
condR
while_cond_3393018*K
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
NoOpNoOp%^lstm_cell_560/BiasAdd/ReadVariableOp$^lstm_cell_560/MatMul/ReadVariableOp&^lstm_cell_560/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_560/BiasAdd/ReadVariableOp$lstm_cell_560/BiasAdd/ReadVariableOp2J
#lstm_cell_560/MatMul/ReadVariableOp#lstm_cell_560/MatMul/ReadVariableOp2N
%lstm_cell_560/MatMul_1/ReadVariableOp%lstm_cell_560/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_439_while_body_3390885.
*lstm_439_while_lstm_439_while_loop_counter4
0lstm_439_while_lstm_439_while_maximum_iterations
lstm_439_while_placeholder 
lstm_439_while_placeholder_1 
lstm_439_while_placeholder_2 
lstm_439_while_placeholder_3-
)lstm_439_while_lstm_439_strided_slice_1_0i
elstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0:	d?R
?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0:	2?M
>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0:	?
lstm_439_while_identity
lstm_439_while_identity_1
lstm_439_while_identity_2
lstm_439_while_identity_3
lstm_439_while_identity_4
lstm_439_while_identity_5+
'lstm_439_while_lstm_439_strided_slice_1g
clstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensorN
;lstm_439_while_lstm_cell_559_matmul_readvariableop_resource:	d?P
=lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource:	2?K
<lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource:	???3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp?2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp?4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp?
@lstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_439/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0lstm_439_while_placeholderIlstm_439/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOpReadVariableOp=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_439/while/lstm_cell_559/MatMulMatMul9lstm_439/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOpReadVariableOp?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_439/while/lstm_cell_559/MatMul_1MatMullstm_439_while_placeholder_2<lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_439/while/lstm_cell_559/addAddV2-lstm_439/while/lstm_cell_559/MatMul:product:0/lstm_439/while/lstm_cell_559/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOpReadVariableOp>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_439/while/lstm_cell_559/BiasAddBiasAdd$lstm_439/while/lstm_cell_559/add:z:0;lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_439/while/lstm_cell_559/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_439/while/lstm_cell_559/splitSplit5lstm_439/while/lstm_cell_559/split/split_dim:output:0-lstm_439/while/lstm_cell_559/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_439/while/lstm_cell_559/SigmoidSigmoid+lstm_439/while/lstm_cell_559/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_439/while/lstm_cell_559/Sigmoid_1Sigmoid+lstm_439/while/lstm_cell_559/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_439/while/lstm_cell_559/mulMul*lstm_439/while/lstm_cell_559/Sigmoid_1:y:0lstm_439_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_439/while/lstm_cell_559/ReluRelu+lstm_439/while/lstm_cell_559/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/mul_1Mul(lstm_439/while/lstm_cell_559/Sigmoid:y:0/lstm_439/while/lstm_cell_559/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/add_1AddV2$lstm_439/while/lstm_cell_559/mul:z:0&lstm_439/while/lstm_cell_559/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_439/while/lstm_cell_559/Sigmoid_2Sigmoid+lstm_439/while/lstm_cell_559/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_439/while/lstm_cell_559/Relu_1Relu&lstm_439/while/lstm_cell_559/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_439/while/lstm_cell_559/mul_2Mul*lstm_439/while/lstm_cell_559/Sigmoid_2:y:01lstm_439/while/lstm_cell_559/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_439/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_439_while_placeholder_1lstm_439_while_placeholder&lstm_439/while/lstm_cell_559/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_439/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_439/while/addAddV2lstm_439_while_placeholderlstm_439/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_439/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_439/while/add_1AddV2*lstm_439_while_lstm_439_while_loop_counterlstm_439/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_439/while/IdentityIdentitylstm_439/while/add_1:z:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_1Identity0lstm_439_while_lstm_439_while_maximum_iterations^lstm_439/while/NoOp*
T0*
_output_shapes
: t
lstm_439/while/Identity_2Identitylstm_439/while/add:z:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_3IdentityClstm_439/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_439/while/NoOp*
T0*
_output_shapes
: ?
lstm_439/while/Identity_4Identity&lstm_439/while/lstm_cell_559/mul_2:z:0^lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_439/while/Identity_5Identity&lstm_439/while/lstm_cell_559/add_1:z:0^lstm_439/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_439/while/NoOpNoOp4^lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp3^lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp5^lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_439_while_identity lstm_439/while/Identity:output:0"?
lstm_439_while_identity_1"lstm_439/while/Identity_1:output:0"?
lstm_439_while_identity_2"lstm_439/while/Identity_2:output:0"?
lstm_439_while_identity_3"lstm_439/while/Identity_3:output:0"?
lstm_439_while_identity_4"lstm_439/while/Identity_4:output:0"?
lstm_439_while_identity_5"lstm_439/while/Identity_5:output:0"T
'lstm_439_while_lstm_439_strided_slice_1)lstm_439_while_lstm_439_strided_slice_1_0"~
<lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource>lstm_439_while_lstm_cell_559_biasadd_readvariableop_resource_0"?
=lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource?lstm_439_while_lstm_cell_559_matmul_1_readvariableop_resource_0"|
;lstm_439_while_lstm_cell_559_matmul_readvariableop_resource=lstm_439_while_lstm_cell_559_matmul_readvariableop_resource_0"?
clstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensorelstm_439_while_tensorarrayv2read_tensorlistgetitem_lstm_439_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp3lstm_439/while/lstm_cell_559/BiasAdd/ReadVariableOp2h
2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp2lstm_439/while/lstm_cell_559/MatMul/ReadVariableOp2l
4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp4lstm_439/while/lstm_cell_559/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_560_layer_call_fn_3393638

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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3389286o
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3389890

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
while_cond_3392402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3392402___redundant_placeholder05
1while_while_cond_3392402___redundant_placeholder15
1while_while_cond_3392402___redundant_placeholder25
1while_while_cond_3392402___redundant_placeholder3
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3388790

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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393604

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
lstm_438_while_cond_3391172.
*lstm_438_while_lstm_438_while_loop_counter4
0lstm_438_while_lstm_438_while_maximum_iterations
lstm_438_while_placeholder 
lstm_438_while_placeholder_1 
lstm_438_while_placeholder_2 
lstm_438_while_placeholder_30
,lstm_438_while_less_lstm_438_strided_slice_1G
Clstm_438_while_lstm_438_while_cond_3391172___redundant_placeholder0G
Clstm_438_while_lstm_438_while_cond_3391172___redundant_placeholder1G
Clstm_438_while_lstm_438_while_cond_3391172___redundant_placeholder2G
Clstm_438_while_lstm_438_while_cond_3391172___redundant_placeholder3
lstm_438_while_identity
?
lstm_438/while/LessLesslstm_438_while_placeholder,lstm_438_while_less_lstm_438_strided_slice_1*
T0*
_output_shapes
: ]
lstm_438/while/IdentityIdentitylstm_438/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_438_while_identity lstm_438/while/Identity:output:0*(
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
*sequential_146_lstm_438_while_body_3388005L
Hsequential_146_lstm_438_while_sequential_146_lstm_438_while_loop_counterR
Nsequential_146_lstm_438_while_sequential_146_lstm_438_while_maximum_iterations-
)sequential_146_lstm_438_while_placeholder/
+sequential_146_lstm_438_while_placeholder_1/
+sequential_146_lstm_438_while_placeholder_2/
+sequential_146_lstm_438_while_placeholder_3K
Gsequential_146_lstm_438_while_sequential_146_lstm_438_strided_slice_1_0?
?sequential_146_lstm_438_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_438_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_146_lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0:	?a
Nsequential_146_lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0:	d?\
Msequential_146_lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0:	?*
&sequential_146_lstm_438_while_identity,
(sequential_146_lstm_438_while_identity_1,
(sequential_146_lstm_438_while_identity_2,
(sequential_146_lstm_438_while_identity_3,
(sequential_146_lstm_438_while_identity_4,
(sequential_146_lstm_438_while_identity_5I
Esequential_146_lstm_438_while_sequential_146_lstm_438_strided_slice_1?
?sequential_146_lstm_438_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_438_tensorarrayunstack_tensorlistfromtensor]
Jsequential_146_lstm_438_while_lstm_cell_558_matmul_readvariableop_resource:	?_
Lsequential_146_lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource:	d?Z
Ksequential_146_lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource:	???Bsequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp?Asequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp?Csequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp?
Osequential_146/lstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_146/lstm_438/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_146_lstm_438_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_438_tensorarrayunstack_tensorlistfromtensor_0)sequential_146_lstm_438_while_placeholderXsequential_146/lstm_438/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOpReadVariableOpLsequential_146_lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_146/lstm_438/while/lstm_cell_558/MatMulMatMulHsequential_146/lstm_438/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOpReadVariableOpNsequential_146_lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_146/lstm_438/while/lstm_cell_558/MatMul_1MatMul+sequential_146_lstm_438_while_placeholder_2Ksequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_146/lstm_438/while/lstm_cell_558/addAddV2<sequential_146/lstm_438/while/lstm_cell_558/MatMul:product:0>sequential_146/lstm_438/while/lstm_cell_558/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOpReadVariableOpMsequential_146_lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_146/lstm_438/while/lstm_cell_558/BiasAddBiasAdd3sequential_146/lstm_438/while/lstm_cell_558/add:z:0Jsequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_146/lstm_438/while/lstm_cell_558/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_146/lstm_438/while/lstm_cell_558/splitSplitDsequential_146/lstm_438/while/lstm_cell_558/split/split_dim:output:0<sequential_146/lstm_438/while/lstm_cell_558/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_146/lstm_438/while/lstm_cell_558/SigmoidSigmoid:sequential_146/lstm_438/while/lstm_cell_558/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_146/lstm_438/while/lstm_cell_558/Sigmoid_1Sigmoid:sequential_146/lstm_438/while/lstm_cell_558/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_146/lstm_438/while/lstm_cell_558/mulMul9sequential_146/lstm_438/while/lstm_cell_558/Sigmoid_1:y:0+sequential_146_lstm_438_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_146/lstm_438/while/lstm_cell_558/ReluRelu:sequential_146/lstm_438/while/lstm_cell_558/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_146/lstm_438/while/lstm_cell_558/mul_1Mul7sequential_146/lstm_438/while/lstm_cell_558/Sigmoid:y:0>sequential_146/lstm_438/while/lstm_cell_558/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_146/lstm_438/while/lstm_cell_558/add_1AddV23sequential_146/lstm_438/while/lstm_cell_558/mul:z:05sequential_146/lstm_438/while/lstm_cell_558/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_146/lstm_438/while/lstm_cell_558/Sigmoid_2Sigmoid:sequential_146/lstm_438/while/lstm_cell_558/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_146/lstm_438/while/lstm_cell_558/Relu_1Relu5sequential_146/lstm_438/while/lstm_cell_558/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_146/lstm_438/while/lstm_cell_558/mul_2Mul9sequential_146/lstm_438/while/lstm_cell_558/Sigmoid_2:y:0@sequential_146/lstm_438/while/lstm_cell_558/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_146/lstm_438/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_146_lstm_438_while_placeholder_1)sequential_146_lstm_438_while_placeholder5sequential_146/lstm_438/while/lstm_cell_558/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_146/lstm_438/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_146/lstm_438/while/addAddV2)sequential_146_lstm_438_while_placeholder,sequential_146/lstm_438/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_146/lstm_438/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_146/lstm_438/while/add_1AddV2Hsequential_146_lstm_438_while_sequential_146_lstm_438_while_loop_counter.sequential_146/lstm_438/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_146/lstm_438/while/IdentityIdentity'sequential_146/lstm_438/while/add_1:z:0#^sequential_146/lstm_438/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_438/while/Identity_1IdentityNsequential_146_lstm_438_while_sequential_146_lstm_438_while_maximum_iterations#^sequential_146/lstm_438/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_438/while/Identity_2Identity%sequential_146/lstm_438/while/add:z:0#^sequential_146/lstm_438/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_438/while/Identity_3IdentityRsequential_146/lstm_438/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_146/lstm_438/while/NoOp*
T0*
_output_shapes
: ?
(sequential_146/lstm_438/while/Identity_4Identity5sequential_146/lstm_438/while/lstm_cell_558/mul_2:z:0#^sequential_146/lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_146/lstm_438/while/Identity_5Identity5sequential_146/lstm_438/while/lstm_cell_558/add_1:z:0#^sequential_146/lstm_438/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_146/lstm_438/while/NoOpNoOpC^sequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOpB^sequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOpD^sequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_146_lstm_438_while_identity/sequential_146/lstm_438/while/Identity:output:0"]
(sequential_146_lstm_438_while_identity_11sequential_146/lstm_438/while/Identity_1:output:0"]
(sequential_146_lstm_438_while_identity_21sequential_146/lstm_438/while/Identity_2:output:0"]
(sequential_146_lstm_438_while_identity_31sequential_146/lstm_438/while/Identity_3:output:0"]
(sequential_146_lstm_438_while_identity_41sequential_146/lstm_438/while/Identity_4:output:0"]
(sequential_146_lstm_438_while_identity_51sequential_146/lstm_438/while/Identity_5:output:0"?
Ksequential_146_lstm_438_while_lstm_cell_558_biasadd_readvariableop_resourceMsequential_146_lstm_438_while_lstm_cell_558_biasadd_readvariableop_resource_0"?
Lsequential_146_lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resourceNsequential_146_lstm_438_while_lstm_cell_558_matmul_1_readvariableop_resource_0"?
Jsequential_146_lstm_438_while_lstm_cell_558_matmul_readvariableop_resourceLsequential_146_lstm_438_while_lstm_cell_558_matmul_readvariableop_resource_0"?
Esequential_146_lstm_438_while_sequential_146_lstm_438_strided_slice_1Gsequential_146_lstm_438_while_sequential_146_lstm_438_strided_slice_1_0"?
?sequential_146_lstm_438_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_438_tensorarrayunstack_tensorlistfromtensor?sequential_146_lstm_438_while_tensorarrayv2read_tensorlistgetitem_sequential_146_lstm_438_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOpBsequential_146/lstm_438/while/lstm_cell_558/BiasAdd/ReadVariableOp2?
Asequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOpAsequential_146/lstm_438/while/lstm_cell_558/MatMul/ReadVariableOp2?
Csequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOpCsequential_146/lstm_438/while/lstm_cell_558/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_438_input;
 serving_default_lstm_438_input:0?????????=
	dense_1460
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
2dense_146/kernel
:2dense_146/bias
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
0:.	?2lstm_438/lstm_cell_438/kernel
::8	d?2'lstm_438/lstm_cell_438/recurrent_kernel
*:(?2lstm_438/lstm_cell_438/bias
0:.	d?2lstm_439/lstm_cell_439/kernel
::8	2?2'lstm_439/lstm_cell_439/recurrent_kernel
*:(?2lstm_439/lstm_cell_439/bias
/:-2(2lstm_440/lstm_cell_440/kernel
9:7
(2'lstm_440/lstm_cell_440/recurrent_kernel
):'(2lstm_440/lstm_cell_440/bias
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
2Adam/dense_146/kernel/m
!:2Adam/dense_146/bias/m
5:3	?2$Adam/lstm_438/lstm_cell_438/kernel/m
?:=	d?2.Adam/lstm_438/lstm_cell_438/recurrent_kernel/m
/:-?2"Adam/lstm_438/lstm_cell_438/bias/m
5:3	d?2$Adam/lstm_439/lstm_cell_439/kernel/m
?:=	2?2.Adam/lstm_439/lstm_cell_439/recurrent_kernel/m
/:-?2"Adam/lstm_439/lstm_cell_439/bias/m
4:22(2$Adam/lstm_440/lstm_cell_440/kernel/m
>:<
(2.Adam/lstm_440/lstm_cell_440/recurrent_kernel/m
.:,(2"Adam/lstm_440/lstm_cell_440/bias/m
':%
2Adam/dense_146/kernel/v
!:2Adam/dense_146/bias/v
5:3	?2$Adam/lstm_438/lstm_cell_438/kernel/v
?:=	d?2.Adam/lstm_438/lstm_cell_438/recurrent_kernel/v
/:-?2"Adam/lstm_438/lstm_cell_438/bias/v
5:3	d?2$Adam/lstm_439/lstm_cell_439/kernel/v
?:=	2?2.Adam/lstm_439/lstm_cell_439/recurrent_kernel/v
/:-?2"Adam/lstm_439/lstm_cell_439/bias/v
4:22(2$Adam/lstm_440/lstm_cell_440/kernel/v
>:<
(2.Adam/lstm_440/lstm_cell_440/recurrent_kernel/v
.:,(2"Adam/lstm_440/lstm_cell_440/bias/v
?2?
0__inference_sequential_146_layer_call_fn_3389922
0__inference_sequential_146_layer_call_fn_3390660
0__inference_sequential_146_layer_call_fn_3390687
0__inference_sequential_146_layer_call_fn_3390538?
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391114
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391541
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390568
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390598?
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
"__inference__wrapped_model_3388373lstm_438_input"?
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
*__inference_lstm_438_layer_call_fn_3391552
*__inference_lstm_438_layer_call_fn_3391563
*__inference_lstm_438_layer_call_fn_3391574
*__inference_lstm_438_layer_call_fn_3391585?
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391728
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391871
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392014
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392157?
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
*__inference_lstm_439_layer_call_fn_3392168
*__inference_lstm_439_layer_call_fn_3392179
*__inference_lstm_439_layer_call_fn_3392190
*__inference_lstm_439_layer_call_fn_3392201?
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392344
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392487
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392630
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392773?
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
*__inference_lstm_440_layer_call_fn_3392784
*__inference_lstm_440_layer_call_fn_3392795
*__inference_lstm_440_layer_call_fn_3392806
*__inference_lstm_440_layer_call_fn_3392817?
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3392960
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393103
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393246
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393389?
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
+__inference_dense_146_layer_call_fn_3393398?
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
F__inference_dense_146_layer_call_and_return_conditional_losses_3393408?
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
%__inference_signature_wrapper_3390633lstm_438_input"?
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
/__inference_lstm_cell_558_layer_call_fn_3393425
/__inference_lstm_cell_558_layer_call_fn_3393442?
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393474
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393506?
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
/__inference_lstm_cell_559_layer_call_fn_3393523
/__inference_lstm_cell_559_layer_call_fn_3393540?
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393572
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393604?
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
/__inference_lstm_cell_560_layer_call_fn_3393621
/__inference_lstm_cell_560_layer_call_fn_3393638?
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393670
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393702?
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
"__inference__wrapped_model_3388373?-./012345!";?8
1?.
,?)
lstm_438_input?????????
? "5?2
0
	dense_146#? 
	dense_146??????????
F__inference_dense_146_layer_call_and_return_conditional_losses_3393408\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_146_layer_call_fn_3393398O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391728?-./O?L
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3391871?-./O?L
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392014q-./??<
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
E__inference_lstm_438_layer_call_and_return_conditional_losses_3392157q-./??<
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
*__inference_lstm_438_layer_call_fn_3391552}-./O?L
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
*__inference_lstm_438_layer_call_fn_3391563}-./O?L
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
*__inference_lstm_438_layer_call_fn_3391574d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_438_layer_call_fn_3391585d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392344?012O?L
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392487?012O?L
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392630q012??<
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
E__inference_lstm_439_layer_call_and_return_conditional_losses_3392773q012??<
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
*__inference_lstm_439_layer_call_fn_3392168}012O?L
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
*__inference_lstm_439_layer_call_fn_3392179}012O?L
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
*__inference_lstm_439_layer_call_fn_3392190d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_439_layer_call_fn_3392201d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_440_layer_call_and_return_conditional_losses_3392960}345O?L
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393103}345O?L
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393246m345??<
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
E__inference_lstm_440_layer_call_and_return_conditional_losses_3393389m345??<
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
*__inference_lstm_440_layer_call_fn_3392784p345O?L
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
*__inference_lstm_440_layer_call_fn_3392795p345O?L
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
*__inference_lstm_440_layer_call_fn_3392806`345??<
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
*__inference_lstm_440_layer_call_fn_3392817`345??<
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393474?-./??}
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
J__inference_lstm_cell_558_layer_call_and_return_conditional_losses_3393506?-./??}
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
/__inference_lstm_cell_558_layer_call_fn_3393425?-./??}
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
/__inference_lstm_cell_558_layer_call_fn_3393442?-./??}
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393572?012??}
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
J__inference_lstm_cell_559_layer_call_and_return_conditional_losses_3393604?012??}
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
/__inference_lstm_cell_559_layer_call_fn_3393523?012??}
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
/__inference_lstm_cell_559_layer_call_fn_3393540?012??}
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393670?345??}
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
J__inference_lstm_cell_560_layer_call_and_return_conditional_losses_3393702?345??}
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
/__inference_lstm_cell_560_layer_call_fn_3393621?345??}
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
/__inference_lstm_cell_560_layer_call_fn_3393638?345??}
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390568y-./012345!"C?@
9?6
,?)
lstm_438_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3390598y-./012345!"C?@
9?6
,?)
lstm_438_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391114q-./012345!";?8
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
K__inference_sequential_146_layer_call_and_return_conditional_losses_3391541q-./012345!";?8
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
0__inference_sequential_146_layer_call_fn_3389922l-./012345!"C?@
9?6
,?)
lstm_438_input?????????
p 

 
? "???????????
0__inference_sequential_146_layer_call_fn_3390538l-./012345!"C?@
9?6
,?)
lstm_438_input?????????
p

 
? "???????????
0__inference_sequential_146_layer_call_fn_3390660d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_146_layer_call_fn_3390687d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3390633?-./012345!"M?J
? 
C?@
>
lstm_438_input,?)
lstm_438_input?????????"5?2
0
	dense_146#? 
	dense_146?????????