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
dense_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_168/kernel
u
$dense_168/kernel/Read/ReadVariableOpReadVariableOpdense_168/kernel*
_output_shapes

:
*
dtype0
t
dense_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_168/bias
m
"dense_168/bias/Read/ReadVariableOpReadVariableOpdense_168/bias*
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
lstm_504/lstm_cell_504/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_504/lstm_cell_504/kernel
?
1lstm_504/lstm_cell_504/kernel/Read/ReadVariableOpReadVariableOplstm_504/lstm_cell_504/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_504/lstm_cell_504/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_504/lstm_cell_504/recurrent_kernel
?
;lstm_504/lstm_cell_504/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_504/lstm_cell_504/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_504/lstm_cell_504/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_504/lstm_cell_504/bias
?
/lstm_504/lstm_cell_504/bias/Read/ReadVariableOpReadVariableOplstm_504/lstm_cell_504/bias*
_output_shapes	
:?*
dtype0
?
lstm_505/lstm_cell_505/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_505/lstm_cell_505/kernel
?
1lstm_505/lstm_cell_505/kernel/Read/ReadVariableOpReadVariableOplstm_505/lstm_cell_505/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_505/lstm_cell_505/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_505/lstm_cell_505/recurrent_kernel
?
;lstm_505/lstm_cell_505/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_505/lstm_cell_505/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_505/lstm_cell_505/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_505/lstm_cell_505/bias
?
/lstm_505/lstm_cell_505/bias/Read/ReadVariableOpReadVariableOplstm_505/lstm_cell_505/bias*
_output_shapes	
:?*
dtype0
?
lstm_506/lstm_cell_506/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_506/lstm_cell_506/kernel
?
1lstm_506/lstm_cell_506/kernel/Read/ReadVariableOpReadVariableOplstm_506/lstm_cell_506/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_506/lstm_cell_506/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_506/lstm_cell_506/recurrent_kernel
?
;lstm_506/lstm_cell_506/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_506/lstm_cell_506/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_506/lstm_cell_506/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_506/lstm_cell_506/bias
?
/lstm_506/lstm_cell_506/bias/Read/ReadVariableOpReadVariableOplstm_506/lstm_cell_506/bias*
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
Adam/dense_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_168/kernel/m
?
+Adam/dense_168/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_168/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_168/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_168/bias/m
{
)Adam/dense_168/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_168/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_504/lstm_cell_504/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_504/lstm_cell_504/kernel/m
?
8Adam/lstm_504/lstm_cell_504/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_504/lstm_cell_504/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_504/lstm_cell_504/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_504/lstm_cell_504/recurrent_kernel/m
?
BAdam/lstm_504/lstm_cell_504/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_504/lstm_cell_504/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_504/lstm_cell_504/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_504/lstm_cell_504/bias/m
?
6Adam/lstm_504/lstm_cell_504/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_504/lstm_cell_504/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_505/lstm_cell_505/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_505/lstm_cell_505/kernel/m
?
8Adam/lstm_505/lstm_cell_505/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_505/lstm_cell_505/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_505/lstm_cell_505/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_505/lstm_cell_505/recurrent_kernel/m
?
BAdam/lstm_505/lstm_cell_505/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_505/lstm_cell_505/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_505/lstm_cell_505/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_505/lstm_cell_505/bias/m
?
6Adam/lstm_505/lstm_cell_505/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_505/lstm_cell_505/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_506/lstm_cell_506/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_506/lstm_cell_506/kernel/m
?
8Adam/lstm_506/lstm_cell_506/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_506/lstm_cell_506/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_506/lstm_cell_506/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_506/lstm_cell_506/recurrent_kernel/m
?
BAdam/lstm_506/lstm_cell_506/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_506/lstm_cell_506/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_506/lstm_cell_506/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_506/lstm_cell_506/bias/m
?
6Adam/lstm_506/lstm_cell_506/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_506/lstm_cell_506/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_168/kernel/v
?
+Adam/dense_168/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_168/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_168/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_168/bias/v
{
)Adam/dense_168/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_168/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_504/lstm_cell_504/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_504/lstm_cell_504/kernel/v
?
8Adam/lstm_504/lstm_cell_504/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_504/lstm_cell_504/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_504/lstm_cell_504/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_504/lstm_cell_504/recurrent_kernel/v
?
BAdam/lstm_504/lstm_cell_504/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_504/lstm_cell_504/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_504/lstm_cell_504/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_504/lstm_cell_504/bias/v
?
6Adam/lstm_504/lstm_cell_504/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_504/lstm_cell_504/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_505/lstm_cell_505/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_505/lstm_cell_505/kernel/v
?
8Adam/lstm_505/lstm_cell_505/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_505/lstm_cell_505/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_505/lstm_cell_505/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_505/lstm_cell_505/recurrent_kernel/v
?
BAdam/lstm_505/lstm_cell_505/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_505/lstm_cell_505/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_505/lstm_cell_505/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_505/lstm_cell_505/bias/v
?
6Adam/lstm_505/lstm_cell_505/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_505/lstm_cell_505/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_506/lstm_cell_506/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_506/lstm_cell_506/kernel/v
?
8Adam/lstm_506/lstm_cell_506/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_506/lstm_cell_506/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_506/lstm_cell_506/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_506/lstm_cell_506/recurrent_kernel/v
?
BAdam/lstm_506/lstm_cell_506/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_506/lstm_cell_506/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_506/lstm_cell_506/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_506/lstm_cell_506/bias/v
?
6Adam/lstm_506/lstm_cell_506/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_506/lstm_cell_506/bias/v*
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
VARIABLE_VALUEdense_168/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_168/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_504/lstm_cell_504/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_504/lstm_cell_504/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_504/lstm_cell_504/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_505/lstm_cell_505/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_505/lstm_cell_505/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_505/lstm_cell_505/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_506/lstm_cell_506/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_506/lstm_cell_506/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_506/lstm_cell_506/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_168/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_168/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_504/lstm_cell_504/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_504/lstm_cell_504/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_504/lstm_cell_504/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_505/lstm_cell_505/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_505/lstm_cell_505/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_505/lstm_cell_505/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_506/lstm_cell_506/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_506/lstm_cell_506/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_506/lstm_cell_506/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_168/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_168/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_504/lstm_cell_504/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_504/lstm_cell_504/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_504/lstm_cell_504/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_505/lstm_cell_505/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_505/lstm_cell_505/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_505/lstm_cell_505/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_506/lstm_cell_506/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_506/lstm_cell_506/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_506/lstm_cell_506/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_504_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_504_inputlstm_504/lstm_cell_504/kernel'lstm_504/lstm_cell_504/recurrent_kernellstm_504/lstm_cell_504/biaslstm_505/lstm_cell_505/kernel'lstm_505/lstm_cell_505/recurrent_kernellstm_505/lstm_cell_505/biaslstm_506/lstm_cell_506/kernel'lstm_506/lstm_cell_506/recurrent_kernellstm_506/lstm_cell_506/biasdense_168/kerneldense_168/bias*
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
$__inference_signature_wrapper_885387
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_168/kernel/Read/ReadVariableOp"dense_168/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_504/lstm_cell_504/kernel/Read/ReadVariableOp;lstm_504/lstm_cell_504/recurrent_kernel/Read/ReadVariableOp/lstm_504/lstm_cell_504/bias/Read/ReadVariableOp1lstm_505/lstm_cell_505/kernel/Read/ReadVariableOp;lstm_505/lstm_cell_505/recurrent_kernel/Read/ReadVariableOp/lstm_505/lstm_cell_505/bias/Read/ReadVariableOp1lstm_506/lstm_cell_506/kernel/Read/ReadVariableOp;lstm_506/lstm_cell_506/recurrent_kernel/Read/ReadVariableOp/lstm_506/lstm_cell_506/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_168/kernel/m/Read/ReadVariableOp)Adam/dense_168/bias/m/Read/ReadVariableOp8Adam/lstm_504/lstm_cell_504/kernel/m/Read/ReadVariableOpBAdam/lstm_504/lstm_cell_504/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_504/lstm_cell_504/bias/m/Read/ReadVariableOp8Adam/lstm_505/lstm_cell_505/kernel/m/Read/ReadVariableOpBAdam/lstm_505/lstm_cell_505/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_505/lstm_cell_505/bias/m/Read/ReadVariableOp8Adam/lstm_506/lstm_cell_506/kernel/m/Read/ReadVariableOpBAdam/lstm_506/lstm_cell_506/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_506/lstm_cell_506/bias/m/Read/ReadVariableOp+Adam/dense_168/kernel/v/Read/ReadVariableOp)Adam/dense_168/bias/v/Read/ReadVariableOp8Adam/lstm_504/lstm_cell_504/kernel/v/Read/ReadVariableOpBAdam/lstm_504/lstm_cell_504/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_504/lstm_cell_504/bias/v/Read/ReadVariableOp8Adam/lstm_505/lstm_cell_505/kernel/v/Read/ReadVariableOpBAdam/lstm_505/lstm_cell_505/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_505/lstm_cell_505/bias/v/Read/ReadVariableOp8Adam/lstm_506/lstm_cell_506/kernel/v/Read/ReadVariableOpBAdam/lstm_506/lstm_cell_506/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_506/lstm_cell_506/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_888599
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_168/kerneldense_168/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_504/lstm_cell_504/kernel'lstm_504/lstm_cell_504/recurrent_kernellstm_504/lstm_cell_504/biaslstm_505/lstm_cell_505/kernel'lstm_505/lstm_cell_505/recurrent_kernellstm_505/lstm_cell_505/biaslstm_506/lstm_cell_506/kernel'lstm_506/lstm_cell_506/recurrent_kernellstm_506/lstm_cell_506/biastotalcountAdam/dense_168/kernel/mAdam/dense_168/bias/m$Adam/lstm_504/lstm_cell_504/kernel/m.Adam/lstm_504/lstm_cell_504/recurrent_kernel/m"Adam/lstm_504/lstm_cell_504/bias/m$Adam/lstm_505/lstm_cell_505/kernel/m.Adam/lstm_505/lstm_cell_505/recurrent_kernel/m"Adam/lstm_505/lstm_cell_505/bias/m$Adam/lstm_506/lstm_cell_506/kernel/m.Adam/lstm_506/lstm_cell_506/recurrent_kernel/m"Adam/lstm_506/lstm_cell_506/bias/mAdam/dense_168/kernel/vAdam/dense_168/bias/v$Adam/lstm_504/lstm_cell_504/kernel/v.Adam/lstm_504/lstm_cell_504/recurrent_kernel/v"Adam/lstm_504/lstm_cell_504/bias/v$Adam/lstm_505/lstm_cell_505/kernel/v.Adam/lstm_505/lstm_cell_505/recurrent_kernel/v"Adam/lstm_505/lstm_cell_505/bias/v$Adam/lstm_506/lstm_cell_506/kernel/v.Adam/lstm_506/lstm_cell_506/recurrent_kernel/v"Adam/lstm_506/lstm_cell_506/bias/v*4
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
"__inference__traced_restore_888729??+
?
?
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888260

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
while_cond_884757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884757___redundant_placeholder04
0while_while_cond_884757___redundant_placeholder14
0while_while_cond_884757___redundant_placeholder24
0while_while_cond_884757___redundant_placeholder3
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887527

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_887443*
condR
while_cond_887442*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_168_lstm_504_while_cond_882758L
Hsequential_168_lstm_504_while_sequential_168_lstm_504_while_loop_counterR
Nsequential_168_lstm_504_while_sequential_168_lstm_504_while_maximum_iterations-
)sequential_168_lstm_504_while_placeholder/
+sequential_168_lstm_504_while_placeholder_1/
+sequential_168_lstm_504_while_placeholder_2/
+sequential_168_lstm_504_while_placeholder_3N
Jsequential_168_lstm_504_while_less_sequential_168_lstm_504_strided_slice_1d
`sequential_168_lstm_504_while_sequential_168_lstm_504_while_cond_882758___redundant_placeholder0d
`sequential_168_lstm_504_while_sequential_168_lstm_504_while_cond_882758___redundant_placeholder1d
`sequential_168_lstm_504_while_sequential_168_lstm_504_while_cond_882758___redundant_placeholder2d
`sequential_168_lstm_504_while_sequential_168_lstm_504_while_cond_882758___redundant_placeholder3*
&sequential_168_lstm_504_while_identity
?
"sequential_168/lstm_504/while/LessLess)sequential_168_lstm_504_while_placeholderJsequential_168_lstm_504_while_less_sequential_168_lstm_504_strided_slice_1*
T0*
_output_shapes
: {
&sequential_168/lstm_504/while/IdentityIdentity&sequential_168/lstm_504/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_168_lstm_504_while_identity/sequential_168/lstm_504/while/Identity:output:0*(
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
while_cond_887772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887772___redundant_placeholder04
0while_while_cond_887772___redundant_placeholder14
0while_while_cond_887772___redundant_placeholder24
0while_while_cond_887772___redundant_placeholder3
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
/__inference_sequential_168_layer_call_fn_885441

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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885240o
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
?
D__inference_lstm_504_layer_call_and_return_conditional_losses_883277

inputs'
lstm_cell_144_883195:	?'
lstm_cell_144_883197:	d?#
lstm_cell_144_883199:	?
identity??%lstm_cell_144/StatefulPartitionedCall?while;
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
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_883195lstm_cell_144_883197lstm_cell_144_883199*
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883194n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_883195lstm_cell_144_883197lstm_cell_144_883199*
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
while_body_883208*
condR
while_cond_883207*K
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
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883690

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
/__inference_sequential_168_layer_call_fn_884676
lstm_504_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_504_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_884651o
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
_user_specified_namelstm_504_input
?
?
)__inference_lstm_506_layer_call_fn_887571

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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884842o
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
while_cond_883207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_883207___redundant_placeholder04
0while_while_cond_883207___redundant_placeholder14
0while_while_cond_883207___redundant_placeholder24
0while_while_cond_883207___redundant_placeholder3
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
while_cond_883748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_883748___redundant_placeholder04
0while_while_cond_883748___redundant_placeholder14
0while_while_cond_883748___redundant_placeholder24
0while_while_cond_883748___redundant_placeholder3
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887241
inputs_0?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_887157*
condR
while_cond_887156*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_886684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_888059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_887443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_883557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_883557___redundant_placeholder04
0while_while_cond_883557___redundant_placeholder14
0while_while_cond_883557___redundant_placeholder24
0while_while_cond_883557___redundant_placeholder3
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
while_body_886827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_504_while_body_885500.
*lstm_504_while_lstm_504_while_loop_counter4
0lstm_504_while_lstm_504_while_maximum_iterations
lstm_504_while_placeholder 
lstm_504_while_placeholder_1 
lstm_504_while_placeholder_2 
lstm_504_while_placeholder_3-
)lstm_504_while_lstm_504_strided_slice_1_0i
elstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0:	?R
?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?M
>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
lstm_504_while_identity
lstm_504_while_identity_1
lstm_504_while_identity_2
lstm_504_while_identity_3
lstm_504_while_identity_4
lstm_504_while_identity_5+
'lstm_504_while_lstm_504_strided_slice_1g
clstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensorN
;lstm_504_while_lstm_cell_144_matmul_readvariableop_resource:	?P
=lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource:	d?K
<lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource:	???3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp?2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp?4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp?
@lstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_504/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0lstm_504_while_placeholderIlstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_504/while/lstm_cell_144/MatMulMatMul9lstm_504/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_504/while/lstm_cell_144/MatMul_1MatMullstm_504_while_placeholder_2<lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_504/while/lstm_cell_144/addAddV2-lstm_504/while/lstm_cell_144/MatMul:product:0/lstm_504/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_504/while/lstm_cell_144/BiasAddBiasAdd$lstm_504/while/lstm_cell_144/add:z:0;lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_504/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_504/while/lstm_cell_144/splitSplit5lstm_504/while/lstm_cell_144/split/split_dim:output:0-lstm_504/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_504/while/lstm_cell_144/SigmoidSigmoid+lstm_504/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_504/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_504/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_504/while/lstm_cell_144/mulMul*lstm_504/while/lstm_cell_144/Sigmoid_1:y:0lstm_504_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_504/while/lstm_cell_144/ReluRelu+lstm_504/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/mul_1Mul(lstm_504/while/lstm_cell_144/Sigmoid:y:0/lstm_504/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/add_1AddV2$lstm_504/while/lstm_cell_144/mul:z:0&lstm_504/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_504/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_504/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_504/while/lstm_cell_144/Relu_1Relu&lstm_504/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/mul_2Mul*lstm_504/while/lstm_cell_144/Sigmoid_2:y:01lstm_504/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_504/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_504_while_placeholder_1lstm_504_while_placeholder&lstm_504/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_504/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_504/while/addAddV2lstm_504_while_placeholderlstm_504/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_504/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_504/while/add_1AddV2*lstm_504_while_lstm_504_while_loop_counterlstm_504/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_504/while/IdentityIdentitylstm_504/while/add_1:z:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_1Identity0lstm_504_while_lstm_504_while_maximum_iterations^lstm_504/while/NoOp*
T0*
_output_shapes
: t
lstm_504/while/Identity_2Identitylstm_504/while/add:z:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_3IdentityClstm_504/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_4Identity&lstm_504/while/lstm_cell_144/mul_2:z:0^lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_504/while/Identity_5Identity&lstm_504/while/lstm_cell_144/add_1:z:0^lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_504/while/NoOpNoOp4^lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_504_while_identity lstm_504/while/Identity:output:0"?
lstm_504_while_identity_1"lstm_504/while/Identity_1:output:0"?
lstm_504_while_identity_2"lstm_504/while/Identity_2:output:0"?
lstm_504_while_identity_3"lstm_504/while/Identity_3:output:0"?
lstm_504_while_identity_4"lstm_504/while/Identity_4:output:0"?
lstm_504_while_identity_5"lstm_504/while/Identity_5:output:0"T
'lstm_504_while_lstm_504_strided_slice_1)lstm_504_while_lstm_504_strided_slice_1_0"~
<lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
=lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_504_while_lstm_cell_144_matmul_readvariableop_resource=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0"?
clstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensorelstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_884923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_887629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887629___redundant_placeholder04
0while_while_cond_887629___redundant_placeholder14
0while_while_cond_887629___redundant_placeholder24
0while_while_cond_887629___redundant_placeholder3
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886911

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_886827*
condR
while_cond_886826*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_504_while_body_885927.
*lstm_504_while_lstm_504_while_loop_counter4
0lstm_504_while_lstm_504_while_maximum_iterations
lstm_504_while_placeholder 
lstm_504_while_placeholder_1 
lstm_504_while_placeholder_2 
lstm_504_while_placeholder_3-
)lstm_504_while_lstm_504_strided_slice_1_0i
elstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0:	?R
?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?M
>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
lstm_504_while_identity
lstm_504_while_identity_1
lstm_504_while_identity_2
lstm_504_while_identity_3
lstm_504_while_identity_4
lstm_504_while_identity_5+
'lstm_504_while_lstm_504_strided_slice_1g
clstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensorN
;lstm_504_while_lstm_cell_144_matmul_readvariableop_resource:	?P
=lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource:	d?K
<lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource:	???3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp?2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp?4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp?
@lstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_504/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0lstm_504_while_placeholderIlstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_504/while/lstm_cell_144/MatMulMatMul9lstm_504/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_504/while/lstm_cell_144/MatMul_1MatMullstm_504_while_placeholder_2<lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_504/while/lstm_cell_144/addAddV2-lstm_504/while/lstm_cell_144/MatMul:product:0/lstm_504/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_504/while/lstm_cell_144/BiasAddBiasAdd$lstm_504/while/lstm_cell_144/add:z:0;lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_504/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_504/while/lstm_cell_144/splitSplit5lstm_504/while/lstm_cell_144/split/split_dim:output:0-lstm_504/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_504/while/lstm_cell_144/SigmoidSigmoid+lstm_504/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_504/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_504/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_504/while/lstm_cell_144/mulMul*lstm_504/while/lstm_cell_144/Sigmoid_1:y:0lstm_504_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_504/while/lstm_cell_144/ReluRelu+lstm_504/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/mul_1Mul(lstm_504/while/lstm_cell_144/Sigmoid:y:0/lstm_504/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/add_1AddV2$lstm_504/while/lstm_cell_144/mul:z:0&lstm_504/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_504/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_504/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_504/while/lstm_cell_144/Relu_1Relu&lstm_504/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_504/while/lstm_cell_144/mul_2Mul*lstm_504/while/lstm_cell_144/Sigmoid_2:y:01lstm_504/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_504/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_504_while_placeholder_1lstm_504_while_placeholder&lstm_504/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_504/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_504/while/addAddV2lstm_504_while_placeholderlstm_504/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_504/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_504/while/add_1AddV2*lstm_504_while_lstm_504_while_loop_counterlstm_504/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_504/while/IdentityIdentitylstm_504/while/add_1:z:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_1Identity0lstm_504_while_lstm_504_while_maximum_iterations^lstm_504/while/NoOp*
T0*
_output_shapes
: t
lstm_504/while/Identity_2Identitylstm_504/while/add:z:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_3IdentityClstm_504/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_504/while/NoOp*
T0*
_output_shapes
: ?
lstm_504/while/Identity_4Identity&lstm_504/while/lstm_cell_144/mul_2:z:0^lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_504/while/Identity_5Identity&lstm_504/while/lstm_cell_144/add_1:z:0^lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_504/while/NoOpNoOp4^lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_504_while_identity lstm_504/while/Identity:output:0"?
lstm_504_while_identity_1"lstm_504/while/Identity_1:output:0"?
lstm_504_while_identity_2"lstm_504/while/Identity_2:output:0"?
lstm_504_while_identity_3"lstm_504/while/Identity_3:output:0"?
lstm_504_while_identity_4"lstm_504/while/Identity_4:output:0"?
lstm_504_while_identity_5"lstm_504/while/Identity_5:output:0"T
'lstm_504_while_lstm_504_strided_slice_1)lstm_504_while_lstm_504_strided_slice_1_0"~
<lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
=lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_504_while_lstm_cell_144_matmul_readvariableop_resource=lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0"?
clstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensorelstm_504_while_tensorarrayv2read_tensorlistgetitem_lstm_504_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883340

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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_883894

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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883544

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
while_body_883908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_146_883932_0:2(.
while_lstm_cell_146_883934_0:
(*
while_lstm_cell_146_883936_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_146_883932:2(,
while_lstm_cell_146_883934:
((
while_lstm_cell_146_883936:(??+while/lstm_cell_146/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_883932_0while_lstm_cell_146_883934_0while_lstm_cell_146_883936_0*
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_883894?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_146_883932while_lstm_cell_146_883932_0":
while_lstm_cell_146_883934while_lstm_cell_146_883934_0":
while_lstm_cell_146_883936while_lstm_cell_146_883936_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_883398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_883398___redundant_placeholder04
0while_while_cond_883398___redundant_placeholder14
0while_while_cond_883398___redundant_placeholder24
0while_while_cond_883398___redundant_placeholder3
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
)__inference_lstm_505_layer_call_fn_886955

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
D__inference_lstm_505_layer_call_and_return_conditional_losses_885007s
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
)__inference_lstm_506_layer_call_fn_887538
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_883977o
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
)__inference_lstm_506_layer_call_fn_887560

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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884626o
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886768

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_886684*
condR
while_cond_886683*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_145_layer_call_fn_888277

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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883544o
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
?"
?
while_body_883208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_144_883232_0:	?/
while_lstm_cell_144_883234_0:	d?+
while_lstm_cell_144_883236_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_144_883232:	?-
while_lstm_cell_144_883234:	d?)
while_lstm_cell_144_883236:	???+while/lstm_cell_144/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_883232_0while_lstm_cell_144_883234_0while_lstm_cell_144_883236_0*
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883194?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_144_883232while_lstm_cell_144_883232_0":
while_lstm_cell_144_883234while_lstm_cell_144_883234_0":
while_lstm_cell_144_883236while_lstm_cell_144_883236_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885322
lstm_504_input"
lstm_504_885295:	?"
lstm_504_885297:	d?
lstm_504_885299:	?"
lstm_505_885302:	d?"
lstm_505_885304:	2?
lstm_505_885306:	?!
lstm_506_885309:2(!
lstm_506_885311:
(
lstm_506_885313:("
dense_168_885316:

dense_168_885318:
identity??!dense_168/StatefulPartitionedCall? lstm_504/StatefulPartitionedCall? lstm_505/StatefulPartitionedCall? lstm_506/StatefulPartitionedCall?
 lstm_504/StatefulPartitionedCallStatefulPartitionedCalllstm_504_inputlstm_504_885295lstm_504_885297lstm_504_885299*
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_884326?
 lstm_505/StatefulPartitionedCallStatefulPartitionedCall)lstm_504/StatefulPartitionedCall:output:0lstm_505_885302lstm_505_885304lstm_505_885306*
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_884476?
 lstm_506/StatefulPartitionedCallStatefulPartitionedCall)lstm_505/StatefulPartitionedCall:output:0lstm_506_885309lstm_506_885311lstm_506_885313*
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884626?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall)lstm_506/StatefulPartitionedCall:output:0dense_168_885316dense_168_885318*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644y
IdentityIdentity*dense_168/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_168/StatefulPartitionedCall!^lstm_504/StatefulPartitionedCall!^lstm_505/StatefulPartitionedCall!^lstm_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2D
 lstm_504/StatefulPartitionedCall lstm_504/StatefulPartitionedCall2D
 lstm_505/StatefulPartitionedCall lstm_505/StatefulPartitionedCall2D
 lstm_506/StatefulPartitionedCall lstm_506/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_504_input
?K
?
D__inference_lstm_504_layer_call_and_return_conditional_losses_886625
inputs_0?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_886541*
condR
while_cond_886540*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_886540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_886540___redundant_placeholder04
0while_while_cond_886540___redundant_placeholder14
0while_while_cond_886540___redundant_placeholder24
0while_while_cond_886540___redundant_placeholder3
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
lstm_504_while_cond_885926.
*lstm_504_while_lstm_504_while_loop_counter4
0lstm_504_while_lstm_504_while_maximum_iterations
lstm_504_while_placeholder 
lstm_504_while_placeholder_1 
lstm_504_while_placeholder_2 
lstm_504_while_placeholder_30
,lstm_504_while_less_lstm_504_strided_slice_1F
Blstm_504_while_lstm_504_while_cond_885926___redundant_placeholder0F
Blstm_504_while_lstm_504_while_cond_885926___redundant_placeholder1F
Blstm_504_while_lstm_504_while_cond_885926___redundant_placeholder2F
Blstm_504_while_lstm_504_while_cond_885926___redundant_placeholder3
lstm_504_while_identity
?
lstm_504/while/LessLesslstm_504_while_placeholder,lstm_504_while_less_lstm_504_strided_slice_1*
T0*
_output_shapes
: ]
lstm_504/while/IdentityIdentitylstm_504/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_504_while_identity lstm_504/while/Identity:output:0*(
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
)sequential_168_lstm_504_while_body_882759L
Hsequential_168_lstm_504_while_sequential_168_lstm_504_while_loop_counterR
Nsequential_168_lstm_504_while_sequential_168_lstm_504_while_maximum_iterations-
)sequential_168_lstm_504_while_placeholder/
+sequential_168_lstm_504_while_placeholder_1/
+sequential_168_lstm_504_while_placeholder_2/
+sequential_168_lstm_504_while_placeholder_3K
Gsequential_168_lstm_504_while_sequential_168_lstm_504_strided_slice_1_0?
?sequential_168_lstm_504_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_504_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_168_lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0:	?a
Nsequential_168_lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?\
Msequential_168_lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?*
&sequential_168_lstm_504_while_identity,
(sequential_168_lstm_504_while_identity_1,
(sequential_168_lstm_504_while_identity_2,
(sequential_168_lstm_504_while_identity_3,
(sequential_168_lstm_504_while_identity_4,
(sequential_168_lstm_504_while_identity_5I
Esequential_168_lstm_504_while_sequential_168_lstm_504_strided_slice_1?
?sequential_168_lstm_504_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_504_tensorarrayunstack_tensorlistfromtensor]
Jsequential_168_lstm_504_while_lstm_cell_144_matmul_readvariableop_resource:	?_
Lsequential_168_lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource:	d?Z
Ksequential_168_lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource:	???Bsequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp?Asequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp?Csequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp?
Osequential_168/lstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_168/lstm_504/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_168_lstm_504_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_504_tensorarrayunstack_tensorlistfromtensor_0)sequential_168_lstm_504_while_placeholderXsequential_168/lstm_504/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpLsequential_168_lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_168/lstm_504/while/lstm_cell_144/MatMulMatMulHsequential_168/lstm_504/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpNsequential_168_lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_168/lstm_504/while/lstm_cell_144/MatMul_1MatMul+sequential_168_lstm_504_while_placeholder_2Ksequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_168/lstm_504/while/lstm_cell_144/addAddV2<sequential_168/lstm_504/while/lstm_cell_144/MatMul:product:0>sequential_168/lstm_504/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpMsequential_168_lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_168/lstm_504/while/lstm_cell_144/BiasAddBiasAdd3sequential_168/lstm_504/while/lstm_cell_144/add:z:0Jsequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_168/lstm_504/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_168/lstm_504/while/lstm_cell_144/splitSplitDsequential_168/lstm_504/while/lstm_cell_144/split/split_dim:output:0<sequential_168/lstm_504/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_168/lstm_504/while/lstm_cell_144/SigmoidSigmoid:sequential_168/lstm_504/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_168/lstm_504/while/lstm_cell_144/Sigmoid_1Sigmoid:sequential_168/lstm_504/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_168/lstm_504/while/lstm_cell_144/mulMul9sequential_168/lstm_504/while/lstm_cell_144/Sigmoid_1:y:0+sequential_168_lstm_504_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_168/lstm_504/while/lstm_cell_144/ReluRelu:sequential_168/lstm_504/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_168/lstm_504/while/lstm_cell_144/mul_1Mul7sequential_168/lstm_504/while/lstm_cell_144/Sigmoid:y:0>sequential_168/lstm_504/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_168/lstm_504/while/lstm_cell_144/add_1AddV23sequential_168/lstm_504/while/lstm_cell_144/mul:z:05sequential_168/lstm_504/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_168/lstm_504/while/lstm_cell_144/Sigmoid_2Sigmoid:sequential_168/lstm_504/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_168/lstm_504/while/lstm_cell_144/Relu_1Relu5sequential_168/lstm_504/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_168/lstm_504/while/lstm_cell_144/mul_2Mul9sequential_168/lstm_504/while/lstm_cell_144/Sigmoid_2:y:0@sequential_168/lstm_504/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_168/lstm_504/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_168_lstm_504_while_placeholder_1)sequential_168_lstm_504_while_placeholder5sequential_168/lstm_504/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_168/lstm_504/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_168/lstm_504/while/addAddV2)sequential_168_lstm_504_while_placeholder,sequential_168/lstm_504/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_168/lstm_504/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_168/lstm_504/while/add_1AddV2Hsequential_168_lstm_504_while_sequential_168_lstm_504_while_loop_counter.sequential_168/lstm_504/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_168/lstm_504/while/IdentityIdentity'sequential_168/lstm_504/while/add_1:z:0#^sequential_168/lstm_504/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_504/while/Identity_1IdentityNsequential_168_lstm_504_while_sequential_168_lstm_504_while_maximum_iterations#^sequential_168/lstm_504/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_504/while/Identity_2Identity%sequential_168/lstm_504/while/add:z:0#^sequential_168/lstm_504/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_504/while/Identity_3IdentityRsequential_168/lstm_504/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_168/lstm_504/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_504/while/Identity_4Identity5sequential_168/lstm_504/while/lstm_cell_144/mul_2:z:0#^sequential_168/lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_168/lstm_504/while/Identity_5Identity5sequential_168/lstm_504/while/lstm_cell_144/add_1:z:0#^sequential_168/lstm_504/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_168/lstm_504/while/NoOpNoOpC^sequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOpB^sequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOpD^sequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_168_lstm_504_while_identity/sequential_168/lstm_504/while/Identity:output:0"]
(sequential_168_lstm_504_while_identity_11sequential_168/lstm_504/while/Identity_1:output:0"]
(sequential_168_lstm_504_while_identity_21sequential_168/lstm_504/while/Identity_2:output:0"]
(sequential_168_lstm_504_while_identity_31sequential_168/lstm_504/while/Identity_3:output:0"]
(sequential_168_lstm_504_while_identity_41sequential_168/lstm_504/while/Identity_4:output:0"]
(sequential_168_lstm_504_while_identity_51sequential_168/lstm_504/while/Identity_5:output:0"?
Ksequential_168_lstm_504_while_lstm_cell_144_biasadd_readvariableop_resourceMsequential_168_lstm_504_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
Lsequential_168_lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resourceNsequential_168_lstm_504_while_lstm_cell_144_matmul_1_readvariableop_resource_0"?
Jsequential_168_lstm_504_while_lstm_cell_144_matmul_readvariableop_resourceLsequential_168_lstm_504_while_lstm_cell_144_matmul_readvariableop_resource_0"?
Esequential_168_lstm_504_while_sequential_168_lstm_504_strided_slice_1Gsequential_168_lstm_504_while_sequential_168_lstm_504_strided_slice_1_0"?
?sequential_168_lstm_504_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_504_tensorarrayunstack_tensorlistfromtensor?sequential_168_lstm_504_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_504_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOpBsequential_168/lstm_504/while/lstm_cell_144/BiasAdd/ReadVariableOp2?
Asequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOpAsequential_168/lstm_504/while/lstm_cell_144/MatMul/ReadVariableOp2?
Csequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOpCsequential_168/lstm_504/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
)sequential_168_lstm_505_while_body_882898L
Hsequential_168_lstm_505_while_sequential_168_lstm_505_while_loop_counterR
Nsequential_168_lstm_505_while_sequential_168_lstm_505_while_maximum_iterations-
)sequential_168_lstm_505_while_placeholder/
+sequential_168_lstm_505_while_placeholder_1/
+sequential_168_lstm_505_while_placeholder_2/
+sequential_168_lstm_505_while_placeholder_3K
Gsequential_168_lstm_505_while_sequential_168_lstm_505_strided_slice_1_0?
?sequential_168_lstm_505_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_505_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_168_lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0:	d?a
Nsequential_168_lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?\
Msequential_168_lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?*
&sequential_168_lstm_505_while_identity,
(sequential_168_lstm_505_while_identity_1,
(sequential_168_lstm_505_while_identity_2,
(sequential_168_lstm_505_while_identity_3,
(sequential_168_lstm_505_while_identity_4,
(sequential_168_lstm_505_while_identity_5I
Esequential_168_lstm_505_while_sequential_168_lstm_505_strided_slice_1?
?sequential_168_lstm_505_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_505_tensorarrayunstack_tensorlistfromtensor]
Jsequential_168_lstm_505_while_lstm_cell_145_matmul_readvariableop_resource:	d?_
Lsequential_168_lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource:	2?Z
Ksequential_168_lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource:	???Bsequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp?Asequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp?Csequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp?
Osequential_168/lstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_168/lstm_505/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_168_lstm_505_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_505_tensorarrayunstack_tensorlistfromtensor_0)sequential_168_lstm_505_while_placeholderXsequential_168/lstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpLsequential_168_lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_168/lstm_505/while/lstm_cell_145/MatMulMatMulHsequential_168/lstm_505/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpNsequential_168_lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_168/lstm_505/while/lstm_cell_145/MatMul_1MatMul+sequential_168_lstm_505_while_placeholder_2Ksequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_168/lstm_505/while/lstm_cell_145/addAddV2<sequential_168/lstm_505/while/lstm_cell_145/MatMul:product:0>sequential_168/lstm_505/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpMsequential_168_lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_168/lstm_505/while/lstm_cell_145/BiasAddBiasAdd3sequential_168/lstm_505/while/lstm_cell_145/add:z:0Jsequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_168/lstm_505/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_168/lstm_505/while/lstm_cell_145/splitSplitDsequential_168/lstm_505/while/lstm_cell_145/split/split_dim:output:0<sequential_168/lstm_505/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_168/lstm_505/while/lstm_cell_145/SigmoidSigmoid:sequential_168/lstm_505/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_168/lstm_505/while/lstm_cell_145/Sigmoid_1Sigmoid:sequential_168/lstm_505/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_168/lstm_505/while/lstm_cell_145/mulMul9sequential_168/lstm_505/while/lstm_cell_145/Sigmoid_1:y:0+sequential_168_lstm_505_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_168/lstm_505/while/lstm_cell_145/ReluRelu:sequential_168/lstm_505/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_168/lstm_505/while/lstm_cell_145/mul_1Mul7sequential_168/lstm_505/while/lstm_cell_145/Sigmoid:y:0>sequential_168/lstm_505/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_168/lstm_505/while/lstm_cell_145/add_1AddV23sequential_168/lstm_505/while/lstm_cell_145/mul:z:05sequential_168/lstm_505/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_168/lstm_505/while/lstm_cell_145/Sigmoid_2Sigmoid:sequential_168/lstm_505/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_168/lstm_505/while/lstm_cell_145/Relu_1Relu5sequential_168/lstm_505/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_168/lstm_505/while/lstm_cell_145/mul_2Mul9sequential_168/lstm_505/while/lstm_cell_145/Sigmoid_2:y:0@sequential_168/lstm_505/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_168/lstm_505/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_168_lstm_505_while_placeholder_1)sequential_168_lstm_505_while_placeholder5sequential_168/lstm_505/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_168/lstm_505/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_168/lstm_505/while/addAddV2)sequential_168_lstm_505_while_placeholder,sequential_168/lstm_505/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_168/lstm_505/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_168/lstm_505/while/add_1AddV2Hsequential_168_lstm_505_while_sequential_168_lstm_505_while_loop_counter.sequential_168/lstm_505/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_168/lstm_505/while/IdentityIdentity'sequential_168/lstm_505/while/add_1:z:0#^sequential_168/lstm_505/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_505/while/Identity_1IdentityNsequential_168_lstm_505_while_sequential_168_lstm_505_while_maximum_iterations#^sequential_168/lstm_505/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_505/while/Identity_2Identity%sequential_168/lstm_505/while/add:z:0#^sequential_168/lstm_505/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_505/while/Identity_3IdentityRsequential_168/lstm_505/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_168/lstm_505/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_505/while/Identity_4Identity5sequential_168/lstm_505/while/lstm_cell_145/mul_2:z:0#^sequential_168/lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_168/lstm_505/while/Identity_5Identity5sequential_168/lstm_505/while/lstm_cell_145/add_1:z:0#^sequential_168/lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_168/lstm_505/while/NoOpNoOpC^sequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOpB^sequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOpD^sequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_168_lstm_505_while_identity/sequential_168/lstm_505/while/Identity:output:0"]
(sequential_168_lstm_505_while_identity_11sequential_168/lstm_505/while/Identity_1:output:0"]
(sequential_168_lstm_505_while_identity_21sequential_168/lstm_505/while/Identity_2:output:0"]
(sequential_168_lstm_505_while_identity_31sequential_168/lstm_505/while/Identity_3:output:0"]
(sequential_168_lstm_505_while_identity_41sequential_168/lstm_505/while/Identity_4:output:0"]
(sequential_168_lstm_505_while_identity_51sequential_168/lstm_505/while/Identity_5:output:0"?
Ksequential_168_lstm_505_while_lstm_cell_145_biasadd_readvariableop_resourceMsequential_168_lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
Lsequential_168_lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resourceNsequential_168_lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0"?
Jsequential_168_lstm_505_while_lstm_cell_145_matmul_readvariableop_resourceLsequential_168_lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0"?
Esequential_168_lstm_505_while_sequential_168_lstm_505_strided_slice_1Gsequential_168_lstm_505_while_sequential_168_lstm_505_strided_slice_1_0"?
?sequential_168_lstm_505_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_505_tensorarrayunstack_tensorlistfromtensor?sequential_168_lstm_505_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_505_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOpBsequential_168/lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp2?
Asequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOpAsequential_168/lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp2?
Csequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOpCsequential_168/lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_886541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_884392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_887442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887442___redundant_placeholder04
0while_while_cond_887442___redundant_placeholder14
0while_while_cond_887442___redundant_placeholder24
0while_while_cond_887442___redundant_placeholder3
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
)__inference_lstm_504_layer_call_fn_886306
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_883277|
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
while_cond_883907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_883907___redundant_placeholder04
0while_while_cond_883907___redundant_placeholder14
0while_while_cond_883907___redundant_placeholder24
0while_while_cond_883907___redundant_placeholder3
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
while_cond_886826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_886826___redundant_placeholder04
0while_while_cond_886826___redundant_placeholder14
0while_while_cond_886826___redundant_placeholder24
0while_while_cond_886826___redundant_placeholder3
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
!__inference__wrapped_model_883127
lstm_504_inputW
Dsequential_168_lstm_504_lstm_cell_144_matmul_readvariableop_resource:	?Y
Fsequential_168_lstm_504_lstm_cell_144_matmul_1_readvariableop_resource:	d?T
Esequential_168_lstm_504_lstm_cell_144_biasadd_readvariableop_resource:	?W
Dsequential_168_lstm_505_lstm_cell_145_matmul_readvariableop_resource:	d?Y
Fsequential_168_lstm_505_lstm_cell_145_matmul_1_readvariableop_resource:	2?T
Esequential_168_lstm_505_lstm_cell_145_biasadd_readvariableop_resource:	?V
Dsequential_168_lstm_506_lstm_cell_146_matmul_readvariableop_resource:2(X
Fsequential_168_lstm_506_lstm_cell_146_matmul_1_readvariableop_resource:
(S
Esequential_168_lstm_506_lstm_cell_146_biasadd_readvariableop_resource:(I
7sequential_168_dense_168_matmul_readvariableop_resource:
F
8sequential_168_dense_168_biasadd_readvariableop_resource:
identity??/sequential_168/dense_168/BiasAdd/ReadVariableOp?.sequential_168/dense_168/MatMul/ReadVariableOp?<sequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp?;sequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOp?=sequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp?sequential_168/lstm_504/while?<sequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp?;sequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOp?=sequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp?sequential_168/lstm_505/while?<sequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp?;sequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOp?=sequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp?sequential_168/lstm_506/while[
sequential_168/lstm_504/ShapeShapelstm_504_input*
T0*
_output_shapes
:u
+sequential_168/lstm_504/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_168/lstm_504/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_168/lstm_504/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_168/lstm_504/strided_sliceStridedSlice&sequential_168/lstm_504/Shape:output:04sequential_168/lstm_504/strided_slice/stack:output:06sequential_168/lstm_504/strided_slice/stack_1:output:06sequential_168/lstm_504/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_168/lstm_504/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_168/lstm_504/zeros/packedPack.sequential_168/lstm_504/strided_slice:output:0/sequential_168/lstm_504/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_168/lstm_504/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_504/zerosFill-sequential_168/lstm_504/zeros/packed:output:0,sequential_168/lstm_504/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_168/lstm_504/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_168/lstm_504/zeros_1/packedPack.sequential_168/lstm_504/strided_slice:output:01sequential_168/lstm_504/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_168/lstm_504/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_504/zeros_1Fill/sequential_168/lstm_504/zeros_1/packed:output:0.sequential_168/lstm_504/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_168/lstm_504/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_168/lstm_504/transpose	Transposelstm_504_input/sequential_168/lstm_504/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_168/lstm_504/Shape_1Shape%sequential_168/lstm_504/transpose:y:0*
T0*
_output_shapes
:w
-sequential_168/lstm_504/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_504/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_504/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_504/strided_slice_1StridedSlice(sequential_168/lstm_504/Shape_1:output:06sequential_168/lstm_504/strided_slice_1/stack:output:08sequential_168/lstm_504/strided_slice_1/stack_1:output:08sequential_168/lstm_504/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_168/lstm_504/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_168/lstm_504/TensorArrayV2TensorListReserve<sequential_168/lstm_504/TensorArrayV2/element_shape:output:00sequential_168/lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_168/lstm_504/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_168/lstm_504/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_168/lstm_504/transpose:y:0Vsequential_168/lstm_504/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_168/lstm_504/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_504/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_504/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_504/strided_slice_2StridedSlice%sequential_168/lstm_504/transpose:y:06sequential_168/lstm_504/strided_slice_2/stack:output:08sequential_168/lstm_504/strided_slice_2/stack_1:output:08sequential_168/lstm_504/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpDsequential_168_lstm_504_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_168/lstm_504/lstm_cell_144/MatMulMatMul0sequential_168/lstm_504/strided_slice_2:output:0Csequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpFsequential_168_lstm_504_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_168/lstm_504/lstm_cell_144/MatMul_1MatMul&sequential_168/lstm_504/zeros:output:0Esequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_168/lstm_504/lstm_cell_144/addAddV26sequential_168/lstm_504/lstm_cell_144/MatMul:product:08sequential_168/lstm_504/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpEsequential_168_lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_168/lstm_504/lstm_cell_144/BiasAddBiasAdd-sequential_168/lstm_504/lstm_cell_144/add:z:0Dsequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_168/lstm_504/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_168/lstm_504/lstm_cell_144/splitSplit>sequential_168/lstm_504/lstm_cell_144/split/split_dim:output:06sequential_168/lstm_504/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_168/lstm_504/lstm_cell_144/SigmoidSigmoid4sequential_168/lstm_504/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_168/lstm_504/lstm_cell_144/Sigmoid_1Sigmoid4sequential_168/lstm_504/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_168/lstm_504/lstm_cell_144/mulMul3sequential_168/lstm_504/lstm_cell_144/Sigmoid_1:y:0(sequential_168/lstm_504/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_168/lstm_504/lstm_cell_144/ReluRelu4sequential_168/lstm_504/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_168/lstm_504/lstm_cell_144/mul_1Mul1sequential_168/lstm_504/lstm_cell_144/Sigmoid:y:08sequential_168/lstm_504/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_168/lstm_504/lstm_cell_144/add_1AddV2-sequential_168/lstm_504/lstm_cell_144/mul:z:0/sequential_168/lstm_504/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_168/lstm_504/lstm_cell_144/Sigmoid_2Sigmoid4sequential_168/lstm_504/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_168/lstm_504/lstm_cell_144/Relu_1Relu/sequential_168/lstm_504/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_168/lstm_504/lstm_cell_144/mul_2Mul3sequential_168/lstm_504/lstm_cell_144/Sigmoid_2:y:0:sequential_168/lstm_504/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_168/lstm_504/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_168/lstm_504/TensorArrayV2_1TensorListReserve>sequential_168/lstm_504/TensorArrayV2_1/element_shape:output:00sequential_168/lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_168/lstm_504/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_168/lstm_504/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_168/lstm_504/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_168/lstm_504/whileWhile3sequential_168/lstm_504/while/loop_counter:output:09sequential_168/lstm_504/while/maximum_iterations:output:0%sequential_168/lstm_504/time:output:00sequential_168/lstm_504/TensorArrayV2_1:handle:0&sequential_168/lstm_504/zeros:output:0(sequential_168/lstm_504/zeros_1:output:00sequential_168/lstm_504/strided_slice_1:output:0Osequential_168/lstm_504/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_168_lstm_504_lstm_cell_144_matmul_readvariableop_resourceFsequential_168_lstm_504_lstm_cell_144_matmul_1_readvariableop_resourceEsequential_168_lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
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
)sequential_168_lstm_504_while_body_882759*5
cond-R+
)sequential_168_lstm_504_while_cond_882758*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_168/lstm_504/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_168/lstm_504/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_168/lstm_504/while:output:3Qsequential_168/lstm_504/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_168/lstm_504/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_168/lstm_504/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_504/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_504/strided_slice_3StridedSliceCsequential_168/lstm_504/TensorArrayV2Stack/TensorListStack:tensor:06sequential_168/lstm_504/strided_slice_3/stack:output:08sequential_168/lstm_504/strided_slice_3/stack_1:output:08sequential_168/lstm_504/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_168/lstm_504/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_168/lstm_504/transpose_1	TransposeCsequential_168/lstm_504/TensorArrayV2Stack/TensorListStack:tensor:01sequential_168/lstm_504/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_168/lstm_504/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_168/lstm_505/ShapeShape'sequential_168/lstm_504/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_168/lstm_505/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_168/lstm_505/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_168/lstm_505/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_168/lstm_505/strided_sliceStridedSlice&sequential_168/lstm_505/Shape:output:04sequential_168/lstm_505/strided_slice/stack:output:06sequential_168/lstm_505/strided_slice/stack_1:output:06sequential_168/lstm_505/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_168/lstm_505/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_168/lstm_505/zeros/packedPack.sequential_168/lstm_505/strided_slice:output:0/sequential_168/lstm_505/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_168/lstm_505/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_505/zerosFill-sequential_168/lstm_505/zeros/packed:output:0,sequential_168/lstm_505/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_168/lstm_505/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_168/lstm_505/zeros_1/packedPack.sequential_168/lstm_505/strided_slice:output:01sequential_168/lstm_505/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_168/lstm_505/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_505/zeros_1Fill/sequential_168/lstm_505/zeros_1/packed:output:0.sequential_168/lstm_505/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_168/lstm_505/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_168/lstm_505/transpose	Transpose'sequential_168/lstm_504/transpose_1:y:0/sequential_168/lstm_505/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_168/lstm_505/Shape_1Shape%sequential_168/lstm_505/transpose:y:0*
T0*
_output_shapes
:w
-sequential_168/lstm_505/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_505/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_505/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_505/strided_slice_1StridedSlice(sequential_168/lstm_505/Shape_1:output:06sequential_168/lstm_505/strided_slice_1/stack:output:08sequential_168/lstm_505/strided_slice_1/stack_1:output:08sequential_168/lstm_505/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_168/lstm_505/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_168/lstm_505/TensorArrayV2TensorListReserve<sequential_168/lstm_505/TensorArrayV2/element_shape:output:00sequential_168/lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_168/lstm_505/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_168/lstm_505/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_168/lstm_505/transpose:y:0Vsequential_168/lstm_505/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_168/lstm_505/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_505/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_505/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_505/strided_slice_2StridedSlice%sequential_168/lstm_505/transpose:y:06sequential_168/lstm_505/strided_slice_2/stack:output:08sequential_168/lstm_505/strided_slice_2/stack_1:output:08sequential_168/lstm_505/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpDsequential_168_lstm_505_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_168/lstm_505/lstm_cell_145/MatMulMatMul0sequential_168/lstm_505/strided_slice_2:output:0Csequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpFsequential_168_lstm_505_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_168/lstm_505/lstm_cell_145/MatMul_1MatMul&sequential_168/lstm_505/zeros:output:0Esequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_168/lstm_505/lstm_cell_145/addAddV26sequential_168/lstm_505/lstm_cell_145/MatMul:product:08sequential_168/lstm_505/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpEsequential_168_lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_168/lstm_505/lstm_cell_145/BiasAddBiasAdd-sequential_168/lstm_505/lstm_cell_145/add:z:0Dsequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_168/lstm_505/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_168/lstm_505/lstm_cell_145/splitSplit>sequential_168/lstm_505/lstm_cell_145/split/split_dim:output:06sequential_168/lstm_505/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_168/lstm_505/lstm_cell_145/SigmoidSigmoid4sequential_168/lstm_505/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_168/lstm_505/lstm_cell_145/Sigmoid_1Sigmoid4sequential_168/lstm_505/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_168/lstm_505/lstm_cell_145/mulMul3sequential_168/lstm_505/lstm_cell_145/Sigmoid_1:y:0(sequential_168/lstm_505/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_168/lstm_505/lstm_cell_145/ReluRelu4sequential_168/lstm_505/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_168/lstm_505/lstm_cell_145/mul_1Mul1sequential_168/lstm_505/lstm_cell_145/Sigmoid:y:08sequential_168/lstm_505/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_168/lstm_505/lstm_cell_145/add_1AddV2-sequential_168/lstm_505/lstm_cell_145/mul:z:0/sequential_168/lstm_505/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_168/lstm_505/lstm_cell_145/Sigmoid_2Sigmoid4sequential_168/lstm_505/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_168/lstm_505/lstm_cell_145/Relu_1Relu/sequential_168/lstm_505/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_168/lstm_505/lstm_cell_145/mul_2Mul3sequential_168/lstm_505/lstm_cell_145/Sigmoid_2:y:0:sequential_168/lstm_505/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_168/lstm_505/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_168/lstm_505/TensorArrayV2_1TensorListReserve>sequential_168/lstm_505/TensorArrayV2_1/element_shape:output:00sequential_168/lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_168/lstm_505/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_168/lstm_505/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_168/lstm_505/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_168/lstm_505/whileWhile3sequential_168/lstm_505/while/loop_counter:output:09sequential_168/lstm_505/while/maximum_iterations:output:0%sequential_168/lstm_505/time:output:00sequential_168/lstm_505/TensorArrayV2_1:handle:0&sequential_168/lstm_505/zeros:output:0(sequential_168/lstm_505/zeros_1:output:00sequential_168/lstm_505/strided_slice_1:output:0Osequential_168/lstm_505/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_168_lstm_505_lstm_cell_145_matmul_readvariableop_resourceFsequential_168_lstm_505_lstm_cell_145_matmul_1_readvariableop_resourceEsequential_168_lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
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
)sequential_168_lstm_505_while_body_882898*5
cond-R+
)sequential_168_lstm_505_while_cond_882897*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_168/lstm_505/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_168/lstm_505/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_168/lstm_505/while:output:3Qsequential_168/lstm_505/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_168/lstm_505/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_168/lstm_505/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_505/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_505/strided_slice_3StridedSliceCsequential_168/lstm_505/TensorArrayV2Stack/TensorListStack:tensor:06sequential_168/lstm_505/strided_slice_3/stack:output:08sequential_168/lstm_505/strided_slice_3/stack_1:output:08sequential_168/lstm_505/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_168/lstm_505/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_168/lstm_505/transpose_1	TransposeCsequential_168/lstm_505/TensorArrayV2Stack/TensorListStack:tensor:01sequential_168/lstm_505/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_168/lstm_505/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_168/lstm_506/ShapeShape'sequential_168/lstm_505/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_168/lstm_506/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_168/lstm_506/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_168/lstm_506/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_168/lstm_506/strided_sliceStridedSlice&sequential_168/lstm_506/Shape:output:04sequential_168/lstm_506/strided_slice/stack:output:06sequential_168/lstm_506/strided_slice/stack_1:output:06sequential_168/lstm_506/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_168/lstm_506/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_168/lstm_506/zeros/packedPack.sequential_168/lstm_506/strided_slice:output:0/sequential_168/lstm_506/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_168/lstm_506/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_506/zerosFill-sequential_168/lstm_506/zeros/packed:output:0,sequential_168/lstm_506/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_168/lstm_506/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_168/lstm_506/zeros_1/packedPack.sequential_168/lstm_506/strided_slice:output:01sequential_168/lstm_506/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_168/lstm_506/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_168/lstm_506/zeros_1Fill/sequential_168/lstm_506/zeros_1/packed:output:0.sequential_168/lstm_506/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_168/lstm_506/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_168/lstm_506/transpose	Transpose'sequential_168/lstm_505/transpose_1:y:0/sequential_168/lstm_506/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_168/lstm_506/Shape_1Shape%sequential_168/lstm_506/transpose:y:0*
T0*
_output_shapes
:w
-sequential_168/lstm_506/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_506/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_506/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_506/strided_slice_1StridedSlice(sequential_168/lstm_506/Shape_1:output:06sequential_168/lstm_506/strided_slice_1/stack:output:08sequential_168/lstm_506/strided_slice_1/stack_1:output:08sequential_168/lstm_506/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_168/lstm_506/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_168/lstm_506/TensorArrayV2TensorListReserve<sequential_168/lstm_506/TensorArrayV2/element_shape:output:00sequential_168/lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_168/lstm_506/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_168/lstm_506/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_168/lstm_506/transpose:y:0Vsequential_168/lstm_506/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_168/lstm_506/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_506/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_168/lstm_506/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_506/strided_slice_2StridedSlice%sequential_168/lstm_506/transpose:y:06sequential_168/lstm_506/strided_slice_2/stack:output:08sequential_168/lstm_506/strided_slice_2/stack_1:output:08sequential_168/lstm_506/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpDsequential_168_lstm_506_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_168/lstm_506/lstm_cell_146/MatMulMatMul0sequential_168/lstm_506/strided_slice_2:output:0Csequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpFsequential_168_lstm_506_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_168/lstm_506/lstm_cell_146/MatMul_1MatMul&sequential_168/lstm_506/zeros:output:0Esequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_168/lstm_506/lstm_cell_146/addAddV26sequential_168/lstm_506/lstm_cell_146/MatMul:product:08sequential_168/lstm_506/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpEsequential_168_lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_168/lstm_506/lstm_cell_146/BiasAddBiasAdd-sequential_168/lstm_506/lstm_cell_146/add:z:0Dsequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_168/lstm_506/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_168/lstm_506/lstm_cell_146/splitSplit>sequential_168/lstm_506/lstm_cell_146/split/split_dim:output:06sequential_168/lstm_506/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_168/lstm_506/lstm_cell_146/SigmoidSigmoid4sequential_168/lstm_506/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_168/lstm_506/lstm_cell_146/Sigmoid_1Sigmoid4sequential_168/lstm_506/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_168/lstm_506/lstm_cell_146/mulMul3sequential_168/lstm_506/lstm_cell_146/Sigmoid_1:y:0(sequential_168/lstm_506/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_168/lstm_506/lstm_cell_146/ReluRelu4sequential_168/lstm_506/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_168/lstm_506/lstm_cell_146/mul_1Mul1sequential_168/lstm_506/lstm_cell_146/Sigmoid:y:08sequential_168/lstm_506/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_168/lstm_506/lstm_cell_146/add_1AddV2-sequential_168/lstm_506/lstm_cell_146/mul:z:0/sequential_168/lstm_506/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_168/lstm_506/lstm_cell_146/Sigmoid_2Sigmoid4sequential_168/lstm_506/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_168/lstm_506/lstm_cell_146/Relu_1Relu/sequential_168/lstm_506/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_168/lstm_506/lstm_cell_146/mul_2Mul3sequential_168/lstm_506/lstm_cell_146/Sigmoid_2:y:0:sequential_168/lstm_506/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_168/lstm_506/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_168/lstm_506/TensorArrayV2_1TensorListReserve>sequential_168/lstm_506/TensorArrayV2_1/element_shape:output:00sequential_168/lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_168/lstm_506/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_168/lstm_506/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_168/lstm_506/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_168/lstm_506/whileWhile3sequential_168/lstm_506/while/loop_counter:output:09sequential_168/lstm_506/while/maximum_iterations:output:0%sequential_168/lstm_506/time:output:00sequential_168/lstm_506/TensorArrayV2_1:handle:0&sequential_168/lstm_506/zeros:output:0(sequential_168/lstm_506/zeros_1:output:00sequential_168/lstm_506/strided_slice_1:output:0Osequential_168/lstm_506/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_168_lstm_506_lstm_cell_146_matmul_readvariableop_resourceFsequential_168_lstm_506_lstm_cell_146_matmul_1_readvariableop_resourceEsequential_168_lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
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
)sequential_168_lstm_506_while_body_883037*5
cond-R+
)sequential_168_lstm_506_while_cond_883036*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_168/lstm_506/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_168/lstm_506/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_168/lstm_506/while:output:3Qsequential_168/lstm_506/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_168/lstm_506/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_168/lstm_506/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_168/lstm_506/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_168/lstm_506/strided_slice_3StridedSliceCsequential_168/lstm_506/TensorArrayV2Stack/TensorListStack:tensor:06sequential_168/lstm_506/strided_slice_3/stack:output:08sequential_168/lstm_506/strided_slice_3/stack_1:output:08sequential_168/lstm_506/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_168/lstm_506/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_168/lstm_506/transpose_1	TransposeCsequential_168/lstm_506/TensorArrayV2Stack/TensorListStack:tensor:01sequential_168/lstm_506/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_168/lstm_506/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_168/dense_168/MatMul/ReadVariableOpReadVariableOp7sequential_168_dense_168_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_168/dense_168/MatMulMatMul0sequential_168/lstm_506/strided_slice_3:output:06sequential_168/dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_168/dense_168/BiasAdd/ReadVariableOpReadVariableOp8sequential_168_dense_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_168/dense_168/BiasAddBiasAdd)sequential_168/dense_168/MatMul:product:07sequential_168/dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_168/dense_168/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_168/dense_168/BiasAdd/ReadVariableOp/^sequential_168/dense_168/MatMul/ReadVariableOp=^sequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp<^sequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOp>^sequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp^sequential_168/lstm_504/while=^sequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp<^sequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOp>^sequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp^sequential_168/lstm_505/while=^sequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp<^sequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOp>^sequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp^sequential_168/lstm_506/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_168/dense_168/BiasAdd/ReadVariableOp/sequential_168/dense_168/BiasAdd/ReadVariableOp2`
.sequential_168/dense_168/MatMul/ReadVariableOp.sequential_168/dense_168/MatMul/ReadVariableOp2|
<sequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp<sequential_168/lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp2z
;sequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOp;sequential_168/lstm_504/lstm_cell_144/MatMul/ReadVariableOp2~
=sequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp=sequential_168/lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp2>
sequential_168/lstm_504/whilesequential_168/lstm_504/while2|
<sequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp<sequential_168/lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp2z
;sequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOp;sequential_168/lstm_505/lstm_cell_145/MatMul/ReadVariableOp2~
=sequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp=sequential_168/lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp2>
sequential_168/lstm_505/whilesequential_168/lstm_505/while2|
<sequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp<sequential_168/lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp2z
;sequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOp;sequential_168/lstm_506/lstm_cell_146/MatMul/ReadVariableOp2~
=sequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp=sequential_168/lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp2>
sequential_168/lstm_506/whilesequential_168/lstm_506/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_504_input
?T
?
)sequential_168_lstm_506_while_body_883037L
Hsequential_168_lstm_506_while_sequential_168_lstm_506_while_loop_counterR
Nsequential_168_lstm_506_while_sequential_168_lstm_506_while_maximum_iterations-
)sequential_168_lstm_506_while_placeholder/
+sequential_168_lstm_506_while_placeholder_1/
+sequential_168_lstm_506_while_placeholder_2/
+sequential_168_lstm_506_while_placeholder_3K
Gsequential_168_lstm_506_while_sequential_168_lstm_506_strided_slice_1_0?
?sequential_168_lstm_506_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_506_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_168_lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0:2(`
Nsequential_168_lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0:
([
Msequential_168_lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0:(*
&sequential_168_lstm_506_while_identity,
(sequential_168_lstm_506_while_identity_1,
(sequential_168_lstm_506_while_identity_2,
(sequential_168_lstm_506_while_identity_3,
(sequential_168_lstm_506_while_identity_4,
(sequential_168_lstm_506_while_identity_5I
Esequential_168_lstm_506_while_sequential_168_lstm_506_strided_slice_1?
?sequential_168_lstm_506_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_506_tensorarrayunstack_tensorlistfromtensor\
Jsequential_168_lstm_506_while_lstm_cell_146_matmul_readvariableop_resource:2(^
Lsequential_168_lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource:
(Y
Ksequential_168_lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource:(??Bsequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp?Asequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp?Csequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp?
Osequential_168/lstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_168/lstm_506/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_168_lstm_506_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_506_tensorarrayunstack_tensorlistfromtensor_0)sequential_168_lstm_506_while_placeholderXsequential_168/lstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpLsequential_168_lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_168/lstm_506/while/lstm_cell_146/MatMulMatMulHsequential_168/lstm_506/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpNsequential_168_lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_168/lstm_506/while/lstm_cell_146/MatMul_1MatMul+sequential_168_lstm_506_while_placeholder_2Ksequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_168/lstm_506/while/lstm_cell_146/addAddV2<sequential_168/lstm_506/while/lstm_cell_146/MatMul:product:0>sequential_168/lstm_506/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpMsequential_168_lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_168/lstm_506/while/lstm_cell_146/BiasAddBiasAdd3sequential_168/lstm_506/while/lstm_cell_146/add:z:0Jsequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_168/lstm_506/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_168/lstm_506/while/lstm_cell_146/splitSplitDsequential_168/lstm_506/while/lstm_cell_146/split/split_dim:output:0<sequential_168/lstm_506/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_168/lstm_506/while/lstm_cell_146/SigmoidSigmoid:sequential_168/lstm_506/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_168/lstm_506/while/lstm_cell_146/Sigmoid_1Sigmoid:sequential_168/lstm_506/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_168/lstm_506/while/lstm_cell_146/mulMul9sequential_168/lstm_506/while/lstm_cell_146/Sigmoid_1:y:0+sequential_168_lstm_506_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_168/lstm_506/while/lstm_cell_146/ReluRelu:sequential_168/lstm_506/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_168/lstm_506/while/lstm_cell_146/mul_1Mul7sequential_168/lstm_506/while/lstm_cell_146/Sigmoid:y:0>sequential_168/lstm_506/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_168/lstm_506/while/lstm_cell_146/add_1AddV23sequential_168/lstm_506/while/lstm_cell_146/mul:z:05sequential_168/lstm_506/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_168/lstm_506/while/lstm_cell_146/Sigmoid_2Sigmoid:sequential_168/lstm_506/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_168/lstm_506/while/lstm_cell_146/Relu_1Relu5sequential_168/lstm_506/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_168/lstm_506/while/lstm_cell_146/mul_2Mul9sequential_168/lstm_506/while/lstm_cell_146/Sigmoid_2:y:0@sequential_168/lstm_506/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_168/lstm_506/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_168_lstm_506_while_placeholder_1)sequential_168_lstm_506_while_placeholder5sequential_168/lstm_506/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_168/lstm_506/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_168/lstm_506/while/addAddV2)sequential_168_lstm_506_while_placeholder,sequential_168/lstm_506/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_168/lstm_506/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_168/lstm_506/while/add_1AddV2Hsequential_168_lstm_506_while_sequential_168_lstm_506_while_loop_counter.sequential_168/lstm_506/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_168/lstm_506/while/IdentityIdentity'sequential_168/lstm_506/while/add_1:z:0#^sequential_168/lstm_506/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_506/while/Identity_1IdentityNsequential_168_lstm_506_while_sequential_168_lstm_506_while_maximum_iterations#^sequential_168/lstm_506/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_506/while/Identity_2Identity%sequential_168/lstm_506/while/add:z:0#^sequential_168/lstm_506/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_506/while/Identity_3IdentityRsequential_168/lstm_506/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_168/lstm_506/while/NoOp*
T0*
_output_shapes
: ?
(sequential_168/lstm_506/while/Identity_4Identity5sequential_168/lstm_506/while/lstm_cell_146/mul_2:z:0#^sequential_168/lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_168/lstm_506/while/Identity_5Identity5sequential_168/lstm_506/while/lstm_cell_146/add_1:z:0#^sequential_168/lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_168/lstm_506/while/NoOpNoOpC^sequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOpB^sequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOpD^sequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_168_lstm_506_while_identity/sequential_168/lstm_506/while/Identity:output:0"]
(sequential_168_lstm_506_while_identity_11sequential_168/lstm_506/while/Identity_1:output:0"]
(sequential_168_lstm_506_while_identity_21sequential_168/lstm_506/while/Identity_2:output:0"]
(sequential_168_lstm_506_while_identity_31sequential_168/lstm_506/while/Identity_3:output:0"]
(sequential_168_lstm_506_while_identity_41sequential_168/lstm_506/while/Identity_4:output:0"]
(sequential_168_lstm_506_while_identity_51sequential_168/lstm_506/while/Identity_5:output:0"?
Ksequential_168_lstm_506_while_lstm_cell_146_biasadd_readvariableop_resourceMsequential_168_lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
Lsequential_168_lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resourceNsequential_168_lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0"?
Jsequential_168_lstm_506_while_lstm_cell_146_matmul_readvariableop_resourceLsequential_168_lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0"?
Esequential_168_lstm_506_while_sequential_168_lstm_506_strided_slice_1Gsequential_168_lstm_506_while_sequential_168_lstm_506_strided_slice_1_0"?
?sequential_168_lstm_506_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_506_tensorarrayunstack_tensorlistfromtensor?sequential_168_lstm_506_while_tensorarrayv2read_tensorlistgetitem_sequential_168_lstm_506_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOpBsequential_168/lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp2?
Asequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOpAsequential_168/lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp2?
Csequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOpCsequential_168/lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_505_while_body_885639.
*lstm_505_while_lstm_505_while_loop_counter4
0lstm_505_while_lstm_505_while_maximum_iterations
lstm_505_while_placeholder 
lstm_505_while_placeholder_1 
lstm_505_while_placeholder_2 
lstm_505_while_placeholder_3-
)lstm_505_while_lstm_505_strided_slice_1_0i
elstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0:	d?R
?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?M
>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
lstm_505_while_identity
lstm_505_while_identity_1
lstm_505_while_identity_2
lstm_505_while_identity_3
lstm_505_while_identity_4
lstm_505_while_identity_5+
'lstm_505_while_lstm_505_strided_slice_1g
clstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensorN
;lstm_505_while_lstm_cell_145_matmul_readvariableop_resource:	d?P
=lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource:	2?K
<lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource:	???3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp?2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp?4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp?
@lstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_505/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0lstm_505_while_placeholderIlstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_505/while/lstm_cell_145/MatMulMatMul9lstm_505/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_505/while/lstm_cell_145/MatMul_1MatMullstm_505_while_placeholder_2<lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_505/while/lstm_cell_145/addAddV2-lstm_505/while/lstm_cell_145/MatMul:product:0/lstm_505/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_505/while/lstm_cell_145/BiasAddBiasAdd$lstm_505/while/lstm_cell_145/add:z:0;lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_505/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_505/while/lstm_cell_145/splitSplit5lstm_505/while/lstm_cell_145/split/split_dim:output:0-lstm_505/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_505/while/lstm_cell_145/SigmoidSigmoid+lstm_505/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_505/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_505/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_505/while/lstm_cell_145/mulMul*lstm_505/while/lstm_cell_145/Sigmoid_1:y:0lstm_505_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_505/while/lstm_cell_145/ReluRelu+lstm_505/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/mul_1Mul(lstm_505/while/lstm_cell_145/Sigmoid:y:0/lstm_505/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/add_1AddV2$lstm_505/while/lstm_cell_145/mul:z:0&lstm_505/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_505/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_505/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_505/while/lstm_cell_145/Relu_1Relu&lstm_505/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/mul_2Mul*lstm_505/while/lstm_cell_145/Sigmoid_2:y:01lstm_505/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_505/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_505_while_placeholder_1lstm_505_while_placeholder&lstm_505/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_505/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_505/while/addAddV2lstm_505_while_placeholderlstm_505/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_505/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_505/while/add_1AddV2*lstm_505_while_lstm_505_while_loop_counterlstm_505/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_505/while/IdentityIdentitylstm_505/while/add_1:z:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_1Identity0lstm_505_while_lstm_505_while_maximum_iterations^lstm_505/while/NoOp*
T0*
_output_shapes
: t
lstm_505/while/Identity_2Identitylstm_505/while/add:z:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_3IdentityClstm_505/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_4Identity&lstm_505/while/lstm_cell_145/mul_2:z:0^lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_505/while/Identity_5Identity&lstm_505/while/lstm_cell_145/add_1:z:0^lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_505/while/NoOpNoOp4^lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_505_while_identity lstm_505/while/Identity:output:0"?
lstm_505_while_identity_1"lstm_505/while/Identity_1:output:0"?
lstm_505_while_identity_2"lstm_505/while/Identity_2:output:0"?
lstm_505_while_identity_3"lstm_505/while/Identity_3:output:0"?
lstm_505_while_identity_4"lstm_505/while/Identity_4:output:0"?
lstm_505_while_identity_5"lstm_505/while/Identity_5:output:0"T
'lstm_505_while_lstm_505_strided_slice_1)lstm_505_while_lstm_505_strided_slice_1_0"~
<lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
=lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_505_while_lstm_cell_145_matmul_readvariableop_resource=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0"?
clstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensorelstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_883468

inputs'
lstm_cell_144_883386:	?'
lstm_cell_144_883388:	d?#
lstm_cell_144_883390:	?
identity??%lstm_cell_144/StatefulPartitionedCall?while;
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
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_883386lstm_cell_144_883388lstm_cell_144_883390*
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883340n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_883386lstm_cell_144_883388lstm_cell_144_883390*
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
while_body_883399*
condR
while_cond_883398*K
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
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_506_layer_call_and_return_conditional_losses_887857
inputs_0>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_887773*
condR
while_cond_887772*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?"
?
while_body_883749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_145_883773_0:	d?/
while_lstm_cell_145_883775_0:	2?+
while_lstm_cell_145_883777_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_145_883773:	d?-
while_lstm_cell_145_883775:	2?)
while_lstm_cell_145_883777:	???+while/lstm_cell_145/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_883773_0while_lstm_cell_145_883775_0while_lstm_cell_145_883777_0*
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883690?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_145_883773while_lstm_cell_145_883773_0":
while_lstm_cell_145_883775while_lstm_cell_145_883775_0":
while_lstm_cell_145_883777while_lstm_cell_145_883777_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_883627

inputs'
lstm_cell_145_883545:	d?'
lstm_cell_145_883547:	2?#
lstm_cell_145_883549:	?
identity??%lstm_cell_145/StatefulPartitionedCall?while;
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
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_883545lstm_cell_145_883547lstm_cell_145_883549*
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883544n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_883545lstm_cell_145_883547lstm_cell_145_883549*
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
while_body_883558*
condR
while_cond_883557*K
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
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?W
?
__inference__traced_save_888599
file_prefix/
+savev2_dense_168_kernel_read_readvariableop-
)savev2_dense_168_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_504_lstm_cell_504_kernel_read_readvariableopF
Bsavev2_lstm_504_lstm_cell_504_recurrent_kernel_read_readvariableop:
6savev2_lstm_504_lstm_cell_504_bias_read_readvariableop<
8savev2_lstm_505_lstm_cell_505_kernel_read_readvariableopF
Bsavev2_lstm_505_lstm_cell_505_recurrent_kernel_read_readvariableop:
6savev2_lstm_505_lstm_cell_505_bias_read_readvariableop<
8savev2_lstm_506_lstm_cell_506_kernel_read_readvariableopF
Bsavev2_lstm_506_lstm_cell_506_recurrent_kernel_read_readvariableop:
6savev2_lstm_506_lstm_cell_506_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_168_kernel_m_read_readvariableop4
0savev2_adam_dense_168_bias_m_read_readvariableopC
?savev2_adam_lstm_504_lstm_cell_504_kernel_m_read_readvariableopM
Isavev2_adam_lstm_504_lstm_cell_504_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_504_lstm_cell_504_bias_m_read_readvariableopC
?savev2_adam_lstm_505_lstm_cell_505_kernel_m_read_readvariableopM
Isavev2_adam_lstm_505_lstm_cell_505_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_505_lstm_cell_505_bias_m_read_readvariableopC
?savev2_adam_lstm_506_lstm_cell_506_kernel_m_read_readvariableopM
Isavev2_adam_lstm_506_lstm_cell_506_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_506_lstm_cell_506_bias_m_read_readvariableop6
2savev2_adam_dense_168_kernel_v_read_readvariableop4
0savev2_adam_dense_168_bias_v_read_readvariableopC
?savev2_adam_lstm_504_lstm_cell_504_kernel_v_read_readvariableopM
Isavev2_adam_lstm_504_lstm_cell_504_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_504_lstm_cell_504_bias_v_read_readvariableopC
?savev2_adam_lstm_505_lstm_cell_505_kernel_v_read_readvariableopM
Isavev2_adam_lstm_505_lstm_cell_505_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_505_lstm_cell_505_bias_v_read_readvariableopC
?savev2_adam_lstm_506_lstm_cell_506_kernel_v_read_readvariableopM
Isavev2_adam_lstm_506_lstm_cell_506_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_506_lstm_cell_506_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_168_kernel_read_readvariableop)savev2_dense_168_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_504_lstm_cell_504_kernel_read_readvariableopBsavev2_lstm_504_lstm_cell_504_recurrent_kernel_read_readvariableop6savev2_lstm_504_lstm_cell_504_bias_read_readvariableop8savev2_lstm_505_lstm_cell_505_kernel_read_readvariableopBsavev2_lstm_505_lstm_cell_505_recurrent_kernel_read_readvariableop6savev2_lstm_505_lstm_cell_505_bias_read_readvariableop8savev2_lstm_506_lstm_cell_506_kernel_read_readvariableopBsavev2_lstm_506_lstm_cell_506_recurrent_kernel_read_readvariableop6savev2_lstm_506_lstm_cell_506_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_168_kernel_m_read_readvariableop0savev2_adam_dense_168_bias_m_read_readvariableop?savev2_adam_lstm_504_lstm_cell_504_kernel_m_read_readvariableopIsavev2_adam_lstm_504_lstm_cell_504_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_504_lstm_cell_504_bias_m_read_readvariableop?savev2_adam_lstm_505_lstm_cell_505_kernel_m_read_readvariableopIsavev2_adam_lstm_505_lstm_cell_505_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_505_lstm_cell_505_bias_m_read_readvariableop?savev2_adam_lstm_506_lstm_cell_506_kernel_m_read_readvariableopIsavev2_adam_lstm_506_lstm_cell_506_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_506_lstm_cell_506_bias_m_read_readvariableop2savev2_adam_dense_168_kernel_v_read_readvariableop0savev2_adam_dense_168_bias_v_read_readvariableop?savev2_adam_lstm_504_lstm_cell_504_kernel_v_read_readvariableopIsavev2_adam_lstm_504_lstm_cell_504_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_504_lstm_cell_504_bias_v_read_readvariableop?savev2_adam_lstm_505_lstm_cell_505_kernel_v_read_readvariableopIsavev2_adam_lstm_505_lstm_cell_505_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_505_lstm_cell_505_bias_v_read_readvariableop?savev2_adam_lstm_506_lstm_cell_506_kernel_v_read_readvariableopIsavev2_adam_lstm_506_lstm_cell_506_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_506_lstm_cell_506_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
*__inference_dense_168_layer_call_fn_888152

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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644o
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
?
?
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888456

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
while_body_887773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_887916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_885088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_885087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_885087___redundant_placeholder04
0while_while_cond_885087___redundant_placeholder14
0while_while_cond_885087___redundant_placeholder24
0while_while_cond_885087___redundant_placeholder3
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
?"
?
while_body_883399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_144_883423_0:	?/
while_lstm_cell_144_883425_0:	d?+
while_lstm_cell_144_883427_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_144_883423:	?-
while_lstm_cell_144_883425:	d?)
while_lstm_cell_144_883427:	???+while/lstm_cell_144/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_883423_0while_lstm_cell_144_883425_0while_lstm_cell_144_883427_0*
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883340?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_144_883423while_lstm_cell_144_883423_0":
while_lstm_cell_144_883425while_lstm_cell_144_883425_0":
while_lstm_cell_144_883427while_lstm_cell_144_883427_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_146_layer_call_fn_888392

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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_884040o
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
)__inference_lstm_505_layer_call_fn_886922
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_883627|
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888326

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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884842

inputs>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_884758*
condR
while_cond_884757*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888228

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
D__inference_lstm_506_layer_call_and_return_conditional_losses_883977

inputs&
lstm_cell_146_883895:2(&
lstm_cell_146_883897:
("
lstm_cell_146_883899:(
identity??%lstm_cell_146/StatefulPartitionedCall?while;
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
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_883895lstm_cell_146_883897lstm_cell_146_883899*
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_883894n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_883895lstm_cell_146_883897lstm_cell_146_883899*
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
while_body_883908*
condR
while_cond_883907*K
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
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
D__inference_lstm_504_layer_call_and_return_conditional_losses_886482
inputs_0?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_886398*
condR
while_cond_886397*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_504_layer_call_fn_886328

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
D__inference_lstm_504_layer_call_and_return_conditional_losses_884326s
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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644

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
while_cond_884541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884541___redundant_placeholder04
0while_while_cond_884541___redundant_placeholder14
0while_while_cond_884541___redundant_placeholder24
0while_while_cond_884541___redundant_placeholder3
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
lstm_506_while_cond_886204.
*lstm_506_while_lstm_506_while_loop_counter4
0lstm_506_while_lstm_506_while_maximum_iterations
lstm_506_while_placeholder 
lstm_506_while_placeholder_1 
lstm_506_while_placeholder_2 
lstm_506_while_placeholder_30
,lstm_506_while_less_lstm_506_strided_slice_1F
Blstm_506_while_lstm_506_while_cond_886204___redundant_placeholder0F
Blstm_506_while_lstm_506_while_cond_886204___redundant_placeholder1F
Blstm_506_while_lstm_506_while_cond_886204___redundant_placeholder2F
Blstm_506_while_lstm_506_while_cond_886204___redundant_placeholder3
lstm_506_while_identity
?
lstm_506/while/LessLesslstm_506_while_placeholder,lstm_506_while_less_lstm_506_strided_slice_1*
T0*
_output_shapes
: ]
lstm_506/while/IdentityIdentitylstm_506/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_506_while_identity lstm_506/while/Identity:output:0*(
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
while_body_887014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_888058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_888058___redundant_placeholder04
0while_while_cond_888058___redundant_placeholder14
0while_while_cond_888058___redundant_placeholder24
0while_while_cond_888058___redundant_placeholder3
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_888143

inputs>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_888059*
condR
while_cond_888058*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?"
?
while_body_883558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_145_883582_0:	d?/
while_lstm_cell_145_883584_0:	2?+
while_lstm_cell_145_883586_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_145_883582:	d?-
while_lstm_cell_145_883584:	2?)
while_lstm_cell_145_883586:	???+while/lstm_cell_145/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_883582_0while_lstm_cell_145_883584_0while_lstm_cell_145_883586_0*
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883544?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_145_883582while_lstm_cell_145_883582_0":
while_lstm_cell_145_883584while_lstm_cell_145_883584_0":
while_lstm_cell_145_883586while_lstm_cell_145_883586_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__traced_restore_888729
file_prefix3
!assignvariableop_dense_168_kernel:
/
!assignvariableop_1_dense_168_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_504_lstm_cell_504_kernel:	?M
:assignvariableop_8_lstm_504_lstm_cell_504_recurrent_kernel:	d?=
.assignvariableop_9_lstm_504_lstm_cell_504_bias:	?D
1assignvariableop_10_lstm_505_lstm_cell_505_kernel:	d?N
;assignvariableop_11_lstm_505_lstm_cell_505_recurrent_kernel:	2?>
/assignvariableop_12_lstm_505_lstm_cell_505_bias:	?C
1assignvariableop_13_lstm_506_lstm_cell_506_kernel:2(M
;assignvariableop_14_lstm_506_lstm_cell_506_recurrent_kernel:
(=
/assignvariableop_15_lstm_506_lstm_cell_506_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_168_kernel_m:
7
)assignvariableop_19_adam_dense_168_bias_m:K
8assignvariableop_20_adam_lstm_504_lstm_cell_504_kernel_m:	?U
Bassignvariableop_21_adam_lstm_504_lstm_cell_504_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_504_lstm_cell_504_bias_m:	?K
8assignvariableop_23_adam_lstm_505_lstm_cell_505_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_505_lstm_cell_505_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_505_lstm_cell_505_bias_m:	?J
8assignvariableop_26_adam_lstm_506_lstm_cell_506_kernel_m:2(T
Bassignvariableop_27_adam_lstm_506_lstm_cell_506_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_506_lstm_cell_506_bias_m:(=
+assignvariableop_29_adam_dense_168_kernel_v:
7
)assignvariableop_30_adam_dense_168_bias_v:K
8assignvariableop_31_adam_lstm_504_lstm_cell_504_kernel_v:	?U
Bassignvariableop_32_adam_lstm_504_lstm_cell_504_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_504_lstm_cell_504_bias_v:	?K
8assignvariableop_34_adam_lstm_505_lstm_cell_505_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_505_lstm_cell_505_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_505_lstm_cell_505_bias_v:	?J
8assignvariableop_37_adam_lstm_506_lstm_cell_506_kernel_v:2(T
Bassignvariableop_38_adam_lstm_506_lstm_cell_506_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_506_lstm_cell_506_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_168_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_168_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_504_lstm_cell_504_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_504_lstm_cell_504_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_504_lstm_cell_504_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_505_lstm_cell_505_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_505_lstm_cell_505_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_505_lstm_cell_505_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_506_lstm_cell_506_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_506_lstm_cell_506_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_506_lstm_cell_506_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_168_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_168_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_504_lstm_cell_504_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_504_lstm_cell_504_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_504_lstm_cell_504_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_505_lstm_cell_505_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_505_lstm_cell_505_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_505_lstm_cell_505_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_506_lstm_cell_506_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_506_lstm_cell_506_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_506_lstm_cell_506_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_168_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_168_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_504_lstm_cell_504_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_504_lstm_cell_504_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_504_lstm_cell_504_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_505_lstm_cell_505_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_505_lstm_cell_505_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_505_lstm_cell_505_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_506_lstm_cell_506_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_506_lstm_cell_506_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_506_lstm_cell_506_bias_vIdentity_39:output:0"/device:CPU:0*
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888358

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
while_body_887630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_884758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885240

inputs"
lstm_504_885213:	?"
lstm_504_885215:	d?
lstm_504_885217:	?"
lstm_505_885220:	d?"
lstm_505_885222:	2?
lstm_505_885224:	?!
lstm_506_885227:2(!
lstm_506_885229:
(
lstm_506_885231:("
dense_168_885234:

dense_168_885236:
identity??!dense_168/StatefulPartitionedCall? lstm_504/StatefulPartitionedCall? lstm_505/StatefulPartitionedCall? lstm_506/StatefulPartitionedCall?
 lstm_504/StatefulPartitionedCallStatefulPartitionedCallinputslstm_504_885213lstm_504_885215lstm_504_885217*
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_885172?
 lstm_505/StatefulPartitionedCallStatefulPartitionedCall)lstm_504/StatefulPartitionedCall:output:0lstm_505_885220lstm_505_885222lstm_505_885224*
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_885007?
 lstm_506/StatefulPartitionedCallStatefulPartitionedCall)lstm_505/StatefulPartitionedCall:output:0lstm_506_885227lstm_506_885229lstm_506_885231*
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884842?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall)lstm_506/StatefulPartitionedCall:output:0dense_168_885234dense_168_885236*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644y
IdentityIdentity*dense_168/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_168/StatefulPartitionedCall!^lstm_504/StatefulPartitionedCall!^lstm_505/StatefulPartitionedCall!^lstm_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2D
 lstm_504/StatefulPartitionedCall lstm_504/StatefulPartitionedCall2D
 lstm_505/StatefulPartitionedCall lstm_505/StatefulPartitionedCall2D
 lstm_506/StatefulPartitionedCall lstm_506/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_504_layer_call_and_return_conditional_losses_885172

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_885088*
condR
while_cond_885087*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_144_layer_call_fn_888196

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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883340o
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
?
)sequential_168_lstm_505_while_cond_882897L
Hsequential_168_lstm_505_while_sequential_168_lstm_505_while_loop_counterR
Nsequential_168_lstm_505_while_sequential_168_lstm_505_while_maximum_iterations-
)sequential_168_lstm_505_while_placeholder/
+sequential_168_lstm_505_while_placeholder_1/
+sequential_168_lstm_505_while_placeholder_2/
+sequential_168_lstm_505_while_placeholder_3N
Jsequential_168_lstm_505_while_less_sequential_168_lstm_505_strided_slice_1d
`sequential_168_lstm_505_while_sequential_168_lstm_505_while_cond_882897___redundant_placeholder0d
`sequential_168_lstm_505_while_sequential_168_lstm_505_while_cond_882897___redundant_placeholder1d
`sequential_168_lstm_505_while_sequential_168_lstm_505_while_cond_882897___redundant_placeholder2d
`sequential_168_lstm_505_while_sequential_168_lstm_505_while_cond_882897___redundant_placeholder3*
&sequential_168_lstm_505_while_identity
?
"sequential_168/lstm_505/while/LessLess)sequential_168_lstm_505_while_placeholderJsequential_168_lstm_505_while_less_sequential_168_lstm_505_strided_slice_1*
T0*
_output_shapes
: {
&sequential_168/lstm_505/while/IdentityIdentity&sequential_168/lstm_505/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_168_lstm_505_while_identity/sequential_168/lstm_505/while/Identity:output:0*(
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
lstm_505_while_cond_885638.
*lstm_505_while_lstm_505_while_loop_counter4
0lstm_505_while_lstm_505_while_maximum_iterations
lstm_505_while_placeholder 
lstm_505_while_placeholder_1 
lstm_505_while_placeholder_2 
lstm_505_while_placeholder_30
,lstm_505_while_less_lstm_505_strided_slice_1F
Blstm_505_while_lstm_505_while_cond_885638___redundant_placeholder0F
Blstm_505_while_lstm_505_while_cond_885638___redundant_placeholder1F
Blstm_505_while_lstm_505_while_cond_885638___redundant_placeholder2F
Blstm_505_while_lstm_505_while_cond_885638___redundant_placeholder3
lstm_505_while_identity
?
lstm_505/while/LessLesslstm_505_while_placeholder,lstm_505_while_less_lstm_505_strided_slice_1*
T0*
_output_shapes
: ]
lstm_505/while/IdentityIdentitylstm_505/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_505_while_identity lstm_505/while/Identity:output:0*(
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885352
lstm_504_input"
lstm_504_885325:	?"
lstm_504_885327:	d?
lstm_504_885329:	?"
lstm_505_885332:	d?"
lstm_505_885334:	2?
lstm_505_885336:	?!
lstm_506_885339:2(!
lstm_506_885341:
(
lstm_506_885343:("
dense_168_885346:

dense_168_885348:
identity??!dense_168/StatefulPartitionedCall? lstm_504/StatefulPartitionedCall? lstm_505/StatefulPartitionedCall? lstm_506/StatefulPartitionedCall?
 lstm_504/StatefulPartitionedCallStatefulPartitionedCalllstm_504_inputlstm_504_885325lstm_504_885327lstm_504_885329*
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_885172?
 lstm_505/StatefulPartitionedCallStatefulPartitionedCall)lstm_504/StatefulPartitionedCall:output:0lstm_505_885332lstm_505_885334lstm_505_885336*
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_885007?
 lstm_506/StatefulPartitionedCallStatefulPartitionedCall)lstm_505/StatefulPartitionedCall:output:0lstm_506_885339lstm_506_885341lstm_506_885343*
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884842?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall)lstm_506/StatefulPartitionedCall:output:0dense_168_885346dense_168_885348*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644y
IdentityIdentity*dense_168/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_168/StatefulPartitionedCall!^lstm_504/StatefulPartitionedCall!^lstm_505/StatefulPartitionedCall!^lstm_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2D
 lstm_504/StatefulPartitionedCall lstm_504/StatefulPartitionedCall2D
 lstm_505/StatefulPartitionedCall lstm_505/StatefulPartitionedCall2D
 lstm_506/StatefulPartitionedCall lstm_506/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_504_input
?
?
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888424

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

?
/__inference_sequential_168_layer_call_fn_885292
lstm_504_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_504_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885240o
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
_user_specified_namelstm_504_input
?

?
/__inference_sequential_168_layer_call_fn_885414

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
J__inference_sequential_168_layer_call_and_return_conditional_losses_884651o
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
while_cond_887156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887156___redundant_placeholder04
0while_while_cond_887156___redundant_placeholder14
0while_while_cond_887156___redundant_placeholder24
0while_while_cond_887156___redundant_placeholder3
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
while_cond_884922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884922___redundant_placeholder04
0while_while_cond_884922___redundant_placeholder14
0while_while_cond_884922___redundant_placeholder24
0while_while_cond_884922___redundant_placeholder3
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
lstm_504_while_cond_885499.
*lstm_504_while_lstm_504_while_loop_counter4
0lstm_504_while_lstm_504_while_maximum_iterations
lstm_504_while_placeholder 
lstm_504_while_placeholder_1 
lstm_504_while_placeholder_2 
lstm_504_while_placeholder_30
,lstm_504_while_less_lstm_504_strided_slice_1F
Blstm_504_while_lstm_504_while_cond_885499___redundant_placeholder0F
Blstm_504_while_lstm_504_while_cond_885499___redundant_placeholder1F
Blstm_504_while_lstm_504_while_cond_885499___redundant_placeholder2F
Blstm_504_while_lstm_504_while_cond_885499___redundant_placeholder3
lstm_504_while_identity
?
lstm_504/while/LessLesslstm_504_while_placeholder,lstm_504_while_less_lstm_504_strided_slice_1*
T0*
_output_shapes
: ]
lstm_504/while/IdentityIdentitylstm_504/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_504_while_identity lstm_504/while/Identity:output:0*(
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
while_cond_884241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884241___redundant_placeholder04
0while_while_cond_884241___redundant_placeholder14
0while_while_cond_884241___redundant_placeholder24
0while_while_cond_884241___redundant_placeholder3
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_886295

inputsH
5lstm_504_lstm_cell_144_matmul_readvariableop_resource:	?J
7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource:	d?E
6lstm_504_lstm_cell_144_biasadd_readvariableop_resource:	?H
5lstm_505_lstm_cell_145_matmul_readvariableop_resource:	d?J
7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource:	2?E
6lstm_505_lstm_cell_145_biasadd_readvariableop_resource:	?G
5lstm_506_lstm_cell_146_matmul_readvariableop_resource:2(I
7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource:
(D
6lstm_506_lstm_cell_146_biasadd_readvariableop_resource:(:
(dense_168_matmul_readvariableop_resource:
7
)dense_168_biasadd_readvariableop_resource:
identity?? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp?-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp?,lstm_504/lstm_cell_144/MatMul/ReadVariableOp?.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp?lstm_504/while?-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp?,lstm_505/lstm_cell_145/MatMul/ReadVariableOp?.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp?lstm_505/while?-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp?,lstm_506/lstm_cell_146/MatMul/ReadVariableOp?.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp?lstm_506/whileD
lstm_504/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_504/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_504/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_504/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_sliceStridedSlicelstm_504/Shape:output:0%lstm_504/strided_slice/stack:output:0'lstm_504/strided_slice/stack_1:output:0'lstm_504/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_504/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_504/zeros/packedPacklstm_504/strided_slice:output:0 lstm_504/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_504/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_504/zerosFilllstm_504/zeros/packed:output:0lstm_504/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_504/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_504/zeros_1/packedPacklstm_504/strided_slice:output:0"lstm_504/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_504/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_504/zeros_1Fill lstm_504/zeros_1/packed:output:0lstm_504/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_504/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_504/transpose	Transposeinputs lstm_504/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_504/Shape_1Shapelstm_504/transpose:y:0*
T0*
_output_shapes
:h
lstm_504/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_504/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_1StridedSlicelstm_504/Shape_1:output:0'lstm_504/strided_slice_1/stack:output:0)lstm_504/strided_slice_1/stack_1:output:0)lstm_504/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_504/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_504/TensorArrayV2TensorListReserve-lstm_504/TensorArrayV2/element_shape:output:0!lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_504/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_504/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_504/transpose:y:0Glstm_504/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_504/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_504/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_2StridedSlicelstm_504/transpose:y:0'lstm_504/strided_slice_2/stack:output:0)lstm_504/strided_slice_2/stack_1:output:0)lstm_504/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_504/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_504_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_504/lstm_cell_144/MatMulMatMul!lstm_504/strided_slice_2:output:04lstm_504/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_504/lstm_cell_144/MatMul_1MatMullstm_504/zeros:output:06lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_504/lstm_cell_144/addAddV2'lstm_504/lstm_cell_144/MatMul:product:0)lstm_504/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_504/lstm_cell_144/BiasAddBiasAddlstm_504/lstm_cell_144/add:z:05lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_504/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_504/lstm_cell_144/splitSplit/lstm_504/lstm_cell_144/split/split_dim:output:0'lstm_504/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_504/lstm_cell_144/SigmoidSigmoid%lstm_504/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_504/lstm_cell_144/Sigmoid_1Sigmoid%lstm_504/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mulMul$lstm_504/lstm_cell_144/Sigmoid_1:y:0lstm_504/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_504/lstm_cell_144/ReluRelu%lstm_504/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mul_1Mul"lstm_504/lstm_cell_144/Sigmoid:y:0)lstm_504/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/add_1AddV2lstm_504/lstm_cell_144/mul:z:0 lstm_504/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_504/lstm_cell_144/Sigmoid_2Sigmoid%lstm_504/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_504/lstm_cell_144/Relu_1Relu lstm_504/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mul_2Mul$lstm_504/lstm_cell_144/Sigmoid_2:y:0+lstm_504/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_504/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_504/TensorArrayV2_1TensorListReserve/lstm_504/TensorArrayV2_1/element_shape:output:0!lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_504/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_504/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_504/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_504/whileWhile$lstm_504/while/loop_counter:output:0*lstm_504/while/maximum_iterations:output:0lstm_504/time:output:0!lstm_504/TensorArrayV2_1:handle:0lstm_504/zeros:output:0lstm_504/zeros_1:output:0!lstm_504/strided_slice_1:output:0@lstm_504/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_504_lstm_cell_144_matmul_readvariableop_resource7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource6lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
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
lstm_504_while_body_885927*&
condR
lstm_504_while_cond_885926*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_504/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_504/TensorArrayV2Stack/TensorListStackTensorListStacklstm_504/while:output:3Blstm_504/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_504/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_504/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_3StridedSlice4lstm_504/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_504/strided_slice_3/stack:output:0)lstm_504/strided_slice_3/stack_1:output:0)lstm_504/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_504/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_504/transpose_1	Transpose4lstm_504/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_504/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_504/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_505/ShapeShapelstm_504/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_505/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_505/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_505/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_sliceStridedSlicelstm_505/Shape:output:0%lstm_505/strided_slice/stack:output:0'lstm_505/strided_slice/stack_1:output:0'lstm_505/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_505/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_505/zeros/packedPacklstm_505/strided_slice:output:0 lstm_505/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_505/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_505/zerosFilllstm_505/zeros/packed:output:0lstm_505/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_505/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_505/zeros_1/packedPacklstm_505/strided_slice:output:0"lstm_505/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_505/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_505/zeros_1Fill lstm_505/zeros_1/packed:output:0lstm_505/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_505/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_505/transpose	Transposelstm_504/transpose_1:y:0 lstm_505/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_505/Shape_1Shapelstm_505/transpose:y:0*
T0*
_output_shapes
:h
lstm_505/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_505/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_1StridedSlicelstm_505/Shape_1:output:0'lstm_505/strided_slice_1/stack:output:0)lstm_505/strided_slice_1/stack_1:output:0)lstm_505/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_505/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_505/TensorArrayV2TensorListReserve-lstm_505/TensorArrayV2/element_shape:output:0!lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_505/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_505/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_505/transpose:y:0Glstm_505/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_505/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_505/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_2StridedSlicelstm_505/transpose:y:0'lstm_505/strided_slice_2/stack:output:0)lstm_505/strided_slice_2/stack_1:output:0)lstm_505/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_505/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_505_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_505/lstm_cell_145/MatMulMatMul!lstm_505/strided_slice_2:output:04lstm_505/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_505/lstm_cell_145/MatMul_1MatMullstm_505/zeros:output:06lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_505/lstm_cell_145/addAddV2'lstm_505/lstm_cell_145/MatMul:product:0)lstm_505/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_505/lstm_cell_145/BiasAddBiasAddlstm_505/lstm_cell_145/add:z:05lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_505/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_505/lstm_cell_145/splitSplit/lstm_505/lstm_cell_145/split/split_dim:output:0'lstm_505/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_505/lstm_cell_145/SigmoidSigmoid%lstm_505/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_505/lstm_cell_145/Sigmoid_1Sigmoid%lstm_505/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mulMul$lstm_505/lstm_cell_145/Sigmoid_1:y:0lstm_505/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_505/lstm_cell_145/ReluRelu%lstm_505/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mul_1Mul"lstm_505/lstm_cell_145/Sigmoid:y:0)lstm_505/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/add_1AddV2lstm_505/lstm_cell_145/mul:z:0 lstm_505/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_505/lstm_cell_145/Sigmoid_2Sigmoid%lstm_505/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_505/lstm_cell_145/Relu_1Relu lstm_505/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mul_2Mul$lstm_505/lstm_cell_145/Sigmoid_2:y:0+lstm_505/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_505/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_505/TensorArrayV2_1TensorListReserve/lstm_505/TensorArrayV2_1/element_shape:output:0!lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_505/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_505/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_505/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_505/whileWhile$lstm_505/while/loop_counter:output:0*lstm_505/while/maximum_iterations:output:0lstm_505/time:output:0!lstm_505/TensorArrayV2_1:handle:0lstm_505/zeros:output:0lstm_505/zeros_1:output:0!lstm_505/strided_slice_1:output:0@lstm_505/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_505_lstm_cell_145_matmul_readvariableop_resource7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource6lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
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
lstm_505_while_body_886066*&
condR
lstm_505_while_cond_886065*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_505/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_505/TensorArrayV2Stack/TensorListStackTensorListStacklstm_505/while:output:3Blstm_505/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_505/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_505/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_3StridedSlice4lstm_505/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_505/strided_slice_3/stack:output:0)lstm_505/strided_slice_3/stack_1:output:0)lstm_505/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_505/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_505/transpose_1	Transpose4lstm_505/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_505/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_505/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_506/ShapeShapelstm_505/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_506/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_506/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_506/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_sliceStridedSlicelstm_506/Shape:output:0%lstm_506/strided_slice/stack:output:0'lstm_506/strided_slice/stack_1:output:0'lstm_506/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_506/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_506/zeros/packedPacklstm_506/strided_slice:output:0 lstm_506/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_506/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_506/zerosFilllstm_506/zeros/packed:output:0lstm_506/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_506/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_506/zeros_1/packedPacklstm_506/strided_slice:output:0"lstm_506/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_506/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_506/zeros_1Fill lstm_506/zeros_1/packed:output:0lstm_506/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_506/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_506/transpose	Transposelstm_505/transpose_1:y:0 lstm_506/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_506/Shape_1Shapelstm_506/transpose:y:0*
T0*
_output_shapes
:h
lstm_506/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_506/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_1StridedSlicelstm_506/Shape_1:output:0'lstm_506/strided_slice_1/stack:output:0)lstm_506/strided_slice_1/stack_1:output:0)lstm_506/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_506/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_506/TensorArrayV2TensorListReserve-lstm_506/TensorArrayV2/element_shape:output:0!lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_506/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_506/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_506/transpose:y:0Glstm_506/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_506/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_506/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_2StridedSlicelstm_506/transpose:y:0'lstm_506/strided_slice_2/stack:output:0)lstm_506/strided_slice_2/stack_1:output:0)lstm_506/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_506/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_506_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_506/lstm_cell_146/MatMulMatMul!lstm_506/strided_slice_2:output:04lstm_506/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_506/lstm_cell_146/MatMul_1MatMullstm_506/zeros:output:06lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_506/lstm_cell_146/addAddV2'lstm_506/lstm_cell_146/MatMul:product:0)lstm_506/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_506/lstm_cell_146/BiasAddBiasAddlstm_506/lstm_cell_146/add:z:05lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_506/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_506/lstm_cell_146/splitSplit/lstm_506/lstm_cell_146/split/split_dim:output:0'lstm_506/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_506/lstm_cell_146/SigmoidSigmoid%lstm_506/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_506/lstm_cell_146/Sigmoid_1Sigmoid%lstm_506/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mulMul$lstm_506/lstm_cell_146/Sigmoid_1:y:0lstm_506/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_506/lstm_cell_146/ReluRelu%lstm_506/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mul_1Mul"lstm_506/lstm_cell_146/Sigmoid:y:0)lstm_506/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/add_1AddV2lstm_506/lstm_cell_146/mul:z:0 lstm_506/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_506/lstm_cell_146/Sigmoid_2Sigmoid%lstm_506/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_506/lstm_cell_146/Relu_1Relu lstm_506/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mul_2Mul$lstm_506/lstm_cell_146/Sigmoid_2:y:0+lstm_506/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_506/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_506/TensorArrayV2_1TensorListReserve/lstm_506/TensorArrayV2_1/element_shape:output:0!lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_506/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_506/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_506/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_506/whileWhile$lstm_506/while/loop_counter:output:0*lstm_506/while/maximum_iterations:output:0lstm_506/time:output:0!lstm_506/TensorArrayV2_1:handle:0lstm_506/zeros:output:0lstm_506/zeros_1:output:0!lstm_506/strided_slice_1:output:0@lstm_506/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_506_lstm_cell_146_matmul_readvariableop_resource7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource6lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
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
lstm_506_while_body_886205*&
condR
lstm_506_while_cond_886204*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_506/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_506/TensorArrayV2Stack/TensorListStackTensorListStacklstm_506/while:output:3Blstm_506/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_506/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_506/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_3StridedSlice4lstm_506/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_506/strided_slice_3/stack:output:0)lstm_506/strided_slice_3/stack_1:output:0)lstm_506/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_506/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_506/transpose_1	Transpose4lstm_506/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_506/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_506/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_168/MatMulMatMul!lstm_506/strided_slice_3:output:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_168/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp.^lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_504/lstm_cell_144/MatMul/ReadVariableOp/^lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_504/while.^lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_505/lstm_cell_145/MatMul/ReadVariableOp/^lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_505/while.^lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_506/lstm_cell_146/MatMul/ReadVariableOp/^lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_506/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2^
-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_504/lstm_cell_144/MatMul/ReadVariableOp,lstm_504/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_504/whilelstm_504/while2^
-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_505/lstm_cell_145/MatMul/ReadVariableOp,lstm_505/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_505/whilelstm_505/while2^
-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_506/lstm_cell_146/MatMul/ReadVariableOp,lstm_506/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_506/whilelstm_506/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_505_while_cond_886065.
*lstm_505_while_lstm_505_while_loop_counter4
0lstm_505_while_lstm_505_while_maximum_iterations
lstm_505_while_placeholder 
lstm_505_while_placeholder_1 
lstm_505_while_placeholder_2 
lstm_505_while_placeholder_30
,lstm_505_while_less_lstm_505_strided_slice_1F
Blstm_505_while_lstm_505_while_cond_886065___redundant_placeholder0F
Blstm_505_while_lstm_505_while_cond_886065___redundant_placeholder1F
Blstm_505_while_lstm_505_while_cond_886065___redundant_placeholder2F
Blstm_505_while_lstm_505_while_cond_886065___redundant_placeholder3
lstm_505_while_identity
?
lstm_505/while/LessLesslstm_505_while_placeholder,lstm_505_while_less_lstm_505_strided_slice_1*
T0*
_output_shapes
: ]
lstm_505/while/IdentityIdentitylstm_505/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_505_while_identity lstm_505/while/Identity:output:0*(
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
while_cond_886683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_886683___redundant_placeholder04
0while_while_cond_886683___redundant_placeholder14
0while_while_cond_886683___redundant_placeholder24
0while_while_cond_886683___redundant_placeholder3
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
while_body_884542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_146_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_146_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_146_matmul_readvariableop_resource:2(F
4while_lstm_cell_146_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_146_biasadd_readvariableop_resource:(??*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_884476

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_884392*
condR
while_cond_884391*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_884040

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
)__inference_lstm_506_layer_call_fn_887549
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884168o
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
$__inference_signature_wrapper_885387
lstm_504_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_504_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_883127o
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
_user_specified_namelstm_504_input
?
?
while_cond_887013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887013___redundant_placeholder04
0while_while_cond_887013___redundant_placeholder14
0while_while_cond_887013___redundant_placeholder24
0while_while_cond_887013___redundant_placeholder3
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
E__inference_dense_168_layer_call_and_return_conditional_losses_888162

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
while_cond_886397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_886397___redundant_placeholder04
0while_while_cond_886397___redundant_placeholder14
0while_while_cond_886397___redundant_placeholder24
0while_while_cond_886397___redundant_placeholder3
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_888000

inputs>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_887916*
condR
while_cond_887915*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_504_layer_call_fn_886317
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_883468|
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
.__inference_lstm_cell_144_layer_call_fn_888179

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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883194o
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
?C
?

lstm_506_while_body_886205.
*lstm_506_while_lstm_506_while_loop_counter4
0lstm_506_while_lstm_506_while_maximum_iterations
lstm_506_while_placeholder 
lstm_506_while_placeholder_1 
lstm_506_while_placeholder_2 
lstm_506_while_placeholder_3-
)lstm_506_while_lstm_506_strided_slice_1_0i
elstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0:2(Q
?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(L
>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0:(
lstm_506_while_identity
lstm_506_while_identity_1
lstm_506_while_identity_2
lstm_506_while_identity_3
lstm_506_while_identity_4
lstm_506_while_identity_5+
'lstm_506_while_lstm_506_strided_slice_1g
clstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensorM
;lstm_506_while_lstm_cell_146_matmul_readvariableop_resource:2(O
=lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource:
(J
<lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource:(??3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp?2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp?4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp?
@lstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_506/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0lstm_506_while_placeholderIlstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_506/while/lstm_cell_146/MatMulMatMul9lstm_506/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_506/while/lstm_cell_146/MatMul_1MatMullstm_506_while_placeholder_2<lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_506/while/lstm_cell_146/addAddV2-lstm_506/while/lstm_cell_146/MatMul:product:0/lstm_506/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_506/while/lstm_cell_146/BiasAddBiasAdd$lstm_506/while/lstm_cell_146/add:z:0;lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_506/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_506/while/lstm_cell_146/splitSplit5lstm_506/while/lstm_cell_146/split/split_dim:output:0-lstm_506/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_506/while/lstm_cell_146/SigmoidSigmoid+lstm_506/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_506/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_506/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_506/while/lstm_cell_146/mulMul*lstm_506/while/lstm_cell_146/Sigmoid_1:y:0lstm_506_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_506/while/lstm_cell_146/ReluRelu+lstm_506/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/mul_1Mul(lstm_506/while/lstm_cell_146/Sigmoid:y:0/lstm_506/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/add_1AddV2$lstm_506/while/lstm_cell_146/mul:z:0&lstm_506/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_506/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_506/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_506/while/lstm_cell_146/Relu_1Relu&lstm_506/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/mul_2Mul*lstm_506/while/lstm_cell_146/Sigmoid_2:y:01lstm_506/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_506/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_506_while_placeholder_1lstm_506_while_placeholder&lstm_506/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_506/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_506/while/addAddV2lstm_506_while_placeholderlstm_506/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_506/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_506/while/add_1AddV2*lstm_506_while_lstm_506_while_loop_counterlstm_506/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_506/while/IdentityIdentitylstm_506/while/add_1:z:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_1Identity0lstm_506_while_lstm_506_while_maximum_iterations^lstm_506/while/NoOp*
T0*
_output_shapes
: t
lstm_506/while/Identity_2Identitylstm_506/while/add:z:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_3IdentityClstm_506/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_4Identity&lstm_506/while/lstm_cell_146/mul_2:z:0^lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_506/while/Identity_5Identity&lstm_506/while/lstm_cell_146/add_1:z:0^lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_506/while/NoOpNoOp4^lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_506_while_identity lstm_506/while/Identity:output:0"?
lstm_506_while_identity_1"lstm_506/while/Identity_1:output:0"?
lstm_506_while_identity_2"lstm_506/while/Identity_2:output:0"?
lstm_506_while_identity_3"lstm_506/while/Identity_3:output:0"?
lstm_506_while_identity_4"lstm_506/while/Identity_4:output:0"?
lstm_506_while_identity_5"lstm_506/while/Identity_5:output:0"T
'lstm_506_while_lstm_506_strided_slice_1)lstm_506_while_lstm_506_strided_slice_1_0"~
<lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
=lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_506_while_lstm_cell_146_matmul_readvariableop_resource=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0"?
clstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensorelstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_887915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887915___redundant_placeholder04
0while_while_cond_887915___redundant_placeholder14
0while_while_cond_887915___redundant_placeholder24
0while_while_cond_887915___redundant_placeholder3
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
lstm_506_while_cond_885777.
*lstm_506_while_lstm_506_while_loop_counter4
0lstm_506_while_lstm_506_while_maximum_iterations
lstm_506_while_placeholder 
lstm_506_while_placeholder_1 
lstm_506_while_placeholder_2 
lstm_506_while_placeholder_30
,lstm_506_while_less_lstm_506_strided_slice_1F
Blstm_506_while_lstm_506_while_cond_885777___redundant_placeholder0F
Blstm_506_while_lstm_506_while_cond_885777___redundant_placeholder1F
Blstm_506_while_lstm_506_while_cond_885777___redundant_placeholder2F
Blstm_506_while_lstm_506_while_cond_885777___redundant_placeholder3
lstm_506_while_identity
?
lstm_506/while/LessLesslstm_506_while_placeholder,lstm_506_while_less_lstm_506_strided_slice_1*
T0*
_output_shapes
: ]
lstm_506/while/IdentityIdentitylstm_506/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_506_while_identity lstm_506/while/Identity:output:0*(
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

lstm_505_while_body_886066.
*lstm_505_while_lstm_505_while_loop_counter4
0lstm_505_while_lstm_505_while_maximum_iterations
lstm_505_while_placeholder 
lstm_505_while_placeholder_1 
lstm_505_while_placeholder_2 
lstm_505_while_placeholder_3-
)lstm_505_while_lstm_505_strided_slice_1_0i
elstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0:	d?R
?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?M
>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
lstm_505_while_identity
lstm_505_while_identity_1
lstm_505_while_identity_2
lstm_505_while_identity_3
lstm_505_while_identity_4
lstm_505_while_identity_5+
'lstm_505_while_lstm_505_strided_slice_1g
clstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensorN
;lstm_505_while_lstm_cell_145_matmul_readvariableop_resource:	d?P
=lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource:	2?K
<lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource:	???3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp?2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp?4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp?
@lstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_505/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0lstm_505_while_placeholderIlstm_505/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_505/while/lstm_cell_145/MatMulMatMul9lstm_505/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_505/while/lstm_cell_145/MatMul_1MatMullstm_505_while_placeholder_2<lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_505/while/lstm_cell_145/addAddV2-lstm_505/while/lstm_cell_145/MatMul:product:0/lstm_505/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_505/while/lstm_cell_145/BiasAddBiasAdd$lstm_505/while/lstm_cell_145/add:z:0;lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_505/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_505/while/lstm_cell_145/splitSplit5lstm_505/while/lstm_cell_145/split/split_dim:output:0-lstm_505/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_505/while/lstm_cell_145/SigmoidSigmoid+lstm_505/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_505/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_505/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_505/while/lstm_cell_145/mulMul*lstm_505/while/lstm_cell_145/Sigmoid_1:y:0lstm_505_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_505/while/lstm_cell_145/ReluRelu+lstm_505/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/mul_1Mul(lstm_505/while/lstm_cell_145/Sigmoid:y:0/lstm_505/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/add_1AddV2$lstm_505/while/lstm_cell_145/mul:z:0&lstm_505/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_505/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_505/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_505/while/lstm_cell_145/Relu_1Relu&lstm_505/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_505/while/lstm_cell_145/mul_2Mul*lstm_505/while/lstm_cell_145/Sigmoid_2:y:01lstm_505/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_505/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_505_while_placeholder_1lstm_505_while_placeholder&lstm_505/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_505/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_505/while/addAddV2lstm_505_while_placeholderlstm_505/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_505/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_505/while/add_1AddV2*lstm_505_while_lstm_505_while_loop_counterlstm_505/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_505/while/IdentityIdentitylstm_505/while/add_1:z:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_1Identity0lstm_505_while_lstm_505_while_maximum_iterations^lstm_505/while/NoOp*
T0*
_output_shapes
: t
lstm_505/while/Identity_2Identitylstm_505/while/add:z:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_3IdentityClstm_505/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_505/while/NoOp*
T0*
_output_shapes
: ?
lstm_505/while/Identity_4Identity&lstm_505/while/lstm_cell_145/mul_2:z:0^lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_505/while/Identity_5Identity&lstm_505/while/lstm_cell_145/add_1:z:0^lstm_505/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_505/while/NoOpNoOp4^lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_505_while_identity lstm_505/while/Identity:output:0"?
lstm_505_while_identity_1"lstm_505/while/Identity_1:output:0"?
lstm_505_while_identity_2"lstm_505/while/Identity_2:output:0"?
lstm_505_while_identity_3"lstm_505/while/Identity_3:output:0"?
lstm_505_while_identity_4"lstm_505/while/Identity_4:output:0"?
lstm_505_while_identity_5"lstm_505/while/Identity_5:output:0"T
'lstm_505_while_lstm_505_strided_slice_1)lstm_505_while_lstm_505_strided_slice_1_0"~
<lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_505_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
=lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_505_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_505_while_lstm_cell_145_matmul_readvariableop_resource=lstm_505_while_lstm_cell_145_matmul_readvariableop_resource_0"?
clstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensorelstm_505_while_tensorarrayv2read_tensorlistgetitem_lstm_505_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_505/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_505/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_505/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_884651

inputs"
lstm_504_884327:	?"
lstm_504_884329:	d?
lstm_504_884331:	?"
lstm_505_884477:	d?"
lstm_505_884479:	2?
lstm_505_884481:	?!
lstm_506_884627:2(!
lstm_506_884629:
(
lstm_506_884631:("
dense_168_884645:

dense_168_884647:
identity??!dense_168/StatefulPartitionedCall? lstm_504/StatefulPartitionedCall? lstm_505/StatefulPartitionedCall? lstm_506/StatefulPartitionedCall?
 lstm_504/StatefulPartitionedCallStatefulPartitionedCallinputslstm_504_884327lstm_504_884329lstm_504_884331*
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_884326?
 lstm_505/StatefulPartitionedCallStatefulPartitionedCall)lstm_504/StatefulPartitionedCall:output:0lstm_505_884477lstm_505_884479lstm_505_884481*
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_884476?
 lstm_506/StatefulPartitionedCallStatefulPartitionedCall)lstm_505/StatefulPartitionedCall:output:0lstm_506_884627lstm_506_884629lstm_506_884631*
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_884626?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall)lstm_506/StatefulPartitionedCall:output:0dense_168_884645dense_168_884647*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_884644y
IdentityIdentity*dense_168/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_168/StatefulPartitionedCall!^lstm_504/StatefulPartitionedCall!^lstm_505/StatefulPartitionedCall!^lstm_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2D
 lstm_504/StatefulPartitionedCall lstm_504/StatefulPartitionedCall2D
 lstm_505/StatefulPartitionedCall lstm_505/StatefulPartitionedCall2D
 lstm_506/StatefulPartitionedCall lstm_506/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_886398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_883194

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
?
)sequential_168_lstm_506_while_cond_883036L
Hsequential_168_lstm_506_while_sequential_168_lstm_506_while_loop_counterR
Nsequential_168_lstm_506_while_sequential_168_lstm_506_while_maximum_iterations-
)sequential_168_lstm_506_while_placeholder/
+sequential_168_lstm_506_while_placeholder_1/
+sequential_168_lstm_506_while_placeholder_2/
+sequential_168_lstm_506_while_placeholder_3N
Jsequential_168_lstm_506_while_less_sequential_168_lstm_506_strided_slice_1d
`sequential_168_lstm_506_while_sequential_168_lstm_506_while_cond_883036___redundant_placeholder0d
`sequential_168_lstm_506_while_sequential_168_lstm_506_while_cond_883036___redundant_placeholder1d
`sequential_168_lstm_506_while_sequential_168_lstm_506_while_cond_883036___redundant_placeholder2d
`sequential_168_lstm_506_while_sequential_168_lstm_506_while_cond_883036___redundant_placeholder3*
&sequential_168_lstm_506_while_identity
?
"sequential_168/lstm_506/while/LessLess)sequential_168_lstm_506_while_placeholderJsequential_168_lstm_506_while_less_sequential_168_lstm_506_strided_slice_1*
T0*
_output_shapes
: {
&sequential_168/lstm_506/while/IdentityIdentity&sequential_168/lstm_506/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_168_lstm_506_while_identity/sequential_168/lstm_506/while/Identity:output:0*(
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_884326

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	d?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
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
while_body_884242*
condR
while_cond_884241*K
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
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_505_layer_call_and_return_conditional_losses_885007

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_884923*
condR
while_cond_884922*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_506_layer_call_and_return_conditional_losses_884626

inputs>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_884542*
condR
while_cond_884541*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
D__inference_lstm_506_layer_call_and_return_conditional_losses_884168

inputs&
lstm_cell_146_884086:2(&
lstm_cell_146_884088:
("
lstm_cell_146_884090:(
identity??%lstm_cell_146/StatefulPartitionedCall?while;
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
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_884086lstm_cell_146_884088lstm_cell_146_884090*
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_884040n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_884086lstm_cell_146_884088lstm_cell_146_884090*
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
while_body_884099*
condR
while_cond_884098*K
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
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_504_layer_call_fn_886339

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
D__inference_lstm_504_layer_call_and_return_conditional_losses_885172s
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887098
inputs_0?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_887014*
condR
while_cond_887013*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
D__inference_lstm_505_layer_call_and_return_conditional_losses_883818

inputs'
lstm_cell_145_883736:	d?'
lstm_cell_145_883738:	2?#
lstm_cell_145_883740:	?
identity??%lstm_cell_145/StatefulPartitionedCall?while;
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
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_883736lstm_cell_145_883738lstm_cell_145_883740*
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883690n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_883736lstm_cell_145_883738lstm_cell_145_883740*
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
while_body_883749*
condR
while_cond_883748*K
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
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_506_layer_call_and_return_conditional_losses_887714
inputs_0>
,lstm_cell_146_matmul_readvariableop_resource:2(@
.lstm_cell_146_matmul_1_readvariableop_resource:
(;
-lstm_cell_146_biasadd_readvariableop_resource:(
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
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
while_body_887630*
condR
while_cond_887629*K
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
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_146_layer_call_fn_888375

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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_883894o
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
while_cond_887299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_887299___redundant_placeholder04
0while_while_cond_887299___redundant_placeholder14
0while_while_cond_887299___redundant_placeholder24
0while_while_cond_887299___redundant_placeholder3
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
while_cond_884391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884391___redundant_placeholder04
0while_while_cond_884391___redundant_placeholder14
0while_while_cond_884391___redundant_placeholder24
0while_while_cond_884391___redundant_placeholder3
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
?"
?
while_body_884099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_146_884123_0:2(.
while_lstm_cell_146_884125_0:
(*
while_lstm_cell_146_884127_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_146_884123:2(,
while_lstm_cell_146_884125:
((
while_lstm_cell_146_884127:(??+while/lstm_cell_146/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_884123_0while_lstm_cell_146_884125_0while_lstm_cell_146_884127_0*
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_884040?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_146_884123while_lstm_cell_146_884123_0":
while_lstm_cell_146_884125while_lstm_cell_146_884125_0":
while_lstm_cell_146_884127while_lstm_cell_146_884127_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_505_layer_call_fn_886933
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_883818|
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
while_body_884242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_505_layer_call_fn_886944

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
D__inference_lstm_505_layer_call_and_return_conditional_losses_884476s
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
while_cond_884098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884098___redundant_placeholder04
0while_while_cond_884098___redundant_placeholder14
0while_while_cond_884098___redundant_placeholder24
0while_while_cond_884098___redundant_placeholder3
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
while_body_887157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_887300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	d?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885868

inputsH
5lstm_504_lstm_cell_144_matmul_readvariableop_resource:	?J
7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource:	d?E
6lstm_504_lstm_cell_144_biasadd_readvariableop_resource:	?H
5lstm_505_lstm_cell_145_matmul_readvariableop_resource:	d?J
7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource:	2?E
6lstm_505_lstm_cell_145_biasadd_readvariableop_resource:	?G
5lstm_506_lstm_cell_146_matmul_readvariableop_resource:2(I
7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource:
(D
6lstm_506_lstm_cell_146_biasadd_readvariableop_resource:(:
(dense_168_matmul_readvariableop_resource:
7
)dense_168_biasadd_readvariableop_resource:
identity?? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp?-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp?,lstm_504/lstm_cell_144/MatMul/ReadVariableOp?.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp?lstm_504/while?-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp?,lstm_505/lstm_cell_145/MatMul/ReadVariableOp?.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp?lstm_505/while?-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp?,lstm_506/lstm_cell_146/MatMul/ReadVariableOp?.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp?lstm_506/whileD
lstm_504/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_504/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_504/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_504/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_sliceStridedSlicelstm_504/Shape:output:0%lstm_504/strided_slice/stack:output:0'lstm_504/strided_slice/stack_1:output:0'lstm_504/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_504/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_504/zeros/packedPacklstm_504/strided_slice:output:0 lstm_504/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_504/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_504/zerosFilllstm_504/zeros/packed:output:0lstm_504/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_504/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_504/zeros_1/packedPacklstm_504/strided_slice:output:0"lstm_504/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_504/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_504/zeros_1Fill lstm_504/zeros_1/packed:output:0lstm_504/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_504/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_504/transpose	Transposeinputs lstm_504/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_504/Shape_1Shapelstm_504/transpose:y:0*
T0*
_output_shapes
:h
lstm_504/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_504/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_1StridedSlicelstm_504/Shape_1:output:0'lstm_504/strided_slice_1/stack:output:0)lstm_504/strided_slice_1/stack_1:output:0)lstm_504/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_504/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_504/TensorArrayV2TensorListReserve-lstm_504/TensorArrayV2/element_shape:output:0!lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_504/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_504/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_504/transpose:y:0Glstm_504/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_504/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_504/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_2StridedSlicelstm_504/transpose:y:0'lstm_504/strided_slice_2/stack:output:0)lstm_504/strided_slice_2/stack_1:output:0)lstm_504/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_504/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_504_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_504/lstm_cell_144/MatMulMatMul!lstm_504/strided_slice_2:output:04lstm_504/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_504/lstm_cell_144/MatMul_1MatMullstm_504/zeros:output:06lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_504/lstm_cell_144/addAddV2'lstm_504/lstm_cell_144/MatMul:product:0)lstm_504/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_504/lstm_cell_144/BiasAddBiasAddlstm_504/lstm_cell_144/add:z:05lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_504/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_504/lstm_cell_144/splitSplit/lstm_504/lstm_cell_144/split/split_dim:output:0'lstm_504/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_504/lstm_cell_144/SigmoidSigmoid%lstm_504/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_504/lstm_cell_144/Sigmoid_1Sigmoid%lstm_504/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mulMul$lstm_504/lstm_cell_144/Sigmoid_1:y:0lstm_504/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_504/lstm_cell_144/ReluRelu%lstm_504/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mul_1Mul"lstm_504/lstm_cell_144/Sigmoid:y:0)lstm_504/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/add_1AddV2lstm_504/lstm_cell_144/mul:z:0 lstm_504/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_504/lstm_cell_144/Sigmoid_2Sigmoid%lstm_504/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_504/lstm_cell_144/Relu_1Relu lstm_504/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_504/lstm_cell_144/mul_2Mul$lstm_504/lstm_cell_144/Sigmoid_2:y:0+lstm_504/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_504/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_504/TensorArrayV2_1TensorListReserve/lstm_504/TensorArrayV2_1/element_shape:output:0!lstm_504/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_504/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_504/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_504/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_504/whileWhile$lstm_504/while/loop_counter:output:0*lstm_504/while/maximum_iterations:output:0lstm_504/time:output:0!lstm_504/TensorArrayV2_1:handle:0lstm_504/zeros:output:0lstm_504/zeros_1:output:0!lstm_504/strided_slice_1:output:0@lstm_504/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_504_lstm_cell_144_matmul_readvariableop_resource7lstm_504_lstm_cell_144_matmul_1_readvariableop_resource6lstm_504_lstm_cell_144_biasadd_readvariableop_resource*
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
lstm_504_while_body_885500*&
condR
lstm_504_while_cond_885499*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_504/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_504/TensorArrayV2Stack/TensorListStackTensorListStacklstm_504/while:output:3Blstm_504/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_504/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_504/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_504/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_504/strided_slice_3StridedSlice4lstm_504/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_504/strided_slice_3/stack:output:0)lstm_504/strided_slice_3/stack_1:output:0)lstm_504/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_504/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_504/transpose_1	Transpose4lstm_504/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_504/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_504/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_505/ShapeShapelstm_504/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_505/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_505/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_505/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_sliceStridedSlicelstm_505/Shape:output:0%lstm_505/strided_slice/stack:output:0'lstm_505/strided_slice/stack_1:output:0'lstm_505/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_505/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_505/zeros/packedPacklstm_505/strided_slice:output:0 lstm_505/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_505/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_505/zerosFilllstm_505/zeros/packed:output:0lstm_505/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_505/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_505/zeros_1/packedPacklstm_505/strided_slice:output:0"lstm_505/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_505/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_505/zeros_1Fill lstm_505/zeros_1/packed:output:0lstm_505/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_505/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_505/transpose	Transposelstm_504/transpose_1:y:0 lstm_505/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_505/Shape_1Shapelstm_505/transpose:y:0*
T0*
_output_shapes
:h
lstm_505/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_505/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_1StridedSlicelstm_505/Shape_1:output:0'lstm_505/strided_slice_1/stack:output:0)lstm_505/strided_slice_1/stack_1:output:0)lstm_505/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_505/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_505/TensorArrayV2TensorListReserve-lstm_505/TensorArrayV2/element_shape:output:0!lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_505/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_505/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_505/transpose:y:0Glstm_505/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_505/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_505/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_2StridedSlicelstm_505/transpose:y:0'lstm_505/strided_slice_2/stack:output:0)lstm_505/strided_slice_2/stack_1:output:0)lstm_505/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_505/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_505_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_505/lstm_cell_145/MatMulMatMul!lstm_505/strided_slice_2:output:04lstm_505/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_505/lstm_cell_145/MatMul_1MatMullstm_505/zeros:output:06lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_505/lstm_cell_145/addAddV2'lstm_505/lstm_cell_145/MatMul:product:0)lstm_505/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_505/lstm_cell_145/BiasAddBiasAddlstm_505/lstm_cell_145/add:z:05lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_505/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_505/lstm_cell_145/splitSplit/lstm_505/lstm_cell_145/split/split_dim:output:0'lstm_505/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_505/lstm_cell_145/SigmoidSigmoid%lstm_505/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_505/lstm_cell_145/Sigmoid_1Sigmoid%lstm_505/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mulMul$lstm_505/lstm_cell_145/Sigmoid_1:y:0lstm_505/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_505/lstm_cell_145/ReluRelu%lstm_505/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mul_1Mul"lstm_505/lstm_cell_145/Sigmoid:y:0)lstm_505/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/add_1AddV2lstm_505/lstm_cell_145/mul:z:0 lstm_505/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_505/lstm_cell_145/Sigmoid_2Sigmoid%lstm_505/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_505/lstm_cell_145/Relu_1Relu lstm_505/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_505/lstm_cell_145/mul_2Mul$lstm_505/lstm_cell_145/Sigmoid_2:y:0+lstm_505/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_505/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_505/TensorArrayV2_1TensorListReserve/lstm_505/TensorArrayV2_1/element_shape:output:0!lstm_505/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_505/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_505/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_505/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_505/whileWhile$lstm_505/while/loop_counter:output:0*lstm_505/while/maximum_iterations:output:0lstm_505/time:output:0!lstm_505/TensorArrayV2_1:handle:0lstm_505/zeros:output:0lstm_505/zeros_1:output:0!lstm_505/strided_slice_1:output:0@lstm_505/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_505_lstm_cell_145_matmul_readvariableop_resource7lstm_505_lstm_cell_145_matmul_1_readvariableop_resource6lstm_505_lstm_cell_145_biasadd_readvariableop_resource*
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
lstm_505_while_body_885639*&
condR
lstm_505_while_cond_885638*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_505/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_505/TensorArrayV2Stack/TensorListStackTensorListStacklstm_505/while:output:3Blstm_505/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_505/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_505/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_505/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_505/strided_slice_3StridedSlice4lstm_505/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_505/strided_slice_3/stack:output:0)lstm_505/strided_slice_3/stack_1:output:0)lstm_505/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_505/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_505/transpose_1	Transpose4lstm_505/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_505/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_505/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_506/ShapeShapelstm_505/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_506/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_506/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_506/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_sliceStridedSlicelstm_506/Shape:output:0%lstm_506/strided_slice/stack:output:0'lstm_506/strided_slice/stack_1:output:0'lstm_506/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_506/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_506/zeros/packedPacklstm_506/strided_slice:output:0 lstm_506/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_506/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_506/zerosFilllstm_506/zeros/packed:output:0lstm_506/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_506/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_506/zeros_1/packedPacklstm_506/strided_slice:output:0"lstm_506/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_506/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_506/zeros_1Fill lstm_506/zeros_1/packed:output:0lstm_506/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_506/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_506/transpose	Transposelstm_505/transpose_1:y:0 lstm_506/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_506/Shape_1Shapelstm_506/transpose:y:0*
T0*
_output_shapes
:h
lstm_506/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_506/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_1StridedSlicelstm_506/Shape_1:output:0'lstm_506/strided_slice_1/stack:output:0)lstm_506/strided_slice_1/stack_1:output:0)lstm_506/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_506/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_506/TensorArrayV2TensorListReserve-lstm_506/TensorArrayV2/element_shape:output:0!lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_506/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_506/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_506/transpose:y:0Glstm_506/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_506/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_506/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_2StridedSlicelstm_506/transpose:y:0'lstm_506/strided_slice_2/stack:output:0)lstm_506/strided_slice_2/stack_1:output:0)lstm_506/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_506/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_506_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_506/lstm_cell_146/MatMulMatMul!lstm_506/strided_slice_2:output:04lstm_506/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_506/lstm_cell_146/MatMul_1MatMullstm_506/zeros:output:06lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_506/lstm_cell_146/addAddV2'lstm_506/lstm_cell_146/MatMul:product:0)lstm_506/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_506/lstm_cell_146/BiasAddBiasAddlstm_506/lstm_cell_146/add:z:05lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_506/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_506/lstm_cell_146/splitSplit/lstm_506/lstm_cell_146/split/split_dim:output:0'lstm_506/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_506/lstm_cell_146/SigmoidSigmoid%lstm_506/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_506/lstm_cell_146/Sigmoid_1Sigmoid%lstm_506/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mulMul$lstm_506/lstm_cell_146/Sigmoid_1:y:0lstm_506/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_506/lstm_cell_146/ReluRelu%lstm_506/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mul_1Mul"lstm_506/lstm_cell_146/Sigmoid:y:0)lstm_506/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/add_1AddV2lstm_506/lstm_cell_146/mul:z:0 lstm_506/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_506/lstm_cell_146/Sigmoid_2Sigmoid%lstm_506/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_506/lstm_cell_146/Relu_1Relu lstm_506/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_506/lstm_cell_146/mul_2Mul$lstm_506/lstm_cell_146/Sigmoid_2:y:0+lstm_506/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_506/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_506/TensorArrayV2_1TensorListReserve/lstm_506/TensorArrayV2_1/element_shape:output:0!lstm_506/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_506/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_506/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_506/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_506/whileWhile$lstm_506/while/loop_counter:output:0*lstm_506/while/maximum_iterations:output:0lstm_506/time:output:0!lstm_506/TensorArrayV2_1:handle:0lstm_506/zeros:output:0lstm_506/zeros_1:output:0!lstm_506/strided_slice_1:output:0@lstm_506/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_506_lstm_cell_146_matmul_readvariableop_resource7lstm_506_lstm_cell_146_matmul_1_readvariableop_resource6lstm_506_lstm_cell_146_biasadd_readvariableop_resource*
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
lstm_506_while_body_885778*&
condR
lstm_506_while_cond_885777*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_506/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_506/TensorArrayV2Stack/TensorListStackTensorListStacklstm_506/while:output:3Blstm_506/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_506/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_506/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_506/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_506/strided_slice_3StridedSlice4lstm_506/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_506/strided_slice_3/stack:output:0)lstm_506/strided_slice_3/stack_1:output:0)lstm_506/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_506/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_506/transpose_1	Transpose4lstm_506/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_506/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_506/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_168/MatMulMatMul!lstm_506/strided_slice_3:output:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_168/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp.^lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_504/lstm_cell_144/MatMul/ReadVariableOp/^lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_504/while.^lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_505/lstm_cell_145/MatMul/ReadVariableOp/^lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_505/while.^lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_506/lstm_cell_146/MatMul/ReadVariableOp/^lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_506/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2^
-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_504/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_504/lstm_cell_144/MatMul/ReadVariableOp,lstm_504/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_504/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_504/whilelstm_504/while2^
-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_505/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_505/lstm_cell_145/MatMul/ReadVariableOp,lstm_505/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_505/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_505/whilelstm_505/while2^
-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_506/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_506/lstm_cell_146/MatMul/ReadVariableOp,lstm_506/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_506/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_506/whilelstm_506/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_145_layer_call_fn_888294

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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_883690o
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887384

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	d?A
.lstm_cell_145_matmul_1_readvariableop_resource:	2?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
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
while_body_887300*
condR
while_cond_887299*K
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
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_506_while_body_885778.
*lstm_506_while_lstm_506_while_loop_counter4
0lstm_506_while_lstm_506_while_maximum_iterations
lstm_506_while_placeholder 
lstm_506_while_placeholder_1 
lstm_506_while_placeholder_2 
lstm_506_while_placeholder_3-
)lstm_506_while_lstm_506_strided_slice_1_0i
elstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0:2(Q
?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0:
(L
>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0:(
lstm_506_while_identity
lstm_506_while_identity_1
lstm_506_while_identity_2
lstm_506_while_identity_3
lstm_506_while_identity_4
lstm_506_while_identity_5+
'lstm_506_while_lstm_506_strided_slice_1g
clstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensorM
;lstm_506_while_lstm_cell_146_matmul_readvariableop_resource:2(O
=lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource:
(J
<lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource:(??3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp?2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp?4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp?
@lstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_506/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0lstm_506_while_placeholderIlstm_506/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_506/while/lstm_cell_146/MatMulMatMul9lstm_506/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_506/while/lstm_cell_146/MatMul_1MatMullstm_506_while_placeholder_2<lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_506/while/lstm_cell_146/addAddV2-lstm_506/while/lstm_cell_146/MatMul:product:0/lstm_506/while/lstm_cell_146/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_506/while/lstm_cell_146/BiasAddBiasAdd$lstm_506/while/lstm_cell_146/add:z:0;lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_506/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_506/while/lstm_cell_146/splitSplit5lstm_506/while/lstm_cell_146/split/split_dim:output:0-lstm_506/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_506/while/lstm_cell_146/SigmoidSigmoid+lstm_506/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_506/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_506/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_506/while/lstm_cell_146/mulMul*lstm_506/while/lstm_cell_146/Sigmoid_1:y:0lstm_506_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_506/while/lstm_cell_146/ReluRelu+lstm_506/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/mul_1Mul(lstm_506/while/lstm_cell_146/Sigmoid:y:0/lstm_506/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/add_1AddV2$lstm_506/while/lstm_cell_146/mul:z:0&lstm_506/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_506/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_506/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_506/while/lstm_cell_146/Relu_1Relu&lstm_506/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_506/while/lstm_cell_146/mul_2Mul*lstm_506/while/lstm_cell_146/Sigmoid_2:y:01lstm_506/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_506/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_506_while_placeholder_1lstm_506_while_placeholder&lstm_506/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_506/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_506/while/addAddV2lstm_506_while_placeholderlstm_506/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_506/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_506/while/add_1AddV2*lstm_506_while_lstm_506_while_loop_counterlstm_506/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_506/while/IdentityIdentitylstm_506/while/add_1:z:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_1Identity0lstm_506_while_lstm_506_while_maximum_iterations^lstm_506/while/NoOp*
T0*
_output_shapes
: t
lstm_506/while/Identity_2Identitylstm_506/while/add:z:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_3IdentityClstm_506/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_506/while/NoOp*
T0*
_output_shapes
: ?
lstm_506/while/Identity_4Identity&lstm_506/while/lstm_cell_146/mul_2:z:0^lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_506/while/Identity_5Identity&lstm_506/while/lstm_cell_146/add_1:z:0^lstm_506/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_506/while/NoOpNoOp4^lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_506_while_identity lstm_506/while/Identity:output:0"?
lstm_506_while_identity_1"lstm_506/while/Identity_1:output:0"?
lstm_506_while_identity_2"lstm_506/while/Identity_2:output:0"?
lstm_506_while_identity_3"lstm_506/while/Identity_3:output:0"?
lstm_506_while_identity_4"lstm_506/while/Identity_4:output:0"?
lstm_506_while_identity_5"lstm_506/while/Identity_5:output:0"T
'lstm_506_while_lstm_506_strided_slice_1)lstm_506_while_lstm_506_strided_slice_1_0"~
<lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_506_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
=lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_506_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_506_while_lstm_cell_146_matmul_readvariableop_resource=lstm_506_while_lstm_cell_146_matmul_readvariableop_resource_0"?
clstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensorelstm_506_while_tensorarrayv2read_tensorlistgetitem_lstm_506_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_506/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_506/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_506/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_504_input;
 serving_default_lstm_504_input:0?????????=
	dense_1680
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
2dense_168/kernel
:2dense_168/bias
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
0:.	?2lstm_504/lstm_cell_504/kernel
::8	d?2'lstm_504/lstm_cell_504/recurrent_kernel
*:(?2lstm_504/lstm_cell_504/bias
0:.	d?2lstm_505/lstm_cell_505/kernel
::8	2?2'lstm_505/lstm_cell_505/recurrent_kernel
*:(?2lstm_505/lstm_cell_505/bias
/:-2(2lstm_506/lstm_cell_506/kernel
9:7
(2'lstm_506/lstm_cell_506/recurrent_kernel
):'(2lstm_506/lstm_cell_506/bias
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
2Adam/dense_168/kernel/m
!:2Adam/dense_168/bias/m
5:3	?2$Adam/lstm_504/lstm_cell_504/kernel/m
?:=	d?2.Adam/lstm_504/lstm_cell_504/recurrent_kernel/m
/:-?2"Adam/lstm_504/lstm_cell_504/bias/m
5:3	d?2$Adam/lstm_505/lstm_cell_505/kernel/m
?:=	2?2.Adam/lstm_505/lstm_cell_505/recurrent_kernel/m
/:-?2"Adam/lstm_505/lstm_cell_505/bias/m
4:22(2$Adam/lstm_506/lstm_cell_506/kernel/m
>:<
(2.Adam/lstm_506/lstm_cell_506/recurrent_kernel/m
.:,(2"Adam/lstm_506/lstm_cell_506/bias/m
':%
2Adam/dense_168/kernel/v
!:2Adam/dense_168/bias/v
5:3	?2$Adam/lstm_504/lstm_cell_504/kernel/v
?:=	d?2.Adam/lstm_504/lstm_cell_504/recurrent_kernel/v
/:-?2"Adam/lstm_504/lstm_cell_504/bias/v
5:3	d?2$Adam/lstm_505/lstm_cell_505/kernel/v
?:=	2?2.Adam/lstm_505/lstm_cell_505/recurrent_kernel/v
/:-?2"Adam/lstm_505/lstm_cell_505/bias/v
4:22(2$Adam/lstm_506/lstm_cell_506/kernel/v
>:<
(2.Adam/lstm_506/lstm_cell_506/recurrent_kernel/v
.:,(2"Adam/lstm_506/lstm_cell_506/bias/v
?2?
/__inference_sequential_168_layer_call_fn_884676
/__inference_sequential_168_layer_call_fn_885414
/__inference_sequential_168_layer_call_fn_885441
/__inference_sequential_168_layer_call_fn_885292?
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885868
J__inference_sequential_168_layer_call_and_return_conditional_losses_886295
J__inference_sequential_168_layer_call_and_return_conditional_losses_885322
J__inference_sequential_168_layer_call_and_return_conditional_losses_885352?
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
!__inference__wrapped_model_883127lstm_504_input"?
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
)__inference_lstm_504_layer_call_fn_886306
)__inference_lstm_504_layer_call_fn_886317
)__inference_lstm_504_layer_call_fn_886328
)__inference_lstm_504_layer_call_fn_886339?
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886482
D__inference_lstm_504_layer_call_and_return_conditional_losses_886625
D__inference_lstm_504_layer_call_and_return_conditional_losses_886768
D__inference_lstm_504_layer_call_and_return_conditional_losses_886911?
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
)__inference_lstm_505_layer_call_fn_886922
)__inference_lstm_505_layer_call_fn_886933
)__inference_lstm_505_layer_call_fn_886944
)__inference_lstm_505_layer_call_fn_886955?
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887098
D__inference_lstm_505_layer_call_and_return_conditional_losses_887241
D__inference_lstm_505_layer_call_and_return_conditional_losses_887384
D__inference_lstm_505_layer_call_and_return_conditional_losses_887527?
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
)__inference_lstm_506_layer_call_fn_887538
)__inference_lstm_506_layer_call_fn_887549
)__inference_lstm_506_layer_call_fn_887560
)__inference_lstm_506_layer_call_fn_887571?
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_887714
D__inference_lstm_506_layer_call_and_return_conditional_losses_887857
D__inference_lstm_506_layer_call_and_return_conditional_losses_888000
D__inference_lstm_506_layer_call_and_return_conditional_losses_888143?
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
*__inference_dense_168_layer_call_fn_888152?
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
E__inference_dense_168_layer_call_and_return_conditional_losses_888162?
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
$__inference_signature_wrapper_885387lstm_504_input"?
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
.__inference_lstm_cell_144_layer_call_fn_888179
.__inference_lstm_cell_144_layer_call_fn_888196?
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888228
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888260?
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
.__inference_lstm_cell_145_layer_call_fn_888277
.__inference_lstm_cell_145_layer_call_fn_888294?
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888326
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888358?
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
.__inference_lstm_cell_146_layer_call_fn_888375
.__inference_lstm_cell_146_layer_call_fn_888392?
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888424
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888456?
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
!__inference__wrapped_model_883127?-./012345!";?8
1?.
,?)
lstm_504_input?????????
? "5?2
0
	dense_168#? 
	dense_168??????????
E__inference_dense_168_layer_call_and_return_conditional_losses_888162\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_168_layer_call_fn_888152O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_504_layer_call_and_return_conditional_losses_886482?-./O?L
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886625?-./O?L
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886768q-./??<
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
D__inference_lstm_504_layer_call_and_return_conditional_losses_886911q-./??<
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
)__inference_lstm_504_layer_call_fn_886306}-./O?L
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
)__inference_lstm_504_layer_call_fn_886317}-./O?L
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
)__inference_lstm_504_layer_call_fn_886328d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_504_layer_call_fn_886339d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_505_layer_call_and_return_conditional_losses_887098?012O?L
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887241?012O?L
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887384q012??<
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
D__inference_lstm_505_layer_call_and_return_conditional_losses_887527q012??<
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
)__inference_lstm_505_layer_call_fn_886922}012O?L
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
)__inference_lstm_505_layer_call_fn_886933}012O?L
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
)__inference_lstm_505_layer_call_fn_886944d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_505_layer_call_fn_886955d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_506_layer_call_and_return_conditional_losses_887714}345O?L
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_887857}345O?L
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_888000m345??<
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
D__inference_lstm_506_layer_call_and_return_conditional_losses_888143m345??<
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
)__inference_lstm_506_layer_call_fn_887538p345O?L
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
)__inference_lstm_506_layer_call_fn_887549p345O?L
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
)__inference_lstm_506_layer_call_fn_887560`345??<
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
)__inference_lstm_506_layer_call_fn_887571`345??<
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888228?-./??}
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
I__inference_lstm_cell_144_layer_call_and_return_conditional_losses_888260?-./??}
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
.__inference_lstm_cell_144_layer_call_fn_888179?-./??}
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
.__inference_lstm_cell_144_layer_call_fn_888196?-./??}
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888326?012??}
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
I__inference_lstm_cell_145_layer_call_and_return_conditional_losses_888358?012??}
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
.__inference_lstm_cell_145_layer_call_fn_888277?012??}
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
.__inference_lstm_cell_145_layer_call_fn_888294?012??}
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888424?345??}
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
I__inference_lstm_cell_146_layer_call_and_return_conditional_losses_888456?345??}
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
.__inference_lstm_cell_146_layer_call_fn_888375?345??}
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
.__inference_lstm_cell_146_layer_call_fn_888392?345??}
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_885322y-./012345!"C?@
9?6
,?)
lstm_504_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_168_layer_call_and_return_conditional_losses_885352y-./012345!"C?@
9?6
,?)
lstm_504_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_168_layer_call_and_return_conditional_losses_885868q-./012345!";?8
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
J__inference_sequential_168_layer_call_and_return_conditional_losses_886295q-./012345!";?8
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
/__inference_sequential_168_layer_call_fn_884676l-./012345!"C?@
9?6
,?)
lstm_504_input?????????
p 

 
? "???????????
/__inference_sequential_168_layer_call_fn_885292l-./012345!"C?@
9?6
,?)
lstm_504_input?????????
p

 
? "???????????
/__inference_sequential_168_layer_call_fn_885414d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_168_layer_call_fn_885441d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_885387?-./012345!"M?J
? 
C?@
>
lstm_504_input,?)
lstm_504_input?????????"5?2
0
	dense_168#? 
	dense_168?????????