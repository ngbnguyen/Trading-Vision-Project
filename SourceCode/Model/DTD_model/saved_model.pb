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
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_120/kernel
u
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes

:
*
dtype0
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
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
lstm_360/lstm_cell_360/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_360/lstm_cell_360/kernel
?
1lstm_360/lstm_cell_360/kernel/Read/ReadVariableOpReadVariableOplstm_360/lstm_cell_360/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_360/lstm_cell_360/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_360/lstm_cell_360/recurrent_kernel
?
;lstm_360/lstm_cell_360/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_360/lstm_cell_360/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_360/lstm_cell_360/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_360/lstm_cell_360/bias
?
/lstm_360/lstm_cell_360/bias/Read/ReadVariableOpReadVariableOplstm_360/lstm_cell_360/bias*
_output_shapes	
:?*
dtype0
?
lstm_361/lstm_cell_361/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_361/lstm_cell_361/kernel
?
1lstm_361/lstm_cell_361/kernel/Read/ReadVariableOpReadVariableOplstm_361/lstm_cell_361/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_361/lstm_cell_361/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_361/lstm_cell_361/recurrent_kernel
?
;lstm_361/lstm_cell_361/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_361/lstm_cell_361/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_361/lstm_cell_361/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_361/lstm_cell_361/bias
?
/lstm_361/lstm_cell_361/bias/Read/ReadVariableOpReadVariableOplstm_361/lstm_cell_361/bias*
_output_shapes	
:?*
dtype0
?
lstm_362/lstm_cell_362/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_362/lstm_cell_362/kernel
?
1lstm_362/lstm_cell_362/kernel/Read/ReadVariableOpReadVariableOplstm_362/lstm_cell_362/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_362/lstm_cell_362/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_362/lstm_cell_362/recurrent_kernel
?
;lstm_362/lstm_cell_362/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_362/lstm_cell_362/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_362/lstm_cell_362/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_362/lstm_cell_362/bias
?
/lstm_362/lstm_cell_362/bias/Read/ReadVariableOpReadVariableOplstm_362/lstm_cell_362/bias*
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
Adam/dense_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_120/kernel/m
?
+Adam/dense_120/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_120/bias/m
{
)Adam/dense_120/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_360/lstm_cell_360/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_360/lstm_cell_360/kernel/m
?
8Adam/lstm_360/lstm_cell_360/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_360/lstm_cell_360/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_360/lstm_cell_360/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_360/lstm_cell_360/recurrent_kernel/m
?
BAdam/lstm_360/lstm_cell_360/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_360/lstm_cell_360/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_360/lstm_cell_360/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_360/lstm_cell_360/bias/m
?
6Adam/lstm_360/lstm_cell_360/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_360/lstm_cell_360/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_361/lstm_cell_361/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_361/lstm_cell_361/kernel/m
?
8Adam/lstm_361/lstm_cell_361/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_361/lstm_cell_361/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_361/lstm_cell_361/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_361/lstm_cell_361/recurrent_kernel/m
?
BAdam/lstm_361/lstm_cell_361/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_361/lstm_cell_361/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_361/lstm_cell_361/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_361/lstm_cell_361/bias/m
?
6Adam/lstm_361/lstm_cell_361/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_361/lstm_cell_361/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_362/lstm_cell_362/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_362/lstm_cell_362/kernel/m
?
8Adam/lstm_362/lstm_cell_362/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_362/lstm_cell_362/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_362/lstm_cell_362/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_362/lstm_cell_362/recurrent_kernel/m
?
BAdam/lstm_362/lstm_cell_362/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_362/lstm_cell_362/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_362/lstm_cell_362/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_362/lstm_cell_362/bias/m
?
6Adam/lstm_362/lstm_cell_362/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_362/lstm_cell_362/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_120/kernel/v
?
+Adam/dense_120/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_120/bias/v
{
)Adam/dense_120/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_360/lstm_cell_360/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_360/lstm_cell_360/kernel/v
?
8Adam/lstm_360/lstm_cell_360/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_360/lstm_cell_360/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_360/lstm_cell_360/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_360/lstm_cell_360/recurrent_kernel/v
?
BAdam/lstm_360/lstm_cell_360/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_360/lstm_cell_360/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_360/lstm_cell_360/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_360/lstm_cell_360/bias/v
?
6Adam/lstm_360/lstm_cell_360/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_360/lstm_cell_360/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_361/lstm_cell_361/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_361/lstm_cell_361/kernel/v
?
8Adam/lstm_361/lstm_cell_361/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_361/lstm_cell_361/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_361/lstm_cell_361/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_361/lstm_cell_361/recurrent_kernel/v
?
BAdam/lstm_361/lstm_cell_361/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_361/lstm_cell_361/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_361/lstm_cell_361/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_361/lstm_cell_361/bias/v
?
6Adam/lstm_361/lstm_cell_361/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_361/lstm_cell_361/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_362/lstm_cell_362/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_362/lstm_cell_362/kernel/v
?
8Adam/lstm_362/lstm_cell_362/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_362/lstm_cell_362/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_362/lstm_cell_362/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_362/lstm_cell_362/recurrent_kernel/v
?
BAdam/lstm_362/lstm_cell_362/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_362/lstm_cell_362/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_362/lstm_cell_362/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_362/lstm_cell_362/bias/v
?
6Adam/lstm_362/lstm_cell_362/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_362/lstm_cell_362/bias/v*
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
VARIABLE_VALUEdense_120/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_120/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_360/lstm_cell_360/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_360/lstm_cell_360/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_360/lstm_cell_360/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_361/lstm_cell_361/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_361/lstm_cell_361/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_361/lstm_cell_361/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_362/lstm_cell_362/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_362/lstm_cell_362/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_362/lstm_cell_362/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_120/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_120/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_360/lstm_cell_360/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_360/lstm_cell_360/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_360/lstm_cell_360/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_361/lstm_cell_361/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_361/lstm_cell_361/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_361/lstm_cell_361/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_362/lstm_cell_362/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_362/lstm_cell_362/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_362/lstm_cell_362/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_120/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_120/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_360/lstm_cell_360/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_360/lstm_cell_360/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_360/lstm_cell_360/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_361/lstm_cell_361/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_361/lstm_cell_361/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_361/lstm_cell_361/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_362/lstm_cell_362/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_362/lstm_cell_362/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_362/lstm_cell_362/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_360_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_360_inputlstm_360/lstm_cell_360/kernel'lstm_360/lstm_cell_360/recurrent_kernellstm_360/lstm_cell_360/biaslstm_361/lstm_cell_361/kernel'lstm_361/lstm_cell_361/recurrent_kernellstm_361/lstm_cell_361/biaslstm_362/lstm_cell_362/kernel'lstm_362/lstm_cell_362/recurrent_kernellstm_362/lstm_cell_362/biasdense_120/kerneldense_120/bias*
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
%__inference_signature_wrapper_1647786
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_120/kernel/Read/ReadVariableOp"dense_120/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_360/lstm_cell_360/kernel/Read/ReadVariableOp;lstm_360/lstm_cell_360/recurrent_kernel/Read/ReadVariableOp/lstm_360/lstm_cell_360/bias/Read/ReadVariableOp1lstm_361/lstm_cell_361/kernel/Read/ReadVariableOp;lstm_361/lstm_cell_361/recurrent_kernel/Read/ReadVariableOp/lstm_361/lstm_cell_361/bias/Read/ReadVariableOp1lstm_362/lstm_cell_362/kernel/Read/ReadVariableOp;lstm_362/lstm_cell_362/recurrent_kernel/Read/ReadVariableOp/lstm_362/lstm_cell_362/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_120/kernel/m/Read/ReadVariableOp)Adam/dense_120/bias/m/Read/ReadVariableOp8Adam/lstm_360/lstm_cell_360/kernel/m/Read/ReadVariableOpBAdam/lstm_360/lstm_cell_360/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_360/lstm_cell_360/bias/m/Read/ReadVariableOp8Adam/lstm_361/lstm_cell_361/kernel/m/Read/ReadVariableOpBAdam/lstm_361/lstm_cell_361/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_361/lstm_cell_361/bias/m/Read/ReadVariableOp8Adam/lstm_362/lstm_cell_362/kernel/m/Read/ReadVariableOpBAdam/lstm_362/lstm_cell_362/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_362/lstm_cell_362/bias/m/Read/ReadVariableOp+Adam/dense_120/kernel/v/Read/ReadVariableOp)Adam/dense_120/bias/v/Read/ReadVariableOp8Adam/lstm_360/lstm_cell_360/kernel/v/Read/ReadVariableOpBAdam/lstm_360/lstm_cell_360/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_360/lstm_cell_360/bias/v/Read/ReadVariableOp8Adam/lstm_361/lstm_cell_361/kernel/v/Read/ReadVariableOpBAdam/lstm_361/lstm_cell_361/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_361/lstm_cell_361/bias/v/Read/ReadVariableOp8Adam/lstm_362/lstm_cell_362/kernel/v/Read/ReadVariableOpBAdam/lstm_362/lstm_cell_362/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_362/lstm_cell_362/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1650998
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_120/kerneldense_120/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_360/lstm_cell_360/kernel'lstm_360/lstm_cell_360/recurrent_kernellstm_360/lstm_cell_360/biaslstm_361/lstm_cell_361/kernel'lstm_361/lstm_cell_361/recurrent_kernellstm_361/lstm_cell_361/biaslstm_362/lstm_cell_362/kernel'lstm_362/lstm_cell_362/recurrent_kernellstm_362/lstm_cell_362/biastotalcountAdam/dense_120/kernel/mAdam/dense_120/bias/m$Adam/lstm_360/lstm_cell_360/kernel/m.Adam/lstm_360/lstm_cell_360/recurrent_kernel/m"Adam/lstm_360/lstm_cell_360/bias/m$Adam/lstm_361/lstm_cell_361/kernel/m.Adam/lstm_361/lstm_cell_361/recurrent_kernel/m"Adam/lstm_361/lstm_cell_361/bias/m$Adam/lstm_362/lstm_cell_362/kernel/m.Adam/lstm_362/lstm_cell_362/recurrent_kernel/m"Adam/lstm_362/lstm_cell_362/bias/mAdam/dense_120/kernel/vAdam/dense_120/bias/v$Adam/lstm_360/lstm_cell_360/kernel/v.Adam/lstm_360/lstm_cell_360/recurrent_kernel/v"Adam/lstm_360/lstm_cell_360/bias/v$Adam/lstm_361/lstm_cell_361/kernel/v.Adam/lstm_361/lstm_cell_361/recurrent_kernel/v"Adam/lstm_361/lstm_cell_361/bias/v$Adam/lstm_362/lstm_cell_362/kernel/v.Adam/lstm_362/lstm_cell_362/recurrent_kernel/v"Adam/lstm_362/lstm_cell_362/bias/v*4
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
#__inference__traced_restore_1651128??+
??
?
#__inference__traced_restore_1651128
file_prefix3
!assignvariableop_dense_120_kernel:
/
!assignvariableop_1_dense_120_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_360_lstm_cell_360_kernel:	?M
:assignvariableop_8_lstm_360_lstm_cell_360_recurrent_kernel:	d?=
.assignvariableop_9_lstm_360_lstm_cell_360_bias:	?D
1assignvariableop_10_lstm_361_lstm_cell_361_kernel:	d?N
;assignvariableop_11_lstm_361_lstm_cell_361_recurrent_kernel:	2?>
/assignvariableop_12_lstm_361_lstm_cell_361_bias:	?C
1assignvariableop_13_lstm_362_lstm_cell_362_kernel:2(M
;assignvariableop_14_lstm_362_lstm_cell_362_recurrent_kernel:
(=
/assignvariableop_15_lstm_362_lstm_cell_362_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_120_kernel_m:
7
)assignvariableop_19_adam_dense_120_bias_m:K
8assignvariableop_20_adam_lstm_360_lstm_cell_360_kernel_m:	?U
Bassignvariableop_21_adam_lstm_360_lstm_cell_360_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_360_lstm_cell_360_bias_m:	?K
8assignvariableop_23_adam_lstm_361_lstm_cell_361_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_361_lstm_cell_361_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_361_lstm_cell_361_bias_m:	?J
8assignvariableop_26_adam_lstm_362_lstm_cell_362_kernel_m:2(T
Bassignvariableop_27_adam_lstm_362_lstm_cell_362_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_362_lstm_cell_362_bias_m:(=
+assignvariableop_29_adam_dense_120_kernel_v:
7
)assignvariableop_30_adam_dense_120_bias_v:K
8assignvariableop_31_adam_lstm_360_lstm_cell_360_kernel_v:	?U
Bassignvariableop_32_adam_lstm_360_lstm_cell_360_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_360_lstm_cell_360_bias_v:	?K
8assignvariableop_34_adam_lstm_361_lstm_cell_361_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_361_lstm_cell_361_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_361_lstm_cell_361_bias_v:	?J
8assignvariableop_37_adam_lstm_362_lstm_cell_362_kernel_v:2(T
Bassignvariableop_38_adam_lstm_362_lstm_cell_362_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_362_lstm_cell_362_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_120_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_120_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_360_lstm_cell_360_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_360_lstm_cell_360_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_360_lstm_cell_360_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_361_lstm_cell_361_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_361_lstm_cell_361_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_361_lstm_cell_361_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_362_lstm_cell_362_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_362_lstm_cell_362_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_362_lstm_cell_362_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_120_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_120_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_360_lstm_cell_360_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_360_lstm_cell_360_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_360_lstm_cell_360_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_361_lstm_cell_361_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_361_lstm_cell_361_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_361_lstm_cell_361_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_362_lstm_cell_362_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_362_lstm_cell_362_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_362_lstm_cell_362_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_120_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_120_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_360_lstm_cell_360_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_360_lstm_cell_360_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_360_lstm_cell_360_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_361_lstm_cell_361_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_361_lstm_cell_361_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_361_lstm_cell_361_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_362_lstm_cell_362_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_362_lstm_cell_362_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_362_lstm_cell_362_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650659

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

lstm_362_while_body_1648177.
*lstm_362_while_lstm_362_while_loop_counter4
0lstm_362_while_lstm_362_while_maximum_iterations
lstm_362_while_placeholder 
lstm_362_while_placeholder_1 
lstm_362_while_placeholder_2 
lstm_362_while_placeholder_3-
)lstm_362_while_lstm_362_strided_slice_1_0i
elstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0:2(Q
?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(L
>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0:(
lstm_362_while_identity
lstm_362_while_identity_1
lstm_362_while_identity_2
lstm_362_while_identity_3
lstm_362_while_identity_4
lstm_362_while_identity_5+
'lstm_362_while_lstm_362_strided_slice_1g
clstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensorM
;lstm_362_while_lstm_cell_272_matmul_readvariableop_resource:2(O
=lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource:
(J
<lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource:(??3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp?2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp?4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp?
@lstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_362/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0lstm_362_while_placeholderIlstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_362/while/lstm_cell_272/MatMulMatMul9lstm_362/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_362/while/lstm_cell_272/MatMul_1MatMullstm_362_while_placeholder_2<lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_362/while/lstm_cell_272/addAddV2-lstm_362/while/lstm_cell_272/MatMul:product:0/lstm_362/while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_362/while/lstm_cell_272/BiasAddBiasAdd$lstm_362/while/lstm_cell_272/add:z:0;lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_362/while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_362/while/lstm_cell_272/splitSplit5lstm_362/while/lstm_cell_272/split/split_dim:output:0-lstm_362/while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_362/while/lstm_cell_272/SigmoidSigmoid+lstm_362/while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_362/while/lstm_cell_272/Sigmoid_1Sigmoid+lstm_362/while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_362/while/lstm_cell_272/mulMul*lstm_362/while/lstm_cell_272/Sigmoid_1:y:0lstm_362_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_362/while/lstm_cell_272/ReluRelu+lstm_362/while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/mul_1Mul(lstm_362/while/lstm_cell_272/Sigmoid:y:0/lstm_362/while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/add_1AddV2$lstm_362/while/lstm_cell_272/mul:z:0&lstm_362/while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_362/while/lstm_cell_272/Sigmoid_2Sigmoid+lstm_362/while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_362/while/lstm_cell_272/Relu_1Relu&lstm_362/while/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/mul_2Mul*lstm_362/while/lstm_cell_272/Sigmoid_2:y:01lstm_362/while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_362/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_362_while_placeholder_1lstm_362_while_placeholder&lstm_362/while/lstm_cell_272/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_362/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_362/while/addAddV2lstm_362_while_placeholderlstm_362/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_362/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_362/while/add_1AddV2*lstm_362_while_lstm_362_while_loop_counterlstm_362/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_362/while/IdentityIdentitylstm_362/while/add_1:z:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_1Identity0lstm_362_while_lstm_362_while_maximum_iterations^lstm_362/while/NoOp*
T0*
_output_shapes
: t
lstm_362/while/Identity_2Identitylstm_362/while/add:z:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_3IdentityClstm_362/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_4Identity&lstm_362/while/lstm_cell_272/mul_2:z:0^lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_362/while/Identity_5Identity&lstm_362/while/lstm_cell_272/add_1:z:0^lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_362/while/NoOpNoOp4^lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp3^lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp5^lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_362_while_identity lstm_362/while/Identity:output:0"?
lstm_362_while_identity_1"lstm_362/while/Identity_1:output:0"?
lstm_362_while_identity_2"lstm_362/while/Identity_2:output:0"?
lstm_362_while_identity_3"lstm_362/while/Identity_3:output:0"?
lstm_362_while_identity_4"lstm_362/while/Identity_4:output:0"?
lstm_362_while_identity_5"lstm_362/while/Identity_5:output:0"T
'lstm_362_while_lstm_362_strided_slice_1)lstm_362_while_lstm_362_strided_slice_1_0"~
<lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0"?
=lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0"|
;lstm_362_while_lstm_cell_272_matmul_readvariableop_resource=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0"?
clstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensorelstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp2h
2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp2l
4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_361_layer_call_fn_1649343

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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646875s
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646439

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
?K
?
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650113
inputs_0>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1650029*
condR
while_cond_1650028*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_361_while_cond_1648037.
*lstm_361_while_lstm_361_while_loop_counter4
0lstm_361_while_lstm_361_while_maximum_iterations
lstm_361_while_placeholder 
lstm_361_while_placeholder_1 
lstm_361_while_placeholder_2 
lstm_361_while_placeholder_30
,lstm_361_while_less_lstm_361_strided_slice_1G
Clstm_361_while_lstm_361_while_cond_1648037___redundant_placeholder0G
Clstm_361_while_lstm_361_while_cond_1648037___redundant_placeholder1G
Clstm_361_while_lstm_361_while_cond_1648037___redundant_placeholder2G
Clstm_361_while_lstm_361_while_cond_1648037___redundant_placeholder3
lstm_361_while_identity
?
lstm_361/while/LessLesslstm_361_while_placeholder,lstm_361_while_less_lstm_361_strided_slice_1*
T0*
_output_shapes
: ]
lstm_361/while/IdentityIdentitylstm_361/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_361_while_identity lstm_361/while/Identity:output:0*(
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
while_body_1646307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_272_1646331_0:2(/
while_lstm_cell_272_1646333_0:
(+
while_lstm_cell_272_1646335_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_272_1646331:2(-
while_lstm_cell_272_1646333:
()
while_lstm_cell_272_1646335:(??+while/lstm_cell_272/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_272/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_272_1646331_0while_lstm_cell_272_1646333_0while_lstm_cell_272_1646335_0*
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646293?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_272/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_272/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_272/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_272_1646331while_lstm_cell_272_1646331_0"<
while_lstm_cell_272_1646333while_lstm_cell_272_1646333_0"<
while_lstm_cell_272_1646335while_lstm_cell_272_1646335_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_272/StatefulPartitionedCall+while/lstm_cell_272/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649926

inputs?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1649842*
condR
while_cond_1649841*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_360_layer_call_and_return_conditional_losses_1646725

inputs?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1646641*
condR
while_cond_1646640*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1649082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649082___redundant_placeholder05
1while_while_cond_1649082___redundant_placeholder15
1while_while_cond_1649082___redundant_placeholder25
1while_while_cond_1649082___redundant_placeholder3
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
*__inference_lstm_362_layer_call_fn_1649948
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1646567o
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
while_body_1646941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1646791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_362_while_cond_1648603.
*lstm_362_while_lstm_362_while_loop_counter4
0lstm_362_while_lstm_362_while_maximum_iterations
lstm_362_while_placeholder 
lstm_362_while_placeholder_1 
lstm_362_while_placeholder_2 
lstm_362_while_placeholder_30
,lstm_362_while_less_lstm_362_strided_slice_1G
Clstm_362_while_lstm_362_while_cond_1648603___redundant_placeholder0G
Clstm_362_while_lstm_362_while_cond_1648603___redundant_placeholder1G
Clstm_362_while_lstm_362_while_cond_1648603___redundant_placeholder2G
Clstm_362_while_lstm_362_while_cond_1648603___redundant_placeholder3
lstm_362_while_identity
?
lstm_362/while/LessLesslstm_362_while_placeholder,lstm_362_while_less_lstm_362_strided_slice_1*
T0*
_output_shapes
: ]
lstm_362/while/IdentityIdentitylstm_362/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_362_while_identity lstm_362/while/Identity:output:0*(
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
while_body_1649226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_361_layer_call_fn_1649332
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646217|
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
?J
?
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649783

inputs?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1649699*
condR
while_cond_1649698*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1645943

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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1645676

inputs(
lstm_cell_270_1645594:	?(
lstm_cell_270_1645596:	d?$
lstm_cell_270_1645598:	?
identity??%lstm_cell_270/StatefulPartitionedCall?while;
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
%lstm_cell_270/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_270_1645594lstm_cell_270_1645596lstm_cell_270_1645598*
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645593n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_270_1645594lstm_cell_270_1645596lstm_cell_270_1645598*
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
while_body_1645607*
condR
while_cond_1645606*K
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
NoOpNoOp&^lstm_cell_270/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_270/StatefulPartitionedCall%lstm_cell_270/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1649412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649412___redundant_placeholder05
1while_while_cond_1649412___redundant_placeholder15
1while_while_cond_1649412___redundant_placeholder25
1while_while_cond_1649412___redundant_placeholder3
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
+__inference_dense_120_layer_call_fn_1650551

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
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043o
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

?
0__inference_sequential_120_layer_call_fn_1647813

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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647050o
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
?T
?
*sequential_120_lstm_362_while_body_1645436L
Hsequential_120_lstm_362_while_sequential_120_lstm_362_while_loop_counterR
Nsequential_120_lstm_362_while_sequential_120_lstm_362_while_maximum_iterations-
)sequential_120_lstm_362_while_placeholder/
+sequential_120_lstm_362_while_placeholder_1/
+sequential_120_lstm_362_while_placeholder_2/
+sequential_120_lstm_362_while_placeholder_3K
Gsequential_120_lstm_362_while_sequential_120_lstm_362_strided_slice_1_0?
?sequential_120_lstm_362_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_362_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_120_lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0:2(`
Nsequential_120_lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0:
([
Msequential_120_lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0:(*
&sequential_120_lstm_362_while_identity,
(sequential_120_lstm_362_while_identity_1,
(sequential_120_lstm_362_while_identity_2,
(sequential_120_lstm_362_while_identity_3,
(sequential_120_lstm_362_while_identity_4,
(sequential_120_lstm_362_while_identity_5I
Esequential_120_lstm_362_while_sequential_120_lstm_362_strided_slice_1?
?sequential_120_lstm_362_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_362_tensorarrayunstack_tensorlistfromtensor\
Jsequential_120_lstm_362_while_lstm_cell_272_matmul_readvariableop_resource:2(^
Lsequential_120_lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource:
(Y
Ksequential_120_lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource:(??Bsequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp?Asequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp?Csequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp?
Osequential_120/lstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_120/lstm_362/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_120_lstm_362_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_362_tensorarrayunstack_tensorlistfromtensor_0)sequential_120_lstm_362_while_placeholderXsequential_120/lstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOpLsequential_120_lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_120/lstm_362/while/lstm_cell_272/MatMulMatMulHsequential_120/lstm_362/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOpNsequential_120_lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_120/lstm_362/while/lstm_cell_272/MatMul_1MatMul+sequential_120_lstm_362_while_placeholder_2Ksequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_120/lstm_362/while/lstm_cell_272/addAddV2<sequential_120/lstm_362/while/lstm_cell_272/MatMul:product:0>sequential_120/lstm_362/while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOpMsequential_120_lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_120/lstm_362/while/lstm_cell_272/BiasAddBiasAdd3sequential_120/lstm_362/while/lstm_cell_272/add:z:0Jsequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_120/lstm_362/while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_120/lstm_362/while/lstm_cell_272/splitSplitDsequential_120/lstm_362/while/lstm_cell_272/split/split_dim:output:0<sequential_120/lstm_362/while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_120/lstm_362/while/lstm_cell_272/SigmoidSigmoid:sequential_120/lstm_362/while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_120/lstm_362/while/lstm_cell_272/Sigmoid_1Sigmoid:sequential_120/lstm_362/while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_120/lstm_362/while/lstm_cell_272/mulMul9sequential_120/lstm_362/while/lstm_cell_272/Sigmoid_1:y:0+sequential_120_lstm_362_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_120/lstm_362/while/lstm_cell_272/ReluRelu:sequential_120/lstm_362/while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_120/lstm_362/while/lstm_cell_272/mul_1Mul7sequential_120/lstm_362/while/lstm_cell_272/Sigmoid:y:0>sequential_120/lstm_362/while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_120/lstm_362/while/lstm_cell_272/add_1AddV23sequential_120/lstm_362/while/lstm_cell_272/mul:z:05sequential_120/lstm_362/while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_120/lstm_362/while/lstm_cell_272/Sigmoid_2Sigmoid:sequential_120/lstm_362/while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_120/lstm_362/while/lstm_cell_272/Relu_1Relu5sequential_120/lstm_362/while/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_120/lstm_362/while/lstm_cell_272/mul_2Mul9sequential_120/lstm_362/while/lstm_cell_272/Sigmoid_2:y:0@sequential_120/lstm_362/while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_120/lstm_362/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_120_lstm_362_while_placeholder_1)sequential_120_lstm_362_while_placeholder5sequential_120/lstm_362/while/lstm_cell_272/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_120/lstm_362/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_120/lstm_362/while/addAddV2)sequential_120_lstm_362_while_placeholder,sequential_120/lstm_362/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_120/lstm_362/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_120/lstm_362/while/add_1AddV2Hsequential_120_lstm_362_while_sequential_120_lstm_362_while_loop_counter.sequential_120/lstm_362/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_120/lstm_362/while/IdentityIdentity'sequential_120/lstm_362/while/add_1:z:0#^sequential_120/lstm_362/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_362/while/Identity_1IdentityNsequential_120_lstm_362_while_sequential_120_lstm_362_while_maximum_iterations#^sequential_120/lstm_362/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_362/while/Identity_2Identity%sequential_120/lstm_362/while/add:z:0#^sequential_120/lstm_362/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_362/while/Identity_3IdentityRsequential_120/lstm_362/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_120/lstm_362/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_362/while/Identity_4Identity5sequential_120/lstm_362/while/lstm_cell_272/mul_2:z:0#^sequential_120/lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_120/lstm_362/while/Identity_5Identity5sequential_120/lstm_362/while/lstm_cell_272/add_1:z:0#^sequential_120/lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_120/lstm_362/while/NoOpNoOpC^sequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOpB^sequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOpD^sequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_120_lstm_362_while_identity/sequential_120/lstm_362/while/Identity:output:0"]
(sequential_120_lstm_362_while_identity_11sequential_120/lstm_362/while/Identity_1:output:0"]
(sequential_120_lstm_362_while_identity_21sequential_120/lstm_362/while/Identity_2:output:0"]
(sequential_120_lstm_362_while_identity_31sequential_120/lstm_362/while/Identity_3:output:0"]
(sequential_120_lstm_362_while_identity_41sequential_120/lstm_362/while/Identity_4:output:0"]
(sequential_120_lstm_362_while_identity_51sequential_120/lstm_362/while/Identity_5:output:0"?
Ksequential_120_lstm_362_while_lstm_cell_272_biasadd_readvariableop_resourceMsequential_120_lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0"?
Lsequential_120_lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resourceNsequential_120_lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0"?
Jsequential_120_lstm_362_while_lstm_cell_272_matmul_readvariableop_resourceLsequential_120_lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0"?
Esequential_120_lstm_362_while_sequential_120_lstm_362_strided_slice_1Gsequential_120_lstm_362_while_sequential_120_lstm_362_strided_slice_1_0"?
?sequential_120_lstm_362_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_362_tensorarrayunstack_tensorlistfromtensor?sequential_120_lstm_362_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_362_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOpBsequential_120/lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp2?
Asequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOpAsequential_120/lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp2?
Csequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOpCsequential_120/lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_360_while_cond_1647898.
*lstm_360_while_lstm_360_while_loop_counter4
0lstm_360_while_lstm_360_while_maximum_iterations
lstm_360_while_placeholder 
lstm_360_while_placeholder_1 
lstm_360_while_placeholder_2 
lstm_360_while_placeholder_30
,lstm_360_while_less_lstm_360_strided_slice_1G
Clstm_360_while_lstm_360_while_cond_1647898___redundant_placeholder0G
Clstm_360_while_lstm_360_while_cond_1647898___redundant_placeholder1G
Clstm_360_while_lstm_360_while_cond_1647898___redundant_placeholder2G
Clstm_360_while_lstm_360_while_cond_1647898___redundant_placeholder3
lstm_360_while_identity
?
lstm_360/while/LessLesslstm_360_while_placeholder,lstm_360_while_less_lstm_360_strided_slice_1*
T0*
_output_shapes
: ]
lstm_360/while/IdentityIdentitylstm_360/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_360_while_identity lstm_360/while/Identity:output:0*(
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647639

inputs#
lstm_360_1647612:	?#
lstm_360_1647614:	d?
lstm_360_1647616:	?#
lstm_361_1647619:	d?#
lstm_361_1647621:	2?
lstm_361_1647623:	?"
lstm_362_1647626:2("
lstm_362_1647628:
(
lstm_362_1647630:(#
dense_120_1647633:

dense_120_1647635:
identity??!dense_120/StatefulPartitionedCall? lstm_360/StatefulPartitionedCall? lstm_361/StatefulPartitionedCall? lstm_362/StatefulPartitionedCall?
 lstm_360/StatefulPartitionedCallStatefulPartitionedCallinputslstm_360_1647612lstm_360_1647614lstm_360_1647616*
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1647571?
 lstm_361/StatefulPartitionedCallStatefulPartitionedCall)lstm_360/StatefulPartitionedCall:output:0lstm_361_1647619lstm_361_1647621lstm_361_1647623*
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1647406?
 lstm_362/StatefulPartitionedCallStatefulPartitionedCall)lstm_361/StatefulPartitionedCall:output:0lstm_362_1647626lstm_362_1647628lstm_362_1647630*
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647241?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall)lstm_362/StatefulPartitionedCall:output:0dense_120_1647633dense_120_1647635*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_120/StatefulPartitionedCall!^lstm_360/StatefulPartitionedCall!^lstm_361/StatefulPartitionedCall!^lstm_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2D
 lstm_360/StatefulPartitionedCall lstm_360/StatefulPartitionedCall2D
 lstm_361/StatefulPartitionedCall lstm_361/StatefulPartitionedCall2D
 lstm_362/StatefulPartitionedCall lstm_362/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_120_lstm_360_while_body_1645158L
Hsequential_120_lstm_360_while_sequential_120_lstm_360_while_loop_counterR
Nsequential_120_lstm_360_while_sequential_120_lstm_360_while_maximum_iterations-
)sequential_120_lstm_360_while_placeholder/
+sequential_120_lstm_360_while_placeholder_1/
+sequential_120_lstm_360_while_placeholder_2/
+sequential_120_lstm_360_while_placeholder_3K
Gsequential_120_lstm_360_while_sequential_120_lstm_360_strided_slice_1_0?
?sequential_120_lstm_360_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_360_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_120_lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0:	?a
Nsequential_120_lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?\
Msequential_120_lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0:	?*
&sequential_120_lstm_360_while_identity,
(sequential_120_lstm_360_while_identity_1,
(sequential_120_lstm_360_while_identity_2,
(sequential_120_lstm_360_while_identity_3,
(sequential_120_lstm_360_while_identity_4,
(sequential_120_lstm_360_while_identity_5I
Esequential_120_lstm_360_while_sequential_120_lstm_360_strided_slice_1?
?sequential_120_lstm_360_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_360_tensorarrayunstack_tensorlistfromtensor]
Jsequential_120_lstm_360_while_lstm_cell_270_matmul_readvariableop_resource:	?_
Lsequential_120_lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource:	d?Z
Ksequential_120_lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource:	???Bsequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp?Asequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp?Csequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp?
Osequential_120/lstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_120/lstm_360/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_120_lstm_360_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_360_tensorarrayunstack_tensorlistfromtensor_0)sequential_120_lstm_360_while_placeholderXsequential_120/lstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOpLsequential_120_lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_120/lstm_360/while/lstm_cell_270/MatMulMatMulHsequential_120/lstm_360/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOpNsequential_120_lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_120/lstm_360/while/lstm_cell_270/MatMul_1MatMul+sequential_120_lstm_360_while_placeholder_2Ksequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_120/lstm_360/while/lstm_cell_270/addAddV2<sequential_120/lstm_360/while/lstm_cell_270/MatMul:product:0>sequential_120/lstm_360/while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOpMsequential_120_lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_120/lstm_360/while/lstm_cell_270/BiasAddBiasAdd3sequential_120/lstm_360/while/lstm_cell_270/add:z:0Jsequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_120/lstm_360/while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_120/lstm_360/while/lstm_cell_270/splitSplitDsequential_120/lstm_360/while/lstm_cell_270/split/split_dim:output:0<sequential_120/lstm_360/while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_120/lstm_360/while/lstm_cell_270/SigmoidSigmoid:sequential_120/lstm_360/while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_120/lstm_360/while/lstm_cell_270/Sigmoid_1Sigmoid:sequential_120/lstm_360/while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_120/lstm_360/while/lstm_cell_270/mulMul9sequential_120/lstm_360/while/lstm_cell_270/Sigmoid_1:y:0+sequential_120_lstm_360_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_120/lstm_360/while/lstm_cell_270/ReluRelu:sequential_120/lstm_360/while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_120/lstm_360/while/lstm_cell_270/mul_1Mul7sequential_120/lstm_360/while/lstm_cell_270/Sigmoid:y:0>sequential_120/lstm_360/while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_120/lstm_360/while/lstm_cell_270/add_1AddV23sequential_120/lstm_360/while/lstm_cell_270/mul:z:05sequential_120/lstm_360/while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_120/lstm_360/while/lstm_cell_270/Sigmoid_2Sigmoid:sequential_120/lstm_360/while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_120/lstm_360/while/lstm_cell_270/Relu_1Relu5sequential_120/lstm_360/while/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_120/lstm_360/while/lstm_cell_270/mul_2Mul9sequential_120/lstm_360/while/lstm_cell_270/Sigmoid_2:y:0@sequential_120/lstm_360/while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_120/lstm_360/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_120_lstm_360_while_placeholder_1)sequential_120_lstm_360_while_placeholder5sequential_120/lstm_360/while/lstm_cell_270/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_120/lstm_360/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_120/lstm_360/while/addAddV2)sequential_120_lstm_360_while_placeholder,sequential_120/lstm_360/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_120/lstm_360/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_120/lstm_360/while/add_1AddV2Hsequential_120_lstm_360_while_sequential_120_lstm_360_while_loop_counter.sequential_120/lstm_360/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_120/lstm_360/while/IdentityIdentity'sequential_120/lstm_360/while/add_1:z:0#^sequential_120/lstm_360/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_360/while/Identity_1IdentityNsequential_120_lstm_360_while_sequential_120_lstm_360_while_maximum_iterations#^sequential_120/lstm_360/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_360/while/Identity_2Identity%sequential_120/lstm_360/while/add:z:0#^sequential_120/lstm_360/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_360/while/Identity_3IdentityRsequential_120/lstm_360/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_120/lstm_360/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_360/while/Identity_4Identity5sequential_120/lstm_360/while/lstm_cell_270/mul_2:z:0#^sequential_120/lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_120/lstm_360/while/Identity_5Identity5sequential_120/lstm_360/while/lstm_cell_270/add_1:z:0#^sequential_120/lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_120/lstm_360/while/NoOpNoOpC^sequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOpB^sequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOpD^sequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_120_lstm_360_while_identity/sequential_120/lstm_360/while/Identity:output:0"]
(sequential_120_lstm_360_while_identity_11sequential_120/lstm_360/while/Identity_1:output:0"]
(sequential_120_lstm_360_while_identity_21sequential_120/lstm_360/while/Identity_2:output:0"]
(sequential_120_lstm_360_while_identity_31sequential_120/lstm_360/while/Identity_3:output:0"]
(sequential_120_lstm_360_while_identity_41sequential_120/lstm_360/while/Identity_4:output:0"]
(sequential_120_lstm_360_while_identity_51sequential_120/lstm_360/while/Identity_5:output:0"?
Ksequential_120_lstm_360_while_lstm_cell_270_biasadd_readvariableop_resourceMsequential_120_lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0"?
Lsequential_120_lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resourceNsequential_120_lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0"?
Jsequential_120_lstm_360_while_lstm_cell_270_matmul_readvariableop_resourceLsequential_120_lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0"?
Esequential_120_lstm_360_while_sequential_120_lstm_360_strided_slice_1Gsequential_120_lstm_360_while_sequential_120_lstm_360_strided_slice_1_0"?
?sequential_120_lstm_360_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_360_tensorarrayunstack_tensorlistfromtensor?sequential_120_lstm_360_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_360_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOpBsequential_120/lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp2?
Asequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOpAsequential_120/lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp2?
Csequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOpCsequential_120/lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1649225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649225___redundant_placeholder05
1while_while_cond_1649225___redundant_placeholder15
1while_while_cond_1649225___redundant_placeholder25
1while_while_cond_1649225___redundant_placeholder3
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648694

inputsH
5lstm_360_lstm_cell_270_matmul_readvariableop_resource:	?J
7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource:	d?E
6lstm_360_lstm_cell_270_biasadd_readvariableop_resource:	?H
5lstm_361_lstm_cell_271_matmul_readvariableop_resource:	d?J
7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource:	2?E
6lstm_361_lstm_cell_271_biasadd_readvariableop_resource:	?G
5lstm_362_lstm_cell_272_matmul_readvariableop_resource:2(I
7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource:
(D
6lstm_362_lstm_cell_272_biasadd_readvariableop_resource:(:
(dense_120_matmul_readvariableop_resource:
7
)dense_120_biasadd_readvariableop_resource:
identity?? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp?-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp?,lstm_360/lstm_cell_270/MatMul/ReadVariableOp?.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp?lstm_360/while?-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp?,lstm_361/lstm_cell_271/MatMul/ReadVariableOp?.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp?lstm_361/while?-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp?,lstm_362/lstm_cell_272/MatMul/ReadVariableOp?.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp?lstm_362/whileD
lstm_360/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_360/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_360/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_360/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_sliceStridedSlicelstm_360/Shape:output:0%lstm_360/strided_slice/stack:output:0'lstm_360/strided_slice/stack_1:output:0'lstm_360/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_360/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_360/zeros/packedPacklstm_360/strided_slice:output:0 lstm_360/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_360/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_360/zerosFilllstm_360/zeros/packed:output:0lstm_360/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_360/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_360/zeros_1/packedPacklstm_360/strided_slice:output:0"lstm_360/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_360/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_360/zeros_1Fill lstm_360/zeros_1/packed:output:0lstm_360/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_360/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_360/transpose	Transposeinputs lstm_360/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_360/Shape_1Shapelstm_360/transpose:y:0*
T0*
_output_shapes
:h
lstm_360/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_360/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_1StridedSlicelstm_360/Shape_1:output:0'lstm_360/strided_slice_1/stack:output:0)lstm_360/strided_slice_1/stack_1:output:0)lstm_360/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_360/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_360/TensorArrayV2TensorListReserve-lstm_360/TensorArrayV2/element_shape:output:0!lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_360/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_360/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_360/transpose:y:0Glstm_360/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_360/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_360/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_2StridedSlicelstm_360/transpose:y:0'lstm_360/strided_slice_2/stack:output:0)lstm_360/strided_slice_2/stack_1:output:0)lstm_360/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_360/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp5lstm_360_lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_360/lstm_cell_270/MatMulMatMul!lstm_360/strided_slice_2:output:04lstm_360/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_360/lstm_cell_270/MatMul_1MatMullstm_360/zeros:output:06lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_360/lstm_cell_270/addAddV2'lstm_360/lstm_cell_270/MatMul:product:0)lstm_360/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp6lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_360/lstm_cell_270/BiasAddBiasAddlstm_360/lstm_cell_270/add:z:05lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_360/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_360/lstm_cell_270/splitSplit/lstm_360/lstm_cell_270/split/split_dim:output:0'lstm_360/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_360/lstm_cell_270/SigmoidSigmoid%lstm_360/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_360/lstm_cell_270/Sigmoid_1Sigmoid%lstm_360/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mulMul$lstm_360/lstm_cell_270/Sigmoid_1:y:0lstm_360/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_360/lstm_cell_270/ReluRelu%lstm_360/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mul_1Mul"lstm_360/lstm_cell_270/Sigmoid:y:0)lstm_360/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/add_1AddV2lstm_360/lstm_cell_270/mul:z:0 lstm_360/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_360/lstm_cell_270/Sigmoid_2Sigmoid%lstm_360/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_360/lstm_cell_270/Relu_1Relu lstm_360/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mul_2Mul$lstm_360/lstm_cell_270/Sigmoid_2:y:0+lstm_360/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_360/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_360/TensorArrayV2_1TensorListReserve/lstm_360/TensorArrayV2_1/element_shape:output:0!lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_360/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_360/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_360/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_360/whileWhile$lstm_360/while/loop_counter:output:0*lstm_360/while/maximum_iterations:output:0lstm_360/time:output:0!lstm_360/TensorArrayV2_1:handle:0lstm_360/zeros:output:0lstm_360/zeros_1:output:0!lstm_360/strided_slice_1:output:0@lstm_360/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_360_lstm_cell_270_matmul_readvariableop_resource7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource6lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
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
lstm_360_while_body_1648326*'
condR
lstm_360_while_cond_1648325*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_360/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_360/TensorArrayV2Stack/TensorListStackTensorListStacklstm_360/while:output:3Blstm_360/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_360/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_360/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_3StridedSlice4lstm_360/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_360/strided_slice_3/stack:output:0)lstm_360/strided_slice_3/stack_1:output:0)lstm_360/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_360/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_360/transpose_1	Transpose4lstm_360/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_360/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_360/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_361/ShapeShapelstm_360/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_361/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_361/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_361/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_sliceStridedSlicelstm_361/Shape:output:0%lstm_361/strided_slice/stack:output:0'lstm_361/strided_slice/stack_1:output:0'lstm_361/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_361/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_361/zeros/packedPacklstm_361/strided_slice:output:0 lstm_361/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_361/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_361/zerosFilllstm_361/zeros/packed:output:0lstm_361/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_361/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_361/zeros_1/packedPacklstm_361/strided_slice:output:0"lstm_361/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_361/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_361/zeros_1Fill lstm_361/zeros_1/packed:output:0lstm_361/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_361/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_361/transpose	Transposelstm_360/transpose_1:y:0 lstm_361/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_361/Shape_1Shapelstm_361/transpose:y:0*
T0*
_output_shapes
:h
lstm_361/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_361/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_1StridedSlicelstm_361/Shape_1:output:0'lstm_361/strided_slice_1/stack:output:0)lstm_361/strided_slice_1/stack_1:output:0)lstm_361/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_361/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_361/TensorArrayV2TensorListReserve-lstm_361/TensorArrayV2/element_shape:output:0!lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_361/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_361/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_361/transpose:y:0Glstm_361/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_361/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_361/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_2StridedSlicelstm_361/transpose:y:0'lstm_361/strided_slice_2/stack:output:0)lstm_361/strided_slice_2/stack_1:output:0)lstm_361/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_361/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp5lstm_361_lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_361/lstm_cell_271/MatMulMatMul!lstm_361/strided_slice_2:output:04lstm_361/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_361/lstm_cell_271/MatMul_1MatMullstm_361/zeros:output:06lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_361/lstm_cell_271/addAddV2'lstm_361/lstm_cell_271/MatMul:product:0)lstm_361/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp6lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_361/lstm_cell_271/BiasAddBiasAddlstm_361/lstm_cell_271/add:z:05lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_361/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_361/lstm_cell_271/splitSplit/lstm_361/lstm_cell_271/split/split_dim:output:0'lstm_361/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_361/lstm_cell_271/SigmoidSigmoid%lstm_361/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_361/lstm_cell_271/Sigmoid_1Sigmoid%lstm_361/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mulMul$lstm_361/lstm_cell_271/Sigmoid_1:y:0lstm_361/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_361/lstm_cell_271/ReluRelu%lstm_361/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mul_1Mul"lstm_361/lstm_cell_271/Sigmoid:y:0)lstm_361/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/add_1AddV2lstm_361/lstm_cell_271/mul:z:0 lstm_361/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_361/lstm_cell_271/Sigmoid_2Sigmoid%lstm_361/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_361/lstm_cell_271/Relu_1Relu lstm_361/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mul_2Mul$lstm_361/lstm_cell_271/Sigmoid_2:y:0+lstm_361/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_361/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_361/TensorArrayV2_1TensorListReserve/lstm_361/TensorArrayV2_1/element_shape:output:0!lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_361/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_361/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_361/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_361/whileWhile$lstm_361/while/loop_counter:output:0*lstm_361/while/maximum_iterations:output:0lstm_361/time:output:0!lstm_361/TensorArrayV2_1:handle:0lstm_361/zeros:output:0lstm_361/zeros_1:output:0!lstm_361/strided_slice_1:output:0@lstm_361/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_361_lstm_cell_271_matmul_readvariableop_resource7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource6lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
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
lstm_361_while_body_1648465*'
condR
lstm_361_while_cond_1648464*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_361/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_361/TensorArrayV2Stack/TensorListStackTensorListStacklstm_361/while:output:3Blstm_361/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_361/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_361/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_3StridedSlice4lstm_361/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_361/strided_slice_3/stack:output:0)lstm_361/strided_slice_3/stack_1:output:0)lstm_361/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_361/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_361/transpose_1	Transpose4lstm_361/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_361/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_361/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_362/ShapeShapelstm_361/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_362/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_362/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_362/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_sliceStridedSlicelstm_362/Shape:output:0%lstm_362/strided_slice/stack:output:0'lstm_362/strided_slice/stack_1:output:0'lstm_362/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_362/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_362/zeros/packedPacklstm_362/strided_slice:output:0 lstm_362/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_362/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_362/zerosFilllstm_362/zeros/packed:output:0lstm_362/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_362/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_362/zeros_1/packedPacklstm_362/strided_slice:output:0"lstm_362/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_362/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_362/zeros_1Fill lstm_362/zeros_1/packed:output:0lstm_362/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_362/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_362/transpose	Transposelstm_361/transpose_1:y:0 lstm_362/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_362/Shape_1Shapelstm_362/transpose:y:0*
T0*
_output_shapes
:h
lstm_362/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_362/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_1StridedSlicelstm_362/Shape_1:output:0'lstm_362/strided_slice_1/stack:output:0)lstm_362/strided_slice_1/stack_1:output:0)lstm_362/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_362/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_362/TensorArrayV2TensorListReserve-lstm_362/TensorArrayV2/element_shape:output:0!lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_362/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_362/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_362/transpose:y:0Glstm_362/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_362/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_362/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_2StridedSlicelstm_362/transpose:y:0'lstm_362/strided_slice_2/stack:output:0)lstm_362/strided_slice_2/stack_1:output:0)lstm_362/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_362/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp5lstm_362_lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_362/lstm_cell_272/MatMulMatMul!lstm_362/strided_slice_2:output:04lstm_362/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_362/lstm_cell_272/MatMul_1MatMullstm_362/zeros:output:06lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_362/lstm_cell_272/addAddV2'lstm_362/lstm_cell_272/MatMul:product:0)lstm_362/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp6lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_362/lstm_cell_272/BiasAddBiasAddlstm_362/lstm_cell_272/add:z:05lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_362/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_362/lstm_cell_272/splitSplit/lstm_362/lstm_cell_272/split/split_dim:output:0'lstm_362/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_362/lstm_cell_272/SigmoidSigmoid%lstm_362/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_362/lstm_cell_272/Sigmoid_1Sigmoid%lstm_362/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mulMul$lstm_362/lstm_cell_272/Sigmoid_1:y:0lstm_362/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_362/lstm_cell_272/ReluRelu%lstm_362/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mul_1Mul"lstm_362/lstm_cell_272/Sigmoid:y:0)lstm_362/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/add_1AddV2lstm_362/lstm_cell_272/mul:z:0 lstm_362/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_362/lstm_cell_272/Sigmoid_2Sigmoid%lstm_362/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_362/lstm_cell_272/Relu_1Relu lstm_362/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mul_2Mul$lstm_362/lstm_cell_272/Sigmoid_2:y:0+lstm_362/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_362/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_362/TensorArrayV2_1TensorListReserve/lstm_362/TensorArrayV2_1/element_shape:output:0!lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_362/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_362/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_362/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_362/whileWhile$lstm_362/while/loop_counter:output:0*lstm_362/while/maximum_iterations:output:0lstm_362/time:output:0!lstm_362/TensorArrayV2_1:handle:0lstm_362/zeros:output:0lstm_362/zeros_1:output:0!lstm_362/strided_slice_1:output:0@lstm_362/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_362_lstm_cell_272_matmul_readvariableop_resource7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource6lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
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
lstm_362_while_body_1648604*'
condR
lstm_362_while_cond_1648603*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_362/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_362/TensorArrayV2Stack/TensorListStackTensorListStacklstm_362/while:output:3Blstm_362/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_362/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_362/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_3StridedSlice4lstm_362/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_362/strided_slice_3/stack:output:0)lstm_362/strided_slice_3/stack_1:output:0)lstm_362/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_362/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_362/transpose_1	Transpose4lstm_362/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_362/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_362/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_120/MatMulMatMul!lstm_362/strided_slice_3:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_120/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp.^lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp-^lstm_360/lstm_cell_270/MatMul/ReadVariableOp/^lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp^lstm_360/while.^lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp-^lstm_361/lstm_cell_271/MatMul/ReadVariableOp/^lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp^lstm_361/while.^lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp-^lstm_362/lstm_cell_272/MatMul/ReadVariableOp/^lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp^lstm_362/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2^
-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp2\
,lstm_360/lstm_cell_270/MatMul/ReadVariableOp,lstm_360/lstm_cell_270/MatMul/ReadVariableOp2`
.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp2 
lstm_360/whilelstm_360/while2^
-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp2\
,lstm_361/lstm_cell_271/MatMul/ReadVariableOp,lstm_361/lstm_cell_271/MatMul/ReadVariableOp2`
.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp2 
lstm_361/whilelstm_361/while2^
-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp2\
,lstm_362/lstm_cell_272/MatMul/ReadVariableOp,lstm_362/lstm_cell_272/MatMul/ReadVariableOp2`
.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp2 
lstm_362/whilelstm_362/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1648797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1646147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646147___redundant_placeholder05
1while_while_cond_1646147___redundant_placeholder15
1while_while_cond_1646147___redundant_placeholder25
1while_while_cond_1646147___redundant_placeholder3
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
while_body_1650458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_270_layer_call_fn_1650595

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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645739o
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
while_cond_1646640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646640___redundant_placeholder05
1while_while_cond_1646640___redundant_placeholder15
1while_while_cond_1646640___redundant_placeholder25
1while_while_cond_1646640___redundant_placeholder3
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1646089

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
?T
?
*sequential_120_lstm_361_while_body_1645297L
Hsequential_120_lstm_361_while_sequential_120_lstm_361_while_loop_counterR
Nsequential_120_lstm_361_while_sequential_120_lstm_361_while_maximum_iterations-
)sequential_120_lstm_361_while_placeholder/
+sequential_120_lstm_361_while_placeholder_1/
+sequential_120_lstm_361_while_placeholder_2/
+sequential_120_lstm_361_while_placeholder_3K
Gsequential_120_lstm_361_while_sequential_120_lstm_361_strided_slice_1_0?
?sequential_120_lstm_361_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_361_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_120_lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0:	d?a
Nsequential_120_lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?\
Msequential_120_lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0:	?*
&sequential_120_lstm_361_while_identity,
(sequential_120_lstm_361_while_identity_1,
(sequential_120_lstm_361_while_identity_2,
(sequential_120_lstm_361_while_identity_3,
(sequential_120_lstm_361_while_identity_4,
(sequential_120_lstm_361_while_identity_5I
Esequential_120_lstm_361_while_sequential_120_lstm_361_strided_slice_1?
?sequential_120_lstm_361_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_361_tensorarrayunstack_tensorlistfromtensor]
Jsequential_120_lstm_361_while_lstm_cell_271_matmul_readvariableop_resource:	d?_
Lsequential_120_lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource:	2?Z
Ksequential_120_lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource:	???Bsequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp?Asequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp?Csequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp?
Osequential_120/lstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_120/lstm_361/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_120_lstm_361_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_361_tensorarrayunstack_tensorlistfromtensor_0)sequential_120_lstm_361_while_placeholderXsequential_120/lstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOpLsequential_120_lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_120/lstm_361/while/lstm_cell_271/MatMulMatMulHsequential_120/lstm_361/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOpNsequential_120_lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_120/lstm_361/while/lstm_cell_271/MatMul_1MatMul+sequential_120_lstm_361_while_placeholder_2Ksequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_120/lstm_361/while/lstm_cell_271/addAddV2<sequential_120/lstm_361/while/lstm_cell_271/MatMul:product:0>sequential_120/lstm_361/while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOpMsequential_120_lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_120/lstm_361/while/lstm_cell_271/BiasAddBiasAdd3sequential_120/lstm_361/while/lstm_cell_271/add:z:0Jsequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_120/lstm_361/while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_120/lstm_361/while/lstm_cell_271/splitSplitDsequential_120/lstm_361/while/lstm_cell_271/split/split_dim:output:0<sequential_120/lstm_361/while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_120/lstm_361/while/lstm_cell_271/SigmoidSigmoid:sequential_120/lstm_361/while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_120/lstm_361/while/lstm_cell_271/Sigmoid_1Sigmoid:sequential_120/lstm_361/while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_120/lstm_361/while/lstm_cell_271/mulMul9sequential_120/lstm_361/while/lstm_cell_271/Sigmoid_1:y:0+sequential_120_lstm_361_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_120/lstm_361/while/lstm_cell_271/ReluRelu:sequential_120/lstm_361/while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_120/lstm_361/while/lstm_cell_271/mul_1Mul7sequential_120/lstm_361/while/lstm_cell_271/Sigmoid:y:0>sequential_120/lstm_361/while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_120/lstm_361/while/lstm_cell_271/add_1AddV23sequential_120/lstm_361/while/lstm_cell_271/mul:z:05sequential_120/lstm_361/while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_120/lstm_361/while/lstm_cell_271/Sigmoid_2Sigmoid:sequential_120/lstm_361/while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_120/lstm_361/while/lstm_cell_271/Relu_1Relu5sequential_120/lstm_361/while/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_120/lstm_361/while/lstm_cell_271/mul_2Mul9sequential_120/lstm_361/while/lstm_cell_271/Sigmoid_2:y:0@sequential_120/lstm_361/while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_120/lstm_361/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_120_lstm_361_while_placeholder_1)sequential_120_lstm_361_while_placeholder5sequential_120/lstm_361/while/lstm_cell_271/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_120/lstm_361/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_120/lstm_361/while/addAddV2)sequential_120_lstm_361_while_placeholder,sequential_120/lstm_361/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_120/lstm_361/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_120/lstm_361/while/add_1AddV2Hsequential_120_lstm_361_while_sequential_120_lstm_361_while_loop_counter.sequential_120/lstm_361/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_120/lstm_361/while/IdentityIdentity'sequential_120/lstm_361/while/add_1:z:0#^sequential_120/lstm_361/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_361/while/Identity_1IdentityNsequential_120_lstm_361_while_sequential_120_lstm_361_while_maximum_iterations#^sequential_120/lstm_361/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_361/while/Identity_2Identity%sequential_120/lstm_361/while/add:z:0#^sequential_120/lstm_361/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_361/while/Identity_3IdentityRsequential_120/lstm_361/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_120/lstm_361/while/NoOp*
T0*
_output_shapes
: ?
(sequential_120/lstm_361/while/Identity_4Identity5sequential_120/lstm_361/while/lstm_cell_271/mul_2:z:0#^sequential_120/lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_120/lstm_361/while/Identity_5Identity5sequential_120/lstm_361/while/lstm_cell_271/add_1:z:0#^sequential_120/lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_120/lstm_361/while/NoOpNoOpC^sequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOpB^sequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOpD^sequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_120_lstm_361_while_identity/sequential_120/lstm_361/while/Identity:output:0"]
(sequential_120_lstm_361_while_identity_11sequential_120/lstm_361/while/Identity_1:output:0"]
(sequential_120_lstm_361_while_identity_21sequential_120/lstm_361/while/Identity_2:output:0"]
(sequential_120_lstm_361_while_identity_31sequential_120/lstm_361/while/Identity_3:output:0"]
(sequential_120_lstm_361_while_identity_41sequential_120/lstm_361/while/Identity_4:output:0"]
(sequential_120_lstm_361_while_identity_51sequential_120/lstm_361/while/Identity_5:output:0"?
Ksequential_120_lstm_361_while_lstm_cell_271_biasadd_readvariableop_resourceMsequential_120_lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0"?
Lsequential_120_lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resourceNsequential_120_lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0"?
Jsequential_120_lstm_361_while_lstm_cell_271_matmul_readvariableop_resourceLsequential_120_lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0"?
Esequential_120_lstm_361_while_sequential_120_lstm_361_strided_slice_1Gsequential_120_lstm_361_while_sequential_120_lstm_361_strided_slice_1_0"?
?sequential_120_lstm_361_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_361_tensorarrayunstack_tensorlistfromtensor?sequential_120_lstm_361_while_tensorarrayv2read_tensorlistgetitem_sequential_120_lstm_361_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOpBsequential_120/lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp2?
Asequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOpAsequential_120/lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp2?
Csequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOpCsequential_120/lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_360_layer_call_fn_1648727

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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1646725s
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649167

inputs?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1649083*
condR
while_cond_1649082*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_360_layer_call_and_return_conditional_losses_1647571

inputs?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1647487*
condR
while_cond_1647486*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1648796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1648796___redundant_placeholder05
1while_while_cond_1648796___redundant_placeholder15
1while_while_cond_1648796___redundant_placeholder25
1while_while_cond_1648796___redundant_placeholder3
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647721
lstm_360_input#
lstm_360_1647694:	?#
lstm_360_1647696:	d?
lstm_360_1647698:	?#
lstm_361_1647701:	d?#
lstm_361_1647703:	2?
lstm_361_1647705:	?"
lstm_362_1647708:2("
lstm_362_1647710:
(
lstm_362_1647712:(#
dense_120_1647715:

dense_120_1647717:
identity??!dense_120/StatefulPartitionedCall? lstm_360/StatefulPartitionedCall? lstm_361/StatefulPartitionedCall? lstm_362/StatefulPartitionedCall?
 lstm_360/StatefulPartitionedCallStatefulPartitionedCalllstm_360_inputlstm_360_1647694lstm_360_1647696lstm_360_1647698*
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1646725?
 lstm_361/StatefulPartitionedCallStatefulPartitionedCall)lstm_360/StatefulPartitionedCall:output:0lstm_361_1647701lstm_361_1647703lstm_361_1647705*
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646875?
 lstm_362/StatefulPartitionedCallStatefulPartitionedCall)lstm_361/StatefulPartitionedCall:output:0lstm_362_1647708lstm_362_1647710lstm_362_1647712*
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647025?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall)lstm_362/StatefulPartitionedCall:output:0dense_120_1647715dense_120_1647717*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_120/StatefulPartitionedCall!^lstm_360/StatefulPartitionedCall!^lstm_361/StatefulPartitionedCall!^lstm_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2D
 lstm_360/StatefulPartitionedCall lstm_360/StatefulPartitionedCall2D
 lstm_361/StatefulPartitionedCall lstm_361/StatefulPartitionedCall2D
 lstm_362/StatefulPartitionedCall lstm_362/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_360_input
?8
?
while_body_1649699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_272_layer_call_fn_1650774

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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646293o
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
"__inference__wrapped_model_1645526
lstm_360_inputW
Dsequential_120_lstm_360_lstm_cell_270_matmul_readvariableop_resource:	?Y
Fsequential_120_lstm_360_lstm_cell_270_matmul_1_readvariableop_resource:	d?T
Esequential_120_lstm_360_lstm_cell_270_biasadd_readvariableop_resource:	?W
Dsequential_120_lstm_361_lstm_cell_271_matmul_readvariableop_resource:	d?Y
Fsequential_120_lstm_361_lstm_cell_271_matmul_1_readvariableop_resource:	2?T
Esequential_120_lstm_361_lstm_cell_271_biasadd_readvariableop_resource:	?V
Dsequential_120_lstm_362_lstm_cell_272_matmul_readvariableop_resource:2(X
Fsequential_120_lstm_362_lstm_cell_272_matmul_1_readvariableop_resource:
(S
Esequential_120_lstm_362_lstm_cell_272_biasadd_readvariableop_resource:(I
7sequential_120_dense_120_matmul_readvariableop_resource:
F
8sequential_120_dense_120_biasadd_readvariableop_resource:
identity??/sequential_120/dense_120/BiasAdd/ReadVariableOp?.sequential_120/dense_120/MatMul/ReadVariableOp?<sequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp?;sequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOp?=sequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp?sequential_120/lstm_360/while?<sequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp?;sequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOp?=sequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp?sequential_120/lstm_361/while?<sequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp?;sequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOp?=sequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp?sequential_120/lstm_362/while[
sequential_120/lstm_360/ShapeShapelstm_360_input*
T0*
_output_shapes
:u
+sequential_120/lstm_360/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_120/lstm_360/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_120/lstm_360/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_120/lstm_360/strided_sliceStridedSlice&sequential_120/lstm_360/Shape:output:04sequential_120/lstm_360/strided_slice/stack:output:06sequential_120/lstm_360/strided_slice/stack_1:output:06sequential_120/lstm_360/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_120/lstm_360/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_120/lstm_360/zeros/packedPack.sequential_120/lstm_360/strided_slice:output:0/sequential_120/lstm_360/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_120/lstm_360/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_360/zerosFill-sequential_120/lstm_360/zeros/packed:output:0,sequential_120/lstm_360/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_120/lstm_360/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_120/lstm_360/zeros_1/packedPack.sequential_120/lstm_360/strided_slice:output:01sequential_120/lstm_360/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_120/lstm_360/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_360/zeros_1Fill/sequential_120/lstm_360/zeros_1/packed:output:0.sequential_120/lstm_360/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_120/lstm_360/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_120/lstm_360/transpose	Transposelstm_360_input/sequential_120/lstm_360/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_120/lstm_360/Shape_1Shape%sequential_120/lstm_360/transpose:y:0*
T0*
_output_shapes
:w
-sequential_120/lstm_360/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_360/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_360/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_360/strided_slice_1StridedSlice(sequential_120/lstm_360/Shape_1:output:06sequential_120/lstm_360/strided_slice_1/stack:output:08sequential_120/lstm_360/strided_slice_1/stack_1:output:08sequential_120/lstm_360/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_120/lstm_360/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_120/lstm_360/TensorArrayV2TensorListReserve<sequential_120/lstm_360/TensorArrayV2/element_shape:output:00sequential_120/lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_120/lstm_360/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_120/lstm_360/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_120/lstm_360/transpose:y:0Vsequential_120/lstm_360/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_120/lstm_360/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_360/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_360/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_360/strided_slice_2StridedSlice%sequential_120/lstm_360/transpose:y:06sequential_120/lstm_360/strided_slice_2/stack:output:08sequential_120/lstm_360/strided_slice_2/stack_1:output:08sequential_120/lstm_360/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOpReadVariableOpDsequential_120_lstm_360_lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_120/lstm_360/lstm_cell_270/MatMulMatMul0sequential_120/lstm_360/strided_slice_2:output:0Csequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOpFsequential_120_lstm_360_lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_120/lstm_360/lstm_cell_270/MatMul_1MatMul&sequential_120/lstm_360/zeros:output:0Esequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_120/lstm_360/lstm_cell_270/addAddV26sequential_120/lstm_360/lstm_cell_270/MatMul:product:08sequential_120/lstm_360/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOpEsequential_120_lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_120/lstm_360/lstm_cell_270/BiasAddBiasAdd-sequential_120/lstm_360/lstm_cell_270/add:z:0Dsequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_120/lstm_360/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_120/lstm_360/lstm_cell_270/splitSplit>sequential_120/lstm_360/lstm_cell_270/split/split_dim:output:06sequential_120/lstm_360/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_120/lstm_360/lstm_cell_270/SigmoidSigmoid4sequential_120/lstm_360/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_120/lstm_360/lstm_cell_270/Sigmoid_1Sigmoid4sequential_120/lstm_360/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_120/lstm_360/lstm_cell_270/mulMul3sequential_120/lstm_360/lstm_cell_270/Sigmoid_1:y:0(sequential_120/lstm_360/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_120/lstm_360/lstm_cell_270/ReluRelu4sequential_120/lstm_360/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_120/lstm_360/lstm_cell_270/mul_1Mul1sequential_120/lstm_360/lstm_cell_270/Sigmoid:y:08sequential_120/lstm_360/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_120/lstm_360/lstm_cell_270/add_1AddV2-sequential_120/lstm_360/lstm_cell_270/mul:z:0/sequential_120/lstm_360/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_120/lstm_360/lstm_cell_270/Sigmoid_2Sigmoid4sequential_120/lstm_360/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_120/lstm_360/lstm_cell_270/Relu_1Relu/sequential_120/lstm_360/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_120/lstm_360/lstm_cell_270/mul_2Mul3sequential_120/lstm_360/lstm_cell_270/Sigmoid_2:y:0:sequential_120/lstm_360/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_120/lstm_360/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_120/lstm_360/TensorArrayV2_1TensorListReserve>sequential_120/lstm_360/TensorArrayV2_1/element_shape:output:00sequential_120/lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_120/lstm_360/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_120/lstm_360/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_120/lstm_360/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_120/lstm_360/whileWhile3sequential_120/lstm_360/while/loop_counter:output:09sequential_120/lstm_360/while/maximum_iterations:output:0%sequential_120/lstm_360/time:output:00sequential_120/lstm_360/TensorArrayV2_1:handle:0&sequential_120/lstm_360/zeros:output:0(sequential_120/lstm_360/zeros_1:output:00sequential_120/lstm_360/strided_slice_1:output:0Osequential_120/lstm_360/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_120_lstm_360_lstm_cell_270_matmul_readvariableop_resourceFsequential_120_lstm_360_lstm_cell_270_matmul_1_readvariableop_resourceEsequential_120_lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
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
*sequential_120_lstm_360_while_body_1645158*6
cond.R,
*sequential_120_lstm_360_while_cond_1645157*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_120/lstm_360/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_120/lstm_360/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_120/lstm_360/while:output:3Qsequential_120/lstm_360/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_120/lstm_360/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_120/lstm_360/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_360/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_360/strided_slice_3StridedSliceCsequential_120/lstm_360/TensorArrayV2Stack/TensorListStack:tensor:06sequential_120/lstm_360/strided_slice_3/stack:output:08sequential_120/lstm_360/strided_slice_3/stack_1:output:08sequential_120/lstm_360/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_120/lstm_360/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_120/lstm_360/transpose_1	TransposeCsequential_120/lstm_360/TensorArrayV2Stack/TensorListStack:tensor:01sequential_120/lstm_360/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_120/lstm_360/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_120/lstm_361/ShapeShape'sequential_120/lstm_360/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_120/lstm_361/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_120/lstm_361/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_120/lstm_361/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_120/lstm_361/strided_sliceStridedSlice&sequential_120/lstm_361/Shape:output:04sequential_120/lstm_361/strided_slice/stack:output:06sequential_120/lstm_361/strided_slice/stack_1:output:06sequential_120/lstm_361/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_120/lstm_361/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_120/lstm_361/zeros/packedPack.sequential_120/lstm_361/strided_slice:output:0/sequential_120/lstm_361/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_120/lstm_361/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_361/zerosFill-sequential_120/lstm_361/zeros/packed:output:0,sequential_120/lstm_361/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_120/lstm_361/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_120/lstm_361/zeros_1/packedPack.sequential_120/lstm_361/strided_slice:output:01sequential_120/lstm_361/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_120/lstm_361/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_361/zeros_1Fill/sequential_120/lstm_361/zeros_1/packed:output:0.sequential_120/lstm_361/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_120/lstm_361/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_120/lstm_361/transpose	Transpose'sequential_120/lstm_360/transpose_1:y:0/sequential_120/lstm_361/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_120/lstm_361/Shape_1Shape%sequential_120/lstm_361/transpose:y:0*
T0*
_output_shapes
:w
-sequential_120/lstm_361/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_361/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_361/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_361/strided_slice_1StridedSlice(sequential_120/lstm_361/Shape_1:output:06sequential_120/lstm_361/strided_slice_1/stack:output:08sequential_120/lstm_361/strided_slice_1/stack_1:output:08sequential_120/lstm_361/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_120/lstm_361/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_120/lstm_361/TensorArrayV2TensorListReserve<sequential_120/lstm_361/TensorArrayV2/element_shape:output:00sequential_120/lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_120/lstm_361/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_120/lstm_361/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_120/lstm_361/transpose:y:0Vsequential_120/lstm_361/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_120/lstm_361/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_361/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_361/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_361/strided_slice_2StridedSlice%sequential_120/lstm_361/transpose:y:06sequential_120/lstm_361/strided_slice_2/stack:output:08sequential_120/lstm_361/strided_slice_2/stack_1:output:08sequential_120/lstm_361/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOpReadVariableOpDsequential_120_lstm_361_lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_120/lstm_361/lstm_cell_271/MatMulMatMul0sequential_120/lstm_361/strided_slice_2:output:0Csequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOpFsequential_120_lstm_361_lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_120/lstm_361/lstm_cell_271/MatMul_1MatMul&sequential_120/lstm_361/zeros:output:0Esequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_120/lstm_361/lstm_cell_271/addAddV26sequential_120/lstm_361/lstm_cell_271/MatMul:product:08sequential_120/lstm_361/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOpEsequential_120_lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_120/lstm_361/lstm_cell_271/BiasAddBiasAdd-sequential_120/lstm_361/lstm_cell_271/add:z:0Dsequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_120/lstm_361/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_120/lstm_361/lstm_cell_271/splitSplit>sequential_120/lstm_361/lstm_cell_271/split/split_dim:output:06sequential_120/lstm_361/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_120/lstm_361/lstm_cell_271/SigmoidSigmoid4sequential_120/lstm_361/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_120/lstm_361/lstm_cell_271/Sigmoid_1Sigmoid4sequential_120/lstm_361/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_120/lstm_361/lstm_cell_271/mulMul3sequential_120/lstm_361/lstm_cell_271/Sigmoid_1:y:0(sequential_120/lstm_361/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_120/lstm_361/lstm_cell_271/ReluRelu4sequential_120/lstm_361/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_120/lstm_361/lstm_cell_271/mul_1Mul1sequential_120/lstm_361/lstm_cell_271/Sigmoid:y:08sequential_120/lstm_361/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_120/lstm_361/lstm_cell_271/add_1AddV2-sequential_120/lstm_361/lstm_cell_271/mul:z:0/sequential_120/lstm_361/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_120/lstm_361/lstm_cell_271/Sigmoid_2Sigmoid4sequential_120/lstm_361/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_120/lstm_361/lstm_cell_271/Relu_1Relu/sequential_120/lstm_361/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_120/lstm_361/lstm_cell_271/mul_2Mul3sequential_120/lstm_361/lstm_cell_271/Sigmoid_2:y:0:sequential_120/lstm_361/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_120/lstm_361/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_120/lstm_361/TensorArrayV2_1TensorListReserve>sequential_120/lstm_361/TensorArrayV2_1/element_shape:output:00sequential_120/lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_120/lstm_361/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_120/lstm_361/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_120/lstm_361/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_120/lstm_361/whileWhile3sequential_120/lstm_361/while/loop_counter:output:09sequential_120/lstm_361/while/maximum_iterations:output:0%sequential_120/lstm_361/time:output:00sequential_120/lstm_361/TensorArrayV2_1:handle:0&sequential_120/lstm_361/zeros:output:0(sequential_120/lstm_361/zeros_1:output:00sequential_120/lstm_361/strided_slice_1:output:0Osequential_120/lstm_361/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_120_lstm_361_lstm_cell_271_matmul_readvariableop_resourceFsequential_120_lstm_361_lstm_cell_271_matmul_1_readvariableop_resourceEsequential_120_lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
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
*sequential_120_lstm_361_while_body_1645297*6
cond.R,
*sequential_120_lstm_361_while_cond_1645296*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_120/lstm_361/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_120/lstm_361/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_120/lstm_361/while:output:3Qsequential_120/lstm_361/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_120/lstm_361/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_120/lstm_361/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_361/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_361/strided_slice_3StridedSliceCsequential_120/lstm_361/TensorArrayV2Stack/TensorListStack:tensor:06sequential_120/lstm_361/strided_slice_3/stack:output:08sequential_120/lstm_361/strided_slice_3/stack_1:output:08sequential_120/lstm_361/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_120/lstm_361/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_120/lstm_361/transpose_1	TransposeCsequential_120/lstm_361/TensorArrayV2Stack/TensorListStack:tensor:01sequential_120/lstm_361/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_120/lstm_361/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_120/lstm_362/ShapeShape'sequential_120/lstm_361/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_120/lstm_362/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_120/lstm_362/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_120/lstm_362/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_120/lstm_362/strided_sliceStridedSlice&sequential_120/lstm_362/Shape:output:04sequential_120/lstm_362/strided_slice/stack:output:06sequential_120/lstm_362/strided_slice/stack_1:output:06sequential_120/lstm_362/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_120/lstm_362/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_120/lstm_362/zeros/packedPack.sequential_120/lstm_362/strided_slice:output:0/sequential_120/lstm_362/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_120/lstm_362/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_362/zerosFill-sequential_120/lstm_362/zeros/packed:output:0,sequential_120/lstm_362/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_120/lstm_362/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_120/lstm_362/zeros_1/packedPack.sequential_120/lstm_362/strided_slice:output:01sequential_120/lstm_362/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_120/lstm_362/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_120/lstm_362/zeros_1Fill/sequential_120/lstm_362/zeros_1/packed:output:0.sequential_120/lstm_362/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_120/lstm_362/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_120/lstm_362/transpose	Transpose'sequential_120/lstm_361/transpose_1:y:0/sequential_120/lstm_362/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_120/lstm_362/Shape_1Shape%sequential_120/lstm_362/transpose:y:0*
T0*
_output_shapes
:w
-sequential_120/lstm_362/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_362/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_362/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_362/strided_slice_1StridedSlice(sequential_120/lstm_362/Shape_1:output:06sequential_120/lstm_362/strided_slice_1/stack:output:08sequential_120/lstm_362/strided_slice_1/stack_1:output:08sequential_120/lstm_362/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_120/lstm_362/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_120/lstm_362/TensorArrayV2TensorListReserve<sequential_120/lstm_362/TensorArrayV2/element_shape:output:00sequential_120/lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_120/lstm_362/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_120/lstm_362/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_120/lstm_362/transpose:y:0Vsequential_120/lstm_362/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_120/lstm_362/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_362/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_120/lstm_362/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_362/strided_slice_2StridedSlice%sequential_120/lstm_362/transpose:y:06sequential_120/lstm_362/strided_slice_2/stack:output:08sequential_120/lstm_362/strided_slice_2/stack_1:output:08sequential_120/lstm_362/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOpReadVariableOpDsequential_120_lstm_362_lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_120/lstm_362/lstm_cell_272/MatMulMatMul0sequential_120/lstm_362/strided_slice_2:output:0Csequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOpFsequential_120_lstm_362_lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_120/lstm_362/lstm_cell_272/MatMul_1MatMul&sequential_120/lstm_362/zeros:output:0Esequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_120/lstm_362/lstm_cell_272/addAddV26sequential_120/lstm_362/lstm_cell_272/MatMul:product:08sequential_120/lstm_362/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOpEsequential_120_lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_120/lstm_362/lstm_cell_272/BiasAddBiasAdd-sequential_120/lstm_362/lstm_cell_272/add:z:0Dsequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_120/lstm_362/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_120/lstm_362/lstm_cell_272/splitSplit>sequential_120/lstm_362/lstm_cell_272/split/split_dim:output:06sequential_120/lstm_362/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_120/lstm_362/lstm_cell_272/SigmoidSigmoid4sequential_120/lstm_362/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_120/lstm_362/lstm_cell_272/Sigmoid_1Sigmoid4sequential_120/lstm_362/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_120/lstm_362/lstm_cell_272/mulMul3sequential_120/lstm_362/lstm_cell_272/Sigmoid_1:y:0(sequential_120/lstm_362/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_120/lstm_362/lstm_cell_272/ReluRelu4sequential_120/lstm_362/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_120/lstm_362/lstm_cell_272/mul_1Mul1sequential_120/lstm_362/lstm_cell_272/Sigmoid:y:08sequential_120/lstm_362/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_120/lstm_362/lstm_cell_272/add_1AddV2-sequential_120/lstm_362/lstm_cell_272/mul:z:0/sequential_120/lstm_362/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_120/lstm_362/lstm_cell_272/Sigmoid_2Sigmoid4sequential_120/lstm_362/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_120/lstm_362/lstm_cell_272/Relu_1Relu/sequential_120/lstm_362/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_120/lstm_362/lstm_cell_272/mul_2Mul3sequential_120/lstm_362/lstm_cell_272/Sigmoid_2:y:0:sequential_120/lstm_362/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_120/lstm_362/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_120/lstm_362/TensorArrayV2_1TensorListReserve>sequential_120/lstm_362/TensorArrayV2_1/element_shape:output:00sequential_120/lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_120/lstm_362/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_120/lstm_362/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_120/lstm_362/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_120/lstm_362/whileWhile3sequential_120/lstm_362/while/loop_counter:output:09sequential_120/lstm_362/while/maximum_iterations:output:0%sequential_120/lstm_362/time:output:00sequential_120/lstm_362/TensorArrayV2_1:handle:0&sequential_120/lstm_362/zeros:output:0(sequential_120/lstm_362/zeros_1:output:00sequential_120/lstm_362/strided_slice_1:output:0Osequential_120/lstm_362/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_120_lstm_362_lstm_cell_272_matmul_readvariableop_resourceFsequential_120_lstm_362_lstm_cell_272_matmul_1_readvariableop_resourceEsequential_120_lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
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
*sequential_120_lstm_362_while_body_1645436*6
cond.R,
*sequential_120_lstm_362_while_cond_1645435*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_120/lstm_362/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_120/lstm_362/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_120/lstm_362/while:output:3Qsequential_120/lstm_362/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_120/lstm_362/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_120/lstm_362/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_120/lstm_362/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_120/lstm_362/strided_slice_3StridedSliceCsequential_120/lstm_362/TensorArrayV2Stack/TensorListStack:tensor:06sequential_120/lstm_362/strided_slice_3/stack:output:08sequential_120/lstm_362/strided_slice_3/stack_1:output:08sequential_120/lstm_362/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_120/lstm_362/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_120/lstm_362/transpose_1	TransposeCsequential_120/lstm_362/TensorArrayV2Stack/TensorListStack:tensor:01sequential_120/lstm_362/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_120/lstm_362/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_120/dense_120/MatMul/ReadVariableOpReadVariableOp7sequential_120_dense_120_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_120/dense_120/MatMulMatMul0sequential_120/lstm_362/strided_slice_3:output:06sequential_120/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_120/dense_120/BiasAdd/ReadVariableOpReadVariableOp8sequential_120_dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_120/dense_120/BiasAddBiasAdd)sequential_120/dense_120/MatMul:product:07sequential_120/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_120/dense_120/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_120/dense_120/BiasAdd/ReadVariableOp/^sequential_120/dense_120/MatMul/ReadVariableOp=^sequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp<^sequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOp>^sequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp^sequential_120/lstm_360/while=^sequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp<^sequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOp>^sequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp^sequential_120/lstm_361/while=^sequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp<^sequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOp>^sequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp^sequential_120/lstm_362/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_120/dense_120/BiasAdd/ReadVariableOp/sequential_120/dense_120/BiasAdd/ReadVariableOp2`
.sequential_120/dense_120/MatMul/ReadVariableOp.sequential_120/dense_120/MatMul/ReadVariableOp2|
<sequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp<sequential_120/lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp2z
;sequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOp;sequential_120/lstm_360/lstm_cell_270/MatMul/ReadVariableOp2~
=sequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp=sequential_120/lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp2>
sequential_120/lstm_360/whilesequential_120/lstm_360/while2|
<sequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp<sequential_120/lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp2z
;sequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOp;sequential_120/lstm_361/lstm_cell_271/MatMul/ReadVariableOp2~
=sequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp=sequential_120/lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp2>
sequential_120/lstm_361/whilesequential_120/lstm_361/while2|
<sequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp<sequential_120/lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp2z
;sequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOp;sequential_120/lstm_362/lstm_cell_272/MatMul/ReadVariableOp2~
=sequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp=sequential_120/lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp2>
sequential_120/lstm_362/whilesequential_120/lstm_362/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_360_input
?8
?
while_body_1650029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_120_layer_call_fn_1647691
lstm_360_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_360_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647639o
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
_user_specified_namelstm_360_input
?

?
0__inference_sequential_120_layer_call_fn_1647840

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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647639o
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646875

inputs?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1646791*
condR
while_cond_1646790*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1647156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1647156___redundant_placeholder05
1while_while_cond_1647156___redundant_placeholder15
1while_while_cond_1647156___redundant_placeholder25
1while_while_cond_1647156___redundant_placeholder3
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
 __inference__traced_save_1650998
file_prefix/
+savev2_dense_120_kernel_read_readvariableop-
)savev2_dense_120_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_360_lstm_cell_360_kernel_read_readvariableopF
Bsavev2_lstm_360_lstm_cell_360_recurrent_kernel_read_readvariableop:
6savev2_lstm_360_lstm_cell_360_bias_read_readvariableop<
8savev2_lstm_361_lstm_cell_361_kernel_read_readvariableopF
Bsavev2_lstm_361_lstm_cell_361_recurrent_kernel_read_readvariableop:
6savev2_lstm_361_lstm_cell_361_bias_read_readvariableop<
8savev2_lstm_362_lstm_cell_362_kernel_read_readvariableopF
Bsavev2_lstm_362_lstm_cell_362_recurrent_kernel_read_readvariableop:
6savev2_lstm_362_lstm_cell_362_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_120_kernel_m_read_readvariableop4
0savev2_adam_dense_120_bias_m_read_readvariableopC
?savev2_adam_lstm_360_lstm_cell_360_kernel_m_read_readvariableopM
Isavev2_adam_lstm_360_lstm_cell_360_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_360_lstm_cell_360_bias_m_read_readvariableopC
?savev2_adam_lstm_361_lstm_cell_361_kernel_m_read_readvariableopM
Isavev2_adam_lstm_361_lstm_cell_361_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_361_lstm_cell_361_bias_m_read_readvariableopC
?savev2_adam_lstm_362_lstm_cell_362_kernel_m_read_readvariableopM
Isavev2_adam_lstm_362_lstm_cell_362_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_362_lstm_cell_362_bias_m_read_readvariableop6
2savev2_adam_dense_120_kernel_v_read_readvariableop4
0savev2_adam_dense_120_bias_v_read_readvariableopC
?savev2_adam_lstm_360_lstm_cell_360_kernel_v_read_readvariableopM
Isavev2_adam_lstm_360_lstm_cell_360_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_360_lstm_cell_360_bias_v_read_readvariableopC
?savev2_adam_lstm_361_lstm_cell_361_kernel_v_read_readvariableopM
Isavev2_adam_lstm_361_lstm_cell_361_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_361_lstm_cell_361_bias_v_read_readvariableopC
?savev2_adam_lstm_362_lstm_cell_362_kernel_v_read_readvariableopM
Isavev2_adam_lstm_362_lstm_cell_362_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_362_lstm_cell_362_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_120_kernel_read_readvariableop)savev2_dense_120_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_360_lstm_cell_360_kernel_read_readvariableopBsavev2_lstm_360_lstm_cell_360_recurrent_kernel_read_readvariableop6savev2_lstm_360_lstm_cell_360_bias_read_readvariableop8savev2_lstm_361_lstm_cell_361_kernel_read_readvariableopBsavev2_lstm_361_lstm_cell_361_recurrent_kernel_read_readvariableop6savev2_lstm_361_lstm_cell_361_bias_read_readvariableop8savev2_lstm_362_lstm_cell_362_kernel_read_readvariableopBsavev2_lstm_362_lstm_cell_362_recurrent_kernel_read_readvariableop6savev2_lstm_362_lstm_cell_362_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_120_kernel_m_read_readvariableop0savev2_adam_dense_120_bias_m_read_readvariableop?savev2_adam_lstm_360_lstm_cell_360_kernel_m_read_readvariableopIsavev2_adam_lstm_360_lstm_cell_360_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_360_lstm_cell_360_bias_m_read_readvariableop?savev2_adam_lstm_361_lstm_cell_361_kernel_m_read_readvariableopIsavev2_adam_lstm_361_lstm_cell_361_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_361_lstm_cell_361_bias_m_read_readvariableop?savev2_adam_lstm_362_lstm_cell_362_kernel_m_read_readvariableopIsavev2_adam_lstm_362_lstm_cell_362_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_362_lstm_cell_362_bias_m_read_readvariableop2savev2_adam_dense_120_kernel_v_read_readvariableop0savev2_adam_dense_120_bias_v_read_readvariableop?savev2_adam_lstm_360_lstm_cell_360_kernel_v_read_readvariableopIsavev2_adam_lstm_360_lstm_cell_360_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_360_lstm_cell_360_bias_v_read_readvariableop?savev2_adam_lstm_361_lstm_cell_361_kernel_v_read_readvariableopIsavev2_adam_lstm_361_lstm_cell_361_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_361_lstm_cell_361_bias_v_read_readvariableop?savev2_adam_lstm_362_lstm_cell_362_kernel_v_read_readvariableopIsavev2_adam_lstm_362_lstm_cell_362_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_362_lstm_cell_362_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?#
?
while_body_1646148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_271_1646172_0:	d?0
while_lstm_cell_271_1646174_0:	2?,
while_lstm_cell_271_1646176_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_271_1646172:	d?.
while_lstm_cell_271_1646174:	2?*
while_lstm_cell_271_1646176:	???+while/lstm_cell_271/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_271/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_271_1646172_0while_lstm_cell_271_1646174_0while_lstm_cell_271_1646176_0*
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1646089?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_271/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_271/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_271/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_271/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_271_1646172while_lstm_cell_271_1646172_0"<
while_lstm_cell_271_1646174while_lstm_cell_271_1646174_0"<
while_lstm_cell_271_1646176while_lstm_cell_271_1646176_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_271/StatefulPartitionedCall+while/lstm_cell_271/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1648881
inputs_0?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1648797*
condR
while_cond_1648796*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_361_while_body_1648038.
*lstm_361_while_lstm_361_while_loop_counter4
0lstm_361_while_lstm_361_while_maximum_iterations
lstm_361_while_placeholder 
lstm_361_while_placeholder_1 
lstm_361_while_placeholder_2 
lstm_361_while_placeholder_3-
)lstm_361_while_lstm_361_strided_slice_1_0i
elstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0:	d?R
?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?M
>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
lstm_361_while_identity
lstm_361_while_identity_1
lstm_361_while_identity_2
lstm_361_while_identity_3
lstm_361_while_identity_4
lstm_361_while_identity_5+
'lstm_361_while_lstm_361_strided_slice_1g
clstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensorN
;lstm_361_while_lstm_cell_271_matmul_readvariableop_resource:	d?P
=lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource:	2?K
<lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource:	???3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp?2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp?4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp?
@lstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_361/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0lstm_361_while_placeholderIlstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_361/while/lstm_cell_271/MatMulMatMul9lstm_361/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_361/while/lstm_cell_271/MatMul_1MatMullstm_361_while_placeholder_2<lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_361/while/lstm_cell_271/addAddV2-lstm_361/while/lstm_cell_271/MatMul:product:0/lstm_361/while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_361/while/lstm_cell_271/BiasAddBiasAdd$lstm_361/while/lstm_cell_271/add:z:0;lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_361/while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_361/while/lstm_cell_271/splitSplit5lstm_361/while/lstm_cell_271/split/split_dim:output:0-lstm_361/while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_361/while/lstm_cell_271/SigmoidSigmoid+lstm_361/while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_361/while/lstm_cell_271/Sigmoid_1Sigmoid+lstm_361/while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_361/while/lstm_cell_271/mulMul*lstm_361/while/lstm_cell_271/Sigmoid_1:y:0lstm_361_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_361/while/lstm_cell_271/ReluRelu+lstm_361/while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/mul_1Mul(lstm_361/while/lstm_cell_271/Sigmoid:y:0/lstm_361/while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/add_1AddV2$lstm_361/while/lstm_cell_271/mul:z:0&lstm_361/while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_361/while/lstm_cell_271/Sigmoid_2Sigmoid+lstm_361/while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_361/while/lstm_cell_271/Relu_1Relu&lstm_361/while/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/mul_2Mul*lstm_361/while/lstm_cell_271/Sigmoid_2:y:01lstm_361/while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_361/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_361_while_placeholder_1lstm_361_while_placeholder&lstm_361/while/lstm_cell_271/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_361/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_361/while/addAddV2lstm_361_while_placeholderlstm_361/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_361/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_361/while/add_1AddV2*lstm_361_while_lstm_361_while_loop_counterlstm_361/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_361/while/IdentityIdentitylstm_361/while/add_1:z:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_1Identity0lstm_361_while_lstm_361_while_maximum_iterations^lstm_361/while/NoOp*
T0*
_output_shapes
: t
lstm_361/while/Identity_2Identitylstm_361/while/add:z:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_3IdentityClstm_361/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_4Identity&lstm_361/while/lstm_cell_271/mul_2:z:0^lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_361/while/Identity_5Identity&lstm_361/while/lstm_cell_271/add_1:z:0^lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_361/while/NoOpNoOp4^lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp3^lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp5^lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_361_while_identity lstm_361/while/Identity:output:0"?
lstm_361_while_identity_1"lstm_361/while/Identity_1:output:0"?
lstm_361_while_identity_2"lstm_361/while/Identity_2:output:0"?
lstm_361_while_identity_3"lstm_361/while/Identity_3:output:0"?
lstm_361_while_identity_4"lstm_361/while/Identity_4:output:0"?
lstm_361_while_identity_5"lstm_361/while/Identity_5:output:0"T
'lstm_361_while_lstm_361_strided_slice_1)lstm_361_while_lstm_361_strided_slice_1_0"~
<lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0"?
=lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0"|
;lstm_361_while_lstm_cell_271_matmul_readvariableop_resource=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0"?
clstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensorelstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp2h
2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp2l
4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1650561

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
?K
?
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649024
inputs_0?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1648940*
condR
while_cond_1648939*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1649413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_361_layer_call_fn_1649354

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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1647406s
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650542

inputs>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1650458*
condR
while_cond_1650457*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_361_layer_call_and_return_conditional_losses_1647406

inputs?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1647322*
condR
while_cond_1647321*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645593

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
*__inference_lstm_362_layer_call_fn_1649970

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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647241o
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650725

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
lstm_362_while_cond_1648176.
*lstm_362_while_lstm_362_while_loop_counter4
0lstm_362_while_lstm_362_while_maximum_iterations
lstm_362_while_placeholder 
lstm_362_while_placeholder_1 
lstm_362_while_placeholder_2 
lstm_362_while_placeholder_30
,lstm_362_while_less_lstm_362_strided_slice_1G
Clstm_362_while_lstm_362_while_cond_1648176___redundant_placeholder0G
Clstm_362_while_lstm_362_while_cond_1648176___redundant_placeholder1G
Clstm_362_while_lstm_362_while_cond_1648176___redundant_placeholder2G
Clstm_362_while_lstm_362_while_cond_1648176___redundant_placeholder3
lstm_362_while_identity
?
lstm_362/while/LessLesslstm_362_while_placeholder,lstm_362_while_less_lstm_362_strided_slice_1*
T0*
_output_shapes
: ]
lstm_362/while/IdentityIdentitylstm_362/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_362_while_identity lstm_362/while/Identity:output:0*(
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
/__inference_lstm_cell_270_layer_call_fn_1650578

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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645593o
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650627

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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649640
inputs_0?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1649556*
condR
while_cond_1649555*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1650457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1650457___redundant_placeholder05
1while_while_cond_1650457___redundant_placeholder15
1while_while_cond_1650457___redundant_placeholder25
1while_while_cond_1650457___redundant_placeholder3
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646217

inputs(
lstm_cell_271_1646135:	d?(
lstm_cell_271_1646137:	2?$
lstm_cell_271_1646139:	?
identity??%lstm_cell_271/StatefulPartitionedCall?while;
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
%lstm_cell_271/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_271_1646135lstm_cell_271_1646137lstm_cell_271_1646139*
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1646089n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_271_1646135lstm_cell_271_1646137lstm_cell_271_1646139*
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
while_body_1646148*
condR
while_cond_1646147*K
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
NoOpNoOp&^lstm_cell_271/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_271/StatefulPartitionedCall%lstm_cell_271/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1650171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1650171___redundant_placeholder05
1while_while_cond_1650171___redundant_placeholder15
1while_while_cond_1650171___redundant_placeholder25
1while_while_cond_1650171___redundant_placeholder3
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
while_body_1645607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_270_1645631_0:	?0
while_lstm_cell_270_1645633_0:	d?,
while_lstm_cell_270_1645635_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_270_1645631:	?.
while_lstm_cell_270_1645633:	d?*
while_lstm_cell_270_1645635:	???+while/lstm_cell_270/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_270/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_270_1645631_0while_lstm_cell_270_1645633_0while_lstm_cell_270_1645635_0*
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645593?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_270/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_270/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_270/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_270/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_270_1645631while_lstm_cell_270_1645631_0"<
while_lstm_cell_270_1645633while_lstm_cell_270_1645633_0"<
while_lstm_cell_270_1645635while_lstm_cell_270_1645635_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_270/StatefulPartitionedCall+while/lstm_cell_270/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647050

inputs#
lstm_360_1646726:	?#
lstm_360_1646728:	d?
lstm_360_1646730:	?#
lstm_361_1646876:	d?#
lstm_361_1646878:	2?
lstm_361_1646880:	?"
lstm_362_1647026:2("
lstm_362_1647028:
(
lstm_362_1647030:(#
dense_120_1647044:

dense_120_1647046:
identity??!dense_120/StatefulPartitionedCall? lstm_360/StatefulPartitionedCall? lstm_361/StatefulPartitionedCall? lstm_362/StatefulPartitionedCall?
 lstm_360/StatefulPartitionedCallStatefulPartitionedCallinputslstm_360_1646726lstm_360_1646728lstm_360_1646730*
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1646725?
 lstm_361/StatefulPartitionedCallStatefulPartitionedCall)lstm_360/StatefulPartitionedCall:output:0lstm_361_1646876lstm_361_1646878lstm_361_1646880*
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646875?
 lstm_362/StatefulPartitionedCallStatefulPartitionedCall)lstm_361/StatefulPartitionedCall:output:0lstm_362_1647026lstm_362_1647028lstm_362_1647030*
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647025?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall)lstm_362/StatefulPartitionedCall:output:0dense_120_1647044dense_120_1647046*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_120/StatefulPartitionedCall!^lstm_360/StatefulPartitionedCall!^lstm_361/StatefulPartitionedCall!^lstm_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2D
 lstm_360/StatefulPartitionedCall lstm_360/StatefulPartitionedCall2D
 lstm_361/StatefulPartitionedCall lstm_361/StatefulPartitionedCall2D
 lstm_362/StatefulPartitionedCall lstm_362/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1645798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_270_1645822_0:	?0
while_lstm_cell_270_1645824_0:	d?,
while_lstm_cell_270_1645826_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_270_1645822:	?.
while_lstm_cell_270_1645824:	d?*
while_lstm_cell_270_1645826:	???+while/lstm_cell_270/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_270/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_270_1645822_0while_lstm_cell_270_1645824_0while_lstm_cell_270_1645826_0*
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645739?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_270/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_270/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_270/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_270/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_270_1645822while_lstm_cell_270_1645822_0"<
while_lstm_cell_270_1645824while_lstm_cell_270_1645824_0"<
while_lstm_cell_270_1645826while_lstm_cell_270_1645826_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_270/StatefulPartitionedCall+while/lstm_cell_270/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647025

inputs>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1646941*
condR
while_cond_1646940*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043

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

lstm_362_while_body_1648604.
*lstm_362_while_lstm_362_while_loop_counter4
0lstm_362_while_lstm_362_while_maximum_iterations
lstm_362_while_placeholder 
lstm_362_while_placeholder_1 
lstm_362_while_placeholder_2 
lstm_362_while_placeholder_3-
)lstm_362_while_lstm_362_strided_slice_1_0i
elstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0:2(Q
?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(L
>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0:(
lstm_362_while_identity
lstm_362_while_identity_1
lstm_362_while_identity_2
lstm_362_while_identity_3
lstm_362_while_identity_4
lstm_362_while_identity_5+
'lstm_362_while_lstm_362_strided_slice_1g
clstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensorM
;lstm_362_while_lstm_cell_272_matmul_readvariableop_resource:2(O
=lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource:
(J
<lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource:(??3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp?2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp?4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp?
@lstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_362/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0lstm_362_while_placeholderIlstm_362/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_362/while/lstm_cell_272/MatMulMatMul9lstm_362/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_362/while/lstm_cell_272/MatMul_1MatMullstm_362_while_placeholder_2<lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_362/while/lstm_cell_272/addAddV2-lstm_362/while/lstm_cell_272/MatMul:product:0/lstm_362/while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_362/while/lstm_cell_272/BiasAddBiasAdd$lstm_362/while/lstm_cell_272/add:z:0;lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_362/while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_362/while/lstm_cell_272/splitSplit5lstm_362/while/lstm_cell_272/split/split_dim:output:0-lstm_362/while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_362/while/lstm_cell_272/SigmoidSigmoid+lstm_362/while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_362/while/lstm_cell_272/Sigmoid_1Sigmoid+lstm_362/while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_362/while/lstm_cell_272/mulMul*lstm_362/while/lstm_cell_272/Sigmoid_1:y:0lstm_362_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_362/while/lstm_cell_272/ReluRelu+lstm_362/while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/mul_1Mul(lstm_362/while/lstm_cell_272/Sigmoid:y:0/lstm_362/while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/add_1AddV2$lstm_362/while/lstm_cell_272/mul:z:0&lstm_362/while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_362/while/lstm_cell_272/Sigmoid_2Sigmoid+lstm_362/while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_362/while/lstm_cell_272/Relu_1Relu&lstm_362/while/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_362/while/lstm_cell_272/mul_2Mul*lstm_362/while/lstm_cell_272/Sigmoid_2:y:01lstm_362/while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_362/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_362_while_placeholder_1lstm_362_while_placeholder&lstm_362/while/lstm_cell_272/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_362/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_362/while/addAddV2lstm_362_while_placeholderlstm_362/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_362/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_362/while/add_1AddV2*lstm_362_while_lstm_362_while_loop_counterlstm_362/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_362/while/IdentityIdentitylstm_362/while/add_1:z:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_1Identity0lstm_362_while_lstm_362_while_maximum_iterations^lstm_362/while/NoOp*
T0*
_output_shapes
: t
lstm_362/while/Identity_2Identitylstm_362/while/add:z:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_3IdentityClstm_362/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_362/while/NoOp*
T0*
_output_shapes
: ?
lstm_362/while/Identity_4Identity&lstm_362/while/lstm_cell_272/mul_2:z:0^lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_362/while/Identity_5Identity&lstm_362/while/lstm_cell_272/add_1:z:0^lstm_362/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_362/while/NoOpNoOp4^lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp3^lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp5^lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_362_while_identity lstm_362/while/Identity:output:0"?
lstm_362_while_identity_1"lstm_362/while/Identity_1:output:0"?
lstm_362_while_identity_2"lstm_362/while/Identity_2:output:0"?
lstm_362_while_identity_3"lstm_362/while/Identity_3:output:0"?
lstm_362_while_identity_4"lstm_362/while/Identity_4:output:0"?
lstm_362_while_identity_5"lstm_362/while/Identity_5:output:0"T
'lstm_362_while_lstm_362_strided_slice_1)lstm_362_while_lstm_362_strided_slice_1_0"~
<lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource>lstm_362_while_lstm_cell_272_biasadd_readvariableop_resource_0"?
=lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource?lstm_362_while_lstm_cell_272_matmul_1_readvariableop_resource_0"|
;lstm_362_while_lstm_cell_272_matmul_readvariableop_resource=lstm_362_while_lstm_cell_272_matmul_readvariableop_resource_0"?
clstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensorelstm_362_while_tensorarrayv2read_tensorlistgetitem_lstm_362_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp3lstm_362/while/lstm_cell_272/BiasAdd/ReadVariableOp2h
2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp2lstm_362/while/lstm_cell_272/MatMul/ReadVariableOp2l
4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp4lstm_362/while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1650314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1650314___redundant_placeholder05
1while_while_cond_1650314___redundant_placeholder15
1while_while_cond_1650314___redundant_placeholder25
1while_while_cond_1650314___redundant_placeholder3
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
lstm_360_while_cond_1648325.
*lstm_360_while_lstm_360_while_loop_counter4
0lstm_360_while_lstm_360_while_maximum_iterations
lstm_360_while_placeholder 
lstm_360_while_placeholder_1 
lstm_360_while_placeholder_2 
lstm_360_while_placeholder_30
,lstm_360_while_less_lstm_360_strided_slice_1G
Clstm_360_while_lstm_360_while_cond_1648325___redundant_placeholder0G
Clstm_360_while_lstm_360_while_cond_1648325___redundant_placeholder1G
Clstm_360_while_lstm_360_while_cond_1648325___redundant_placeholder2G
Clstm_360_while_lstm_360_while_cond_1648325___redundant_placeholder3
lstm_360_while_identity
?
lstm_360/while/LessLesslstm_360_while_placeholder,lstm_360_while_less_lstm_360_strided_slice_1*
T0*
_output_shapes
: ]
lstm_360/while/IdentityIdentitylstm_360/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_360_while_identity lstm_360/while/Identity:output:0*(
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
lstm_361_while_cond_1648464.
*lstm_361_while_lstm_361_while_loop_counter4
0lstm_361_while_lstm_361_while_maximum_iterations
lstm_361_while_placeholder 
lstm_361_while_placeholder_1 
lstm_361_while_placeholder_2 
lstm_361_while_placeholder_30
,lstm_361_while_less_lstm_361_strided_slice_1G
Clstm_361_while_lstm_361_while_cond_1648464___redundant_placeholder0G
Clstm_361_while_lstm_361_while_cond_1648464___redundant_placeholder1G
Clstm_361_while_lstm_361_while_cond_1648464___redundant_placeholder2G
Clstm_361_while_lstm_361_while_cond_1648464___redundant_placeholder3
lstm_361_while_identity
?
lstm_361/while/LessLesslstm_361_while_placeholder,lstm_361_while_less_lstm_361_strided_slice_1*
T0*
_output_shapes
: ]
lstm_361/while/IdentityIdentitylstm_361/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_361_while_identity lstm_361/while/Identity:output:0*(
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
while_cond_1645606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1645606___redundant_placeholder05
1while_while_cond_1645606___redundant_placeholder15
1while_while_cond_1645606___redundant_placeholder25
1while_while_cond_1645606___redundant_placeholder3
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
while_body_1649083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1646498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_272_1646522_0:2(/
while_lstm_cell_272_1646524_0:
(+
while_lstm_cell_272_1646526_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_272_1646522:2(-
while_lstm_cell_272_1646524:
()
while_lstm_cell_272_1646526:(??+while/lstm_cell_272/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_272/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_272_1646522_0while_lstm_cell_272_1646524_0while_lstm_cell_272_1646526_0*
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646439?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_272/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_272/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_272/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_272_1646522while_lstm_cell_272_1646522_0"<
while_lstm_cell_272_1646524while_lstm_cell_272_1646524_0"<
while_lstm_cell_272_1646526while_lstm_cell_272_1646526_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_272/StatefulPartitionedCall+while/lstm_cell_272/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1648939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1648939___redundant_placeholder05
1while_while_cond_1648939___redundant_placeholder15
1while_while_cond_1648939___redundant_placeholder25
1while_while_cond_1648939___redundant_placeholder3
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
*__inference_lstm_360_layer_call_fn_1648705
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1645676|
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
?
/__inference_lstm_cell_271_layer_call_fn_1650676

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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1645943o
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
?#
?
while_body_1645957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_271_1645981_0:	d?0
while_lstm_cell_271_1645983_0:	2?,
while_lstm_cell_271_1645985_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_271_1645981:	d?.
while_lstm_cell_271_1645983:	2?*
while_lstm_cell_271_1645985:	???+while/lstm_cell_271/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_271/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_271_1645981_0while_lstm_cell_271_1645983_0while_lstm_cell_271_1645985_0*
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1645943?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_271/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_271/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_271/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_271/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_271_1645981while_lstm_cell_271_1645981_0"<
while_lstm_cell_271_1645983while_lstm_cell_271_1645983_0"<
while_lstm_cell_271_1645985while_lstm_cell_271_1645985_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_271/StatefulPartitionedCall+while/lstm_cell_271/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1650315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_120_lstm_360_while_cond_1645157L
Hsequential_120_lstm_360_while_sequential_120_lstm_360_while_loop_counterR
Nsequential_120_lstm_360_while_sequential_120_lstm_360_while_maximum_iterations-
)sequential_120_lstm_360_while_placeholder/
+sequential_120_lstm_360_while_placeholder_1/
+sequential_120_lstm_360_while_placeholder_2/
+sequential_120_lstm_360_while_placeholder_3N
Jsequential_120_lstm_360_while_less_sequential_120_lstm_360_strided_slice_1e
asequential_120_lstm_360_while_sequential_120_lstm_360_while_cond_1645157___redundant_placeholder0e
asequential_120_lstm_360_while_sequential_120_lstm_360_while_cond_1645157___redundant_placeholder1e
asequential_120_lstm_360_while_sequential_120_lstm_360_while_cond_1645157___redundant_placeholder2e
asequential_120_lstm_360_while_sequential_120_lstm_360_while_cond_1645157___redundant_placeholder3*
&sequential_120_lstm_360_while_identity
?
"sequential_120/lstm_360/while/LessLess)sequential_120_lstm_360_while_placeholderJsequential_120_lstm_360_while_less_sequential_120_lstm_360_strided_slice_1*
T0*
_output_shapes
: {
&sequential_120/lstm_360/while/IdentityIdentity&sequential_120/lstm_360/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_120_lstm_360_while_identity/sequential_120/lstm_360/while/Identity:output:0*(
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650757

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
/__inference_lstm_cell_271_layer_call_fn_1650693

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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1646089o
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
while_cond_1649841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649841___redundant_placeholder05
1while_while_cond_1649841___redundant_placeholder15
1while_while_cond_1649841___redundant_placeholder25
1while_while_cond_1649841___redundant_placeholder3
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
while_cond_1649555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649555___redundant_placeholder05
1while_while_cond_1649555___redundant_placeholder15
1while_while_cond_1649555___redundant_placeholder25
1while_while_cond_1649555___redundant_placeholder3
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
while_cond_1646306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646306___redundant_placeholder05
1while_while_cond_1646306___redundant_placeholder15
1while_while_cond_1646306___redundant_placeholder25
1while_while_cond_1646306___redundant_placeholder3
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1645867

inputs(
lstm_cell_270_1645785:	?(
lstm_cell_270_1645787:	d?$
lstm_cell_270_1645789:	?
identity??%lstm_cell_270/StatefulPartitionedCall?while;
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
%lstm_cell_270/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_270_1645785lstm_cell_270_1645787lstm_cell_270_1645789*
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645739n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_270_1645785lstm_cell_270_1645787lstm_cell_270_1645789*
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
while_body_1645798*
condR
while_cond_1645797*K
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
NoOpNoOp&^lstm_cell_270/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_270/StatefulPartitionedCall%lstm_cell_270/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1646940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646940___redundant_placeholder05
1while_while_cond_1646940___redundant_placeholder15
1while_while_cond_1646940___redundant_placeholder25
1while_while_cond_1646940___redundant_placeholder3
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646026

inputs(
lstm_cell_271_1645944:	d?(
lstm_cell_271_1645946:	2?$
lstm_cell_271_1645948:	?
identity??%lstm_cell_271/StatefulPartitionedCall?while;
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
%lstm_cell_271/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_271_1645944lstm_cell_271_1645946lstm_cell_271_1645948*
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1645943n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_271_1645944lstm_cell_271_1645946lstm_cell_271_1645948*
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
while_body_1645957*
condR
while_cond_1645956*K
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
NoOpNoOp&^lstm_cell_271/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_271/StatefulPartitionedCall%lstm_cell_271/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1648940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1646497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646497___redundant_placeholder05
1while_while_cond_1646497___redundant_placeholder15
1while_while_cond_1646497___redundant_placeholder25
1while_while_cond_1646497___redundant_placeholder3
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
*__inference_lstm_360_layer_call_fn_1648716
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1645867|
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
?
/__inference_lstm_cell_272_layer_call_fn_1650791

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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646439o
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648267

inputsH
5lstm_360_lstm_cell_270_matmul_readvariableop_resource:	?J
7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource:	d?E
6lstm_360_lstm_cell_270_biasadd_readvariableop_resource:	?H
5lstm_361_lstm_cell_271_matmul_readvariableop_resource:	d?J
7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource:	2?E
6lstm_361_lstm_cell_271_biasadd_readvariableop_resource:	?G
5lstm_362_lstm_cell_272_matmul_readvariableop_resource:2(I
7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource:
(D
6lstm_362_lstm_cell_272_biasadd_readvariableop_resource:(:
(dense_120_matmul_readvariableop_resource:
7
)dense_120_biasadd_readvariableop_resource:
identity?? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp?-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp?,lstm_360/lstm_cell_270/MatMul/ReadVariableOp?.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp?lstm_360/while?-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp?,lstm_361/lstm_cell_271/MatMul/ReadVariableOp?.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp?lstm_361/while?-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp?,lstm_362/lstm_cell_272/MatMul/ReadVariableOp?.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp?lstm_362/whileD
lstm_360/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_360/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_360/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_360/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_sliceStridedSlicelstm_360/Shape:output:0%lstm_360/strided_slice/stack:output:0'lstm_360/strided_slice/stack_1:output:0'lstm_360/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_360/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_360/zeros/packedPacklstm_360/strided_slice:output:0 lstm_360/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_360/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_360/zerosFilllstm_360/zeros/packed:output:0lstm_360/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_360/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_360/zeros_1/packedPacklstm_360/strided_slice:output:0"lstm_360/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_360/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_360/zeros_1Fill lstm_360/zeros_1/packed:output:0lstm_360/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_360/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_360/transpose	Transposeinputs lstm_360/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_360/Shape_1Shapelstm_360/transpose:y:0*
T0*
_output_shapes
:h
lstm_360/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_360/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_1StridedSlicelstm_360/Shape_1:output:0'lstm_360/strided_slice_1/stack:output:0)lstm_360/strided_slice_1/stack_1:output:0)lstm_360/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_360/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_360/TensorArrayV2TensorListReserve-lstm_360/TensorArrayV2/element_shape:output:0!lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_360/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_360/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_360/transpose:y:0Glstm_360/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_360/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_360/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_2StridedSlicelstm_360/transpose:y:0'lstm_360/strided_slice_2/stack:output:0)lstm_360/strided_slice_2/stack_1:output:0)lstm_360/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_360/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp5lstm_360_lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_360/lstm_cell_270/MatMulMatMul!lstm_360/strided_slice_2:output:04lstm_360/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_360/lstm_cell_270/MatMul_1MatMullstm_360/zeros:output:06lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_360/lstm_cell_270/addAddV2'lstm_360/lstm_cell_270/MatMul:product:0)lstm_360/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp6lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_360/lstm_cell_270/BiasAddBiasAddlstm_360/lstm_cell_270/add:z:05lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_360/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_360/lstm_cell_270/splitSplit/lstm_360/lstm_cell_270/split/split_dim:output:0'lstm_360/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_360/lstm_cell_270/SigmoidSigmoid%lstm_360/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_360/lstm_cell_270/Sigmoid_1Sigmoid%lstm_360/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mulMul$lstm_360/lstm_cell_270/Sigmoid_1:y:0lstm_360/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_360/lstm_cell_270/ReluRelu%lstm_360/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mul_1Mul"lstm_360/lstm_cell_270/Sigmoid:y:0)lstm_360/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/add_1AddV2lstm_360/lstm_cell_270/mul:z:0 lstm_360/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_360/lstm_cell_270/Sigmoid_2Sigmoid%lstm_360/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_360/lstm_cell_270/Relu_1Relu lstm_360/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_360/lstm_cell_270/mul_2Mul$lstm_360/lstm_cell_270/Sigmoid_2:y:0+lstm_360/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_360/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_360/TensorArrayV2_1TensorListReserve/lstm_360/TensorArrayV2_1/element_shape:output:0!lstm_360/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_360/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_360/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_360/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_360/whileWhile$lstm_360/while/loop_counter:output:0*lstm_360/while/maximum_iterations:output:0lstm_360/time:output:0!lstm_360/TensorArrayV2_1:handle:0lstm_360/zeros:output:0lstm_360/zeros_1:output:0!lstm_360/strided_slice_1:output:0@lstm_360/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_360_lstm_cell_270_matmul_readvariableop_resource7lstm_360_lstm_cell_270_matmul_1_readvariableop_resource6lstm_360_lstm_cell_270_biasadd_readvariableop_resource*
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
lstm_360_while_body_1647899*'
condR
lstm_360_while_cond_1647898*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_360/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_360/TensorArrayV2Stack/TensorListStackTensorListStacklstm_360/while:output:3Blstm_360/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_360/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_360/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_360/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_360/strided_slice_3StridedSlice4lstm_360/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_360/strided_slice_3/stack:output:0)lstm_360/strided_slice_3/stack_1:output:0)lstm_360/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_360/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_360/transpose_1	Transpose4lstm_360/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_360/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_360/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_361/ShapeShapelstm_360/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_361/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_361/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_361/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_sliceStridedSlicelstm_361/Shape:output:0%lstm_361/strided_slice/stack:output:0'lstm_361/strided_slice/stack_1:output:0'lstm_361/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_361/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_361/zeros/packedPacklstm_361/strided_slice:output:0 lstm_361/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_361/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_361/zerosFilllstm_361/zeros/packed:output:0lstm_361/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_361/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_361/zeros_1/packedPacklstm_361/strided_slice:output:0"lstm_361/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_361/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_361/zeros_1Fill lstm_361/zeros_1/packed:output:0lstm_361/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_361/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_361/transpose	Transposelstm_360/transpose_1:y:0 lstm_361/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_361/Shape_1Shapelstm_361/transpose:y:0*
T0*
_output_shapes
:h
lstm_361/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_361/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_1StridedSlicelstm_361/Shape_1:output:0'lstm_361/strided_slice_1/stack:output:0)lstm_361/strided_slice_1/stack_1:output:0)lstm_361/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_361/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_361/TensorArrayV2TensorListReserve-lstm_361/TensorArrayV2/element_shape:output:0!lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_361/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_361/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_361/transpose:y:0Glstm_361/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_361/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_361/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_2StridedSlicelstm_361/transpose:y:0'lstm_361/strided_slice_2/stack:output:0)lstm_361/strided_slice_2/stack_1:output:0)lstm_361/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_361/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp5lstm_361_lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_361/lstm_cell_271/MatMulMatMul!lstm_361/strided_slice_2:output:04lstm_361/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_361/lstm_cell_271/MatMul_1MatMullstm_361/zeros:output:06lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_361/lstm_cell_271/addAddV2'lstm_361/lstm_cell_271/MatMul:product:0)lstm_361/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp6lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_361/lstm_cell_271/BiasAddBiasAddlstm_361/lstm_cell_271/add:z:05lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_361/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_361/lstm_cell_271/splitSplit/lstm_361/lstm_cell_271/split/split_dim:output:0'lstm_361/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_361/lstm_cell_271/SigmoidSigmoid%lstm_361/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_361/lstm_cell_271/Sigmoid_1Sigmoid%lstm_361/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mulMul$lstm_361/lstm_cell_271/Sigmoid_1:y:0lstm_361/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_361/lstm_cell_271/ReluRelu%lstm_361/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mul_1Mul"lstm_361/lstm_cell_271/Sigmoid:y:0)lstm_361/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/add_1AddV2lstm_361/lstm_cell_271/mul:z:0 lstm_361/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_361/lstm_cell_271/Sigmoid_2Sigmoid%lstm_361/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_361/lstm_cell_271/Relu_1Relu lstm_361/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_361/lstm_cell_271/mul_2Mul$lstm_361/lstm_cell_271/Sigmoid_2:y:0+lstm_361/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_361/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_361/TensorArrayV2_1TensorListReserve/lstm_361/TensorArrayV2_1/element_shape:output:0!lstm_361/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_361/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_361/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_361/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_361/whileWhile$lstm_361/while/loop_counter:output:0*lstm_361/while/maximum_iterations:output:0lstm_361/time:output:0!lstm_361/TensorArrayV2_1:handle:0lstm_361/zeros:output:0lstm_361/zeros_1:output:0!lstm_361/strided_slice_1:output:0@lstm_361/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_361_lstm_cell_271_matmul_readvariableop_resource7lstm_361_lstm_cell_271_matmul_1_readvariableop_resource6lstm_361_lstm_cell_271_biasadd_readvariableop_resource*
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
lstm_361_while_body_1648038*'
condR
lstm_361_while_cond_1648037*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_361/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_361/TensorArrayV2Stack/TensorListStackTensorListStacklstm_361/while:output:3Blstm_361/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_361/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_361/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_361/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_361/strided_slice_3StridedSlice4lstm_361/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_361/strided_slice_3/stack:output:0)lstm_361/strided_slice_3/stack_1:output:0)lstm_361/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_361/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_361/transpose_1	Transpose4lstm_361/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_361/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_361/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_362/ShapeShapelstm_361/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_362/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_362/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_362/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_sliceStridedSlicelstm_362/Shape:output:0%lstm_362/strided_slice/stack:output:0'lstm_362/strided_slice/stack_1:output:0'lstm_362/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_362/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_362/zeros/packedPacklstm_362/strided_slice:output:0 lstm_362/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_362/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_362/zerosFilllstm_362/zeros/packed:output:0lstm_362/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_362/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_362/zeros_1/packedPacklstm_362/strided_slice:output:0"lstm_362/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_362/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_362/zeros_1Fill lstm_362/zeros_1/packed:output:0lstm_362/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_362/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_362/transpose	Transposelstm_361/transpose_1:y:0 lstm_362/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_362/Shape_1Shapelstm_362/transpose:y:0*
T0*
_output_shapes
:h
lstm_362/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_362/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_1StridedSlicelstm_362/Shape_1:output:0'lstm_362/strided_slice_1/stack:output:0)lstm_362/strided_slice_1/stack_1:output:0)lstm_362/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_362/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_362/TensorArrayV2TensorListReserve-lstm_362/TensorArrayV2/element_shape:output:0!lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_362/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_362/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_362/transpose:y:0Glstm_362/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_362/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_362/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_2StridedSlicelstm_362/transpose:y:0'lstm_362/strided_slice_2/stack:output:0)lstm_362/strided_slice_2/stack_1:output:0)lstm_362/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_362/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp5lstm_362_lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_362/lstm_cell_272/MatMulMatMul!lstm_362/strided_slice_2:output:04lstm_362/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_362/lstm_cell_272/MatMul_1MatMullstm_362/zeros:output:06lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_362/lstm_cell_272/addAddV2'lstm_362/lstm_cell_272/MatMul:product:0)lstm_362/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp6lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_362/lstm_cell_272/BiasAddBiasAddlstm_362/lstm_cell_272/add:z:05lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_362/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_362/lstm_cell_272/splitSplit/lstm_362/lstm_cell_272/split/split_dim:output:0'lstm_362/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_362/lstm_cell_272/SigmoidSigmoid%lstm_362/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_362/lstm_cell_272/Sigmoid_1Sigmoid%lstm_362/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mulMul$lstm_362/lstm_cell_272/Sigmoid_1:y:0lstm_362/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_362/lstm_cell_272/ReluRelu%lstm_362/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mul_1Mul"lstm_362/lstm_cell_272/Sigmoid:y:0)lstm_362/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/add_1AddV2lstm_362/lstm_cell_272/mul:z:0 lstm_362/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_362/lstm_cell_272/Sigmoid_2Sigmoid%lstm_362/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_362/lstm_cell_272/Relu_1Relu lstm_362/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_362/lstm_cell_272/mul_2Mul$lstm_362/lstm_cell_272/Sigmoid_2:y:0+lstm_362/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_362/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_362/TensorArrayV2_1TensorListReserve/lstm_362/TensorArrayV2_1/element_shape:output:0!lstm_362/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_362/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_362/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_362/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_362/whileWhile$lstm_362/while/loop_counter:output:0*lstm_362/while/maximum_iterations:output:0lstm_362/time:output:0!lstm_362/TensorArrayV2_1:handle:0lstm_362/zeros:output:0lstm_362/zeros_1:output:0!lstm_362/strided_slice_1:output:0@lstm_362/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_362_lstm_cell_272_matmul_readvariableop_resource7lstm_362_lstm_cell_272_matmul_1_readvariableop_resource6lstm_362_lstm_cell_272_biasadd_readvariableop_resource*
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
lstm_362_while_body_1648177*'
condR
lstm_362_while_cond_1648176*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_362/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_362/TensorArrayV2Stack/TensorListStackTensorListStacklstm_362/while:output:3Blstm_362/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_362/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_362/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_362/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_362/strided_slice_3StridedSlice4lstm_362/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_362/strided_slice_3/stack:output:0)lstm_362/strided_slice_3/stack_1:output:0)lstm_362/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_362/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_362/transpose_1	Transpose4lstm_362/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_362/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_362/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_120/MatMulMatMul!lstm_362/strided_slice_3:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_120/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp.^lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp-^lstm_360/lstm_cell_270/MatMul/ReadVariableOp/^lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp^lstm_360/while.^lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp-^lstm_361/lstm_cell_271/MatMul/ReadVariableOp/^lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp^lstm_361/while.^lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp-^lstm_362/lstm_cell_272/MatMul/ReadVariableOp/^lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp^lstm_362/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2^
-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp-lstm_360/lstm_cell_270/BiasAdd/ReadVariableOp2\
,lstm_360/lstm_cell_270/MatMul/ReadVariableOp,lstm_360/lstm_cell_270/MatMul/ReadVariableOp2`
.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp.lstm_360/lstm_cell_270/MatMul_1/ReadVariableOp2 
lstm_360/whilelstm_360/while2^
-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp-lstm_361/lstm_cell_271/BiasAdd/ReadVariableOp2\
,lstm_361/lstm_cell_271/MatMul/ReadVariableOp,lstm_361/lstm_cell_271/MatMul/ReadVariableOp2`
.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp.lstm_361/lstm_cell_271/MatMul_1/ReadVariableOp2 
lstm_361/whilelstm_361/while2^
-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp-lstm_362/lstm_cell_272/BiasAdd/ReadVariableOp2\
,lstm_362/lstm_cell_272/MatMul/ReadVariableOp,lstm_362/lstm_cell_272/MatMul/ReadVariableOp2`
.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp.lstm_362/lstm_cell_272/MatMul_1/ReadVariableOp2 
lstm_362/whilelstm_362/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647751
lstm_360_input#
lstm_360_1647724:	?#
lstm_360_1647726:	d?
lstm_360_1647728:	?#
lstm_361_1647731:	d?#
lstm_361_1647733:	2?
lstm_361_1647735:	?"
lstm_362_1647738:2("
lstm_362_1647740:
(
lstm_362_1647742:(#
dense_120_1647745:

dense_120_1647747:
identity??!dense_120/StatefulPartitionedCall? lstm_360/StatefulPartitionedCall? lstm_361/StatefulPartitionedCall? lstm_362/StatefulPartitionedCall?
 lstm_360/StatefulPartitionedCallStatefulPartitionedCalllstm_360_inputlstm_360_1647724lstm_360_1647726lstm_360_1647728*
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1647571?
 lstm_361/StatefulPartitionedCallStatefulPartitionedCall)lstm_360/StatefulPartitionedCall:output:0lstm_361_1647731lstm_361_1647733lstm_361_1647735*
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1647406?
 lstm_362/StatefulPartitionedCallStatefulPartitionedCall)lstm_361/StatefulPartitionedCall:output:0lstm_362_1647738lstm_362_1647740lstm_362_1647742*
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647241?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall)lstm_362/StatefulPartitionedCall:output:0dense_120_1647745dense_120_1647747*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1647043y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_120/StatefulPartitionedCall!^lstm_360/StatefulPartitionedCall!^lstm_361/StatefulPartitionedCall!^lstm_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2D
 lstm_360/StatefulPartitionedCall lstm_360/StatefulPartitionedCall2D
 lstm_361/StatefulPartitionedCall lstm_361/StatefulPartitionedCall2D
 lstm_362/StatefulPartitionedCall lstm_362/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_360_input
?
?
while_cond_1650028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1650028___redundant_placeholder05
1while_while_cond_1650028___redundant_placeholder15
1while_while_cond_1650028___redundant_placeholder25
1while_while_cond_1650028___redundant_placeholder3
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
while_body_1647157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_360_while_body_1647899.
*lstm_360_while_lstm_360_while_loop_counter4
0lstm_360_while_lstm_360_while_maximum_iterations
lstm_360_while_placeholder 
lstm_360_while_placeholder_1 
lstm_360_while_placeholder_2 
lstm_360_while_placeholder_3-
)lstm_360_while_lstm_360_strided_slice_1_0i
elstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0:	?R
?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?M
>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
lstm_360_while_identity
lstm_360_while_identity_1
lstm_360_while_identity_2
lstm_360_while_identity_3
lstm_360_while_identity_4
lstm_360_while_identity_5+
'lstm_360_while_lstm_360_strided_slice_1g
clstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensorN
;lstm_360_while_lstm_cell_270_matmul_readvariableop_resource:	?P
=lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource:	d?K
<lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource:	???3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp?2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp?4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp?
@lstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_360/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0lstm_360_while_placeholderIlstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_360/while/lstm_cell_270/MatMulMatMul9lstm_360/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_360/while/lstm_cell_270/MatMul_1MatMullstm_360_while_placeholder_2<lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_360/while/lstm_cell_270/addAddV2-lstm_360/while/lstm_cell_270/MatMul:product:0/lstm_360/while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_360/while/lstm_cell_270/BiasAddBiasAdd$lstm_360/while/lstm_cell_270/add:z:0;lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_360/while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_360/while/lstm_cell_270/splitSplit5lstm_360/while/lstm_cell_270/split/split_dim:output:0-lstm_360/while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_360/while/lstm_cell_270/SigmoidSigmoid+lstm_360/while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_360/while/lstm_cell_270/Sigmoid_1Sigmoid+lstm_360/while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_360/while/lstm_cell_270/mulMul*lstm_360/while/lstm_cell_270/Sigmoid_1:y:0lstm_360_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_360/while/lstm_cell_270/ReluRelu+lstm_360/while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/mul_1Mul(lstm_360/while/lstm_cell_270/Sigmoid:y:0/lstm_360/while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/add_1AddV2$lstm_360/while/lstm_cell_270/mul:z:0&lstm_360/while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_360/while/lstm_cell_270/Sigmoid_2Sigmoid+lstm_360/while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_360/while/lstm_cell_270/Relu_1Relu&lstm_360/while/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/mul_2Mul*lstm_360/while/lstm_cell_270/Sigmoid_2:y:01lstm_360/while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_360/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_360_while_placeholder_1lstm_360_while_placeholder&lstm_360/while/lstm_cell_270/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_360/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_360/while/addAddV2lstm_360_while_placeholderlstm_360/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_360/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_360/while/add_1AddV2*lstm_360_while_lstm_360_while_loop_counterlstm_360/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_360/while/IdentityIdentitylstm_360/while/add_1:z:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_1Identity0lstm_360_while_lstm_360_while_maximum_iterations^lstm_360/while/NoOp*
T0*
_output_shapes
: t
lstm_360/while/Identity_2Identitylstm_360/while/add:z:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_3IdentityClstm_360/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_4Identity&lstm_360/while/lstm_cell_270/mul_2:z:0^lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_360/while/Identity_5Identity&lstm_360/while/lstm_cell_270/add_1:z:0^lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_360/while/NoOpNoOp4^lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp3^lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp5^lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_360_while_identity lstm_360/while/Identity:output:0"?
lstm_360_while_identity_1"lstm_360/while/Identity_1:output:0"?
lstm_360_while_identity_2"lstm_360/while/Identity_2:output:0"?
lstm_360_while_identity_3"lstm_360/while/Identity_3:output:0"?
lstm_360_while_identity_4"lstm_360/while/Identity_4:output:0"?
lstm_360_while_identity_5"lstm_360/while/Identity_5:output:0"T
'lstm_360_while_lstm_360_strided_slice_1)lstm_360_while_lstm_360_strided_slice_1_0"~
<lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0"?
=lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0"|
;lstm_360_while_lstm_cell_270_matmul_readvariableop_resource=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0"?
clstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensorelstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp2h
2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp2l
4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649310

inputs?
,lstm_cell_270_matmul_readvariableop_resource:	?A
.lstm_cell_270_matmul_1_readvariableop_resource:	d?<
-lstm_cell_270_biasadd_readvariableop_resource:	?
identity??$lstm_cell_270/BiasAdd/ReadVariableOp?#lstm_cell_270/MatMul/ReadVariableOp?%lstm_cell_270/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_270/MatMul/ReadVariableOpReadVariableOp,lstm_cell_270_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_270/MatMulMatMulstrided_slice_2:output:0+lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_270_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_270/MatMul_1MatMulzeros:output:0-lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_270/addAddV2lstm_cell_270/MatMul:product:0 lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_270_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_270/BiasAddBiasAddlstm_cell_270/add:z:0,lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_270/splitSplit&lstm_cell_270/split/split_dim:output:0lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_270/SigmoidSigmoidlstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_1Sigmoidlstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_270/mulMullstm_cell_270/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_270/ReluRelulstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_1Mullstm_cell_270/Sigmoid:y:0 lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_270/add_1AddV2lstm_cell_270/mul:z:0lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_270/Sigmoid_2Sigmoidlstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_270/Relu_1Relulstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_270/mul_2Mullstm_cell_270/Sigmoid_2:y:0"lstm_cell_270/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_270_matmul_readvariableop_resource.lstm_cell_270_matmul_1_readvariableop_resource-lstm_cell_270_biasadd_readvariableop_resource*
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
while_body_1649226*
condR
while_cond_1649225*K
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
NoOpNoOp%^lstm_cell_270/BiasAdd/ReadVariableOp$^lstm_cell_270/MatMul/ReadVariableOp&^lstm_cell_270/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_270/BiasAdd/ReadVariableOp$lstm_cell_270/BiasAdd/ReadVariableOp2J
#lstm_cell_270/MatMul/ReadVariableOp#lstm_cell_270/MatMul/ReadVariableOp2N
%lstm_cell_270/MatMul_1/ReadVariableOp%lstm_cell_270/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1649556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1647321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1647321___redundant_placeholder05
1while_while_cond_1647321___redundant_placeholder15
1while_while_cond_1647321___redundant_placeholder25
1while_while_cond_1647321___redundant_placeholder3
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1645739

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
while_body_1650172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_272_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_272_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_272_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_272_matmul_readvariableop_resource:2(F
4while_lstm_cell_272_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_272_biasadd_readvariableop_resource:(??*while/lstm_cell_272/BiasAdd/ReadVariableOp?)while/lstm_cell_272/MatMul/ReadVariableOp?+while/lstm_cell_272/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_272/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_272_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_272/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_272_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_272/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_272/addAddV2$while/lstm_cell_272/MatMul:product:0&while/lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_272_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_272/BiasAddBiasAddwhile/lstm_cell_272/add:z:02while/lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_272/splitSplit,while/lstm_cell_272/split/split_dim:output:0$while/lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_272/SigmoidSigmoid"while/lstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_1Sigmoid"while/lstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mulMul!while/lstm_cell_272/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_272/ReluRelu"while/lstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_1Mulwhile/lstm_cell_272/Sigmoid:y:0&while/lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/add_1AddV2while/lstm_cell_272/mul:z:0while/lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_272/Sigmoid_2Sigmoid"while/lstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_272/Relu_1Reluwhile/lstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_272/mul_2Mul!while/lstm_cell_272/Sigmoid_2:y:0(while/lstm_cell_272/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_272/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_272/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_272/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_272/BiasAdd/ReadVariableOp*^while/lstm_cell_272/MatMul/ReadVariableOp,^while/lstm_cell_272/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_272_biasadd_readvariableop_resource5while_lstm_cell_272_biasadd_readvariableop_resource_0"n
4while_lstm_cell_272_matmul_1_readvariableop_resource6while_lstm_cell_272_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_272_matmul_readvariableop_resource4while_lstm_cell_272_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_272/BiasAdd/ReadVariableOp*while/lstm_cell_272/BiasAdd/ReadVariableOp2V
)while/lstm_cell_272/MatMul/ReadVariableOp)while/lstm_cell_272/MatMul/ReadVariableOp2Z
+while/lstm_cell_272/MatMul_1/ReadVariableOp+while/lstm_cell_272/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_362_layer_call_fn_1649959

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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647025o
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
0__inference_sequential_120_layer_call_fn_1647075
lstm_360_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_360_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647050o
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
_user_specified_namelstm_360_input
?C
?

lstm_361_while_body_1648465.
*lstm_361_while_lstm_361_while_loop_counter4
0lstm_361_while_lstm_361_while_maximum_iterations
lstm_361_while_placeholder 
lstm_361_while_placeholder_1 
lstm_361_while_placeholder_2 
lstm_361_while_placeholder_3-
)lstm_361_while_lstm_361_strided_slice_1_0i
elstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0:	d?R
?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?M
>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
lstm_361_while_identity
lstm_361_while_identity_1
lstm_361_while_identity_2
lstm_361_while_identity_3
lstm_361_while_identity_4
lstm_361_while_identity_5+
'lstm_361_while_lstm_361_strided_slice_1g
clstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensorN
;lstm_361_while_lstm_cell_271_matmul_readvariableop_resource:	d?P
=lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource:	2?K
<lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource:	???3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp?2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp?4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp?
@lstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_361/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0lstm_361_while_placeholderIlstm_361/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_361/while/lstm_cell_271/MatMulMatMul9lstm_361/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_361/while/lstm_cell_271/MatMul_1MatMullstm_361_while_placeholder_2<lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_361/while/lstm_cell_271/addAddV2-lstm_361/while/lstm_cell_271/MatMul:product:0/lstm_361/while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_361/while/lstm_cell_271/BiasAddBiasAdd$lstm_361/while/lstm_cell_271/add:z:0;lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_361/while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_361/while/lstm_cell_271/splitSplit5lstm_361/while/lstm_cell_271/split/split_dim:output:0-lstm_361/while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_361/while/lstm_cell_271/SigmoidSigmoid+lstm_361/while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_361/while/lstm_cell_271/Sigmoid_1Sigmoid+lstm_361/while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_361/while/lstm_cell_271/mulMul*lstm_361/while/lstm_cell_271/Sigmoid_1:y:0lstm_361_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_361/while/lstm_cell_271/ReluRelu+lstm_361/while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/mul_1Mul(lstm_361/while/lstm_cell_271/Sigmoid:y:0/lstm_361/while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/add_1AddV2$lstm_361/while/lstm_cell_271/mul:z:0&lstm_361/while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_361/while/lstm_cell_271/Sigmoid_2Sigmoid+lstm_361/while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_361/while/lstm_cell_271/Relu_1Relu&lstm_361/while/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_361/while/lstm_cell_271/mul_2Mul*lstm_361/while/lstm_cell_271/Sigmoid_2:y:01lstm_361/while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_361/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_361_while_placeholder_1lstm_361_while_placeholder&lstm_361/while/lstm_cell_271/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_361/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_361/while/addAddV2lstm_361_while_placeholderlstm_361/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_361/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_361/while/add_1AddV2*lstm_361_while_lstm_361_while_loop_counterlstm_361/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_361/while/IdentityIdentitylstm_361/while/add_1:z:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_1Identity0lstm_361_while_lstm_361_while_maximum_iterations^lstm_361/while/NoOp*
T0*
_output_shapes
: t
lstm_361/while/Identity_2Identitylstm_361/while/add:z:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_3IdentityClstm_361/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_361/while/NoOp*
T0*
_output_shapes
: ?
lstm_361/while/Identity_4Identity&lstm_361/while/lstm_cell_271/mul_2:z:0^lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_361/while/Identity_5Identity&lstm_361/while/lstm_cell_271/add_1:z:0^lstm_361/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_361/while/NoOpNoOp4^lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp3^lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp5^lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_361_while_identity lstm_361/while/Identity:output:0"?
lstm_361_while_identity_1"lstm_361/while/Identity_1:output:0"?
lstm_361_while_identity_2"lstm_361/while/Identity_2:output:0"?
lstm_361_while_identity_3"lstm_361/while/Identity_3:output:0"?
lstm_361_while_identity_4"lstm_361/while/Identity_4:output:0"?
lstm_361_while_identity_5"lstm_361/while/Identity_5:output:0"T
'lstm_361_while_lstm_361_strided_slice_1)lstm_361_while_lstm_361_strided_slice_1_0"~
<lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource>lstm_361_while_lstm_cell_271_biasadd_readvariableop_resource_0"?
=lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource?lstm_361_while_lstm_cell_271_matmul_1_readvariableop_resource_0"|
;lstm_361_while_lstm_cell_271_matmul_readvariableop_resource=lstm_361_while_lstm_cell_271_matmul_readvariableop_resource_0"?
clstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensorelstm_361_while_tensorarrayv2read_tensorlistgetitem_lstm_361_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp3lstm_361/while/lstm_cell_271/BiasAdd/ReadVariableOp2h
2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp2lstm_361/while/lstm_cell_271/MatMul/ReadVariableOp2l
4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp4lstm_361/while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1646641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1646567

inputs'
lstm_cell_272_1646485:2('
lstm_cell_272_1646487:
(#
lstm_cell_272_1646489:(
identity??%lstm_cell_272/StatefulPartitionedCall?while;
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
%lstm_cell_272/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_272_1646485lstm_cell_272_1646487lstm_cell_272_1646489*
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646439n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_272_1646485lstm_cell_272_1646487lstm_cell_272_1646489*
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
while_body_1646498*
condR
while_cond_1646497*K
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
NoOpNoOp&^lstm_cell_272/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_272/StatefulPartitionedCall%lstm_cell_272/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1649842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1647486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1647486___redundant_placeholder05
1while_while_cond_1647486___redundant_placeholder15
1while_while_cond_1647486___redundant_placeholder25
1while_while_cond_1647486___redundant_placeholder3
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1646376

inputs'
lstm_cell_272_1646294:2('
lstm_cell_272_1646296:
(#
lstm_cell_272_1646298:(
identity??%lstm_cell_272/StatefulPartitionedCall?while;
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
%lstm_cell_272/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_272_1646294lstm_cell_272_1646296lstm_cell_272_1646298*
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646293n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_272_1646294lstm_cell_272_1646296lstm_cell_272_1646298*
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
while_body_1646307*
condR
while_cond_1646306*K
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
NoOpNoOp&^lstm_cell_272/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_272/StatefulPartitionedCall%lstm_cell_272/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650399

inputs>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1650315*
condR
while_cond_1650314*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650256
inputs_0>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1650172*
condR
while_cond_1650171*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650823

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

lstm_360_while_body_1648326.
*lstm_360_while_lstm_360_while_loop_counter4
0lstm_360_while_lstm_360_while_maximum_iterations
lstm_360_while_placeholder 
lstm_360_while_placeholder_1 
lstm_360_while_placeholder_2 
lstm_360_while_placeholder_3-
)lstm_360_while_lstm_360_strided_slice_1_0i
elstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0:	?R
?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?M
>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
lstm_360_while_identity
lstm_360_while_identity_1
lstm_360_while_identity_2
lstm_360_while_identity_3
lstm_360_while_identity_4
lstm_360_while_identity_5+
'lstm_360_while_lstm_360_strided_slice_1g
clstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensorN
;lstm_360_while_lstm_cell_270_matmul_readvariableop_resource:	?P
=lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource:	d?K
<lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource:	???3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp?2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp?4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp?
@lstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_360/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0lstm_360_while_placeholderIlstm_360/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_360/while/lstm_cell_270/MatMulMatMul9lstm_360/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_360/while/lstm_cell_270/MatMul_1MatMullstm_360_while_placeholder_2<lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_360/while/lstm_cell_270/addAddV2-lstm_360/while/lstm_cell_270/MatMul:product:0/lstm_360/while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_360/while/lstm_cell_270/BiasAddBiasAdd$lstm_360/while/lstm_cell_270/add:z:0;lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_360/while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_360/while/lstm_cell_270/splitSplit5lstm_360/while/lstm_cell_270/split/split_dim:output:0-lstm_360/while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_360/while/lstm_cell_270/SigmoidSigmoid+lstm_360/while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_360/while/lstm_cell_270/Sigmoid_1Sigmoid+lstm_360/while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_360/while/lstm_cell_270/mulMul*lstm_360/while/lstm_cell_270/Sigmoid_1:y:0lstm_360_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_360/while/lstm_cell_270/ReluRelu+lstm_360/while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/mul_1Mul(lstm_360/while/lstm_cell_270/Sigmoid:y:0/lstm_360/while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/add_1AddV2$lstm_360/while/lstm_cell_270/mul:z:0&lstm_360/while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_360/while/lstm_cell_270/Sigmoid_2Sigmoid+lstm_360/while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_360/while/lstm_cell_270/Relu_1Relu&lstm_360/while/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_360/while/lstm_cell_270/mul_2Mul*lstm_360/while/lstm_cell_270/Sigmoid_2:y:01lstm_360/while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_360/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_360_while_placeholder_1lstm_360_while_placeholder&lstm_360/while/lstm_cell_270/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_360/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_360/while/addAddV2lstm_360_while_placeholderlstm_360/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_360/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_360/while/add_1AddV2*lstm_360_while_lstm_360_while_loop_counterlstm_360/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_360/while/IdentityIdentitylstm_360/while/add_1:z:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_1Identity0lstm_360_while_lstm_360_while_maximum_iterations^lstm_360/while/NoOp*
T0*
_output_shapes
: t
lstm_360/while/Identity_2Identitylstm_360/while/add:z:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_3IdentityClstm_360/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_360/while/NoOp*
T0*
_output_shapes
: ?
lstm_360/while/Identity_4Identity&lstm_360/while/lstm_cell_270/mul_2:z:0^lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_360/while/Identity_5Identity&lstm_360/while/lstm_cell_270/add_1:z:0^lstm_360/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_360/while/NoOpNoOp4^lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp3^lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp5^lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_360_while_identity lstm_360/while/Identity:output:0"?
lstm_360_while_identity_1"lstm_360/while/Identity_1:output:0"?
lstm_360_while_identity_2"lstm_360/while/Identity_2:output:0"?
lstm_360_while_identity_3"lstm_360/while/Identity_3:output:0"?
lstm_360_while_identity_4"lstm_360/while/Identity_4:output:0"?
lstm_360_while_identity_5"lstm_360/while/Identity_5:output:0"T
'lstm_360_while_lstm_360_strided_slice_1)lstm_360_while_lstm_360_strided_slice_1_0"~
<lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource>lstm_360_while_lstm_cell_270_biasadd_readvariableop_resource_0"?
=lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource?lstm_360_while_lstm_cell_270_matmul_1_readvariableop_resource_0"|
;lstm_360_while_lstm_cell_270_matmul_readvariableop_resource=lstm_360_while_lstm_cell_270_matmul_readvariableop_resource_0"?
clstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensorelstm_360_while_tensorarrayv2read_tensorlistgetitem_lstm_360_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp3lstm_360/while/lstm_cell_270/BiasAdd/ReadVariableOp2h
2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp2lstm_360/while/lstm_cell_270/MatMul/ReadVariableOp2l
4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp4lstm_360/while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_362_layer_call_fn_1649937
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1646376o
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
while_body_1647487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_270_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_270_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_270_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_270_matmul_readvariableop_resource:	?G
4while_lstm_cell_270_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_270_biasadd_readvariableop_resource:	???*while/lstm_cell_270/BiasAdd/ReadVariableOp?)while/lstm_cell_270/MatMul/ReadVariableOp?+while/lstm_cell_270/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_270/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_270_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_270/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_270/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_270/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_270_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_270/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_270/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_270/addAddV2$while/lstm_cell_270/MatMul:product:0&while/lstm_cell_270/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_270/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_270_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_270/BiasAddBiasAddwhile/lstm_cell_270/add:z:02while/lstm_cell_270/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_270/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_270/splitSplit,while/lstm_cell_270/split/split_dim:output:0$while/lstm_cell_270/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_270/SigmoidSigmoid"while/lstm_cell_270/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_1Sigmoid"while/lstm_cell_270/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mulMul!while/lstm_cell_270/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_270/ReluRelu"while/lstm_cell_270/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_1Mulwhile/lstm_cell_270/Sigmoid:y:0&while/lstm_cell_270/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/add_1AddV2while/lstm_cell_270/mul:z:0while/lstm_cell_270/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_270/Sigmoid_2Sigmoid"while/lstm_cell_270/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_270/Relu_1Reluwhile/lstm_cell_270/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_270/mul_2Mul!while/lstm_cell_270/Sigmoid_2:y:0(while/lstm_cell_270/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_270/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_270/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_270/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_270/BiasAdd/ReadVariableOp*^while/lstm_cell_270/MatMul/ReadVariableOp,^while/lstm_cell_270/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_270_biasadd_readvariableop_resource5while_lstm_cell_270_biasadd_readvariableop_resource_0"n
4while_lstm_cell_270_matmul_1_readvariableop_resource6while_lstm_cell_270_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_270_matmul_readvariableop_resource4while_lstm_cell_270_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_270/BiasAdd/ReadVariableOp*while/lstm_cell_270/BiasAdd/ReadVariableOp2V
)while/lstm_cell_270/MatMul/ReadVariableOp)while/lstm_cell_270/MatMul/ReadVariableOp2Z
+while/lstm_cell_270/MatMul_1/ReadVariableOp+while/lstm_cell_270/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1645797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1645797___redundant_placeholder05
1while_while_cond_1645797___redundant_placeholder15
1while_while_cond_1645797___redundant_placeholder25
1while_while_cond_1645797___redundant_placeholder3
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1646293

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
?K
?
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649497
inputs_0?
,lstm_cell_271_matmul_readvariableop_resource:	d?A
.lstm_cell_271_matmul_1_readvariableop_resource:	2?<
-lstm_cell_271_biasadd_readvariableop_resource:	?
identity??$lstm_cell_271/BiasAdd/ReadVariableOp?#lstm_cell_271/MatMul/ReadVariableOp?%lstm_cell_271/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_271/MatMul/ReadVariableOpReadVariableOp,lstm_cell_271_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_271/MatMulMatMulstrided_slice_2:output:0+lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_271_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_271/MatMul_1MatMulzeros:output:0-lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_271/addAddV2lstm_cell_271/MatMul:product:0 lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_271_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_271/BiasAddBiasAddlstm_cell_271/add:z:0,lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_271/splitSplit&lstm_cell_271/split/split_dim:output:0lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_271/SigmoidSigmoidlstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_1Sigmoidlstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_271/mulMullstm_cell_271/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_271/ReluRelulstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_1Mullstm_cell_271/Sigmoid:y:0 lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_271/add_1AddV2lstm_cell_271/mul:z:0lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_271/Sigmoid_2Sigmoidlstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_271/Relu_1Relulstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_271/mul_2Mullstm_cell_271/Sigmoid_2:y:0"lstm_cell_271/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_271_matmul_readvariableop_resource.lstm_cell_271_matmul_1_readvariableop_resource-lstm_cell_271_biasadd_readvariableop_resource*
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
while_body_1649413*
condR
while_cond_1649412*K
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
NoOpNoOp%^lstm_cell_271/BiasAdd/ReadVariableOp$^lstm_cell_271/MatMul/ReadVariableOp&^lstm_cell_271/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_271/BiasAdd/ReadVariableOp$lstm_cell_271/BiasAdd/ReadVariableOp2J
#lstm_cell_271/MatMul/ReadVariableOp#lstm_cell_271/MatMul/ReadVariableOp2N
%lstm_cell_271/MatMul_1/ReadVariableOp%lstm_cell_271/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
%__inference_signature_wrapper_1647786
lstm_360_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_360_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1645526o
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
_user_specified_namelstm_360_input
?
?
*__inference_lstm_361_layer_call_fn_1649321
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1646026|
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
while_cond_1646790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1646790___redundant_placeholder05
1while_while_cond_1646790___redundant_placeholder15
1while_while_cond_1646790___redundant_placeholder25
1while_while_cond_1646790___redundant_placeholder3
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650855

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
while_cond_1649698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1649698___redundant_placeholder05
1while_while_cond_1649698___redundant_placeholder15
1while_while_cond_1649698___redundant_placeholder25
1while_while_cond_1649698___redundant_placeholder3
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
*sequential_120_lstm_361_while_cond_1645296L
Hsequential_120_lstm_361_while_sequential_120_lstm_361_while_loop_counterR
Nsequential_120_lstm_361_while_sequential_120_lstm_361_while_maximum_iterations-
)sequential_120_lstm_361_while_placeholder/
+sequential_120_lstm_361_while_placeholder_1/
+sequential_120_lstm_361_while_placeholder_2/
+sequential_120_lstm_361_while_placeholder_3N
Jsequential_120_lstm_361_while_less_sequential_120_lstm_361_strided_slice_1e
asequential_120_lstm_361_while_sequential_120_lstm_361_while_cond_1645296___redundant_placeholder0e
asequential_120_lstm_361_while_sequential_120_lstm_361_while_cond_1645296___redundant_placeholder1e
asequential_120_lstm_361_while_sequential_120_lstm_361_while_cond_1645296___redundant_placeholder2e
asequential_120_lstm_361_while_sequential_120_lstm_361_while_cond_1645296___redundant_placeholder3*
&sequential_120_lstm_361_while_identity
?
"sequential_120/lstm_361/while/LessLess)sequential_120_lstm_361_while_placeholderJsequential_120_lstm_361_while_less_sequential_120_lstm_361_strided_slice_1*
T0*
_output_shapes
: {
&sequential_120/lstm_361/while/IdentityIdentity&sequential_120/lstm_361/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_120_lstm_361_while_identity/sequential_120/lstm_361/while/Identity:output:0*(
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1647241

inputs>
,lstm_cell_272_matmul_readvariableop_resource:2(@
.lstm_cell_272_matmul_1_readvariableop_resource:
(;
-lstm_cell_272_biasadd_readvariableop_resource:(
identity??$lstm_cell_272/BiasAdd/ReadVariableOp?#lstm_cell_272/MatMul/ReadVariableOp?%lstm_cell_272/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_272/MatMul/ReadVariableOpReadVariableOp,lstm_cell_272_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_272/MatMulMatMulstrided_slice_2:output:0+lstm_cell_272/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_272/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_272_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_272/MatMul_1MatMulzeros:output:0-lstm_cell_272/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_272/addAddV2lstm_cell_272/MatMul:product:0 lstm_cell_272/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_272/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_272_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_272/BiasAddBiasAddlstm_cell_272/add:z:0,lstm_cell_272/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_272/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_272/splitSplit&lstm_cell_272/split/split_dim:output:0lstm_cell_272/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_272/SigmoidSigmoidlstm_cell_272/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_1Sigmoidlstm_cell_272/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_272/mulMullstm_cell_272/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_272/ReluRelulstm_cell_272/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_1Mullstm_cell_272/Sigmoid:y:0 lstm_cell_272/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_272/add_1AddV2lstm_cell_272/mul:z:0lstm_cell_272/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_272/Sigmoid_2Sigmoidlstm_cell_272/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_272/Relu_1Relulstm_cell_272/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_272/mul_2Mullstm_cell_272/Sigmoid_2:y:0"lstm_cell_272/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_272_matmul_readvariableop_resource.lstm_cell_272_matmul_1_readvariableop_resource-lstm_cell_272_biasadd_readvariableop_resource*
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
while_body_1647157*
condR
while_cond_1647156*K
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
NoOpNoOp%^lstm_cell_272/BiasAdd/ReadVariableOp$^lstm_cell_272/MatMul/ReadVariableOp&^lstm_cell_272/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_272/BiasAdd/ReadVariableOp$lstm_cell_272/BiasAdd/ReadVariableOp2J
#lstm_cell_272/MatMul/ReadVariableOp#lstm_cell_272/MatMul/ReadVariableOp2N
%lstm_cell_272/MatMul_1/ReadVariableOp%lstm_cell_272/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1647322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_271_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_271_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_271_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_271_matmul_readvariableop_resource:	d?G
4while_lstm_cell_271_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_271_biasadd_readvariableop_resource:	???*while/lstm_cell_271/BiasAdd/ReadVariableOp?)while/lstm_cell_271/MatMul/ReadVariableOp?+while/lstm_cell_271/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_271/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_271_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_271/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_271/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_271/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_271_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_271/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_271/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_271/addAddV2$while/lstm_cell_271/MatMul:product:0&while/lstm_cell_271/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_271/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_271_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_271/BiasAddBiasAddwhile/lstm_cell_271/add:z:02while/lstm_cell_271/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_271/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_271/splitSplit,while/lstm_cell_271/split/split_dim:output:0$while/lstm_cell_271/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_271/SigmoidSigmoid"while/lstm_cell_271/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_1Sigmoid"while/lstm_cell_271/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mulMul!while/lstm_cell_271/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_271/ReluRelu"while/lstm_cell_271/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_1Mulwhile/lstm_cell_271/Sigmoid:y:0&while/lstm_cell_271/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/add_1AddV2while/lstm_cell_271/mul:z:0while/lstm_cell_271/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_271/Sigmoid_2Sigmoid"while/lstm_cell_271/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_271/Relu_1Reluwhile/lstm_cell_271/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_271/mul_2Mul!while/lstm_cell_271/Sigmoid_2:y:0(while/lstm_cell_271/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_271/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_271/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_271/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_271/BiasAdd/ReadVariableOp*^while/lstm_cell_271/MatMul/ReadVariableOp,^while/lstm_cell_271/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_271_biasadd_readvariableop_resource5while_lstm_cell_271_biasadd_readvariableop_resource_0"n
4while_lstm_cell_271_matmul_1_readvariableop_resource6while_lstm_cell_271_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_271_matmul_readvariableop_resource4while_lstm_cell_271_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_271/BiasAdd/ReadVariableOp*while/lstm_cell_271/BiasAdd/ReadVariableOp2V
)while/lstm_cell_271/MatMul/ReadVariableOp)while/lstm_cell_271/MatMul/ReadVariableOp2Z
+while/lstm_cell_271/MatMul_1/ReadVariableOp+while/lstm_cell_271/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_360_layer_call_fn_1648738

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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1647571s
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
while_cond_1645956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1645956___redundant_placeholder05
1while_while_cond_1645956___redundant_placeholder15
1while_while_cond_1645956___redundant_placeholder25
1while_while_cond_1645956___redundant_placeholder3
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
*sequential_120_lstm_362_while_cond_1645435L
Hsequential_120_lstm_362_while_sequential_120_lstm_362_while_loop_counterR
Nsequential_120_lstm_362_while_sequential_120_lstm_362_while_maximum_iterations-
)sequential_120_lstm_362_while_placeholder/
+sequential_120_lstm_362_while_placeholder_1/
+sequential_120_lstm_362_while_placeholder_2/
+sequential_120_lstm_362_while_placeholder_3N
Jsequential_120_lstm_362_while_less_sequential_120_lstm_362_strided_slice_1e
asequential_120_lstm_362_while_sequential_120_lstm_362_while_cond_1645435___redundant_placeholder0e
asequential_120_lstm_362_while_sequential_120_lstm_362_while_cond_1645435___redundant_placeholder1e
asequential_120_lstm_362_while_sequential_120_lstm_362_while_cond_1645435___redundant_placeholder2e
asequential_120_lstm_362_while_sequential_120_lstm_362_while_cond_1645435___redundant_placeholder3*
&sequential_120_lstm_362_while_identity
?
"sequential_120/lstm_362/while/LessLess)sequential_120_lstm_362_while_placeholderJsequential_120_lstm_362_while_less_sequential_120_lstm_362_strided_slice_1*
T0*
_output_shapes
: {
&sequential_120/lstm_362/while/IdentityIdentity&sequential_120/lstm_362/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_120_lstm_362_while_identity/sequential_120/lstm_362/while/Identity:output:0*(
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
lstm_360_input;
 serving_default_lstm_360_input:0?????????=
	dense_1200
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
2dense_120/kernel
:2dense_120/bias
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
0:.	?2lstm_360/lstm_cell_360/kernel
::8	d?2'lstm_360/lstm_cell_360/recurrent_kernel
*:(?2lstm_360/lstm_cell_360/bias
0:.	d?2lstm_361/lstm_cell_361/kernel
::8	2?2'lstm_361/lstm_cell_361/recurrent_kernel
*:(?2lstm_361/lstm_cell_361/bias
/:-2(2lstm_362/lstm_cell_362/kernel
9:7
(2'lstm_362/lstm_cell_362/recurrent_kernel
):'(2lstm_362/lstm_cell_362/bias
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
2Adam/dense_120/kernel/m
!:2Adam/dense_120/bias/m
5:3	?2$Adam/lstm_360/lstm_cell_360/kernel/m
?:=	d?2.Adam/lstm_360/lstm_cell_360/recurrent_kernel/m
/:-?2"Adam/lstm_360/lstm_cell_360/bias/m
5:3	d?2$Adam/lstm_361/lstm_cell_361/kernel/m
?:=	2?2.Adam/lstm_361/lstm_cell_361/recurrent_kernel/m
/:-?2"Adam/lstm_361/lstm_cell_361/bias/m
4:22(2$Adam/lstm_362/lstm_cell_362/kernel/m
>:<
(2.Adam/lstm_362/lstm_cell_362/recurrent_kernel/m
.:,(2"Adam/lstm_362/lstm_cell_362/bias/m
':%
2Adam/dense_120/kernel/v
!:2Adam/dense_120/bias/v
5:3	?2$Adam/lstm_360/lstm_cell_360/kernel/v
?:=	d?2.Adam/lstm_360/lstm_cell_360/recurrent_kernel/v
/:-?2"Adam/lstm_360/lstm_cell_360/bias/v
5:3	d?2$Adam/lstm_361/lstm_cell_361/kernel/v
?:=	2?2.Adam/lstm_361/lstm_cell_361/recurrent_kernel/v
/:-?2"Adam/lstm_361/lstm_cell_361/bias/v
4:22(2$Adam/lstm_362/lstm_cell_362/kernel/v
>:<
(2.Adam/lstm_362/lstm_cell_362/recurrent_kernel/v
.:,(2"Adam/lstm_362/lstm_cell_362/bias/v
?2?
0__inference_sequential_120_layer_call_fn_1647075
0__inference_sequential_120_layer_call_fn_1647813
0__inference_sequential_120_layer_call_fn_1647840
0__inference_sequential_120_layer_call_fn_1647691?
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648267
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648694
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647721
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647751?
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
"__inference__wrapped_model_1645526lstm_360_input"?
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
*__inference_lstm_360_layer_call_fn_1648705
*__inference_lstm_360_layer_call_fn_1648716
*__inference_lstm_360_layer_call_fn_1648727
*__inference_lstm_360_layer_call_fn_1648738?
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1648881
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649024
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649167
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649310?
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
*__inference_lstm_361_layer_call_fn_1649321
*__inference_lstm_361_layer_call_fn_1649332
*__inference_lstm_361_layer_call_fn_1649343
*__inference_lstm_361_layer_call_fn_1649354?
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649497
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649640
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649783
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649926?
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
*__inference_lstm_362_layer_call_fn_1649937
*__inference_lstm_362_layer_call_fn_1649948
*__inference_lstm_362_layer_call_fn_1649959
*__inference_lstm_362_layer_call_fn_1649970?
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650113
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650256
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650399
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650542?
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
+__inference_dense_120_layer_call_fn_1650551?
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
F__inference_dense_120_layer_call_and_return_conditional_losses_1650561?
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
%__inference_signature_wrapper_1647786lstm_360_input"?
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
/__inference_lstm_cell_270_layer_call_fn_1650578
/__inference_lstm_cell_270_layer_call_fn_1650595?
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650627
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650659?
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
/__inference_lstm_cell_271_layer_call_fn_1650676
/__inference_lstm_cell_271_layer_call_fn_1650693?
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650725
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650757?
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
/__inference_lstm_cell_272_layer_call_fn_1650774
/__inference_lstm_cell_272_layer_call_fn_1650791?
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650823
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650855?
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
"__inference__wrapped_model_1645526?-./012345!";?8
1?.
,?)
lstm_360_input?????????
? "5?2
0
	dense_120#? 
	dense_120??????????
F__inference_dense_120_layer_call_and_return_conditional_losses_1650561\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_120_layer_call_fn_1650551O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_360_layer_call_and_return_conditional_losses_1648881?-./O?L
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649024?-./O?L
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649167q-./??<
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
E__inference_lstm_360_layer_call_and_return_conditional_losses_1649310q-./??<
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
*__inference_lstm_360_layer_call_fn_1648705}-./O?L
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
*__inference_lstm_360_layer_call_fn_1648716}-./O?L
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
*__inference_lstm_360_layer_call_fn_1648727d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_360_layer_call_fn_1648738d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649497?012O?L
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649640?012O?L
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649783q012??<
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
E__inference_lstm_361_layer_call_and_return_conditional_losses_1649926q012??<
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
*__inference_lstm_361_layer_call_fn_1649321}012O?L
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
*__inference_lstm_361_layer_call_fn_1649332}012O?L
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
*__inference_lstm_361_layer_call_fn_1649343d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_361_layer_call_fn_1649354d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650113}345O?L
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650256}345O?L
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650399m345??<
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
E__inference_lstm_362_layer_call_and_return_conditional_losses_1650542m345??<
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
*__inference_lstm_362_layer_call_fn_1649937p345O?L
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
*__inference_lstm_362_layer_call_fn_1649948p345O?L
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
*__inference_lstm_362_layer_call_fn_1649959`345??<
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
*__inference_lstm_362_layer_call_fn_1649970`345??<
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650627?-./??}
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
J__inference_lstm_cell_270_layer_call_and_return_conditional_losses_1650659?-./??}
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
/__inference_lstm_cell_270_layer_call_fn_1650578?-./??}
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
/__inference_lstm_cell_270_layer_call_fn_1650595?-./??}
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650725?012??}
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
J__inference_lstm_cell_271_layer_call_and_return_conditional_losses_1650757?012??}
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
/__inference_lstm_cell_271_layer_call_fn_1650676?012??}
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
/__inference_lstm_cell_271_layer_call_fn_1650693?012??}
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650823?345??}
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
J__inference_lstm_cell_272_layer_call_and_return_conditional_losses_1650855?345??}
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
/__inference_lstm_cell_272_layer_call_fn_1650774?345??}
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
/__inference_lstm_cell_272_layer_call_fn_1650791?345??}
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647721y-./012345!"C?@
9?6
,?)
lstm_360_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_120_layer_call_and_return_conditional_losses_1647751y-./012345!"C?@
9?6
,?)
lstm_360_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648267q-./012345!";?8
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
K__inference_sequential_120_layer_call_and_return_conditional_losses_1648694q-./012345!";?8
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
0__inference_sequential_120_layer_call_fn_1647075l-./012345!"C?@
9?6
,?)
lstm_360_input?????????
p 

 
? "???????????
0__inference_sequential_120_layer_call_fn_1647691l-./012345!"C?@
9?6
,?)
lstm_360_input?????????
p

 
? "???????????
0__inference_sequential_120_layer_call_fn_1647813d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_120_layer_call_fn_1647840d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1647786?-./012345!"M?J
? 
C?@
>
lstm_360_input,?)
lstm_360_input?????????"5?2
0
	dense_120#? 
	dense_120?????????