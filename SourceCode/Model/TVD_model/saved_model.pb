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
dense_187/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_187/kernel
u
$dense_187/kernel/Read/ReadVariableOpReadVariableOpdense_187/kernel*
_output_shapes

:
*
dtype0
t
dense_187/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_187/bias
m
"dense_187/bias/Read/ReadVariableOpReadVariableOpdense_187/bias*
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
lstm_561/lstm_cell_561/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_561/lstm_cell_561/kernel
?
1lstm_561/lstm_cell_561/kernel/Read/ReadVariableOpReadVariableOplstm_561/lstm_cell_561/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_561/lstm_cell_561/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_561/lstm_cell_561/recurrent_kernel
?
;lstm_561/lstm_cell_561/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_561/lstm_cell_561/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_561/lstm_cell_561/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_561/lstm_cell_561/bias
?
/lstm_561/lstm_cell_561/bias/Read/ReadVariableOpReadVariableOplstm_561/lstm_cell_561/bias*
_output_shapes	
:?*
dtype0
?
lstm_562/lstm_cell_562/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_562/lstm_cell_562/kernel
?
1lstm_562/lstm_cell_562/kernel/Read/ReadVariableOpReadVariableOplstm_562/lstm_cell_562/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_562/lstm_cell_562/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_562/lstm_cell_562/recurrent_kernel
?
;lstm_562/lstm_cell_562/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_562/lstm_cell_562/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_562/lstm_cell_562/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_562/lstm_cell_562/bias
?
/lstm_562/lstm_cell_562/bias/Read/ReadVariableOpReadVariableOplstm_562/lstm_cell_562/bias*
_output_shapes	
:?*
dtype0
?
lstm_563/lstm_cell_563/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_563/lstm_cell_563/kernel
?
1lstm_563/lstm_cell_563/kernel/Read/ReadVariableOpReadVariableOplstm_563/lstm_cell_563/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_563/lstm_cell_563/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_563/lstm_cell_563/recurrent_kernel
?
;lstm_563/lstm_cell_563/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_563/lstm_cell_563/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_563/lstm_cell_563/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_563/lstm_cell_563/bias
?
/lstm_563/lstm_cell_563/bias/Read/ReadVariableOpReadVariableOplstm_563/lstm_cell_563/bias*
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
Adam/dense_187/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_187/kernel/m
?
+Adam/dense_187/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_187/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_187/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_187/bias/m
{
)Adam/dense_187/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_187/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_561/lstm_cell_561/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_561/lstm_cell_561/kernel/m
?
8Adam/lstm_561/lstm_cell_561/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_561/lstm_cell_561/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_561/lstm_cell_561/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_561/lstm_cell_561/recurrent_kernel/m
?
BAdam/lstm_561/lstm_cell_561/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_561/lstm_cell_561/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_561/lstm_cell_561/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_561/lstm_cell_561/bias/m
?
6Adam/lstm_561/lstm_cell_561/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_561/lstm_cell_561/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_562/lstm_cell_562/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_562/lstm_cell_562/kernel/m
?
8Adam/lstm_562/lstm_cell_562/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_562/lstm_cell_562/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_562/lstm_cell_562/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_562/lstm_cell_562/recurrent_kernel/m
?
BAdam/lstm_562/lstm_cell_562/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_562/lstm_cell_562/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_562/lstm_cell_562/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_562/lstm_cell_562/bias/m
?
6Adam/lstm_562/lstm_cell_562/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_562/lstm_cell_562/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_563/lstm_cell_563/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_563/lstm_cell_563/kernel/m
?
8Adam/lstm_563/lstm_cell_563/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_563/lstm_cell_563/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_563/lstm_cell_563/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_563/lstm_cell_563/recurrent_kernel/m
?
BAdam/lstm_563/lstm_cell_563/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_563/lstm_cell_563/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_563/lstm_cell_563/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_563/lstm_cell_563/bias/m
?
6Adam/lstm_563/lstm_cell_563/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_563/lstm_cell_563/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_187/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_187/kernel/v
?
+Adam/dense_187/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_187/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_187/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_187/bias/v
{
)Adam/dense_187/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_187/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_561/lstm_cell_561/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_561/lstm_cell_561/kernel/v
?
8Adam/lstm_561/lstm_cell_561/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_561/lstm_cell_561/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_561/lstm_cell_561/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_561/lstm_cell_561/recurrent_kernel/v
?
BAdam/lstm_561/lstm_cell_561/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_561/lstm_cell_561/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_561/lstm_cell_561/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_561/lstm_cell_561/bias/v
?
6Adam/lstm_561/lstm_cell_561/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_561/lstm_cell_561/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_562/lstm_cell_562/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_562/lstm_cell_562/kernel/v
?
8Adam/lstm_562/lstm_cell_562/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_562/lstm_cell_562/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_562/lstm_cell_562/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_562/lstm_cell_562/recurrent_kernel/v
?
BAdam/lstm_562/lstm_cell_562/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_562/lstm_cell_562/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_562/lstm_cell_562/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_562/lstm_cell_562/bias/v
?
6Adam/lstm_562/lstm_cell_562/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_562/lstm_cell_562/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_563/lstm_cell_563/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_563/lstm_cell_563/kernel/v
?
8Adam/lstm_563/lstm_cell_563/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_563/lstm_cell_563/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_563/lstm_cell_563/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_563/lstm_cell_563/recurrent_kernel/v
?
BAdam/lstm_563/lstm_cell_563/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_563/lstm_cell_563/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_563/lstm_cell_563/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_563/lstm_cell_563/bias/v
?
6Adam/lstm_563/lstm_cell_563/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_563/lstm_cell_563/bias/v*
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
VARIABLE_VALUEdense_187/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_187/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_561/lstm_cell_561/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_561/lstm_cell_561/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_561/lstm_cell_561/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_562/lstm_cell_562/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_562/lstm_cell_562/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_562/lstm_cell_562/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_563/lstm_cell_563/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_563/lstm_cell_563/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_563/lstm_cell_563/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_187/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_187/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_561/lstm_cell_561/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_561/lstm_cell_561/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_561/lstm_cell_561/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_562/lstm_cell_562/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_562/lstm_cell_562/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_562/lstm_cell_562/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_563/lstm_cell_563/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_563/lstm_cell_563/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_563/lstm_cell_563/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_187/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_187/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_561/lstm_cell_561/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_561/lstm_cell_561/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_561/lstm_cell_561/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_562/lstm_cell_562/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_562/lstm_cell_562/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_562/lstm_cell_562/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_563/lstm_cell_563/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_563/lstm_cell_563/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_563/lstm_cell_563/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_561_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_561_inputlstm_561/lstm_cell_561/kernel'lstm_561/lstm_cell_561/recurrent_kernellstm_561/lstm_cell_561/biaslstm_562/lstm_cell_562/kernel'lstm_562/lstm_cell_562/recurrent_kernellstm_562/lstm_cell_562/biaslstm_563/lstm_cell_563/kernel'lstm_563/lstm_cell_563/recurrent_kernellstm_563/lstm_cell_563/biasdense_187/kerneldense_187/bias*
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
%__inference_signature_wrapper_1012838
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_187/kernel/Read/ReadVariableOp"dense_187/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_561/lstm_cell_561/kernel/Read/ReadVariableOp;lstm_561/lstm_cell_561/recurrent_kernel/Read/ReadVariableOp/lstm_561/lstm_cell_561/bias/Read/ReadVariableOp1lstm_562/lstm_cell_562/kernel/Read/ReadVariableOp;lstm_562/lstm_cell_562/recurrent_kernel/Read/ReadVariableOp/lstm_562/lstm_cell_562/bias/Read/ReadVariableOp1lstm_563/lstm_cell_563/kernel/Read/ReadVariableOp;lstm_563/lstm_cell_563/recurrent_kernel/Read/ReadVariableOp/lstm_563/lstm_cell_563/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_187/kernel/m/Read/ReadVariableOp)Adam/dense_187/bias/m/Read/ReadVariableOp8Adam/lstm_561/lstm_cell_561/kernel/m/Read/ReadVariableOpBAdam/lstm_561/lstm_cell_561/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_561/lstm_cell_561/bias/m/Read/ReadVariableOp8Adam/lstm_562/lstm_cell_562/kernel/m/Read/ReadVariableOpBAdam/lstm_562/lstm_cell_562/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_562/lstm_cell_562/bias/m/Read/ReadVariableOp8Adam/lstm_563/lstm_cell_563/kernel/m/Read/ReadVariableOpBAdam/lstm_563/lstm_cell_563/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_563/lstm_cell_563/bias/m/Read/ReadVariableOp+Adam/dense_187/kernel/v/Read/ReadVariableOp)Adam/dense_187/bias/v/Read/ReadVariableOp8Adam/lstm_561/lstm_cell_561/kernel/v/Read/ReadVariableOpBAdam/lstm_561/lstm_cell_561/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_561/lstm_cell_561/bias/v/Read/ReadVariableOp8Adam/lstm_562/lstm_cell_562/kernel/v/Read/ReadVariableOpBAdam/lstm_562/lstm_cell_562/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_562/lstm_cell_562/bias/v/Read/ReadVariableOp8Adam/lstm_563/lstm_cell_563/kernel/v/Read/ReadVariableOpBAdam/lstm_563/lstm_cell_563/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_563/lstm_cell_563/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1016050
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_187/kerneldense_187/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_561/lstm_cell_561/kernel'lstm_561/lstm_cell_561/recurrent_kernellstm_561/lstm_cell_561/biaslstm_562/lstm_cell_562/kernel'lstm_562/lstm_cell_562/recurrent_kernellstm_562/lstm_cell_562/biaslstm_563/lstm_cell_563/kernel'lstm_563/lstm_cell_563/recurrent_kernellstm_563/lstm_cell_563/biastotalcountAdam/dense_187/kernel/mAdam/dense_187/bias/m$Adam/lstm_561/lstm_cell_561/kernel/m.Adam/lstm_561/lstm_cell_561/recurrent_kernel/m"Adam/lstm_561/lstm_cell_561/bias/m$Adam/lstm_562/lstm_cell_562/kernel/m.Adam/lstm_562/lstm_cell_562/recurrent_kernel/m"Adam/lstm_562/lstm_cell_562/bias/m$Adam/lstm_563/lstm_cell_563/kernel/m.Adam/lstm_563/lstm_cell_563/recurrent_kernel/m"Adam/lstm_563/lstm_cell_563/bias/mAdam/dense_187/kernel/vAdam/dense_187/bias/v$Adam/lstm_561/lstm_cell_561/kernel/v.Adam/lstm_561/lstm_cell_561/recurrent_kernel/v"Adam/lstm_561/lstm_cell_561/bias/v$Adam/lstm_562/lstm_cell_562/kernel/v.Adam/lstm_562/lstm_cell_562/recurrent_kernel/v"Adam/lstm_562/lstm_cell_562/bias/v$Adam/lstm_563/lstm_cell_563/kernel/v.Adam/lstm_563/lstm_cell_563/recurrent_kernel/v"Adam/lstm_563/lstm_cell_563/bias/v*4
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
#__inference__traced_restore_1016180??+
?8
?
while_body_1011843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014692
inputs_0?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1014608*
condR
while_cond_1014607*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1011692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011692___redundant_placeholder05
1while_while_cond_1011692___redundant_placeholder15
1while_while_cond_1011692___redundant_placeholder25
1while_while_cond_1011692___redundant_placeholder3
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
"__inference__wrapped_model_1010578
lstm_561_inputW
Dsequential_187_lstm_561_lstm_cell_165_matmul_readvariableop_resource:	?Y
Fsequential_187_lstm_561_lstm_cell_165_matmul_1_readvariableop_resource:	d?T
Esequential_187_lstm_561_lstm_cell_165_biasadd_readvariableop_resource:	?W
Dsequential_187_lstm_562_lstm_cell_166_matmul_readvariableop_resource:	d?Y
Fsequential_187_lstm_562_lstm_cell_166_matmul_1_readvariableop_resource:	2?T
Esequential_187_lstm_562_lstm_cell_166_biasadd_readvariableop_resource:	?V
Dsequential_187_lstm_563_lstm_cell_167_matmul_readvariableop_resource:2(X
Fsequential_187_lstm_563_lstm_cell_167_matmul_1_readvariableop_resource:
(S
Esequential_187_lstm_563_lstm_cell_167_biasadd_readvariableop_resource:(I
7sequential_187_dense_187_matmul_readvariableop_resource:
F
8sequential_187_dense_187_biasadd_readvariableop_resource:
identity??/sequential_187/dense_187/BiasAdd/ReadVariableOp?.sequential_187/dense_187/MatMul/ReadVariableOp?<sequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp?;sequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOp?=sequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp?sequential_187/lstm_561/while?<sequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp?;sequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOp?=sequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp?sequential_187/lstm_562/while?<sequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp?;sequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOp?=sequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp?sequential_187/lstm_563/while[
sequential_187/lstm_561/ShapeShapelstm_561_input*
T0*
_output_shapes
:u
+sequential_187/lstm_561/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_187/lstm_561/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_187/lstm_561/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_187/lstm_561/strided_sliceStridedSlice&sequential_187/lstm_561/Shape:output:04sequential_187/lstm_561/strided_slice/stack:output:06sequential_187/lstm_561/strided_slice/stack_1:output:06sequential_187/lstm_561/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_187/lstm_561/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_187/lstm_561/zeros/packedPack.sequential_187/lstm_561/strided_slice:output:0/sequential_187/lstm_561/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_187/lstm_561/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_561/zerosFill-sequential_187/lstm_561/zeros/packed:output:0,sequential_187/lstm_561/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_187/lstm_561/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_187/lstm_561/zeros_1/packedPack.sequential_187/lstm_561/strided_slice:output:01sequential_187/lstm_561/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_187/lstm_561/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_561/zeros_1Fill/sequential_187/lstm_561/zeros_1/packed:output:0.sequential_187/lstm_561/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_187/lstm_561/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_187/lstm_561/transpose	Transposelstm_561_input/sequential_187/lstm_561/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_187/lstm_561/Shape_1Shape%sequential_187/lstm_561/transpose:y:0*
T0*
_output_shapes
:w
-sequential_187/lstm_561/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_561/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_561/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_561/strided_slice_1StridedSlice(sequential_187/lstm_561/Shape_1:output:06sequential_187/lstm_561/strided_slice_1/stack:output:08sequential_187/lstm_561/strided_slice_1/stack_1:output:08sequential_187/lstm_561/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_187/lstm_561/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_187/lstm_561/TensorArrayV2TensorListReserve<sequential_187/lstm_561/TensorArrayV2/element_shape:output:00sequential_187/lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_187/lstm_561/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_187/lstm_561/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_187/lstm_561/transpose:y:0Vsequential_187/lstm_561/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_187/lstm_561/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_561/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_561/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_561/strided_slice_2StridedSlice%sequential_187/lstm_561/transpose:y:06sequential_187/lstm_561/strided_slice_2/stack:output:08sequential_187/lstm_561/strided_slice_2/stack_1:output:08sequential_187/lstm_561/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOpReadVariableOpDsequential_187_lstm_561_lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_187/lstm_561/lstm_cell_165/MatMulMatMul0sequential_187/lstm_561/strided_slice_2:output:0Csequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOpFsequential_187_lstm_561_lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_187/lstm_561/lstm_cell_165/MatMul_1MatMul&sequential_187/lstm_561/zeros:output:0Esequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_187/lstm_561/lstm_cell_165/addAddV26sequential_187/lstm_561/lstm_cell_165/MatMul:product:08sequential_187/lstm_561/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOpEsequential_187_lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_187/lstm_561/lstm_cell_165/BiasAddBiasAdd-sequential_187/lstm_561/lstm_cell_165/add:z:0Dsequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_187/lstm_561/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_187/lstm_561/lstm_cell_165/splitSplit>sequential_187/lstm_561/lstm_cell_165/split/split_dim:output:06sequential_187/lstm_561/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_187/lstm_561/lstm_cell_165/SigmoidSigmoid4sequential_187/lstm_561/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_187/lstm_561/lstm_cell_165/Sigmoid_1Sigmoid4sequential_187/lstm_561/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_187/lstm_561/lstm_cell_165/mulMul3sequential_187/lstm_561/lstm_cell_165/Sigmoid_1:y:0(sequential_187/lstm_561/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_187/lstm_561/lstm_cell_165/ReluRelu4sequential_187/lstm_561/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_187/lstm_561/lstm_cell_165/mul_1Mul1sequential_187/lstm_561/lstm_cell_165/Sigmoid:y:08sequential_187/lstm_561/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_187/lstm_561/lstm_cell_165/add_1AddV2-sequential_187/lstm_561/lstm_cell_165/mul:z:0/sequential_187/lstm_561/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_187/lstm_561/lstm_cell_165/Sigmoid_2Sigmoid4sequential_187/lstm_561/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_187/lstm_561/lstm_cell_165/Relu_1Relu/sequential_187/lstm_561/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_187/lstm_561/lstm_cell_165/mul_2Mul3sequential_187/lstm_561/lstm_cell_165/Sigmoid_2:y:0:sequential_187/lstm_561/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_187/lstm_561/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_187/lstm_561/TensorArrayV2_1TensorListReserve>sequential_187/lstm_561/TensorArrayV2_1/element_shape:output:00sequential_187/lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_187/lstm_561/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_187/lstm_561/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_187/lstm_561/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_187/lstm_561/whileWhile3sequential_187/lstm_561/while/loop_counter:output:09sequential_187/lstm_561/while/maximum_iterations:output:0%sequential_187/lstm_561/time:output:00sequential_187/lstm_561/TensorArrayV2_1:handle:0&sequential_187/lstm_561/zeros:output:0(sequential_187/lstm_561/zeros_1:output:00sequential_187/lstm_561/strided_slice_1:output:0Osequential_187/lstm_561/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_187_lstm_561_lstm_cell_165_matmul_readvariableop_resourceFsequential_187_lstm_561_lstm_cell_165_matmul_1_readvariableop_resourceEsequential_187_lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
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
*sequential_187_lstm_561_while_body_1010210*6
cond.R,
*sequential_187_lstm_561_while_cond_1010209*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_187/lstm_561/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_187/lstm_561/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_187/lstm_561/while:output:3Qsequential_187/lstm_561/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_187/lstm_561/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_187/lstm_561/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_561/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_561/strided_slice_3StridedSliceCsequential_187/lstm_561/TensorArrayV2Stack/TensorListStack:tensor:06sequential_187/lstm_561/strided_slice_3/stack:output:08sequential_187/lstm_561/strided_slice_3/stack_1:output:08sequential_187/lstm_561/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_187/lstm_561/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_187/lstm_561/transpose_1	TransposeCsequential_187/lstm_561/TensorArrayV2Stack/TensorListStack:tensor:01sequential_187/lstm_561/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_187/lstm_561/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_187/lstm_562/ShapeShape'sequential_187/lstm_561/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_187/lstm_562/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_187/lstm_562/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_187/lstm_562/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_187/lstm_562/strided_sliceStridedSlice&sequential_187/lstm_562/Shape:output:04sequential_187/lstm_562/strided_slice/stack:output:06sequential_187/lstm_562/strided_slice/stack_1:output:06sequential_187/lstm_562/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_187/lstm_562/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_187/lstm_562/zeros/packedPack.sequential_187/lstm_562/strided_slice:output:0/sequential_187/lstm_562/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_187/lstm_562/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_562/zerosFill-sequential_187/lstm_562/zeros/packed:output:0,sequential_187/lstm_562/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_187/lstm_562/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_187/lstm_562/zeros_1/packedPack.sequential_187/lstm_562/strided_slice:output:01sequential_187/lstm_562/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_187/lstm_562/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_562/zeros_1Fill/sequential_187/lstm_562/zeros_1/packed:output:0.sequential_187/lstm_562/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_187/lstm_562/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_187/lstm_562/transpose	Transpose'sequential_187/lstm_561/transpose_1:y:0/sequential_187/lstm_562/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_187/lstm_562/Shape_1Shape%sequential_187/lstm_562/transpose:y:0*
T0*
_output_shapes
:w
-sequential_187/lstm_562/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_562/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_562/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_562/strided_slice_1StridedSlice(sequential_187/lstm_562/Shape_1:output:06sequential_187/lstm_562/strided_slice_1/stack:output:08sequential_187/lstm_562/strided_slice_1/stack_1:output:08sequential_187/lstm_562/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_187/lstm_562/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_187/lstm_562/TensorArrayV2TensorListReserve<sequential_187/lstm_562/TensorArrayV2/element_shape:output:00sequential_187/lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_187/lstm_562/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_187/lstm_562/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_187/lstm_562/transpose:y:0Vsequential_187/lstm_562/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_187/lstm_562/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_562/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_562/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_562/strided_slice_2StridedSlice%sequential_187/lstm_562/transpose:y:06sequential_187/lstm_562/strided_slice_2/stack:output:08sequential_187/lstm_562/strided_slice_2/stack_1:output:08sequential_187/lstm_562/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOpReadVariableOpDsequential_187_lstm_562_lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_187/lstm_562/lstm_cell_166/MatMulMatMul0sequential_187/lstm_562/strided_slice_2:output:0Csequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOpFsequential_187_lstm_562_lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_187/lstm_562/lstm_cell_166/MatMul_1MatMul&sequential_187/lstm_562/zeros:output:0Esequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_187/lstm_562/lstm_cell_166/addAddV26sequential_187/lstm_562/lstm_cell_166/MatMul:product:08sequential_187/lstm_562/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOpEsequential_187_lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_187/lstm_562/lstm_cell_166/BiasAddBiasAdd-sequential_187/lstm_562/lstm_cell_166/add:z:0Dsequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_187/lstm_562/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_187/lstm_562/lstm_cell_166/splitSplit>sequential_187/lstm_562/lstm_cell_166/split/split_dim:output:06sequential_187/lstm_562/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_187/lstm_562/lstm_cell_166/SigmoidSigmoid4sequential_187/lstm_562/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_187/lstm_562/lstm_cell_166/Sigmoid_1Sigmoid4sequential_187/lstm_562/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_187/lstm_562/lstm_cell_166/mulMul3sequential_187/lstm_562/lstm_cell_166/Sigmoid_1:y:0(sequential_187/lstm_562/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_187/lstm_562/lstm_cell_166/ReluRelu4sequential_187/lstm_562/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_187/lstm_562/lstm_cell_166/mul_1Mul1sequential_187/lstm_562/lstm_cell_166/Sigmoid:y:08sequential_187/lstm_562/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_187/lstm_562/lstm_cell_166/add_1AddV2-sequential_187/lstm_562/lstm_cell_166/mul:z:0/sequential_187/lstm_562/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_187/lstm_562/lstm_cell_166/Sigmoid_2Sigmoid4sequential_187/lstm_562/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_187/lstm_562/lstm_cell_166/Relu_1Relu/sequential_187/lstm_562/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_187/lstm_562/lstm_cell_166/mul_2Mul3sequential_187/lstm_562/lstm_cell_166/Sigmoid_2:y:0:sequential_187/lstm_562/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_187/lstm_562/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_187/lstm_562/TensorArrayV2_1TensorListReserve>sequential_187/lstm_562/TensorArrayV2_1/element_shape:output:00sequential_187/lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_187/lstm_562/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_187/lstm_562/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_187/lstm_562/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_187/lstm_562/whileWhile3sequential_187/lstm_562/while/loop_counter:output:09sequential_187/lstm_562/while/maximum_iterations:output:0%sequential_187/lstm_562/time:output:00sequential_187/lstm_562/TensorArrayV2_1:handle:0&sequential_187/lstm_562/zeros:output:0(sequential_187/lstm_562/zeros_1:output:00sequential_187/lstm_562/strided_slice_1:output:0Osequential_187/lstm_562/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_187_lstm_562_lstm_cell_166_matmul_readvariableop_resourceFsequential_187_lstm_562_lstm_cell_166_matmul_1_readvariableop_resourceEsequential_187_lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
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
*sequential_187_lstm_562_while_body_1010349*6
cond.R,
*sequential_187_lstm_562_while_cond_1010348*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_187/lstm_562/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_187/lstm_562/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_187/lstm_562/while:output:3Qsequential_187/lstm_562/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_187/lstm_562/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_187/lstm_562/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_562/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_562/strided_slice_3StridedSliceCsequential_187/lstm_562/TensorArrayV2Stack/TensorListStack:tensor:06sequential_187/lstm_562/strided_slice_3/stack:output:08sequential_187/lstm_562/strided_slice_3/stack_1:output:08sequential_187/lstm_562/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_187/lstm_562/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_187/lstm_562/transpose_1	TransposeCsequential_187/lstm_562/TensorArrayV2Stack/TensorListStack:tensor:01sequential_187/lstm_562/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_187/lstm_562/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_187/lstm_563/ShapeShape'sequential_187/lstm_562/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_187/lstm_563/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_187/lstm_563/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_187/lstm_563/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_187/lstm_563/strided_sliceStridedSlice&sequential_187/lstm_563/Shape:output:04sequential_187/lstm_563/strided_slice/stack:output:06sequential_187/lstm_563/strided_slice/stack_1:output:06sequential_187/lstm_563/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_187/lstm_563/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_187/lstm_563/zeros/packedPack.sequential_187/lstm_563/strided_slice:output:0/sequential_187/lstm_563/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_187/lstm_563/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_563/zerosFill-sequential_187/lstm_563/zeros/packed:output:0,sequential_187/lstm_563/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_187/lstm_563/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_187/lstm_563/zeros_1/packedPack.sequential_187/lstm_563/strided_slice:output:01sequential_187/lstm_563/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_187/lstm_563/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_187/lstm_563/zeros_1Fill/sequential_187/lstm_563/zeros_1/packed:output:0.sequential_187/lstm_563/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_187/lstm_563/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_187/lstm_563/transpose	Transpose'sequential_187/lstm_562/transpose_1:y:0/sequential_187/lstm_563/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_187/lstm_563/Shape_1Shape%sequential_187/lstm_563/transpose:y:0*
T0*
_output_shapes
:w
-sequential_187/lstm_563/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_563/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_563/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_563/strided_slice_1StridedSlice(sequential_187/lstm_563/Shape_1:output:06sequential_187/lstm_563/strided_slice_1/stack:output:08sequential_187/lstm_563/strided_slice_1/stack_1:output:08sequential_187/lstm_563/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_187/lstm_563/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_187/lstm_563/TensorArrayV2TensorListReserve<sequential_187/lstm_563/TensorArrayV2/element_shape:output:00sequential_187/lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_187/lstm_563/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_187/lstm_563/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_187/lstm_563/transpose:y:0Vsequential_187/lstm_563/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_187/lstm_563/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_563/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_187/lstm_563/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_563/strided_slice_2StridedSlice%sequential_187/lstm_563/transpose:y:06sequential_187/lstm_563/strided_slice_2/stack:output:08sequential_187/lstm_563/strided_slice_2/stack_1:output:08sequential_187/lstm_563/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOpReadVariableOpDsequential_187_lstm_563_lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_187/lstm_563/lstm_cell_167/MatMulMatMul0sequential_187/lstm_563/strided_slice_2:output:0Csequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOpFsequential_187_lstm_563_lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_187/lstm_563/lstm_cell_167/MatMul_1MatMul&sequential_187/lstm_563/zeros:output:0Esequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_187/lstm_563/lstm_cell_167/addAddV26sequential_187/lstm_563/lstm_cell_167/MatMul:product:08sequential_187/lstm_563/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOpEsequential_187_lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_187/lstm_563/lstm_cell_167/BiasAddBiasAdd-sequential_187/lstm_563/lstm_cell_167/add:z:0Dsequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_187/lstm_563/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_187/lstm_563/lstm_cell_167/splitSplit>sequential_187/lstm_563/lstm_cell_167/split/split_dim:output:06sequential_187/lstm_563/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_187/lstm_563/lstm_cell_167/SigmoidSigmoid4sequential_187/lstm_563/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_187/lstm_563/lstm_cell_167/Sigmoid_1Sigmoid4sequential_187/lstm_563/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_187/lstm_563/lstm_cell_167/mulMul3sequential_187/lstm_563/lstm_cell_167/Sigmoid_1:y:0(sequential_187/lstm_563/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_187/lstm_563/lstm_cell_167/ReluRelu4sequential_187/lstm_563/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_187/lstm_563/lstm_cell_167/mul_1Mul1sequential_187/lstm_563/lstm_cell_167/Sigmoid:y:08sequential_187/lstm_563/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_187/lstm_563/lstm_cell_167/add_1AddV2-sequential_187/lstm_563/lstm_cell_167/mul:z:0/sequential_187/lstm_563/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_187/lstm_563/lstm_cell_167/Sigmoid_2Sigmoid4sequential_187/lstm_563/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_187/lstm_563/lstm_cell_167/Relu_1Relu/sequential_187/lstm_563/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_187/lstm_563/lstm_cell_167/mul_2Mul3sequential_187/lstm_563/lstm_cell_167/Sigmoid_2:y:0:sequential_187/lstm_563/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_187/lstm_563/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_187/lstm_563/TensorArrayV2_1TensorListReserve>sequential_187/lstm_563/TensorArrayV2_1/element_shape:output:00sequential_187/lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_187/lstm_563/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_187/lstm_563/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_187/lstm_563/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_187/lstm_563/whileWhile3sequential_187/lstm_563/while/loop_counter:output:09sequential_187/lstm_563/while/maximum_iterations:output:0%sequential_187/lstm_563/time:output:00sequential_187/lstm_563/TensorArrayV2_1:handle:0&sequential_187/lstm_563/zeros:output:0(sequential_187/lstm_563/zeros_1:output:00sequential_187/lstm_563/strided_slice_1:output:0Osequential_187/lstm_563/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_187_lstm_563_lstm_cell_167_matmul_readvariableop_resourceFsequential_187_lstm_563_lstm_cell_167_matmul_1_readvariableop_resourceEsequential_187_lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
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
*sequential_187_lstm_563_while_body_1010488*6
cond.R,
*sequential_187_lstm_563_while_cond_1010487*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_187/lstm_563/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_187/lstm_563/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_187/lstm_563/while:output:3Qsequential_187/lstm_563/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_187/lstm_563/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_187/lstm_563/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_187/lstm_563/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_187/lstm_563/strided_slice_3StridedSliceCsequential_187/lstm_563/TensorArrayV2Stack/TensorListStack:tensor:06sequential_187/lstm_563/strided_slice_3/stack:output:08sequential_187/lstm_563/strided_slice_3/stack_1:output:08sequential_187/lstm_563/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_187/lstm_563/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_187/lstm_563/transpose_1	TransposeCsequential_187/lstm_563/TensorArrayV2Stack/TensorListStack:tensor:01sequential_187/lstm_563/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_187/lstm_563/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_187/dense_187/MatMul/ReadVariableOpReadVariableOp7sequential_187_dense_187_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_187/dense_187/MatMulMatMul0sequential_187/lstm_563/strided_slice_3:output:06sequential_187/dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_187/dense_187/BiasAdd/ReadVariableOpReadVariableOp8sequential_187_dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_187/dense_187/BiasAddBiasAdd)sequential_187/dense_187/MatMul:product:07sequential_187/dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_187/dense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_187/dense_187/BiasAdd/ReadVariableOp/^sequential_187/dense_187/MatMul/ReadVariableOp=^sequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp<^sequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOp>^sequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp^sequential_187/lstm_561/while=^sequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp<^sequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOp>^sequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp^sequential_187/lstm_562/while=^sequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp<^sequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOp>^sequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp^sequential_187/lstm_563/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_187/dense_187/BiasAdd/ReadVariableOp/sequential_187/dense_187/BiasAdd/ReadVariableOp2`
.sequential_187/dense_187/MatMul/ReadVariableOp.sequential_187/dense_187/MatMul/ReadVariableOp2|
<sequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp<sequential_187/lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp2z
;sequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOp;sequential_187/lstm_561/lstm_cell_165/MatMul/ReadVariableOp2~
=sequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp=sequential_187/lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp2>
sequential_187/lstm_561/whilesequential_187/lstm_561/while2|
<sequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp<sequential_187/lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp2z
;sequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOp;sequential_187/lstm_562/lstm_cell_166/MatMul/ReadVariableOp2~
=sequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp=sequential_187/lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp2>
sequential_187/lstm_562/whilesequential_187/lstm_562/while2|
<sequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp<sequential_187/lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp2z
;sequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOp;sequential_187/lstm_563/lstm_cell_167/MatMul/ReadVariableOp2~
=sequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp=sequential_187/lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp2>
sequential_187/lstm_563/whilesequential_187/lstm_563/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_561_input
?
?
while_cond_1012373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1012373___redundant_placeholder05
1while_while_cond_1012373___redundant_placeholder15
1while_while_cond_1012373___redundant_placeholder25
1while_while_cond_1012373___redundant_placeholder3
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
while_cond_1013991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1013991___redundant_placeholder05
1while_while_cond_1013991___redundant_placeholder15
1while_while_cond_1013991___redundant_placeholder25
1while_while_cond_1013991___redundant_placeholder3
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
while_body_1014278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011927

inputs?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1011843*
condR
while_cond_1011842*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1012209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_562_layer_call_fn_1014406

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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1012458s
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
while_body_1014465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_187_layer_call_fn_1012743
lstm_561_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_561_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012691o
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
_user_specified_namelstm_561_input
?8
?
while_body_1014135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_166_layer_call_fn_1015728

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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1010995o
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
?
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011078

inputs(
lstm_cell_166_1010996:	d?(
lstm_cell_166_1010998:	2?$
lstm_cell_166_1011000:	?
identity??%lstm_cell_166/StatefulPartitionedCall?while;
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
%lstm_cell_166/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_166_1010996lstm_cell_166_1010998lstm_cell_166_1011000*
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1010995n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_166_1010996lstm_cell_166_1010998lstm_cell_166_1011000*
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
while_body_1011009*
condR
while_cond_1011008*K
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
NoOpNoOp&^lstm_cell_166/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_166/StatefulPartitionedCall%lstm_cell_166/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_561_layer_call_and_return_conditional_losses_1010919

inputs(
lstm_cell_165_1010837:	?(
lstm_cell_165_1010839:	d?$
lstm_cell_165_1010841:	?
identity??%lstm_cell_165/StatefulPartitionedCall?while;
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
%lstm_cell_165/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_165_1010837lstm_cell_165_1010839lstm_cell_165_1010841*
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010791n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_165_1010837lstm_cell_165_1010839lstm_cell_165_1010841*
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
while_body_1010850*
condR
while_cond_1010849*K
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
NoOpNoOp&^lstm_cell_165/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_165/StatefulPartitionedCall%lstm_cell_165/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1014894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014549
inputs_0?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1014465*
condR
while_cond_1014464*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_562_while_cond_1013089.
*lstm_562_while_lstm_562_while_loop_counter4
0lstm_562_while_lstm_562_while_maximum_iterations
lstm_562_while_placeholder 
lstm_562_while_placeholder_1 
lstm_562_while_placeholder_2 
lstm_562_while_placeholder_30
,lstm_562_while_less_lstm_562_strided_slice_1G
Clstm_562_while_lstm_562_while_cond_1013089___redundant_placeholder0G
Clstm_562_while_lstm_562_while_cond_1013089___redundant_placeholder1G
Clstm_562_while_lstm_562_while_cond_1013089___redundant_placeholder2G
Clstm_562_while_lstm_562_while_cond_1013089___redundant_placeholder3
lstm_562_while_identity
?
lstm_562/while/LessLesslstm_562_while_placeholder,lstm_562_while_less_lstm_562_strided_slice_1*
T0*
_output_shapes
: ]
lstm_562/while/IdentityIdentitylstm_562/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_562_while_identity lstm_562/while/Identity:output:0*(
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

lstm_561_while_body_1013378.
*lstm_561_while_lstm_561_while_loop_counter4
0lstm_561_while_lstm_561_while_maximum_iterations
lstm_561_while_placeholder 
lstm_561_while_placeholder_1 
lstm_561_while_placeholder_2 
lstm_561_while_placeholder_3-
)lstm_561_while_lstm_561_strided_slice_1_0i
elstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0:	?R
?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?M
>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
lstm_561_while_identity
lstm_561_while_identity_1
lstm_561_while_identity_2
lstm_561_while_identity_3
lstm_561_while_identity_4
lstm_561_while_identity_5+
'lstm_561_while_lstm_561_strided_slice_1g
clstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensorN
;lstm_561_while_lstm_cell_165_matmul_readvariableop_resource:	?P
=lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource:	d?K
<lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource:	???3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp?2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp?4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp?
@lstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_561/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0lstm_561_while_placeholderIlstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_561/while/lstm_cell_165/MatMulMatMul9lstm_561/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_561/while/lstm_cell_165/MatMul_1MatMullstm_561_while_placeholder_2<lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_561/while/lstm_cell_165/addAddV2-lstm_561/while/lstm_cell_165/MatMul:product:0/lstm_561/while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_561/while/lstm_cell_165/BiasAddBiasAdd$lstm_561/while/lstm_cell_165/add:z:0;lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_561/while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_561/while/lstm_cell_165/splitSplit5lstm_561/while/lstm_cell_165/split/split_dim:output:0-lstm_561/while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_561/while/lstm_cell_165/SigmoidSigmoid+lstm_561/while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_561/while/lstm_cell_165/Sigmoid_1Sigmoid+lstm_561/while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_561/while/lstm_cell_165/mulMul*lstm_561/while/lstm_cell_165/Sigmoid_1:y:0lstm_561_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_561/while/lstm_cell_165/ReluRelu+lstm_561/while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/mul_1Mul(lstm_561/while/lstm_cell_165/Sigmoid:y:0/lstm_561/while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/add_1AddV2$lstm_561/while/lstm_cell_165/mul:z:0&lstm_561/while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_561/while/lstm_cell_165/Sigmoid_2Sigmoid+lstm_561/while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_561/while/lstm_cell_165/Relu_1Relu&lstm_561/while/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/mul_2Mul*lstm_561/while/lstm_cell_165/Sigmoid_2:y:01lstm_561/while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_561/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_561_while_placeholder_1lstm_561_while_placeholder&lstm_561/while/lstm_cell_165/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_561/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_561/while/addAddV2lstm_561_while_placeholderlstm_561/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_561/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_561/while/add_1AddV2*lstm_561_while_lstm_561_while_loop_counterlstm_561/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_561/while/IdentityIdentitylstm_561/while/add_1:z:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_1Identity0lstm_561_while_lstm_561_while_maximum_iterations^lstm_561/while/NoOp*
T0*
_output_shapes
: t
lstm_561/while/Identity_2Identitylstm_561/while/add:z:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_3IdentityClstm_561/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_4Identity&lstm_561/while/lstm_cell_165/mul_2:z:0^lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_561/while/Identity_5Identity&lstm_561/while/lstm_cell_165/add_1:z:0^lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_561/while/NoOpNoOp4^lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp3^lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp5^lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_561_while_identity lstm_561/while/Identity:output:0"?
lstm_561_while_identity_1"lstm_561/while/Identity_1:output:0"?
lstm_561_while_identity_2"lstm_561/while/Identity_2:output:0"?
lstm_561_while_identity_3"lstm_561/while/Identity_3:output:0"?
lstm_561_while_identity_4"lstm_561/while/Identity_4:output:0"?
lstm_561_while_identity_5"lstm_561/while/Identity_5:output:0"T
'lstm_561_while_lstm_561_strided_slice_1)lstm_561_while_lstm_561_strided_slice_1_0"~
<lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0"?
=lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0"|
;lstm_561_while_lstm_cell_165_matmul_readvariableop_resource=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0"?
clstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensorelstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp2h
2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp2l
4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1011199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011199___redundant_placeholder05
1while_while_cond_1011199___redundant_placeholder15
1while_while_cond_1011199___redundant_placeholder25
1while_while_cond_1011199___redundant_placeholder3
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

lstm_562_while_body_1013090.
*lstm_562_while_lstm_562_while_loop_counter4
0lstm_562_while_lstm_562_while_maximum_iterations
lstm_562_while_placeholder 
lstm_562_while_placeholder_1 
lstm_562_while_placeholder_2 
lstm_562_while_placeholder_3-
)lstm_562_while_lstm_562_strided_slice_1_0i
elstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0:	d?R
?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?M
>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
lstm_562_while_identity
lstm_562_while_identity_1
lstm_562_while_identity_2
lstm_562_while_identity_3
lstm_562_while_identity_4
lstm_562_while_identity_5+
'lstm_562_while_lstm_562_strided_slice_1g
clstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensorN
;lstm_562_while_lstm_cell_166_matmul_readvariableop_resource:	d?P
=lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource:	2?K
<lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource:	???3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp?2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp?4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp?
@lstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_562/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0lstm_562_while_placeholderIlstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_562/while/lstm_cell_166/MatMulMatMul9lstm_562/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_562/while/lstm_cell_166/MatMul_1MatMullstm_562_while_placeholder_2<lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_562/while/lstm_cell_166/addAddV2-lstm_562/while/lstm_cell_166/MatMul:product:0/lstm_562/while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_562/while/lstm_cell_166/BiasAddBiasAdd$lstm_562/while/lstm_cell_166/add:z:0;lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_562/while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_562/while/lstm_cell_166/splitSplit5lstm_562/while/lstm_cell_166/split/split_dim:output:0-lstm_562/while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_562/while/lstm_cell_166/SigmoidSigmoid+lstm_562/while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_562/while/lstm_cell_166/Sigmoid_1Sigmoid+lstm_562/while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_562/while/lstm_cell_166/mulMul*lstm_562/while/lstm_cell_166/Sigmoid_1:y:0lstm_562_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_562/while/lstm_cell_166/ReluRelu+lstm_562/while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/mul_1Mul(lstm_562/while/lstm_cell_166/Sigmoid:y:0/lstm_562/while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/add_1AddV2$lstm_562/while/lstm_cell_166/mul:z:0&lstm_562/while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_562/while/lstm_cell_166/Sigmoid_2Sigmoid+lstm_562/while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_562/while/lstm_cell_166/Relu_1Relu&lstm_562/while/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/mul_2Mul*lstm_562/while/lstm_cell_166/Sigmoid_2:y:01lstm_562/while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_562/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_562_while_placeholder_1lstm_562_while_placeholder&lstm_562/while/lstm_cell_166/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_562/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_562/while/addAddV2lstm_562_while_placeholderlstm_562/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_562/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_562/while/add_1AddV2*lstm_562_while_lstm_562_while_loop_counterlstm_562/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_562/while/IdentityIdentitylstm_562/while/add_1:z:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_1Identity0lstm_562_while_lstm_562_while_maximum_iterations^lstm_562/while/NoOp*
T0*
_output_shapes
: t
lstm_562/while/Identity_2Identitylstm_562/while/add:z:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_3IdentityClstm_562/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_4Identity&lstm_562/while/lstm_cell_166/mul_2:z:0^lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_562/while/Identity_5Identity&lstm_562/while/lstm_cell_166/add_1:z:0^lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_562/while/NoOpNoOp4^lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp3^lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp5^lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_562_while_identity lstm_562/while/Identity:output:0"?
lstm_562_while_identity_1"lstm_562/while/Identity_1:output:0"?
lstm_562_while_identity_2"lstm_562/while/Identity_2:output:0"?
lstm_562_while_identity_3"lstm_562/while/Identity_3:output:0"?
lstm_562_while_identity_4"lstm_562/while/Identity_4:output:0"?
lstm_562_while_identity_5"lstm_562/while/Identity_5:output:0"T
'lstm_562_while_lstm_562_strided_slice_1)lstm_562_while_lstm_562_strided_slice_1_0"~
<lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0"?
=lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0"|
;lstm_562_while_lstm_cell_166_matmul_readvariableop_resource=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0"?
clstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensorelstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp2h
2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp2l
4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1014751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_187_layer_call_fn_1015603

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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095o
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
lstm_563_while_cond_1013655.
*lstm_563_while_lstm_563_while_loop_counter4
0lstm_563_while_lstm_563_while_maximum_iterations
lstm_563_while_placeholder 
lstm_563_while_placeholder_1 
lstm_563_while_placeholder_2 
lstm_563_while_placeholder_30
,lstm_563_while_less_lstm_563_strided_slice_1G
Clstm_563_while_lstm_563_while_cond_1013655___redundant_placeholder0G
Clstm_563_while_lstm_563_while_cond_1013655___redundant_placeholder1G
Clstm_563_while_lstm_563_while_cond_1013655___redundant_placeholder2G
Clstm_563_while_lstm_563_while_cond_1013655___redundant_placeholder3
lstm_563_while_identity
?
lstm_563/while/LessLesslstm_563_while_placeholder,lstm_563_while_less_lstm_563_strided_slice_1*
T0*
_output_shapes
: ]
lstm_563/while/IdentityIdentitylstm_563/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_563_while_identity lstm_563/while/Identity:output:0*(
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
*__inference_lstm_562_layer_call_fn_1014384
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011269|
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
while_body_1011359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_167_1011383_0:2(/
while_lstm_cell_167_1011385_0:
(+
while_lstm_cell_167_1011387_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_167_1011383:2(-
while_lstm_cell_167_1011385:
()
while_lstm_cell_167_1011387:(??+while/lstm_cell_167/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_167/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_167_1011383_0while_lstm_cell_167_1011385_0while_lstm_cell_167_1011387_0*
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011345?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_167/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_167/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_167/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_167_1011383while_lstm_cell_167_1011383_0"<
while_lstm_cell_167_1011385while_lstm_cell_167_1011385_0"<
while_lstm_cell_167_1011387while_lstm_cell_167_1011387_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_167/StatefulPartitionedCall+while/lstm_cell_167/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012773
lstm_561_input#
lstm_561_1012746:	?#
lstm_561_1012748:	d?
lstm_561_1012750:	?#
lstm_562_1012753:	d?#
lstm_562_1012755:	2?
lstm_562_1012757:	?"
lstm_563_1012760:2("
lstm_563_1012762:
(
lstm_563_1012764:(#
dense_187_1012767:

dense_187_1012769:
identity??!dense_187/StatefulPartitionedCall? lstm_561/StatefulPartitionedCall? lstm_562/StatefulPartitionedCall? lstm_563/StatefulPartitionedCall?
 lstm_561/StatefulPartitionedCallStatefulPartitionedCalllstm_561_inputlstm_561_1012746lstm_561_1012748lstm_561_1012750*
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1011777?
 lstm_562/StatefulPartitionedCallStatefulPartitionedCall)lstm_561/StatefulPartitionedCall:output:0lstm_562_1012753lstm_562_1012755lstm_562_1012757*
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011927?
 lstm_563/StatefulPartitionedCallStatefulPartitionedCall)lstm_562/StatefulPartitionedCall:output:0lstm_563_1012760lstm_563_1012762lstm_563_1012764*
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012077?
!dense_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_563/StatefulPartitionedCall:output:0dense_187_1012767dense_187_1012769*
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_187/StatefulPartitionedCall!^lstm_561/StatefulPartitionedCall!^lstm_562/StatefulPartitionedCall!^lstm_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2D
 lstm_561/StatefulPartitionedCall lstm_561/StatefulPartitionedCall2D
 lstm_562/StatefulPartitionedCall lstm_562/StatefulPartitionedCall2D
 lstm_563/StatefulPartitionedCall lstm_563/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_561_input
?
?
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010791

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
while_body_1014608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012803
lstm_561_input#
lstm_561_1012776:	?#
lstm_561_1012778:	d?
lstm_561_1012780:	?#
lstm_562_1012783:	d?#
lstm_562_1012785:	2?
lstm_562_1012787:	?"
lstm_563_1012790:2("
lstm_563_1012792:
(
lstm_563_1012794:(#
dense_187_1012797:

dense_187_1012799:
identity??!dense_187/StatefulPartitionedCall? lstm_561/StatefulPartitionedCall? lstm_562/StatefulPartitionedCall? lstm_563/StatefulPartitionedCall?
 lstm_561/StatefulPartitionedCallStatefulPartitionedCalllstm_561_inputlstm_561_1012776lstm_561_1012778lstm_561_1012780*
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1012623?
 lstm_562/StatefulPartitionedCallStatefulPartitionedCall)lstm_561/StatefulPartitionedCall:output:0lstm_562_1012783lstm_562_1012785lstm_562_1012787*
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1012458?
 lstm_563/StatefulPartitionedCallStatefulPartitionedCall)lstm_562/StatefulPartitionedCall:output:0lstm_563_1012790lstm_563_1012792lstm_563_1012794*
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012293?
!dense_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_563/StatefulPartitionedCall:output:0dense_187_1012797dense_187_1012799*
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_187/StatefulPartitionedCall!^lstm_561/StatefulPartitionedCall!^lstm_562/StatefulPartitionedCall!^lstm_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2D
 lstm_561/StatefulPartitionedCall lstm_561/StatefulPartitionedCall2D
 lstm_562/StatefulPartitionedCall lstm_562/StatefulPartitionedCall2D
 lstm_563/StatefulPartitionedCall lstm_563/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_561_input
?J
?
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015594

inputs>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1015510*
condR
while_cond_1015509*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013319

inputsH
5lstm_561_lstm_cell_165_matmul_readvariableop_resource:	?J
7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource:	d?E
6lstm_561_lstm_cell_165_biasadd_readvariableop_resource:	?H
5lstm_562_lstm_cell_166_matmul_readvariableop_resource:	d?J
7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource:	2?E
6lstm_562_lstm_cell_166_biasadd_readvariableop_resource:	?G
5lstm_563_lstm_cell_167_matmul_readvariableop_resource:2(I
7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource:
(D
6lstm_563_lstm_cell_167_biasadd_readvariableop_resource:(:
(dense_187_matmul_readvariableop_resource:
7
)dense_187_biasadd_readvariableop_resource:
identity?? dense_187/BiasAdd/ReadVariableOp?dense_187/MatMul/ReadVariableOp?-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp?,lstm_561/lstm_cell_165/MatMul/ReadVariableOp?.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp?lstm_561/while?-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp?,lstm_562/lstm_cell_166/MatMul/ReadVariableOp?.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp?lstm_562/while?-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp?,lstm_563/lstm_cell_167/MatMul/ReadVariableOp?.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp?lstm_563/whileD
lstm_561/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_561/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_561/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_561/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_sliceStridedSlicelstm_561/Shape:output:0%lstm_561/strided_slice/stack:output:0'lstm_561/strided_slice/stack_1:output:0'lstm_561/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_561/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_561/zeros/packedPacklstm_561/strided_slice:output:0 lstm_561/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_561/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_561/zerosFilllstm_561/zeros/packed:output:0lstm_561/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_561/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_561/zeros_1/packedPacklstm_561/strided_slice:output:0"lstm_561/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_561/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_561/zeros_1Fill lstm_561/zeros_1/packed:output:0lstm_561/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_561/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_561/transpose	Transposeinputs lstm_561/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_561/Shape_1Shapelstm_561/transpose:y:0*
T0*
_output_shapes
:h
lstm_561/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_561/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_1StridedSlicelstm_561/Shape_1:output:0'lstm_561/strided_slice_1/stack:output:0)lstm_561/strided_slice_1/stack_1:output:0)lstm_561/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_561/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_561/TensorArrayV2TensorListReserve-lstm_561/TensorArrayV2/element_shape:output:0!lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_561/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_561/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_561/transpose:y:0Glstm_561/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_561/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_561/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_2StridedSlicelstm_561/transpose:y:0'lstm_561/strided_slice_2/stack:output:0)lstm_561/strided_slice_2/stack_1:output:0)lstm_561/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_561/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp5lstm_561_lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_561/lstm_cell_165/MatMulMatMul!lstm_561/strided_slice_2:output:04lstm_561/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_561/lstm_cell_165/MatMul_1MatMullstm_561/zeros:output:06lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_561/lstm_cell_165/addAddV2'lstm_561/lstm_cell_165/MatMul:product:0)lstm_561/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp6lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_561/lstm_cell_165/BiasAddBiasAddlstm_561/lstm_cell_165/add:z:05lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_561/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_561/lstm_cell_165/splitSplit/lstm_561/lstm_cell_165/split/split_dim:output:0'lstm_561/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_561/lstm_cell_165/SigmoidSigmoid%lstm_561/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_561/lstm_cell_165/Sigmoid_1Sigmoid%lstm_561/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mulMul$lstm_561/lstm_cell_165/Sigmoid_1:y:0lstm_561/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_561/lstm_cell_165/ReluRelu%lstm_561/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mul_1Mul"lstm_561/lstm_cell_165/Sigmoid:y:0)lstm_561/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/add_1AddV2lstm_561/lstm_cell_165/mul:z:0 lstm_561/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_561/lstm_cell_165/Sigmoid_2Sigmoid%lstm_561/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_561/lstm_cell_165/Relu_1Relu lstm_561/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mul_2Mul$lstm_561/lstm_cell_165/Sigmoid_2:y:0+lstm_561/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_561/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_561/TensorArrayV2_1TensorListReserve/lstm_561/TensorArrayV2_1/element_shape:output:0!lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_561/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_561/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_561/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_561/whileWhile$lstm_561/while/loop_counter:output:0*lstm_561/while/maximum_iterations:output:0lstm_561/time:output:0!lstm_561/TensorArrayV2_1:handle:0lstm_561/zeros:output:0lstm_561/zeros_1:output:0!lstm_561/strided_slice_1:output:0@lstm_561/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_561_lstm_cell_165_matmul_readvariableop_resource7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource6lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
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
lstm_561_while_body_1012951*'
condR
lstm_561_while_cond_1012950*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_561/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_561/TensorArrayV2Stack/TensorListStackTensorListStacklstm_561/while:output:3Blstm_561/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_561/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_561/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_3StridedSlice4lstm_561/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_561/strided_slice_3/stack:output:0)lstm_561/strided_slice_3/stack_1:output:0)lstm_561/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_561/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_561/transpose_1	Transpose4lstm_561/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_561/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_561/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_562/ShapeShapelstm_561/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_562/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_562/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_562/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_sliceStridedSlicelstm_562/Shape:output:0%lstm_562/strided_slice/stack:output:0'lstm_562/strided_slice/stack_1:output:0'lstm_562/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_562/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_562/zeros/packedPacklstm_562/strided_slice:output:0 lstm_562/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_562/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_562/zerosFilllstm_562/zeros/packed:output:0lstm_562/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_562/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_562/zeros_1/packedPacklstm_562/strided_slice:output:0"lstm_562/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_562/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_562/zeros_1Fill lstm_562/zeros_1/packed:output:0lstm_562/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_562/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_562/transpose	Transposelstm_561/transpose_1:y:0 lstm_562/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_562/Shape_1Shapelstm_562/transpose:y:0*
T0*
_output_shapes
:h
lstm_562/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_562/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_1StridedSlicelstm_562/Shape_1:output:0'lstm_562/strided_slice_1/stack:output:0)lstm_562/strided_slice_1/stack_1:output:0)lstm_562/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_562/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_562/TensorArrayV2TensorListReserve-lstm_562/TensorArrayV2/element_shape:output:0!lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_562/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_562/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_562/transpose:y:0Glstm_562/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_562/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_562/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_2StridedSlicelstm_562/transpose:y:0'lstm_562/strided_slice_2/stack:output:0)lstm_562/strided_slice_2/stack_1:output:0)lstm_562/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_562/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp5lstm_562_lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_562/lstm_cell_166/MatMulMatMul!lstm_562/strided_slice_2:output:04lstm_562/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_562/lstm_cell_166/MatMul_1MatMullstm_562/zeros:output:06lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_562/lstm_cell_166/addAddV2'lstm_562/lstm_cell_166/MatMul:product:0)lstm_562/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp6lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_562/lstm_cell_166/BiasAddBiasAddlstm_562/lstm_cell_166/add:z:05lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_562/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_562/lstm_cell_166/splitSplit/lstm_562/lstm_cell_166/split/split_dim:output:0'lstm_562/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_562/lstm_cell_166/SigmoidSigmoid%lstm_562/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_562/lstm_cell_166/Sigmoid_1Sigmoid%lstm_562/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mulMul$lstm_562/lstm_cell_166/Sigmoid_1:y:0lstm_562/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_562/lstm_cell_166/ReluRelu%lstm_562/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mul_1Mul"lstm_562/lstm_cell_166/Sigmoid:y:0)lstm_562/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/add_1AddV2lstm_562/lstm_cell_166/mul:z:0 lstm_562/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_562/lstm_cell_166/Sigmoid_2Sigmoid%lstm_562/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_562/lstm_cell_166/Relu_1Relu lstm_562/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mul_2Mul$lstm_562/lstm_cell_166/Sigmoid_2:y:0+lstm_562/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_562/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_562/TensorArrayV2_1TensorListReserve/lstm_562/TensorArrayV2_1/element_shape:output:0!lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_562/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_562/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_562/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_562/whileWhile$lstm_562/while/loop_counter:output:0*lstm_562/while/maximum_iterations:output:0lstm_562/time:output:0!lstm_562/TensorArrayV2_1:handle:0lstm_562/zeros:output:0lstm_562/zeros_1:output:0!lstm_562/strided_slice_1:output:0@lstm_562/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_562_lstm_cell_166_matmul_readvariableop_resource7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource6lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
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
lstm_562_while_body_1013090*'
condR
lstm_562_while_cond_1013089*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_562/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_562/TensorArrayV2Stack/TensorListStackTensorListStacklstm_562/while:output:3Blstm_562/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_562/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_562/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_3StridedSlice4lstm_562/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_562/strided_slice_3/stack:output:0)lstm_562/strided_slice_3/stack_1:output:0)lstm_562/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_562/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_562/transpose_1	Transpose4lstm_562/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_562/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_562/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_563/ShapeShapelstm_562/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_563/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_563/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_563/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_sliceStridedSlicelstm_563/Shape:output:0%lstm_563/strided_slice/stack:output:0'lstm_563/strided_slice/stack_1:output:0'lstm_563/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_563/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_563/zeros/packedPacklstm_563/strided_slice:output:0 lstm_563/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_563/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_563/zerosFilllstm_563/zeros/packed:output:0lstm_563/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_563/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_563/zeros_1/packedPacklstm_563/strided_slice:output:0"lstm_563/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_563/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_563/zeros_1Fill lstm_563/zeros_1/packed:output:0lstm_563/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_563/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_563/transpose	Transposelstm_562/transpose_1:y:0 lstm_563/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_563/Shape_1Shapelstm_563/transpose:y:0*
T0*
_output_shapes
:h
lstm_563/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_563/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_1StridedSlicelstm_563/Shape_1:output:0'lstm_563/strided_slice_1/stack:output:0)lstm_563/strided_slice_1/stack_1:output:0)lstm_563/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_563/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_563/TensorArrayV2TensorListReserve-lstm_563/TensorArrayV2/element_shape:output:0!lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_563/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_563/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_563/transpose:y:0Glstm_563/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_563/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_563/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_2StridedSlicelstm_563/transpose:y:0'lstm_563/strided_slice_2/stack:output:0)lstm_563/strided_slice_2/stack_1:output:0)lstm_563/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_563/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp5lstm_563_lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_563/lstm_cell_167/MatMulMatMul!lstm_563/strided_slice_2:output:04lstm_563/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_563/lstm_cell_167/MatMul_1MatMullstm_563/zeros:output:06lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_563/lstm_cell_167/addAddV2'lstm_563/lstm_cell_167/MatMul:product:0)lstm_563/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp6lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_563/lstm_cell_167/BiasAddBiasAddlstm_563/lstm_cell_167/add:z:05lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_563/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_563/lstm_cell_167/splitSplit/lstm_563/lstm_cell_167/split/split_dim:output:0'lstm_563/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_563/lstm_cell_167/SigmoidSigmoid%lstm_563/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_563/lstm_cell_167/Sigmoid_1Sigmoid%lstm_563/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mulMul$lstm_563/lstm_cell_167/Sigmoid_1:y:0lstm_563/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_563/lstm_cell_167/ReluRelu%lstm_563/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mul_1Mul"lstm_563/lstm_cell_167/Sigmoid:y:0)lstm_563/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/add_1AddV2lstm_563/lstm_cell_167/mul:z:0 lstm_563/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_563/lstm_cell_167/Sigmoid_2Sigmoid%lstm_563/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_563/lstm_cell_167/Relu_1Relu lstm_563/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mul_2Mul$lstm_563/lstm_cell_167/Sigmoid_2:y:0+lstm_563/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_563/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_563/TensorArrayV2_1TensorListReserve/lstm_563/TensorArrayV2_1/element_shape:output:0!lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_563/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_563/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_563/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_563/whileWhile$lstm_563/while/loop_counter:output:0*lstm_563/while/maximum_iterations:output:0lstm_563/time:output:0!lstm_563/TensorArrayV2_1:handle:0lstm_563/zeros:output:0lstm_563/zeros_1:output:0!lstm_563/strided_slice_1:output:0@lstm_563/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_563_lstm_cell_167_matmul_readvariableop_resource7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource6lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
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
lstm_563_while_body_1013229*'
condR
lstm_563_while_cond_1013228*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_563/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_563/TensorArrayV2Stack/TensorListStackTensorListStacklstm_563/while:output:3Blstm_563/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_563/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_563/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_3StridedSlice4lstm_563/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_563/strided_slice_3/stack:output:0)lstm_563/strided_slice_3/stack_1:output:0)lstm_563/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_563/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_563/transpose_1	Transpose4lstm_563/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_563/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_563/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_187/MatMul/ReadVariableOpReadVariableOp(dense_187_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_187/MatMulMatMul!lstm_563/strided_slice_3:output:0'dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_187/BiasAdd/ReadVariableOpReadVariableOp)dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_187/BiasAddBiasAdddense_187/MatMul:product:0(dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_187/BiasAdd/ReadVariableOp ^dense_187/MatMul/ReadVariableOp.^lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp-^lstm_561/lstm_cell_165/MatMul/ReadVariableOp/^lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp^lstm_561/while.^lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp-^lstm_562/lstm_cell_166/MatMul/ReadVariableOp/^lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp^lstm_562/while.^lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp-^lstm_563/lstm_cell_167/MatMul/ReadVariableOp/^lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp^lstm_563/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_187/BiasAdd/ReadVariableOp dense_187/BiasAdd/ReadVariableOp2B
dense_187/MatMul/ReadVariableOpdense_187/MatMul/ReadVariableOp2^
-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp2\
,lstm_561/lstm_cell_165/MatMul/ReadVariableOp,lstm_561/lstm_cell_165/MatMul/ReadVariableOp2`
.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp2 
lstm_561/whilelstm_561/while2^
-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp2\
,lstm_562/lstm_cell_166/MatMul/ReadVariableOp,lstm_562/lstm_cell_166/MatMul/ReadVariableOp2`
.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp2 
lstm_562/whilelstm_562/while2^
-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp2\
,lstm_563/lstm_cell_167/MatMul/ReadVariableOp,lstm_563/lstm_cell_167/MatMul/ReadVariableOp2`
.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp2 
lstm_563/whilelstm_563/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_563_layer_call_and_return_conditional_losses_1011619

inputs'
lstm_cell_167_1011537:2('
lstm_cell_167_1011539:
(#
lstm_cell_167_1011541:(
identity??%lstm_cell_167/StatefulPartitionedCall?while;
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
%lstm_cell_167/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_167_1011537lstm_cell_167_1011539lstm_cell_167_1011541*
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011491n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_167_1011537lstm_cell_167_1011539lstm_cell_167_1011541*
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
while_body_1011550*
condR
while_cond_1011549*K
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
NoOpNoOp&^lstm_cell_167/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_167/StatefulPartitionedCall%lstm_cell_167/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013746

inputsH
5lstm_561_lstm_cell_165_matmul_readvariableop_resource:	?J
7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource:	d?E
6lstm_561_lstm_cell_165_biasadd_readvariableop_resource:	?H
5lstm_562_lstm_cell_166_matmul_readvariableop_resource:	d?J
7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource:	2?E
6lstm_562_lstm_cell_166_biasadd_readvariableop_resource:	?G
5lstm_563_lstm_cell_167_matmul_readvariableop_resource:2(I
7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource:
(D
6lstm_563_lstm_cell_167_biasadd_readvariableop_resource:(:
(dense_187_matmul_readvariableop_resource:
7
)dense_187_biasadd_readvariableop_resource:
identity?? dense_187/BiasAdd/ReadVariableOp?dense_187/MatMul/ReadVariableOp?-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp?,lstm_561/lstm_cell_165/MatMul/ReadVariableOp?.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp?lstm_561/while?-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp?,lstm_562/lstm_cell_166/MatMul/ReadVariableOp?.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp?lstm_562/while?-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp?,lstm_563/lstm_cell_167/MatMul/ReadVariableOp?.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp?lstm_563/whileD
lstm_561/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_561/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_561/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_561/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_sliceStridedSlicelstm_561/Shape:output:0%lstm_561/strided_slice/stack:output:0'lstm_561/strided_slice/stack_1:output:0'lstm_561/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_561/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_561/zeros/packedPacklstm_561/strided_slice:output:0 lstm_561/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_561/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_561/zerosFilllstm_561/zeros/packed:output:0lstm_561/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_561/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_561/zeros_1/packedPacklstm_561/strided_slice:output:0"lstm_561/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_561/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_561/zeros_1Fill lstm_561/zeros_1/packed:output:0lstm_561/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_561/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_561/transpose	Transposeinputs lstm_561/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_561/Shape_1Shapelstm_561/transpose:y:0*
T0*
_output_shapes
:h
lstm_561/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_561/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_1StridedSlicelstm_561/Shape_1:output:0'lstm_561/strided_slice_1/stack:output:0)lstm_561/strided_slice_1/stack_1:output:0)lstm_561/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_561/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_561/TensorArrayV2TensorListReserve-lstm_561/TensorArrayV2/element_shape:output:0!lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_561/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_561/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_561/transpose:y:0Glstm_561/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_561/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_561/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_2StridedSlicelstm_561/transpose:y:0'lstm_561/strided_slice_2/stack:output:0)lstm_561/strided_slice_2/stack_1:output:0)lstm_561/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_561/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp5lstm_561_lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_561/lstm_cell_165/MatMulMatMul!lstm_561/strided_slice_2:output:04lstm_561/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_561/lstm_cell_165/MatMul_1MatMullstm_561/zeros:output:06lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_561/lstm_cell_165/addAddV2'lstm_561/lstm_cell_165/MatMul:product:0)lstm_561/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp6lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_561/lstm_cell_165/BiasAddBiasAddlstm_561/lstm_cell_165/add:z:05lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_561/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_561/lstm_cell_165/splitSplit/lstm_561/lstm_cell_165/split/split_dim:output:0'lstm_561/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_561/lstm_cell_165/SigmoidSigmoid%lstm_561/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_561/lstm_cell_165/Sigmoid_1Sigmoid%lstm_561/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mulMul$lstm_561/lstm_cell_165/Sigmoid_1:y:0lstm_561/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_561/lstm_cell_165/ReluRelu%lstm_561/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mul_1Mul"lstm_561/lstm_cell_165/Sigmoid:y:0)lstm_561/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/add_1AddV2lstm_561/lstm_cell_165/mul:z:0 lstm_561/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_561/lstm_cell_165/Sigmoid_2Sigmoid%lstm_561/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_561/lstm_cell_165/Relu_1Relu lstm_561/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_561/lstm_cell_165/mul_2Mul$lstm_561/lstm_cell_165/Sigmoid_2:y:0+lstm_561/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_561/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_561/TensorArrayV2_1TensorListReserve/lstm_561/TensorArrayV2_1/element_shape:output:0!lstm_561/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_561/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_561/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_561/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_561/whileWhile$lstm_561/while/loop_counter:output:0*lstm_561/while/maximum_iterations:output:0lstm_561/time:output:0!lstm_561/TensorArrayV2_1:handle:0lstm_561/zeros:output:0lstm_561/zeros_1:output:0!lstm_561/strided_slice_1:output:0@lstm_561/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_561_lstm_cell_165_matmul_readvariableop_resource7lstm_561_lstm_cell_165_matmul_1_readvariableop_resource6lstm_561_lstm_cell_165_biasadd_readvariableop_resource*
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
lstm_561_while_body_1013378*'
condR
lstm_561_while_cond_1013377*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_561/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_561/TensorArrayV2Stack/TensorListStackTensorListStacklstm_561/while:output:3Blstm_561/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_561/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_561/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_561/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_561/strided_slice_3StridedSlice4lstm_561/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_561/strided_slice_3/stack:output:0)lstm_561/strided_slice_3/stack_1:output:0)lstm_561/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_561/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_561/transpose_1	Transpose4lstm_561/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_561/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_561/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_562/ShapeShapelstm_561/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_562/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_562/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_562/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_sliceStridedSlicelstm_562/Shape:output:0%lstm_562/strided_slice/stack:output:0'lstm_562/strided_slice/stack_1:output:0'lstm_562/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_562/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_562/zeros/packedPacklstm_562/strided_slice:output:0 lstm_562/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_562/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_562/zerosFilllstm_562/zeros/packed:output:0lstm_562/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_562/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_562/zeros_1/packedPacklstm_562/strided_slice:output:0"lstm_562/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_562/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_562/zeros_1Fill lstm_562/zeros_1/packed:output:0lstm_562/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_562/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_562/transpose	Transposelstm_561/transpose_1:y:0 lstm_562/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_562/Shape_1Shapelstm_562/transpose:y:0*
T0*
_output_shapes
:h
lstm_562/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_562/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_1StridedSlicelstm_562/Shape_1:output:0'lstm_562/strided_slice_1/stack:output:0)lstm_562/strided_slice_1/stack_1:output:0)lstm_562/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_562/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_562/TensorArrayV2TensorListReserve-lstm_562/TensorArrayV2/element_shape:output:0!lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_562/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_562/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_562/transpose:y:0Glstm_562/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_562/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_562/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_2StridedSlicelstm_562/transpose:y:0'lstm_562/strided_slice_2/stack:output:0)lstm_562/strided_slice_2/stack_1:output:0)lstm_562/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_562/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp5lstm_562_lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_562/lstm_cell_166/MatMulMatMul!lstm_562/strided_slice_2:output:04lstm_562/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_562/lstm_cell_166/MatMul_1MatMullstm_562/zeros:output:06lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_562/lstm_cell_166/addAddV2'lstm_562/lstm_cell_166/MatMul:product:0)lstm_562/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp6lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_562/lstm_cell_166/BiasAddBiasAddlstm_562/lstm_cell_166/add:z:05lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_562/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_562/lstm_cell_166/splitSplit/lstm_562/lstm_cell_166/split/split_dim:output:0'lstm_562/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_562/lstm_cell_166/SigmoidSigmoid%lstm_562/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_562/lstm_cell_166/Sigmoid_1Sigmoid%lstm_562/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mulMul$lstm_562/lstm_cell_166/Sigmoid_1:y:0lstm_562/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_562/lstm_cell_166/ReluRelu%lstm_562/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mul_1Mul"lstm_562/lstm_cell_166/Sigmoid:y:0)lstm_562/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/add_1AddV2lstm_562/lstm_cell_166/mul:z:0 lstm_562/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_562/lstm_cell_166/Sigmoid_2Sigmoid%lstm_562/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_562/lstm_cell_166/Relu_1Relu lstm_562/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_562/lstm_cell_166/mul_2Mul$lstm_562/lstm_cell_166/Sigmoid_2:y:0+lstm_562/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_562/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_562/TensorArrayV2_1TensorListReserve/lstm_562/TensorArrayV2_1/element_shape:output:0!lstm_562/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_562/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_562/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_562/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_562/whileWhile$lstm_562/while/loop_counter:output:0*lstm_562/while/maximum_iterations:output:0lstm_562/time:output:0!lstm_562/TensorArrayV2_1:handle:0lstm_562/zeros:output:0lstm_562/zeros_1:output:0!lstm_562/strided_slice_1:output:0@lstm_562/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_562_lstm_cell_166_matmul_readvariableop_resource7lstm_562_lstm_cell_166_matmul_1_readvariableop_resource6lstm_562_lstm_cell_166_biasadd_readvariableop_resource*
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
lstm_562_while_body_1013517*'
condR
lstm_562_while_cond_1013516*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_562/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_562/TensorArrayV2Stack/TensorListStackTensorListStacklstm_562/while:output:3Blstm_562/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_562/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_562/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_562/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_562/strided_slice_3StridedSlice4lstm_562/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_562/strided_slice_3/stack:output:0)lstm_562/strided_slice_3/stack_1:output:0)lstm_562/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_562/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_562/transpose_1	Transpose4lstm_562/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_562/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_562/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_563/ShapeShapelstm_562/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_563/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_563/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_563/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_sliceStridedSlicelstm_563/Shape:output:0%lstm_563/strided_slice/stack:output:0'lstm_563/strided_slice/stack_1:output:0'lstm_563/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_563/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_563/zeros/packedPacklstm_563/strided_slice:output:0 lstm_563/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_563/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_563/zerosFilllstm_563/zeros/packed:output:0lstm_563/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_563/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_563/zeros_1/packedPacklstm_563/strided_slice:output:0"lstm_563/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_563/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_563/zeros_1Fill lstm_563/zeros_1/packed:output:0lstm_563/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_563/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_563/transpose	Transposelstm_562/transpose_1:y:0 lstm_563/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_563/Shape_1Shapelstm_563/transpose:y:0*
T0*
_output_shapes
:h
lstm_563/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_563/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_1StridedSlicelstm_563/Shape_1:output:0'lstm_563/strided_slice_1/stack:output:0)lstm_563/strided_slice_1/stack_1:output:0)lstm_563/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_563/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_563/TensorArrayV2TensorListReserve-lstm_563/TensorArrayV2/element_shape:output:0!lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_563/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_563/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_563/transpose:y:0Glstm_563/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_563/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_563/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_2StridedSlicelstm_563/transpose:y:0'lstm_563/strided_slice_2/stack:output:0)lstm_563/strided_slice_2/stack_1:output:0)lstm_563/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_563/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp5lstm_563_lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_563/lstm_cell_167/MatMulMatMul!lstm_563/strided_slice_2:output:04lstm_563/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_563/lstm_cell_167/MatMul_1MatMullstm_563/zeros:output:06lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_563/lstm_cell_167/addAddV2'lstm_563/lstm_cell_167/MatMul:product:0)lstm_563/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp6lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_563/lstm_cell_167/BiasAddBiasAddlstm_563/lstm_cell_167/add:z:05lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_563/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_563/lstm_cell_167/splitSplit/lstm_563/lstm_cell_167/split/split_dim:output:0'lstm_563/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_563/lstm_cell_167/SigmoidSigmoid%lstm_563/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_563/lstm_cell_167/Sigmoid_1Sigmoid%lstm_563/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mulMul$lstm_563/lstm_cell_167/Sigmoid_1:y:0lstm_563/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_563/lstm_cell_167/ReluRelu%lstm_563/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mul_1Mul"lstm_563/lstm_cell_167/Sigmoid:y:0)lstm_563/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/add_1AddV2lstm_563/lstm_cell_167/mul:z:0 lstm_563/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_563/lstm_cell_167/Sigmoid_2Sigmoid%lstm_563/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_563/lstm_cell_167/Relu_1Relu lstm_563/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_563/lstm_cell_167/mul_2Mul$lstm_563/lstm_cell_167/Sigmoid_2:y:0+lstm_563/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_563/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_563/TensorArrayV2_1TensorListReserve/lstm_563/TensorArrayV2_1/element_shape:output:0!lstm_563/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_563/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_563/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_563/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_563/whileWhile$lstm_563/while/loop_counter:output:0*lstm_563/while/maximum_iterations:output:0lstm_563/time:output:0!lstm_563/TensorArrayV2_1:handle:0lstm_563/zeros:output:0lstm_563/zeros_1:output:0!lstm_563/strided_slice_1:output:0@lstm_563/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_563_lstm_cell_167_matmul_readvariableop_resource7lstm_563_lstm_cell_167_matmul_1_readvariableop_resource6lstm_563_lstm_cell_167_biasadd_readvariableop_resource*
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
lstm_563_while_body_1013656*'
condR
lstm_563_while_cond_1013655*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_563/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_563/TensorArrayV2Stack/TensorListStackTensorListStacklstm_563/while:output:3Blstm_563/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_563/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_563/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_563/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_563/strided_slice_3StridedSlice4lstm_563/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_563/strided_slice_3/stack:output:0)lstm_563/strided_slice_3/stack_1:output:0)lstm_563/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_563/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_563/transpose_1	Transpose4lstm_563/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_563/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_563/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_187/MatMul/ReadVariableOpReadVariableOp(dense_187_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_187/MatMulMatMul!lstm_563/strided_slice_3:output:0'dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_187/BiasAdd/ReadVariableOpReadVariableOp)dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_187/BiasAddBiasAdddense_187/MatMul:product:0(dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_187/BiasAdd/ReadVariableOp ^dense_187/MatMul/ReadVariableOp.^lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp-^lstm_561/lstm_cell_165/MatMul/ReadVariableOp/^lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp^lstm_561/while.^lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp-^lstm_562/lstm_cell_166/MatMul/ReadVariableOp/^lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp^lstm_562/while.^lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp-^lstm_563/lstm_cell_167/MatMul/ReadVariableOp/^lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp^lstm_563/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_187/BiasAdd/ReadVariableOp dense_187/BiasAdd/ReadVariableOp2B
dense_187/MatMul/ReadVariableOpdense_187/MatMul/ReadVariableOp2^
-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp-lstm_561/lstm_cell_165/BiasAdd/ReadVariableOp2\
,lstm_561/lstm_cell_165/MatMul/ReadVariableOp,lstm_561/lstm_cell_165/MatMul/ReadVariableOp2`
.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp.lstm_561/lstm_cell_165/MatMul_1/ReadVariableOp2 
lstm_561/whilelstm_561/while2^
-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp-lstm_562/lstm_cell_166/BiasAdd/ReadVariableOp2\
,lstm_562/lstm_cell_166/MatMul/ReadVariableOp,lstm_562/lstm_cell_166/MatMul/ReadVariableOp2`
.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp.lstm_562/lstm_cell_166/MatMul_1/ReadVariableOp2 
lstm_562/whilelstm_562/while2^
-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp-lstm_563/lstm_cell_167/BiasAdd/ReadVariableOp2\
,lstm_563/lstm_cell_167/MatMul/ReadVariableOp,lstm_563/lstm_cell_167/MatMul/ReadVariableOp2`
.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp.lstm_563/lstm_cell_167/MatMul_1/ReadVariableOp2 
lstm_563/whilelstm_563/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015875

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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1011141

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

?
lstm_562_while_cond_1013516.
*lstm_562_while_lstm_562_while_loop_counter4
0lstm_562_while_lstm_562_while_maximum_iterations
lstm_562_while_placeholder 
lstm_562_while_placeholder_1 
lstm_562_while_placeholder_2 
lstm_562_while_placeholder_30
,lstm_562_while_less_lstm_562_strided_slice_1G
Clstm_562_while_lstm_562_while_cond_1013516___redundant_placeholder0G
Clstm_562_while_lstm_562_while_cond_1013516___redundant_placeholder1G
Clstm_562_while_lstm_562_while_cond_1013516___redundant_placeholder2G
Clstm_562_while_lstm_562_while_cond_1013516___redundant_placeholder3
lstm_562_while_identity
?
lstm_562/while/LessLesslstm_562_while_placeholder,lstm_562_while_less_lstm_562_strided_slice_1*
T0*
_output_shapes
: ]
lstm_562/while/IdentityIdentitylstm_562/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_562_while_identity lstm_562/while/Identity:output:0*(
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014362

inputs?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1014278*
condR
while_cond_1014277*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1014893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014893___redundant_placeholder05
1while_while_cond_1014893___redundant_placeholder15
1while_while_cond_1014893___redundant_placeholder25
1while_while_cond_1014893___redundant_placeholder3
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015308
inputs_0>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1015224*
condR
while_cond_1015223*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_1011550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_167_1011574_0:2(/
while_lstm_cell_167_1011576_0:
(+
while_lstm_cell_167_1011578_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_167_1011574:2(-
while_lstm_cell_167_1011576:
()
while_lstm_cell_167_1011578:(??+while/lstm_cell_167/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_167/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_167_1011574_0while_lstm_cell_167_1011576_0while_lstm_cell_167_1011578_0*
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011491?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_167/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_167/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_167/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_167_1011574while_lstm_cell_167_1011574_0"<
while_lstm_cell_167_1011576while_lstm_cell_167_1011576_0"<
while_lstm_cell_167_1011578while_lstm_cell_167_1011578_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_167/StatefulPartitionedCall+while/lstm_cell_167/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_561_while_cond_1012950.
*lstm_561_while_lstm_561_while_loop_counter4
0lstm_561_while_lstm_561_while_maximum_iterations
lstm_561_while_placeholder 
lstm_561_while_placeholder_1 
lstm_561_while_placeholder_2 
lstm_561_while_placeholder_30
,lstm_561_while_less_lstm_561_strided_slice_1G
Clstm_561_while_lstm_561_while_cond_1012950___redundant_placeholder0G
Clstm_561_while_lstm_561_while_cond_1012950___redundant_placeholder1G
Clstm_561_while_lstm_561_while_cond_1012950___redundant_placeholder2G
Clstm_561_while_lstm_561_while_cond_1012950___redundant_placeholder3
lstm_561_while_identity
?
lstm_561/while/LessLesslstm_561_while_placeholder,lstm_561_while_less_lstm_561_strided_slice_1*
T0*
_output_shapes
: ]
lstm_561/while/IdentityIdentitylstm_561/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_561_while_identity lstm_561/while/Identity:output:0*(
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
while_cond_1010849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1010849___redundant_placeholder05
1while_while_cond_1010849___redundant_placeholder15
1while_while_cond_1010849___redundant_placeholder25
1while_while_cond_1010849___redundant_placeholder3
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
?C
?

lstm_563_while_body_1013656.
*lstm_563_while_lstm_563_while_loop_counter4
0lstm_563_while_lstm_563_while_maximum_iterations
lstm_563_while_placeholder 
lstm_563_while_placeholder_1 
lstm_563_while_placeholder_2 
lstm_563_while_placeholder_3-
)lstm_563_while_lstm_563_strided_slice_1_0i
elstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0:2(Q
?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(L
>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0:(
lstm_563_while_identity
lstm_563_while_identity_1
lstm_563_while_identity_2
lstm_563_while_identity_3
lstm_563_while_identity_4
lstm_563_while_identity_5+
'lstm_563_while_lstm_563_strided_slice_1g
clstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensorM
;lstm_563_while_lstm_cell_167_matmul_readvariableop_resource:2(O
=lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource:
(J
<lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource:(??3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp?2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp?4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp?
@lstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_563/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0lstm_563_while_placeholderIlstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_563/while/lstm_cell_167/MatMulMatMul9lstm_563/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_563/while/lstm_cell_167/MatMul_1MatMullstm_563_while_placeholder_2<lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_563/while/lstm_cell_167/addAddV2-lstm_563/while/lstm_cell_167/MatMul:product:0/lstm_563/while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_563/while/lstm_cell_167/BiasAddBiasAdd$lstm_563/while/lstm_cell_167/add:z:0;lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_563/while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_563/while/lstm_cell_167/splitSplit5lstm_563/while/lstm_cell_167/split/split_dim:output:0-lstm_563/while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_563/while/lstm_cell_167/SigmoidSigmoid+lstm_563/while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_563/while/lstm_cell_167/Sigmoid_1Sigmoid+lstm_563/while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_563/while/lstm_cell_167/mulMul*lstm_563/while/lstm_cell_167/Sigmoid_1:y:0lstm_563_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_563/while/lstm_cell_167/ReluRelu+lstm_563/while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/mul_1Mul(lstm_563/while/lstm_cell_167/Sigmoid:y:0/lstm_563/while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/add_1AddV2$lstm_563/while/lstm_cell_167/mul:z:0&lstm_563/while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_563/while/lstm_cell_167/Sigmoid_2Sigmoid+lstm_563/while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_563/while/lstm_cell_167/Relu_1Relu&lstm_563/while/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/mul_2Mul*lstm_563/while/lstm_cell_167/Sigmoid_2:y:01lstm_563/while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_563/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_563_while_placeholder_1lstm_563_while_placeholder&lstm_563/while/lstm_cell_167/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_563/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_563/while/addAddV2lstm_563_while_placeholderlstm_563/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_563/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_563/while/add_1AddV2*lstm_563_while_lstm_563_while_loop_counterlstm_563/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_563/while/IdentityIdentitylstm_563/while/add_1:z:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_1Identity0lstm_563_while_lstm_563_while_maximum_iterations^lstm_563/while/NoOp*
T0*
_output_shapes
: t
lstm_563/while/Identity_2Identitylstm_563/while/add:z:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_3IdentityClstm_563/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_4Identity&lstm_563/while/lstm_cell_167/mul_2:z:0^lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_563/while/Identity_5Identity&lstm_563/while/lstm_cell_167/add_1:z:0^lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_563/while/NoOpNoOp4^lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp3^lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp5^lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_563_while_identity lstm_563/while/Identity:output:0"?
lstm_563_while_identity_1"lstm_563/while/Identity_1:output:0"?
lstm_563_while_identity_2"lstm_563/while/Identity_2:output:0"?
lstm_563_while_identity_3"lstm_563/while/Identity_3:output:0"?
lstm_563_while_identity_4"lstm_563/while/Identity_4:output:0"?
lstm_563_while_identity_5"lstm_563/while/Identity_5:output:0"T
'lstm_563_while_lstm_563_strided_slice_1)lstm_563_while_lstm_563_strided_slice_1_0"~
<lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0"?
=lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0"|
;lstm_563_while_lstm_cell_167_matmul_readvariableop_resource=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0"?
clstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensorelstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp2h
2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp2l
4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_187_lstm_562_while_cond_1010348L
Hsequential_187_lstm_562_while_sequential_187_lstm_562_while_loop_counterR
Nsequential_187_lstm_562_while_sequential_187_lstm_562_while_maximum_iterations-
)sequential_187_lstm_562_while_placeholder/
+sequential_187_lstm_562_while_placeholder_1/
+sequential_187_lstm_562_while_placeholder_2/
+sequential_187_lstm_562_while_placeholder_3N
Jsequential_187_lstm_562_while_less_sequential_187_lstm_562_strided_slice_1e
asequential_187_lstm_562_while_sequential_187_lstm_562_while_cond_1010348___redundant_placeholder0e
asequential_187_lstm_562_while_sequential_187_lstm_562_while_cond_1010348___redundant_placeholder1e
asequential_187_lstm_562_while_sequential_187_lstm_562_while_cond_1010348___redundant_placeholder2e
asequential_187_lstm_562_while_sequential_187_lstm_562_while_cond_1010348___redundant_placeholder3*
&sequential_187_lstm_562_while_identity
?
"sequential_187/lstm_562/while/LessLess)sequential_187_lstm_562_while_placeholderJsequential_187_lstm_562_while_less_sequential_187_lstm_562_strided_slice_1*
T0*
_output_shapes
: {
&sequential_187/lstm_562/while/IdentityIdentity&sequential_187/lstm_562/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_187_lstm_562_while_identity/sequential_187/lstm_562/while/Identity:output:0*(
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
??
?
#__inference__traced_restore_1016180
file_prefix3
!assignvariableop_dense_187_kernel:
/
!assignvariableop_1_dense_187_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_561_lstm_cell_561_kernel:	?M
:assignvariableop_8_lstm_561_lstm_cell_561_recurrent_kernel:	d?=
.assignvariableop_9_lstm_561_lstm_cell_561_bias:	?D
1assignvariableop_10_lstm_562_lstm_cell_562_kernel:	d?N
;assignvariableop_11_lstm_562_lstm_cell_562_recurrent_kernel:	2?>
/assignvariableop_12_lstm_562_lstm_cell_562_bias:	?C
1assignvariableop_13_lstm_563_lstm_cell_563_kernel:2(M
;assignvariableop_14_lstm_563_lstm_cell_563_recurrent_kernel:
(=
/assignvariableop_15_lstm_563_lstm_cell_563_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_187_kernel_m:
7
)assignvariableop_19_adam_dense_187_bias_m:K
8assignvariableop_20_adam_lstm_561_lstm_cell_561_kernel_m:	?U
Bassignvariableop_21_adam_lstm_561_lstm_cell_561_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_561_lstm_cell_561_bias_m:	?K
8assignvariableop_23_adam_lstm_562_lstm_cell_562_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_562_lstm_cell_562_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_562_lstm_cell_562_bias_m:	?J
8assignvariableop_26_adam_lstm_563_lstm_cell_563_kernel_m:2(T
Bassignvariableop_27_adam_lstm_563_lstm_cell_563_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_563_lstm_cell_563_bias_m:(=
+assignvariableop_29_adam_dense_187_kernel_v:
7
)assignvariableop_30_adam_dense_187_bias_v:K
8assignvariableop_31_adam_lstm_561_lstm_cell_561_kernel_v:	?U
Bassignvariableop_32_adam_lstm_561_lstm_cell_561_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_561_lstm_cell_561_bias_v:	?K
8assignvariableop_34_adam_lstm_562_lstm_cell_562_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_562_lstm_cell_562_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_562_lstm_cell_562_bias_v:	?J
8assignvariableop_37_adam_lstm_563_lstm_cell_563_kernel_v:2(T
Bassignvariableop_38_adam_lstm_563_lstm_cell_563_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_563_lstm_cell_563_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_187_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_187_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_561_lstm_cell_561_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_561_lstm_cell_561_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_561_lstm_cell_561_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_562_lstm_cell_562_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_562_lstm_cell_562_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_562_lstm_cell_562_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_563_lstm_cell_563_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_563_lstm_cell_563_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_563_lstm_cell_563_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_187_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_187_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_561_lstm_cell_561_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_561_lstm_cell_561_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_561_lstm_cell_561_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_562_lstm_cell_562_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_562_lstm_cell_562_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_562_lstm_cell_562_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_563_lstm_cell_563_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_563_lstm_cell_563_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_563_lstm_cell_563_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_187_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_187_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_561_lstm_cell_561_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_561_lstm_cell_561_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_561_lstm_cell_561_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_562_lstm_cell_562_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_562_lstm_cell_562_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_562_lstm_cell_562_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_563_lstm_cell_563_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_563_lstm_cell_563_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_563_lstm_cell_563_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
*sequential_187_lstm_563_while_cond_1010487L
Hsequential_187_lstm_563_while_sequential_187_lstm_563_while_loop_counterR
Nsequential_187_lstm_563_while_sequential_187_lstm_563_while_maximum_iterations-
)sequential_187_lstm_563_while_placeholder/
+sequential_187_lstm_563_while_placeholder_1/
+sequential_187_lstm_563_while_placeholder_2/
+sequential_187_lstm_563_while_placeholder_3N
Jsequential_187_lstm_563_while_less_sequential_187_lstm_563_strided_slice_1e
asequential_187_lstm_563_while_sequential_187_lstm_563_while_cond_1010487___redundant_placeholder0e
asequential_187_lstm_563_while_sequential_187_lstm_563_while_cond_1010487___redundant_placeholder1e
asequential_187_lstm_563_while_sequential_187_lstm_563_while_cond_1010487___redundant_placeholder2e
asequential_187_lstm_563_while_sequential_187_lstm_563_while_cond_1010487___redundant_placeholder3*
&sequential_187_lstm_563_while_identity
?
"sequential_187/lstm_563/while/LessLess)sequential_187_lstm_563_while_placeholderJsequential_187_lstm_563_while_less_sequential_187_lstm_563_strided_slice_1*
T0*
_output_shapes
: {
&sequential_187/lstm_563/while/IdentityIdentity&sequential_187/lstm_563/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_187_lstm_563_while_identity/sequential_187/lstm_563/while/Identity:output:0*(
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
lstm_561_while_cond_1013377.
*lstm_561_while_lstm_561_while_loop_counter4
0lstm_561_while_lstm_561_while_maximum_iterations
lstm_561_while_placeholder 
lstm_561_while_placeholder_1 
lstm_561_while_placeholder_2 
lstm_561_while_placeholder_30
,lstm_561_while_less_lstm_561_strided_slice_1G
Clstm_561_while_lstm_561_while_cond_1013377___redundant_placeholder0G
Clstm_561_while_lstm_561_while_cond_1013377___redundant_placeholder1G
Clstm_561_while_lstm_561_while_cond_1013377___redundant_placeholder2G
Clstm_561_while_lstm_561_while_cond_1013377___redundant_placeholder3
lstm_561_while_identity
?
lstm_561/while/LessLesslstm_561_while_placeholder,lstm_561_while_less_lstm_561_strided_slice_1*
T0*
_output_shapes
: ]
lstm_561/while/IdentityIdentitylstm_561/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_561_while_identity lstm_561/while/Identity:output:0*(
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
while_body_1013849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1011842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011842___redundant_placeholder05
1while_while_cond_1011842___redundant_placeholder15
1while_while_cond_1011842___redundant_placeholder25
1while_while_cond_1011842___redundant_placeholder3
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012077

inputs>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1011993*
condR
while_cond_1011992*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_166_layer_call_fn_1015745

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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1011141o
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
?
/__inference_lstm_cell_167_layer_call_fn_1015826

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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011345o
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
while_cond_1013848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1013848___redundant_placeholder05
1while_while_cond_1013848___redundant_placeholder15
1while_while_cond_1013848___redundant_placeholder25
1while_while_cond_1013848___redundant_placeholder3
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
*sequential_187_lstm_562_while_body_1010349L
Hsequential_187_lstm_562_while_sequential_187_lstm_562_while_loop_counterR
Nsequential_187_lstm_562_while_sequential_187_lstm_562_while_maximum_iterations-
)sequential_187_lstm_562_while_placeholder/
+sequential_187_lstm_562_while_placeholder_1/
+sequential_187_lstm_562_while_placeholder_2/
+sequential_187_lstm_562_while_placeholder_3K
Gsequential_187_lstm_562_while_sequential_187_lstm_562_strided_slice_1_0?
?sequential_187_lstm_562_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_562_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_187_lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0:	d?a
Nsequential_187_lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?\
Msequential_187_lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0:	?*
&sequential_187_lstm_562_while_identity,
(sequential_187_lstm_562_while_identity_1,
(sequential_187_lstm_562_while_identity_2,
(sequential_187_lstm_562_while_identity_3,
(sequential_187_lstm_562_while_identity_4,
(sequential_187_lstm_562_while_identity_5I
Esequential_187_lstm_562_while_sequential_187_lstm_562_strided_slice_1?
?sequential_187_lstm_562_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_562_tensorarrayunstack_tensorlistfromtensor]
Jsequential_187_lstm_562_while_lstm_cell_166_matmul_readvariableop_resource:	d?_
Lsequential_187_lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource:	2?Z
Ksequential_187_lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource:	???Bsequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp?Asequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp?Csequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp?
Osequential_187/lstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_187/lstm_562/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_187_lstm_562_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_562_tensorarrayunstack_tensorlistfromtensor_0)sequential_187_lstm_562_while_placeholderXsequential_187/lstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOpLsequential_187_lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_187/lstm_562/while/lstm_cell_166/MatMulMatMulHsequential_187/lstm_562/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOpNsequential_187_lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_187/lstm_562/while/lstm_cell_166/MatMul_1MatMul+sequential_187_lstm_562_while_placeholder_2Ksequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_187/lstm_562/while/lstm_cell_166/addAddV2<sequential_187/lstm_562/while/lstm_cell_166/MatMul:product:0>sequential_187/lstm_562/while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOpMsequential_187_lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_187/lstm_562/while/lstm_cell_166/BiasAddBiasAdd3sequential_187/lstm_562/while/lstm_cell_166/add:z:0Jsequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_187/lstm_562/while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_187/lstm_562/while/lstm_cell_166/splitSplitDsequential_187/lstm_562/while/lstm_cell_166/split/split_dim:output:0<sequential_187/lstm_562/while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_187/lstm_562/while/lstm_cell_166/SigmoidSigmoid:sequential_187/lstm_562/while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_187/lstm_562/while/lstm_cell_166/Sigmoid_1Sigmoid:sequential_187/lstm_562/while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_187/lstm_562/while/lstm_cell_166/mulMul9sequential_187/lstm_562/while/lstm_cell_166/Sigmoid_1:y:0+sequential_187_lstm_562_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_187/lstm_562/while/lstm_cell_166/ReluRelu:sequential_187/lstm_562/while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_187/lstm_562/while/lstm_cell_166/mul_1Mul7sequential_187/lstm_562/while/lstm_cell_166/Sigmoid:y:0>sequential_187/lstm_562/while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_187/lstm_562/while/lstm_cell_166/add_1AddV23sequential_187/lstm_562/while/lstm_cell_166/mul:z:05sequential_187/lstm_562/while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_187/lstm_562/while/lstm_cell_166/Sigmoid_2Sigmoid:sequential_187/lstm_562/while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_187/lstm_562/while/lstm_cell_166/Relu_1Relu5sequential_187/lstm_562/while/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_187/lstm_562/while/lstm_cell_166/mul_2Mul9sequential_187/lstm_562/while/lstm_cell_166/Sigmoid_2:y:0@sequential_187/lstm_562/while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_187/lstm_562/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_187_lstm_562_while_placeholder_1)sequential_187_lstm_562_while_placeholder5sequential_187/lstm_562/while/lstm_cell_166/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_187/lstm_562/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_187/lstm_562/while/addAddV2)sequential_187_lstm_562_while_placeholder,sequential_187/lstm_562/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_187/lstm_562/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_187/lstm_562/while/add_1AddV2Hsequential_187_lstm_562_while_sequential_187_lstm_562_while_loop_counter.sequential_187/lstm_562/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_187/lstm_562/while/IdentityIdentity'sequential_187/lstm_562/while/add_1:z:0#^sequential_187/lstm_562/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_562/while/Identity_1IdentityNsequential_187_lstm_562_while_sequential_187_lstm_562_while_maximum_iterations#^sequential_187/lstm_562/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_562/while/Identity_2Identity%sequential_187/lstm_562/while/add:z:0#^sequential_187/lstm_562/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_562/while/Identity_3IdentityRsequential_187/lstm_562/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_187/lstm_562/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_562/while/Identity_4Identity5sequential_187/lstm_562/while/lstm_cell_166/mul_2:z:0#^sequential_187/lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_187/lstm_562/while/Identity_5Identity5sequential_187/lstm_562/while/lstm_cell_166/add_1:z:0#^sequential_187/lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_187/lstm_562/while/NoOpNoOpC^sequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOpB^sequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOpD^sequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_187_lstm_562_while_identity/sequential_187/lstm_562/while/Identity:output:0"]
(sequential_187_lstm_562_while_identity_11sequential_187/lstm_562/while/Identity_1:output:0"]
(sequential_187_lstm_562_while_identity_21sequential_187/lstm_562/while/Identity_2:output:0"]
(sequential_187_lstm_562_while_identity_31sequential_187/lstm_562/while/Identity_3:output:0"]
(sequential_187_lstm_562_while_identity_41sequential_187/lstm_562/while/Identity_4:output:0"]
(sequential_187_lstm_562_while_identity_51sequential_187/lstm_562/while/Identity_5:output:0"?
Ksequential_187_lstm_562_while_lstm_cell_166_biasadd_readvariableop_resourceMsequential_187_lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0"?
Lsequential_187_lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resourceNsequential_187_lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0"?
Jsequential_187_lstm_562_while_lstm_cell_166_matmul_readvariableop_resourceLsequential_187_lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0"?
Esequential_187_lstm_562_while_sequential_187_lstm_562_strided_slice_1Gsequential_187_lstm_562_while_sequential_187_lstm_562_strided_slice_1_0"?
?sequential_187_lstm_562_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_562_tensorarrayunstack_tensorlistfromtensor?sequential_187_lstm_562_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_562_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOpBsequential_187/lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp2?
Asequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOpAsequential_187/lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp2?
Csequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOpCsequential_187/lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_561_layer_call_fn_1013790

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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1012623s
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
while_cond_1011358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011358___redundant_placeholder05
1while_while_cond_1011358___redundant_placeholder15
1while_while_cond_1011358___redundant_placeholder25
1while_while_cond_1011358___redundant_placeholder3
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
while_cond_1011008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011008___redundant_placeholder05
1while_while_cond_1011008___redundant_placeholder15
1while_while_cond_1011008___redundant_placeholder25
1while_while_cond_1011008___redundant_placeholder3
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
*__inference_lstm_562_layer_call_fn_1014373
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011078|
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
?T
?
*sequential_187_lstm_563_while_body_1010488L
Hsequential_187_lstm_563_while_sequential_187_lstm_563_while_loop_counterR
Nsequential_187_lstm_563_while_sequential_187_lstm_563_while_maximum_iterations-
)sequential_187_lstm_563_while_placeholder/
+sequential_187_lstm_563_while_placeholder_1/
+sequential_187_lstm_563_while_placeholder_2/
+sequential_187_lstm_563_while_placeholder_3K
Gsequential_187_lstm_563_while_sequential_187_lstm_563_strided_slice_1_0?
?sequential_187_lstm_563_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_563_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_187_lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0:2(`
Nsequential_187_lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0:
([
Msequential_187_lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0:(*
&sequential_187_lstm_563_while_identity,
(sequential_187_lstm_563_while_identity_1,
(sequential_187_lstm_563_while_identity_2,
(sequential_187_lstm_563_while_identity_3,
(sequential_187_lstm_563_while_identity_4,
(sequential_187_lstm_563_while_identity_5I
Esequential_187_lstm_563_while_sequential_187_lstm_563_strided_slice_1?
?sequential_187_lstm_563_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_563_tensorarrayunstack_tensorlistfromtensor\
Jsequential_187_lstm_563_while_lstm_cell_167_matmul_readvariableop_resource:2(^
Lsequential_187_lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource:
(Y
Ksequential_187_lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource:(??Bsequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp?Asequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp?Csequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp?
Osequential_187/lstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_187/lstm_563/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_187_lstm_563_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_563_tensorarrayunstack_tensorlistfromtensor_0)sequential_187_lstm_563_while_placeholderXsequential_187/lstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOpLsequential_187_lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_187/lstm_563/while/lstm_cell_167/MatMulMatMulHsequential_187/lstm_563/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOpNsequential_187_lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_187/lstm_563/while/lstm_cell_167/MatMul_1MatMul+sequential_187_lstm_563_while_placeholder_2Ksequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_187/lstm_563/while/lstm_cell_167/addAddV2<sequential_187/lstm_563/while/lstm_cell_167/MatMul:product:0>sequential_187/lstm_563/while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOpMsequential_187_lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_187/lstm_563/while/lstm_cell_167/BiasAddBiasAdd3sequential_187/lstm_563/while/lstm_cell_167/add:z:0Jsequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_187/lstm_563/while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_187/lstm_563/while/lstm_cell_167/splitSplitDsequential_187/lstm_563/while/lstm_cell_167/split/split_dim:output:0<sequential_187/lstm_563/while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_187/lstm_563/while/lstm_cell_167/SigmoidSigmoid:sequential_187/lstm_563/while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_187/lstm_563/while/lstm_cell_167/Sigmoid_1Sigmoid:sequential_187/lstm_563/while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_187/lstm_563/while/lstm_cell_167/mulMul9sequential_187/lstm_563/while/lstm_cell_167/Sigmoid_1:y:0+sequential_187_lstm_563_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_187/lstm_563/while/lstm_cell_167/ReluRelu:sequential_187/lstm_563/while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_187/lstm_563/while/lstm_cell_167/mul_1Mul7sequential_187/lstm_563/while/lstm_cell_167/Sigmoid:y:0>sequential_187/lstm_563/while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_187/lstm_563/while/lstm_cell_167/add_1AddV23sequential_187/lstm_563/while/lstm_cell_167/mul:z:05sequential_187/lstm_563/while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_187/lstm_563/while/lstm_cell_167/Sigmoid_2Sigmoid:sequential_187/lstm_563/while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_187/lstm_563/while/lstm_cell_167/Relu_1Relu5sequential_187/lstm_563/while/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_187/lstm_563/while/lstm_cell_167/mul_2Mul9sequential_187/lstm_563/while/lstm_cell_167/Sigmoid_2:y:0@sequential_187/lstm_563/while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_187/lstm_563/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_187_lstm_563_while_placeholder_1)sequential_187_lstm_563_while_placeholder5sequential_187/lstm_563/while/lstm_cell_167/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_187/lstm_563/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_187/lstm_563/while/addAddV2)sequential_187_lstm_563_while_placeholder,sequential_187/lstm_563/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_187/lstm_563/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_187/lstm_563/while/add_1AddV2Hsequential_187_lstm_563_while_sequential_187_lstm_563_while_loop_counter.sequential_187/lstm_563/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_187/lstm_563/while/IdentityIdentity'sequential_187/lstm_563/while/add_1:z:0#^sequential_187/lstm_563/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_563/while/Identity_1IdentityNsequential_187_lstm_563_while_sequential_187_lstm_563_while_maximum_iterations#^sequential_187/lstm_563/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_563/while/Identity_2Identity%sequential_187/lstm_563/while/add:z:0#^sequential_187/lstm_563/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_563/while/Identity_3IdentityRsequential_187/lstm_563/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_187/lstm_563/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_563/while/Identity_4Identity5sequential_187/lstm_563/while/lstm_cell_167/mul_2:z:0#^sequential_187/lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_187/lstm_563/while/Identity_5Identity5sequential_187/lstm_563/while/lstm_cell_167/add_1:z:0#^sequential_187/lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_187/lstm_563/while/NoOpNoOpC^sequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOpB^sequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOpD^sequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_187_lstm_563_while_identity/sequential_187/lstm_563/while/Identity:output:0"]
(sequential_187_lstm_563_while_identity_11sequential_187/lstm_563/while/Identity_1:output:0"]
(sequential_187_lstm_563_while_identity_21sequential_187/lstm_563/while/Identity_2:output:0"]
(sequential_187_lstm_563_while_identity_31sequential_187/lstm_563/while/Identity_3:output:0"]
(sequential_187_lstm_563_while_identity_41sequential_187/lstm_563/while/Identity_4:output:0"]
(sequential_187_lstm_563_while_identity_51sequential_187/lstm_563/while/Identity_5:output:0"?
Ksequential_187_lstm_563_while_lstm_cell_167_biasadd_readvariableop_resourceMsequential_187_lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0"?
Lsequential_187_lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resourceNsequential_187_lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0"?
Jsequential_187_lstm_563_while_lstm_cell_167_matmul_readvariableop_resourceLsequential_187_lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0"?
Esequential_187_lstm_563_while_sequential_187_lstm_563_strided_slice_1Gsequential_187_lstm_563_while_sequential_187_lstm_563_strided_slice_1_0"?
?sequential_187_lstm_563_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_563_tensorarrayunstack_tensorlistfromtensor?sequential_187_lstm_563_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_563_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOpBsequential_187/lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp2?
Asequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOpAsequential_187/lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp2?
Csequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOpCsequential_187/lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1011200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_166_1011224_0:	d?0
while_lstm_cell_166_1011226_0:	2?,
while_lstm_cell_166_1011228_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_166_1011224:	d?.
while_lstm_cell_166_1011226:	2?*
while_lstm_cell_166_1011228:	???+while/lstm_cell_166/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_166/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_166_1011224_0while_lstm_cell_166_1011226_0while_lstm_cell_166_1011228_0*
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1011141?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_166/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_166/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_166/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_166/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_166_1011224while_lstm_cell_166_1011224_0"<
while_lstm_cell_166_1011226while_lstm_cell_166_1011226_0"<
while_lstm_cell_166_1011228while_lstm_cell_166_1011228_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_166/StatefulPartitionedCall+while/lstm_cell_166/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1014750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014750___redundant_placeholder05
1while_while_cond_1014750___redundant_placeholder15
1while_while_cond_1014750___redundant_placeholder25
1while_while_cond_1014750___redundant_placeholder3
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012102

inputs#
lstm_561_1011778:	?#
lstm_561_1011780:	d?
lstm_561_1011782:	?#
lstm_562_1011928:	d?#
lstm_562_1011930:	2?
lstm_562_1011932:	?"
lstm_563_1012078:2("
lstm_563_1012080:
(
lstm_563_1012082:(#
dense_187_1012096:

dense_187_1012098:
identity??!dense_187/StatefulPartitionedCall? lstm_561/StatefulPartitionedCall? lstm_562/StatefulPartitionedCall? lstm_563/StatefulPartitionedCall?
 lstm_561/StatefulPartitionedCallStatefulPartitionedCallinputslstm_561_1011778lstm_561_1011780lstm_561_1011782*
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1011777?
 lstm_562/StatefulPartitionedCallStatefulPartitionedCall)lstm_561/StatefulPartitionedCall:output:0lstm_562_1011928lstm_562_1011930lstm_562_1011932*
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011927?
 lstm_563/StatefulPartitionedCallStatefulPartitionedCall)lstm_562/StatefulPartitionedCall:output:0lstm_563_1012078lstm_563_1012080lstm_563_1012082*
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012077?
!dense_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_563/StatefulPartitionedCall:output:0dense_187_1012096dense_187_1012098*
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_187/StatefulPartitionedCall!^lstm_561/StatefulPartitionedCall!^lstm_562/StatefulPartitionedCall!^lstm_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2D
 lstm_561/StatefulPartitionedCall lstm_561/StatefulPartitionedCall2D
 lstm_562/StatefulPartitionedCall lstm_562/StatefulPartitionedCall2D
 lstm_563/StatefulPartitionedCall lstm_563/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_187_lstm_561_while_body_1010210L
Hsequential_187_lstm_561_while_sequential_187_lstm_561_while_loop_counterR
Nsequential_187_lstm_561_while_sequential_187_lstm_561_while_maximum_iterations-
)sequential_187_lstm_561_while_placeholder/
+sequential_187_lstm_561_while_placeholder_1/
+sequential_187_lstm_561_while_placeholder_2/
+sequential_187_lstm_561_while_placeholder_3K
Gsequential_187_lstm_561_while_sequential_187_lstm_561_strided_slice_1_0?
?sequential_187_lstm_561_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_561_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_187_lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0:	?a
Nsequential_187_lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?\
Msequential_187_lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0:	?*
&sequential_187_lstm_561_while_identity,
(sequential_187_lstm_561_while_identity_1,
(sequential_187_lstm_561_while_identity_2,
(sequential_187_lstm_561_while_identity_3,
(sequential_187_lstm_561_while_identity_4,
(sequential_187_lstm_561_while_identity_5I
Esequential_187_lstm_561_while_sequential_187_lstm_561_strided_slice_1?
?sequential_187_lstm_561_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_561_tensorarrayunstack_tensorlistfromtensor]
Jsequential_187_lstm_561_while_lstm_cell_165_matmul_readvariableop_resource:	?_
Lsequential_187_lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource:	d?Z
Ksequential_187_lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource:	???Bsequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp?Asequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp?Csequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp?
Osequential_187/lstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_187/lstm_561/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_187_lstm_561_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_561_tensorarrayunstack_tensorlistfromtensor_0)sequential_187_lstm_561_while_placeholderXsequential_187/lstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOpLsequential_187_lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_187/lstm_561/while/lstm_cell_165/MatMulMatMulHsequential_187/lstm_561/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOpNsequential_187_lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_187/lstm_561/while/lstm_cell_165/MatMul_1MatMul+sequential_187_lstm_561_while_placeholder_2Ksequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_187/lstm_561/while/lstm_cell_165/addAddV2<sequential_187/lstm_561/while/lstm_cell_165/MatMul:product:0>sequential_187/lstm_561/while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOpMsequential_187_lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_187/lstm_561/while/lstm_cell_165/BiasAddBiasAdd3sequential_187/lstm_561/while/lstm_cell_165/add:z:0Jsequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_187/lstm_561/while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_187/lstm_561/while/lstm_cell_165/splitSplitDsequential_187/lstm_561/while/lstm_cell_165/split/split_dim:output:0<sequential_187/lstm_561/while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_187/lstm_561/while/lstm_cell_165/SigmoidSigmoid:sequential_187/lstm_561/while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_187/lstm_561/while/lstm_cell_165/Sigmoid_1Sigmoid:sequential_187/lstm_561/while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_187/lstm_561/while/lstm_cell_165/mulMul9sequential_187/lstm_561/while/lstm_cell_165/Sigmoid_1:y:0+sequential_187_lstm_561_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_187/lstm_561/while/lstm_cell_165/ReluRelu:sequential_187/lstm_561/while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_187/lstm_561/while/lstm_cell_165/mul_1Mul7sequential_187/lstm_561/while/lstm_cell_165/Sigmoid:y:0>sequential_187/lstm_561/while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_187/lstm_561/while/lstm_cell_165/add_1AddV23sequential_187/lstm_561/while/lstm_cell_165/mul:z:05sequential_187/lstm_561/while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_187/lstm_561/while/lstm_cell_165/Sigmoid_2Sigmoid:sequential_187/lstm_561/while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_187/lstm_561/while/lstm_cell_165/Relu_1Relu5sequential_187/lstm_561/while/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_187/lstm_561/while/lstm_cell_165/mul_2Mul9sequential_187/lstm_561/while/lstm_cell_165/Sigmoid_2:y:0@sequential_187/lstm_561/while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_187/lstm_561/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_187_lstm_561_while_placeholder_1)sequential_187_lstm_561_while_placeholder5sequential_187/lstm_561/while/lstm_cell_165/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_187/lstm_561/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_187/lstm_561/while/addAddV2)sequential_187_lstm_561_while_placeholder,sequential_187/lstm_561/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_187/lstm_561/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_187/lstm_561/while/add_1AddV2Hsequential_187_lstm_561_while_sequential_187_lstm_561_while_loop_counter.sequential_187/lstm_561/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_187/lstm_561/while/IdentityIdentity'sequential_187/lstm_561/while/add_1:z:0#^sequential_187/lstm_561/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_561/while/Identity_1IdentityNsequential_187_lstm_561_while_sequential_187_lstm_561_while_maximum_iterations#^sequential_187/lstm_561/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_561/while/Identity_2Identity%sequential_187/lstm_561/while/add:z:0#^sequential_187/lstm_561/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_561/while/Identity_3IdentityRsequential_187/lstm_561/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_187/lstm_561/while/NoOp*
T0*
_output_shapes
: ?
(sequential_187/lstm_561/while/Identity_4Identity5sequential_187/lstm_561/while/lstm_cell_165/mul_2:z:0#^sequential_187/lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_187/lstm_561/while/Identity_5Identity5sequential_187/lstm_561/while/lstm_cell_165/add_1:z:0#^sequential_187/lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_187/lstm_561/while/NoOpNoOpC^sequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOpB^sequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOpD^sequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_187_lstm_561_while_identity/sequential_187/lstm_561/while/Identity:output:0"]
(sequential_187_lstm_561_while_identity_11sequential_187/lstm_561/while/Identity_1:output:0"]
(sequential_187_lstm_561_while_identity_21sequential_187/lstm_561/while/Identity_2:output:0"]
(sequential_187_lstm_561_while_identity_31sequential_187/lstm_561/while/Identity_3:output:0"]
(sequential_187_lstm_561_while_identity_41sequential_187/lstm_561/while/Identity_4:output:0"]
(sequential_187_lstm_561_while_identity_51sequential_187/lstm_561/while/Identity_5:output:0"?
Ksequential_187_lstm_561_while_lstm_cell_165_biasadd_readvariableop_resourceMsequential_187_lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0"?
Lsequential_187_lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resourceNsequential_187_lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0"?
Jsequential_187_lstm_561_while_lstm_cell_165_matmul_readvariableop_resourceLsequential_187_lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0"?
Esequential_187_lstm_561_while_sequential_187_lstm_561_strided_slice_1Gsequential_187_lstm_561_while_sequential_187_lstm_561_strided_slice_1_0"?
?sequential_187_lstm_561_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_561_tensorarrayunstack_tensorlistfromtensor?sequential_187_lstm_561_while_tensorarrayv2read_tensorlistgetitem_sequential_187_lstm_561_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOpBsequential_187/lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp2?
Asequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOpAsequential_187/lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp2?
Csequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOpCsequential_187/lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011491

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

?
0__inference_sequential_187_layer_call_fn_1012892

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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012691o
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014978

inputs?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1014894*
condR
while_cond_1014893*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_563_layer_call_fn_1015011

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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012077o
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
while_body_1015224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014076
inputs_0?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1013992*
condR
while_cond_1013991*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1012374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_166_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_166_matmul_readvariableop_resource:	d?G
4while_lstm_cell_166_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_166_biasadd_readvariableop_resource:	???*while/lstm_cell_166/BiasAdd/ReadVariableOp?)while/lstm_cell_166/MatMul/ReadVariableOp?+while/lstm_cell_166/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_166/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_166/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_166/addAddV2$while/lstm_cell_166/MatMul:product:0&while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_166/BiasAddBiasAddwhile/lstm_cell_166/add:z:02while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_166/splitSplit,while/lstm_cell_166/split/split_dim:output:0$while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_166/SigmoidSigmoid"while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_1Sigmoid"while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mulMul!while/lstm_cell_166/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_166/ReluRelu"while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_1Mulwhile/lstm_cell_166/Sigmoid:y:0&while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/add_1AddV2while/lstm_cell_166/mul:z:0while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_166/Sigmoid_2Sigmoid"while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_166/Relu_1Reluwhile/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_166/mul_2Mul!while/lstm_cell_166/Sigmoid_2:y:0(while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_166/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_166/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_166/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_166/BiasAdd/ReadVariableOp*^while/lstm_cell_166/MatMul/ReadVariableOp,^while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_166_biasadd_readvariableop_resource5while_lstm_cell_166_biasadd_readvariableop_resource_0"n
4while_lstm_cell_166_matmul_1_readvariableop_resource6while_lstm_cell_166_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_166_matmul_readvariableop_resource4while_lstm_cell_166_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_166/BiasAdd/ReadVariableOp*while/lstm_cell_166/BiasAdd/ReadVariableOp2V
)while/lstm_cell_166/MatMul/ReadVariableOp)while/lstm_cell_166/MatMul/ReadVariableOp2Z
+while/lstm_cell_166/MatMul_1/ReadVariableOp+while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1012623

inputs?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1012539*
condR
while_cond_1012538*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012691

inputs#
lstm_561_1012664:	?#
lstm_561_1012666:	d?
lstm_561_1012668:	?#
lstm_562_1012671:	d?#
lstm_562_1012673:	2?
lstm_562_1012675:	?"
lstm_563_1012678:2("
lstm_563_1012680:
(
lstm_563_1012682:(#
dense_187_1012685:

dense_187_1012687:
identity??!dense_187/StatefulPartitionedCall? lstm_561/StatefulPartitionedCall? lstm_562/StatefulPartitionedCall? lstm_563/StatefulPartitionedCall?
 lstm_561/StatefulPartitionedCallStatefulPartitionedCallinputslstm_561_1012664lstm_561_1012666lstm_561_1012668*
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1012623?
 lstm_562/StatefulPartitionedCallStatefulPartitionedCall)lstm_561/StatefulPartitionedCall:output:0lstm_562_1012671lstm_562_1012673lstm_562_1012675*
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1012458?
 lstm_563/StatefulPartitionedCallStatefulPartitionedCall)lstm_562/StatefulPartitionedCall:output:0lstm_563_1012678lstm_563_1012680lstm_563_1012682*
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012293?
!dense_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_563/StatefulPartitionedCall:output:0dense_187_1012685dense_187_1012687*
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_187/StatefulPartitionedCall!^lstm_561/StatefulPartitionedCall!^lstm_562/StatefulPartitionedCall!^lstm_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2D
 lstm_561/StatefulPartitionedCall lstm_561/StatefulPartitionedCall2D
 lstm_562/StatefulPartitionedCall lstm_562/StatefulPartitionedCall2D
 lstm_563/StatefulPartitionedCall lstm_563/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1015510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_187_layer_call_fn_1012865

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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012102o
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012293

inputs>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1012209*
condR
while_cond_1012208*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_561_layer_call_and_return_conditional_losses_1011777

inputs?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1011693*
condR
while_cond_1011692*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014219

inputs?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1014135*
condR
while_cond_1014134*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1010995

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
?
*__inference_lstm_561_layer_call_fn_1013768
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1010919|
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
lstm_563_while_cond_1013228.
*lstm_563_while_lstm_563_while_loop_counter4
0lstm_563_while_lstm_563_while_maximum_iterations
lstm_563_while_placeholder 
lstm_563_while_placeholder_1 
lstm_563_while_placeholder_2 
lstm_563_while_placeholder_30
,lstm_563_while_less_lstm_563_strided_slice_1G
Clstm_563_while_lstm_563_while_cond_1013228___redundant_placeholder0G
Clstm_563_while_lstm_563_while_cond_1013228___redundant_placeholder1G
Clstm_563_while_lstm_563_while_cond_1013228___redundant_placeholder2G
Clstm_563_while_lstm_563_while_cond_1013228___redundant_placeholder3
lstm_563_while_identity
?
lstm_563/while/LessLesslstm_563_while_placeholder,lstm_563_while_less_lstm_563_strided_slice_1*
T0*
_output_shapes
: ]
lstm_563/while/IdentityIdentitylstm_563/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_563_while_identity lstm_563/while/Identity:output:0*(
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1013933
inputs_0?
,lstm_cell_165_matmul_readvariableop_resource:	?A
.lstm_cell_165_matmul_1_readvariableop_resource:	d?<
-lstm_cell_165_biasadd_readvariableop_resource:	?
identity??$lstm_cell_165/BiasAdd/ReadVariableOp?#lstm_cell_165/MatMul/ReadVariableOp?%lstm_cell_165/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_165/MatMul/ReadVariableOpReadVariableOp,lstm_cell_165_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_165/MatMulMatMulstrided_slice_2:output:0+lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_165_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_165/MatMul_1MatMulzeros:output:0-lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_165/addAddV2lstm_cell_165/MatMul:product:0 lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_165_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_165/BiasAddBiasAddlstm_cell_165/add:z:0,lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_165/splitSplit&lstm_cell_165/split/split_dim:output:0lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_165/SigmoidSigmoidlstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_1Sigmoidlstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_165/mulMullstm_cell_165/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_165/ReluRelulstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_1Mullstm_cell_165/Sigmoid:y:0 lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_165/add_1AddV2lstm_cell_165/mul:z:0lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_165/Sigmoid_2Sigmoidlstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_165/Relu_1Relulstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_165/mul_2Mullstm_cell_165/Sigmoid_2:y:0"lstm_cell_165/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_165_matmul_readvariableop_resource.lstm_cell_165_matmul_1_readvariableop_resource-lstm_cell_165_biasadd_readvariableop_resource*
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
while_body_1013849*
condR
while_cond_1013848*K
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
NoOpNoOp%^lstm_cell_165/BiasAdd/ReadVariableOp$^lstm_cell_165/MatMul/ReadVariableOp&^lstm_cell_165/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_165/BiasAdd/ReadVariableOp$lstm_cell_165/BiasAdd/ReadVariableOp2J
#lstm_cell_165/MatMul/ReadVariableOp#lstm_cell_165/MatMul/ReadVariableOp2N
%lstm_cell_165/MatMul_1/ReadVariableOp%lstm_cell_165/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011345

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
/__inference_lstm_cell_165_layer_call_fn_1015647

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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010791o
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

?
0__inference_sequential_187_layer_call_fn_1012127
lstm_561_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_561_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012102o
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
_user_specified_namelstm_561_input
?8
?
while_body_1011993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_1016050
file_prefix/
+savev2_dense_187_kernel_read_readvariableop-
)savev2_dense_187_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_561_lstm_cell_561_kernel_read_readvariableopF
Bsavev2_lstm_561_lstm_cell_561_recurrent_kernel_read_readvariableop:
6savev2_lstm_561_lstm_cell_561_bias_read_readvariableop<
8savev2_lstm_562_lstm_cell_562_kernel_read_readvariableopF
Bsavev2_lstm_562_lstm_cell_562_recurrent_kernel_read_readvariableop:
6savev2_lstm_562_lstm_cell_562_bias_read_readvariableop<
8savev2_lstm_563_lstm_cell_563_kernel_read_readvariableopF
Bsavev2_lstm_563_lstm_cell_563_recurrent_kernel_read_readvariableop:
6savev2_lstm_563_lstm_cell_563_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_187_kernel_m_read_readvariableop4
0savev2_adam_dense_187_bias_m_read_readvariableopC
?savev2_adam_lstm_561_lstm_cell_561_kernel_m_read_readvariableopM
Isavev2_adam_lstm_561_lstm_cell_561_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_561_lstm_cell_561_bias_m_read_readvariableopC
?savev2_adam_lstm_562_lstm_cell_562_kernel_m_read_readvariableopM
Isavev2_adam_lstm_562_lstm_cell_562_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_562_lstm_cell_562_bias_m_read_readvariableopC
?savev2_adam_lstm_563_lstm_cell_563_kernel_m_read_readvariableopM
Isavev2_adam_lstm_563_lstm_cell_563_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_563_lstm_cell_563_bias_m_read_readvariableop6
2savev2_adam_dense_187_kernel_v_read_readvariableop4
0savev2_adam_dense_187_bias_v_read_readvariableopC
?savev2_adam_lstm_561_lstm_cell_561_kernel_v_read_readvariableopM
Isavev2_adam_lstm_561_lstm_cell_561_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_561_lstm_cell_561_bias_v_read_readvariableopC
?savev2_adam_lstm_562_lstm_cell_562_kernel_v_read_readvariableopM
Isavev2_adam_lstm_562_lstm_cell_562_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_562_lstm_cell_562_bias_v_read_readvariableopC
?savev2_adam_lstm_563_lstm_cell_563_kernel_v_read_readvariableopM
Isavev2_adam_lstm_563_lstm_cell_563_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_563_lstm_cell_563_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_187_kernel_read_readvariableop)savev2_dense_187_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_561_lstm_cell_561_kernel_read_readvariableopBsavev2_lstm_561_lstm_cell_561_recurrent_kernel_read_readvariableop6savev2_lstm_561_lstm_cell_561_bias_read_readvariableop8savev2_lstm_562_lstm_cell_562_kernel_read_readvariableopBsavev2_lstm_562_lstm_cell_562_recurrent_kernel_read_readvariableop6savev2_lstm_562_lstm_cell_562_bias_read_readvariableop8savev2_lstm_563_lstm_cell_563_kernel_read_readvariableopBsavev2_lstm_563_lstm_cell_563_recurrent_kernel_read_readvariableop6savev2_lstm_563_lstm_cell_563_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_187_kernel_m_read_readvariableop0savev2_adam_dense_187_bias_m_read_readvariableop?savev2_adam_lstm_561_lstm_cell_561_kernel_m_read_readvariableopIsavev2_adam_lstm_561_lstm_cell_561_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_561_lstm_cell_561_bias_m_read_readvariableop?savev2_adam_lstm_562_lstm_cell_562_kernel_m_read_readvariableopIsavev2_adam_lstm_562_lstm_cell_562_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_562_lstm_cell_562_bias_m_read_readvariableop?savev2_adam_lstm_563_lstm_cell_563_kernel_m_read_readvariableopIsavev2_adam_lstm_563_lstm_cell_563_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_563_lstm_cell_563_bias_m_read_readvariableop2savev2_adam_dense_187_kernel_v_read_readvariableop0savev2_adam_dense_187_bias_v_read_readvariableop?savev2_adam_lstm_561_lstm_cell_561_kernel_v_read_readvariableopIsavev2_adam_lstm_561_lstm_cell_561_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_561_lstm_cell_561_bias_v_read_readvariableop?savev2_adam_lstm_562_lstm_cell_562_kernel_v_read_readvariableopIsavev2_adam_lstm_562_lstm_cell_562_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_562_lstm_cell_562_bias_v_read_readvariableop?savev2_adam_lstm_563_lstm_cell_563_kernel_v_read_readvariableopIsavev2_adam_lstm_563_lstm_cell_563_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_563_lstm_cell_563_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_1015223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1015223___redundant_placeholder05
1while_while_cond_1015223___redundant_placeholder15
1while_while_cond_1015223___redundant_placeholder25
1while_while_cond_1015223___redundant_placeholder3
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
while_body_1011009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_166_1011033_0:	d?0
while_lstm_cell_166_1011035_0:	2?,
while_lstm_cell_166_1011037_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_166_1011033:	d?.
while_lstm_cell_166_1011035:	2?*
while_lstm_cell_166_1011037:	???+while/lstm_cell_166/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_166/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_166_1011033_0while_lstm_cell_166_1011035_0while_lstm_cell_166_1011037_0*
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1010995?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_166/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_166/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_166/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_166/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_166_1011033while_lstm_cell_166_1011033_0"<
while_lstm_cell_166_1011035while_lstm_cell_166_1011035_0"<
while_lstm_cell_166_1011037while_lstm_cell_166_1011037_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_166/StatefulPartitionedCall+while/lstm_cell_166/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1012538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1012538___redundant_placeholder05
1while_while_cond_1012538___redundant_placeholder15
1while_while_cond_1012538___redundant_placeholder25
1while_while_cond_1012538___redundant_placeholder3
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015711

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
while_cond_1014464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014464___redundant_placeholder05
1while_while_cond_1014464___redundant_placeholder15
1while_while_cond_1014464___redundant_placeholder25
1while_while_cond_1014464___redundant_placeholder3
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
while_cond_1015080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1015080___redundant_placeholder05
1while_while_cond_1015080___redundant_placeholder15
1while_while_cond_1015080___redundant_placeholder25
1while_while_cond_1015080___redundant_placeholder3
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014835

inputs?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1014751*
condR
while_cond_1014750*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_187_layer_call_and_return_conditional_losses_1015613

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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010645

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
?
E__inference_lstm_563_layer_call_and_return_conditional_losses_1011428

inputs'
lstm_cell_167_1011346:2('
lstm_cell_167_1011348:
(#
lstm_cell_167_1011350:(
identity??%lstm_cell_167/StatefulPartitionedCall?while;
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
%lstm_cell_167/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_167_1011346lstm_cell_167_1011348lstm_cell_167_1011350*
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011345n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_167_1011346lstm_cell_167_1011348lstm_cell_167_1011350*
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
while_body_1011359*
condR
while_cond_1011358*K
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
NoOpNoOp&^lstm_cell_167/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_167/StatefulPartitionedCall%lstm_cell_167/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_563_layer_call_fn_1014989
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1011428o
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
while_cond_1011549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011549___redundant_placeholder05
1while_while_cond_1011549___redundant_placeholder15
1while_while_cond_1011549___redundant_placeholder25
1while_while_cond_1011549___redundant_placeholder3
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
while_body_1015081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1011693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015907

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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015165
inputs_0>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1015081*
condR
while_cond_1015080*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_562_while_body_1013517.
*lstm_562_while_lstm_562_while_loop_counter4
0lstm_562_while_lstm_562_while_maximum_iterations
lstm_562_while_placeholder 
lstm_562_while_placeholder_1 
lstm_562_while_placeholder_2 
lstm_562_while_placeholder_3-
)lstm_562_while_lstm_562_strided_slice_1_0i
elstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0:	d?R
?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0:	2?M
>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0:	?
lstm_562_while_identity
lstm_562_while_identity_1
lstm_562_while_identity_2
lstm_562_while_identity_3
lstm_562_while_identity_4
lstm_562_while_identity_5+
'lstm_562_while_lstm_562_strided_slice_1g
clstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensorN
;lstm_562_while_lstm_cell_166_matmul_readvariableop_resource:	d?P
=lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource:	2?K
<lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource:	???3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp?2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp?4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp?
@lstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_562/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0lstm_562_while_placeholderIlstm_562/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOpReadVariableOp=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_562/while/lstm_cell_166/MatMulMatMul9lstm_562/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_562/while/lstm_cell_166/MatMul_1MatMullstm_562_while_placeholder_2<lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_562/while/lstm_cell_166/addAddV2-lstm_562/while/lstm_cell_166/MatMul:product:0/lstm_562/while/lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_562/while/lstm_cell_166/BiasAddBiasAdd$lstm_562/while/lstm_cell_166/add:z:0;lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_562/while/lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_562/while/lstm_cell_166/splitSplit5lstm_562/while/lstm_cell_166/split/split_dim:output:0-lstm_562/while/lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_562/while/lstm_cell_166/SigmoidSigmoid+lstm_562/while/lstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_562/while/lstm_cell_166/Sigmoid_1Sigmoid+lstm_562/while/lstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_562/while/lstm_cell_166/mulMul*lstm_562/while/lstm_cell_166/Sigmoid_1:y:0lstm_562_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_562/while/lstm_cell_166/ReluRelu+lstm_562/while/lstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/mul_1Mul(lstm_562/while/lstm_cell_166/Sigmoid:y:0/lstm_562/while/lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/add_1AddV2$lstm_562/while/lstm_cell_166/mul:z:0&lstm_562/while/lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_562/while/lstm_cell_166/Sigmoid_2Sigmoid+lstm_562/while/lstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_562/while/lstm_cell_166/Relu_1Relu&lstm_562/while/lstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_562/while/lstm_cell_166/mul_2Mul*lstm_562/while/lstm_cell_166/Sigmoid_2:y:01lstm_562/while/lstm_cell_166/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_562/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_562_while_placeholder_1lstm_562_while_placeholder&lstm_562/while/lstm_cell_166/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_562/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_562/while/addAddV2lstm_562_while_placeholderlstm_562/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_562/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_562/while/add_1AddV2*lstm_562_while_lstm_562_while_loop_counterlstm_562/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_562/while/IdentityIdentitylstm_562/while/add_1:z:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_1Identity0lstm_562_while_lstm_562_while_maximum_iterations^lstm_562/while/NoOp*
T0*
_output_shapes
: t
lstm_562/while/Identity_2Identitylstm_562/while/add:z:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_3IdentityClstm_562/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_562/while/NoOp*
T0*
_output_shapes
: ?
lstm_562/while/Identity_4Identity&lstm_562/while/lstm_cell_166/mul_2:z:0^lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_562/while/Identity_5Identity&lstm_562/while/lstm_cell_166/add_1:z:0^lstm_562/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_562/while/NoOpNoOp4^lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp3^lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp5^lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_562_while_identity lstm_562/while/Identity:output:0"?
lstm_562_while_identity_1"lstm_562/while/Identity_1:output:0"?
lstm_562_while_identity_2"lstm_562/while/Identity_2:output:0"?
lstm_562_while_identity_3"lstm_562/while/Identity_3:output:0"?
lstm_562_while_identity_4"lstm_562/while/Identity_4:output:0"?
lstm_562_while_identity_5"lstm_562/while/Identity_5:output:0"T
'lstm_562_while_lstm_562_strided_slice_1)lstm_562_while_lstm_562_strided_slice_1_0"~
<lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource>lstm_562_while_lstm_cell_166_biasadd_readvariableop_resource_0"?
=lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource?lstm_562_while_lstm_cell_166_matmul_1_readvariableop_resource_0"|
;lstm_562_while_lstm_cell_166_matmul_readvariableop_resource=lstm_562_while_lstm_cell_166_matmul_readvariableop_resource_0"?
clstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensorelstm_562_while_tensorarrayv2read_tensorlistgetitem_lstm_562_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp3lstm_562/while/lstm_cell_166/BiasAdd/ReadVariableOp2h
2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp2lstm_562/while/lstm_cell_166/MatMul/ReadVariableOp2l
4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp4lstm_562/while/lstm_cell_166/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1015509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1015509___redundant_placeholder05
1while_while_cond_1015509___redundant_placeholder15
1while_while_cond_1015509___redundant_placeholder25
1while_while_cond_1015509___redundant_placeholder3
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1012458

inputs?
,lstm_cell_166_matmul_readvariableop_resource:	d?A
.lstm_cell_166_matmul_1_readvariableop_resource:	2?<
-lstm_cell_166_biasadd_readvariableop_resource:	?
identity??$lstm_cell_166/BiasAdd/ReadVariableOp?#lstm_cell_166/MatMul/ReadVariableOp?%lstm_cell_166/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_166/MatMul/ReadVariableOpReadVariableOp,lstm_cell_166_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_166/MatMulMatMulstrided_slice_2:output:0+lstm_cell_166/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_166/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_166_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_166/MatMul_1MatMulzeros:output:0-lstm_cell_166/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_166/addAddV2lstm_cell_166/MatMul:product:0 lstm_cell_166/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_166/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_166_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_166/BiasAddBiasAddlstm_cell_166/add:z:0,lstm_cell_166/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_166/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_166/splitSplit&lstm_cell_166/split/split_dim:output:0lstm_cell_166/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_166/SigmoidSigmoidlstm_cell_166/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_1Sigmoidlstm_cell_166/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_166/mulMullstm_cell_166/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_166/ReluRelulstm_cell_166/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_1Mullstm_cell_166/Sigmoid:y:0 lstm_cell_166/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_166/add_1AddV2lstm_cell_166/mul:z:0lstm_cell_166/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_166/Sigmoid_2Sigmoidlstm_cell_166/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_166/Relu_1Relulstm_cell_166/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_166/mul_2Mullstm_cell_166/Sigmoid_2:y:0"lstm_cell_166/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_166_matmul_readvariableop_resource.lstm_cell_166_matmul_1_readvariableop_resource-lstm_cell_166_biasadd_readvariableop_resource*
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
while_body_1012374*
condR
while_cond_1012373*K
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
NoOpNoOp%^lstm_cell_166/BiasAdd/ReadVariableOp$^lstm_cell_166/MatMul/ReadVariableOp&^lstm_cell_166/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_166/BiasAdd/ReadVariableOp$lstm_cell_166/BiasAdd/ReadVariableOp2J
#lstm_cell_166/MatMul/ReadVariableOp#lstm_cell_166/MatMul/ReadVariableOp2N
%lstm_cell_166/MatMul_1/ReadVariableOp%lstm_cell_166/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015679

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
while_cond_1010658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1010658___redundant_placeholder05
1while_while_cond_1010658___redundant_placeholder15
1while_while_cond_1010658___redundant_placeholder25
1while_while_cond_1010658___redundant_placeholder3
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
?C
?

lstm_561_while_body_1012951.
*lstm_561_while_lstm_561_while_loop_counter4
0lstm_561_while_lstm_561_while_maximum_iterations
lstm_561_while_placeholder 
lstm_561_while_placeholder_1 
lstm_561_while_placeholder_2 
lstm_561_while_placeholder_3-
)lstm_561_while_lstm_561_strided_slice_1_0i
elstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0:	?R
?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?M
>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
lstm_561_while_identity
lstm_561_while_identity_1
lstm_561_while_identity_2
lstm_561_while_identity_3
lstm_561_while_identity_4
lstm_561_while_identity_5+
'lstm_561_while_lstm_561_strided_slice_1g
clstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensorN
;lstm_561_while_lstm_cell_165_matmul_readvariableop_resource:	?P
=lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource:	d?K
<lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource:	???3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp?2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp?4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp?
@lstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_561/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0lstm_561_while_placeholderIlstm_561/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_561/while/lstm_cell_165/MatMulMatMul9lstm_561/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_561/while/lstm_cell_165/MatMul_1MatMullstm_561_while_placeholder_2<lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_561/while/lstm_cell_165/addAddV2-lstm_561/while/lstm_cell_165/MatMul:product:0/lstm_561/while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_561/while/lstm_cell_165/BiasAddBiasAdd$lstm_561/while/lstm_cell_165/add:z:0;lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_561/while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_561/while/lstm_cell_165/splitSplit5lstm_561/while/lstm_cell_165/split/split_dim:output:0-lstm_561/while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_561/while/lstm_cell_165/SigmoidSigmoid+lstm_561/while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_561/while/lstm_cell_165/Sigmoid_1Sigmoid+lstm_561/while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_561/while/lstm_cell_165/mulMul*lstm_561/while/lstm_cell_165/Sigmoid_1:y:0lstm_561_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_561/while/lstm_cell_165/ReluRelu+lstm_561/while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/mul_1Mul(lstm_561/while/lstm_cell_165/Sigmoid:y:0/lstm_561/while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/add_1AddV2$lstm_561/while/lstm_cell_165/mul:z:0&lstm_561/while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_561/while/lstm_cell_165/Sigmoid_2Sigmoid+lstm_561/while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_561/while/lstm_cell_165/Relu_1Relu&lstm_561/while/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_561/while/lstm_cell_165/mul_2Mul*lstm_561/while/lstm_cell_165/Sigmoid_2:y:01lstm_561/while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_561/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_561_while_placeholder_1lstm_561_while_placeholder&lstm_561/while/lstm_cell_165/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_561/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_561/while/addAddV2lstm_561_while_placeholderlstm_561/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_561/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_561/while/add_1AddV2*lstm_561_while_lstm_561_while_loop_counterlstm_561/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_561/while/IdentityIdentitylstm_561/while/add_1:z:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_1Identity0lstm_561_while_lstm_561_while_maximum_iterations^lstm_561/while/NoOp*
T0*
_output_shapes
: t
lstm_561/while/Identity_2Identitylstm_561/while/add:z:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_3IdentityClstm_561/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_561/while/NoOp*
T0*
_output_shapes
: ?
lstm_561/while/Identity_4Identity&lstm_561/while/lstm_cell_165/mul_2:z:0^lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_561/while/Identity_5Identity&lstm_561/while/lstm_cell_165/add_1:z:0^lstm_561/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_561/while/NoOpNoOp4^lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp3^lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp5^lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_561_while_identity lstm_561/while/Identity:output:0"?
lstm_561_while_identity_1"lstm_561/while/Identity_1:output:0"?
lstm_561_while_identity_2"lstm_561/while/Identity_2:output:0"?
lstm_561_while_identity_3"lstm_561/while/Identity_3:output:0"?
lstm_561_while_identity_4"lstm_561/while/Identity_4:output:0"?
lstm_561_while_identity_5"lstm_561/while/Identity_5:output:0"T
'lstm_561_while_lstm_561_strided_slice_1)lstm_561_while_lstm_561_strided_slice_1_0"~
<lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource>lstm_561_while_lstm_cell_165_biasadd_readvariableop_resource_0"?
=lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource?lstm_561_while_lstm_cell_165_matmul_1_readvariableop_resource_0"|
;lstm_561_while_lstm_cell_165_matmul_readvariableop_resource=lstm_561_while_lstm_cell_165_matmul_readvariableop_resource_0"?
clstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensorelstm_561_while_tensorarrayv2read_tensorlistgetitem_lstm_561_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp3lstm_561/while/lstm_cell_165/BiasAdd/ReadVariableOp2h
2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp2lstm_561/while/lstm_cell_165/MatMul/ReadVariableOp2l
4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp4lstm_561/while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1014134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014134___redundant_placeholder05
1while_while_cond_1014134___redundant_placeholder15
1while_while_cond_1014134___redundant_placeholder25
1while_while_cond_1014134___redundant_placeholder3
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
while_body_1013992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1015367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_167_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_167_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_167_matmul_readvariableop_resource:2(F
4while_lstm_cell_167_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_167_biasadd_readvariableop_resource:(??*while/lstm_cell_167/BiasAdd/ReadVariableOp?)while/lstm_cell_167/MatMul/ReadVariableOp?+while/lstm_cell_167/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_167/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_167/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_167/addAddV2$while/lstm_cell_167/MatMul:product:0&while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_167/BiasAddBiasAddwhile/lstm_cell_167/add:z:02while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_167/splitSplit,while/lstm_cell_167/split/split_dim:output:0$while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_167/SigmoidSigmoid"while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_1Sigmoid"while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mulMul!while/lstm_cell_167/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_167/ReluRelu"while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_1Mulwhile/lstm_cell_167/Sigmoid:y:0&while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/add_1AddV2while/lstm_cell_167/mul:z:0while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_167/Sigmoid_2Sigmoid"while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_167/Relu_1Reluwhile/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_167/mul_2Mul!while/lstm_cell_167/Sigmoid_2:y:0(while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_167/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_167/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_167/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_167/BiasAdd/ReadVariableOp*^while/lstm_cell_167/MatMul/ReadVariableOp,^while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_167_biasadd_readvariableop_resource5while_lstm_cell_167_biasadd_readvariableop_resource_0"n
4while_lstm_cell_167_matmul_1_readvariableop_resource6while_lstm_cell_167_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_167_matmul_readvariableop_resource4while_lstm_cell_167_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_167/BiasAdd/ReadVariableOp*while/lstm_cell_167/BiasAdd/ReadVariableOp2V
)while/lstm_cell_167/MatMul/ReadVariableOp)while/lstm_cell_167/MatMul/ReadVariableOp2Z
+while/lstm_cell_167/MatMul_1/ReadVariableOp+while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_561_layer_call_fn_1013757
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1010728|
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
?#
?
while_body_1010659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_165_1010683_0:	?0
while_lstm_cell_165_1010685_0:	d?,
while_lstm_cell_165_1010687_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_165_1010683:	?.
while_lstm_cell_165_1010685:	d?*
while_lstm_cell_165_1010687:	???+while/lstm_cell_165/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_165/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_165_1010683_0while_lstm_cell_165_1010685_0while_lstm_cell_165_1010687_0*
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010645?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_165/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_165/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_165/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_165/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_165_1010683while_lstm_cell_165_1010683_0"<
while_lstm_cell_165_1010685while_lstm_cell_165_1010685_0"<
while_lstm_cell_165_1010687while_lstm_cell_165_1010687_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_165/StatefulPartitionedCall+while/lstm_cell_165/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015809

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
/__inference_lstm_cell_165_layer_call_fn_1015630

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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010645o
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
?#
?
while_body_1010850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_165_1010874_0:	?0
while_lstm_cell_165_1010876_0:	d?,
while_lstm_cell_165_1010878_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_165_1010874:	?.
while_lstm_cell_165_1010876:	d?*
while_lstm_cell_165_1010878:	???+while/lstm_cell_165/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_165/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_165_1010874_0while_lstm_cell_165_1010876_0while_lstm_cell_165_1010878_0*
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010791?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_165/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_165/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_165/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_165/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_165_1010874while_lstm_cell_165_1010874_0"<
while_lstm_cell_165_1010876while_lstm_cell_165_1010876_0"<
while_lstm_cell_165_1010878while_lstm_cell_165_1010878_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_165/StatefulPartitionedCall+while/lstm_cell_165/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_187_lstm_561_while_cond_1010209L
Hsequential_187_lstm_561_while_sequential_187_lstm_561_while_loop_counterR
Nsequential_187_lstm_561_while_sequential_187_lstm_561_while_maximum_iterations-
)sequential_187_lstm_561_while_placeholder/
+sequential_187_lstm_561_while_placeholder_1/
+sequential_187_lstm_561_while_placeholder_2/
+sequential_187_lstm_561_while_placeholder_3N
Jsequential_187_lstm_561_while_less_sequential_187_lstm_561_strided_slice_1e
asequential_187_lstm_561_while_sequential_187_lstm_561_while_cond_1010209___redundant_placeholder0e
asequential_187_lstm_561_while_sequential_187_lstm_561_while_cond_1010209___redundant_placeholder1e
asequential_187_lstm_561_while_sequential_187_lstm_561_while_cond_1010209___redundant_placeholder2e
asequential_187_lstm_561_while_sequential_187_lstm_561_while_cond_1010209___redundant_placeholder3*
&sequential_187_lstm_561_while_identity
?
"sequential_187/lstm_561/while/LessLess)sequential_187_lstm_561_while_placeholderJsequential_187_lstm_561_while_less_sequential_187_lstm_561_strided_slice_1*
T0*
_output_shapes
: {
&sequential_187/lstm_561/while/IdentityIdentity&sequential_187/lstm_561/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_187_lstm_561_while_identity/sequential_187/lstm_561/while/Identity:output:0*(
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
while_cond_1015366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1015366___redundant_placeholder05
1while_while_cond_1015366___redundant_placeholder15
1while_while_cond_1015366___redundant_placeholder25
1while_while_cond_1015366___redundant_placeholder3
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
while_cond_1014607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014607___redundant_placeholder05
1while_while_cond_1014607___redundant_placeholder15
1while_while_cond_1014607___redundant_placeholder25
1while_while_cond_1014607___redundant_placeholder3
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1010728

inputs(
lstm_cell_165_1010646:	?(
lstm_cell_165_1010648:	d?$
lstm_cell_165_1010650:	?
identity??%lstm_cell_165/StatefulPartitionedCall?while;
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
%lstm_cell_165/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_165_1010646lstm_cell_165_1010648lstm_cell_165_1010650*
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1010645n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_165_1010646lstm_cell_165_1010648lstm_cell_165_1010650*
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
while_body_1010659*
condR
while_cond_1010658*K
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
NoOpNoOp&^lstm_cell_165/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_165/StatefulPartitionedCall%lstm_cell_165/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1012838
lstm_561_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_561_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1010578o
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
_user_specified_namelstm_561_input
?
?
while_cond_1014277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014277___redundant_placeholder05
1while_while_cond_1014277___redundant_placeholder15
1while_while_cond_1014277___redundant_placeholder25
1while_while_cond_1014277___redundant_placeholder3
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
while_cond_1011992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1011992___redundant_placeholder05
1while_while_cond_1011992___redundant_placeholder15
1while_while_cond_1011992___redundant_placeholder25
1while_while_cond_1011992___redundant_placeholder3
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
?
?
*__inference_lstm_563_layer_call_fn_1015022

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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1012293o
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
while_body_1012539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_165_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_165_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_165_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_165_matmul_readvariableop_resource:	?G
4while_lstm_cell_165_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_165_biasadd_readvariableop_resource:	???*while/lstm_cell_165/BiasAdd/ReadVariableOp?)while/lstm_cell_165/MatMul/ReadVariableOp?+while/lstm_cell_165/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_165/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_165_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_165/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_165/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_165/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_165_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_165/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_165/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_165/addAddV2$while/lstm_cell_165/MatMul:product:0&while/lstm_cell_165/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_165/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_165_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_165/BiasAddBiasAddwhile/lstm_cell_165/add:z:02while/lstm_cell_165/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_165/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_165/splitSplit,while/lstm_cell_165/split/split_dim:output:0$while/lstm_cell_165/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_165/SigmoidSigmoid"while/lstm_cell_165/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_1Sigmoid"while/lstm_cell_165/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mulMul!while/lstm_cell_165/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_165/ReluRelu"while/lstm_cell_165/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_1Mulwhile/lstm_cell_165/Sigmoid:y:0&while/lstm_cell_165/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/add_1AddV2while/lstm_cell_165/mul:z:0while/lstm_cell_165/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_165/Sigmoid_2Sigmoid"while/lstm_cell_165/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_165/Relu_1Reluwhile/lstm_cell_165/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_165/mul_2Mul!while/lstm_cell_165/Sigmoid_2:y:0(while/lstm_cell_165/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_165/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_165/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_165/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_165/BiasAdd/ReadVariableOp*^while/lstm_cell_165/MatMul/ReadVariableOp,^while/lstm_cell_165/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_165_biasadd_readvariableop_resource5while_lstm_cell_165_biasadd_readvariableop_resource_0"n
4while_lstm_cell_165_matmul_1_readvariableop_resource6while_lstm_cell_165_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_165_matmul_readvariableop_resource4while_lstm_cell_165_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_165/BiasAdd/ReadVariableOp*while/lstm_cell_165/BiasAdd/ReadVariableOp2V
)while/lstm_cell_165/MatMul/ReadVariableOp)while/lstm_cell_165/MatMul/ReadVariableOp2Z
+while/lstm_cell_165/MatMul_1/ReadVariableOp+while/lstm_cell_165/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_563_while_body_1013229.
*lstm_563_while_lstm_563_while_loop_counter4
0lstm_563_while_lstm_563_while_maximum_iterations
lstm_563_while_placeholder 
lstm_563_while_placeholder_1 
lstm_563_while_placeholder_2 
lstm_563_while_placeholder_3-
)lstm_563_while_lstm_563_strided_slice_1_0i
elstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0:2(Q
?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0:
(L
>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0:(
lstm_563_while_identity
lstm_563_while_identity_1
lstm_563_while_identity_2
lstm_563_while_identity_3
lstm_563_while_identity_4
lstm_563_while_identity_5+
'lstm_563_while_lstm_563_strided_slice_1g
clstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensorM
;lstm_563_while_lstm_cell_167_matmul_readvariableop_resource:2(O
=lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource:
(J
<lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource:(??3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp?2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp?4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp?
@lstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_563/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0lstm_563_while_placeholderIlstm_563/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOpReadVariableOp=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_563/while/lstm_cell_167/MatMulMatMul9lstm_563/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_563/while/lstm_cell_167/MatMul_1MatMullstm_563_while_placeholder_2<lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_563/while/lstm_cell_167/addAddV2-lstm_563/while/lstm_cell_167/MatMul:product:0/lstm_563/while/lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_563/while/lstm_cell_167/BiasAddBiasAdd$lstm_563/while/lstm_cell_167/add:z:0;lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_563/while/lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_563/while/lstm_cell_167/splitSplit5lstm_563/while/lstm_cell_167/split/split_dim:output:0-lstm_563/while/lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_563/while/lstm_cell_167/SigmoidSigmoid+lstm_563/while/lstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_563/while/lstm_cell_167/Sigmoid_1Sigmoid+lstm_563/while/lstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_563/while/lstm_cell_167/mulMul*lstm_563/while/lstm_cell_167/Sigmoid_1:y:0lstm_563_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_563/while/lstm_cell_167/ReluRelu+lstm_563/while/lstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/mul_1Mul(lstm_563/while/lstm_cell_167/Sigmoid:y:0/lstm_563/while/lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/add_1AddV2$lstm_563/while/lstm_cell_167/mul:z:0&lstm_563/while/lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_563/while/lstm_cell_167/Sigmoid_2Sigmoid+lstm_563/while/lstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_563/while/lstm_cell_167/Relu_1Relu&lstm_563/while/lstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_563/while/lstm_cell_167/mul_2Mul*lstm_563/while/lstm_cell_167/Sigmoid_2:y:01lstm_563/while/lstm_cell_167/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_563/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_563_while_placeholder_1lstm_563_while_placeholder&lstm_563/while/lstm_cell_167/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_563/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_563/while/addAddV2lstm_563_while_placeholderlstm_563/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_563/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_563/while/add_1AddV2*lstm_563_while_lstm_563_while_loop_counterlstm_563/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_563/while/IdentityIdentitylstm_563/while/add_1:z:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_1Identity0lstm_563_while_lstm_563_while_maximum_iterations^lstm_563/while/NoOp*
T0*
_output_shapes
: t
lstm_563/while/Identity_2Identitylstm_563/while/add:z:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_3IdentityClstm_563/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_563/while/NoOp*
T0*
_output_shapes
: ?
lstm_563/while/Identity_4Identity&lstm_563/while/lstm_cell_167/mul_2:z:0^lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_563/while/Identity_5Identity&lstm_563/while/lstm_cell_167/add_1:z:0^lstm_563/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_563/while/NoOpNoOp4^lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp3^lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp5^lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_563_while_identity lstm_563/while/Identity:output:0"?
lstm_563_while_identity_1"lstm_563/while/Identity_1:output:0"?
lstm_563_while_identity_2"lstm_563/while/Identity_2:output:0"?
lstm_563_while_identity_3"lstm_563/while/Identity_3:output:0"?
lstm_563_while_identity_4"lstm_563/while/Identity_4:output:0"?
lstm_563_while_identity_5"lstm_563/while/Identity_5:output:0"T
'lstm_563_while_lstm_563_strided_slice_1)lstm_563_while_lstm_563_strided_slice_1_0"~
<lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource>lstm_563_while_lstm_cell_167_biasadd_readvariableop_resource_0"?
=lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource?lstm_563_while_lstm_cell_167_matmul_1_readvariableop_resource_0"|
;lstm_563_while_lstm_cell_167_matmul_readvariableop_resource=lstm_563_while_lstm_cell_167_matmul_readvariableop_resource_0"?
clstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensorelstm_563_while_tensorarrayv2read_tensorlistgetitem_lstm_563_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp3lstm_563/while/lstm_cell_167/BiasAdd/ReadVariableOp2h
2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp2lstm_563/while/lstm_cell_167/MatMul/ReadVariableOp2l
4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp4lstm_563/while/lstm_cell_167/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_563_layer_call_fn_1015000
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1011619o
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1012095

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
*__inference_lstm_561_layer_call_fn_1013779

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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1011777s
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
*__inference_lstm_562_layer_call_fn_1014395

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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011927s
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015451

inputs>
,lstm_cell_167_matmul_readvariableop_resource:2(@
.lstm_cell_167_matmul_1_readvariableop_resource:
(;
-lstm_cell_167_biasadd_readvariableop_resource:(
identity??$lstm_cell_167/BiasAdd/ReadVariableOp?#lstm_cell_167/MatMul/ReadVariableOp?%lstm_cell_167/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_167/MatMul/ReadVariableOpReadVariableOp,lstm_cell_167_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_167/MatMulMatMulstrided_slice_2:output:0+lstm_cell_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_167/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_167_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_167/MatMul_1MatMulzeros:output:0-lstm_cell_167/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_167/addAddV2lstm_cell_167/MatMul:product:0 lstm_cell_167/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_167/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_167_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_167/BiasAddBiasAddlstm_cell_167/add:z:0,lstm_cell_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_167/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_167/splitSplit&lstm_cell_167/split/split_dim:output:0lstm_cell_167/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_167/SigmoidSigmoidlstm_cell_167/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_1Sigmoidlstm_cell_167/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_167/mulMullstm_cell_167/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_167/ReluRelulstm_cell_167/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_1Mullstm_cell_167/Sigmoid:y:0 lstm_cell_167/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_167/add_1AddV2lstm_cell_167/mul:z:0lstm_cell_167/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_167/Sigmoid_2Sigmoidlstm_cell_167/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_167/Relu_1Relulstm_cell_167/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_167/mul_2Mullstm_cell_167/Sigmoid_2:y:0"lstm_cell_167/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_167_matmul_readvariableop_resource.lstm_cell_167_matmul_1_readvariableop_resource-lstm_cell_167_biasadd_readvariableop_resource*
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
while_body_1015367*
condR
while_cond_1015366*K
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
NoOpNoOp%^lstm_cell_167/BiasAdd/ReadVariableOp$^lstm_cell_167/MatMul/ReadVariableOp&^lstm_cell_167/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_167/BiasAdd/ReadVariableOp$lstm_cell_167/BiasAdd/ReadVariableOp2J
#lstm_cell_167/MatMul/ReadVariableOp#lstm_cell_167/MatMul/ReadVariableOp2N
%lstm_cell_167/MatMul_1/ReadVariableOp%lstm_cell_167/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1012208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1012208___redundant_placeholder05
1while_while_cond_1012208___redundant_placeholder15
1while_while_cond_1012208___redundant_placeholder25
1while_while_cond_1012208___redundant_placeholder3
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1011269

inputs(
lstm_cell_166_1011187:	d?(
lstm_cell_166_1011189:	2?$
lstm_cell_166_1011191:	?
identity??%lstm_cell_166/StatefulPartitionedCall?while;
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
%lstm_cell_166/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_166_1011187lstm_cell_166_1011189lstm_cell_166_1011191*
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1011141n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_166_1011187lstm_cell_166_1011189lstm_cell_166_1011191*
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
while_body_1011200*
condR
while_cond_1011199*K
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
NoOpNoOp&^lstm_cell_166/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_166/StatefulPartitionedCall%lstm_cell_166/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_167_layer_call_fn_1015843

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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1011491o
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
?
?
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015777

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
lstm_561_input;
 serving_default_lstm_561_input:0?????????=
	dense_1870
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
2dense_187/kernel
:2dense_187/bias
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
0:.	?2lstm_561/lstm_cell_561/kernel
::8	d?2'lstm_561/lstm_cell_561/recurrent_kernel
*:(?2lstm_561/lstm_cell_561/bias
0:.	d?2lstm_562/lstm_cell_562/kernel
::8	2?2'lstm_562/lstm_cell_562/recurrent_kernel
*:(?2lstm_562/lstm_cell_562/bias
/:-2(2lstm_563/lstm_cell_563/kernel
9:7
(2'lstm_563/lstm_cell_563/recurrent_kernel
):'(2lstm_563/lstm_cell_563/bias
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
2Adam/dense_187/kernel/m
!:2Adam/dense_187/bias/m
5:3	?2$Adam/lstm_561/lstm_cell_561/kernel/m
?:=	d?2.Adam/lstm_561/lstm_cell_561/recurrent_kernel/m
/:-?2"Adam/lstm_561/lstm_cell_561/bias/m
5:3	d?2$Adam/lstm_562/lstm_cell_562/kernel/m
?:=	2?2.Adam/lstm_562/lstm_cell_562/recurrent_kernel/m
/:-?2"Adam/lstm_562/lstm_cell_562/bias/m
4:22(2$Adam/lstm_563/lstm_cell_563/kernel/m
>:<
(2.Adam/lstm_563/lstm_cell_563/recurrent_kernel/m
.:,(2"Adam/lstm_563/lstm_cell_563/bias/m
':%
2Adam/dense_187/kernel/v
!:2Adam/dense_187/bias/v
5:3	?2$Adam/lstm_561/lstm_cell_561/kernel/v
?:=	d?2.Adam/lstm_561/lstm_cell_561/recurrent_kernel/v
/:-?2"Adam/lstm_561/lstm_cell_561/bias/v
5:3	d?2$Adam/lstm_562/lstm_cell_562/kernel/v
?:=	2?2.Adam/lstm_562/lstm_cell_562/recurrent_kernel/v
/:-?2"Adam/lstm_562/lstm_cell_562/bias/v
4:22(2$Adam/lstm_563/lstm_cell_563/kernel/v
>:<
(2.Adam/lstm_563/lstm_cell_563/recurrent_kernel/v
.:,(2"Adam/lstm_563/lstm_cell_563/bias/v
?2?
0__inference_sequential_187_layer_call_fn_1012127
0__inference_sequential_187_layer_call_fn_1012865
0__inference_sequential_187_layer_call_fn_1012892
0__inference_sequential_187_layer_call_fn_1012743?
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013319
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013746
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012773
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012803?
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
"__inference__wrapped_model_1010578lstm_561_input"?
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
*__inference_lstm_561_layer_call_fn_1013757
*__inference_lstm_561_layer_call_fn_1013768
*__inference_lstm_561_layer_call_fn_1013779
*__inference_lstm_561_layer_call_fn_1013790?
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1013933
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014076
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014219
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014362?
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
*__inference_lstm_562_layer_call_fn_1014373
*__inference_lstm_562_layer_call_fn_1014384
*__inference_lstm_562_layer_call_fn_1014395
*__inference_lstm_562_layer_call_fn_1014406?
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014549
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014692
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014835
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014978?
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
*__inference_lstm_563_layer_call_fn_1014989
*__inference_lstm_563_layer_call_fn_1015000
*__inference_lstm_563_layer_call_fn_1015011
*__inference_lstm_563_layer_call_fn_1015022?
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015165
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015308
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015451
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015594?
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
+__inference_dense_187_layer_call_fn_1015603?
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
F__inference_dense_187_layer_call_and_return_conditional_losses_1015613?
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
%__inference_signature_wrapper_1012838lstm_561_input"?
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
/__inference_lstm_cell_165_layer_call_fn_1015630
/__inference_lstm_cell_165_layer_call_fn_1015647?
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015679
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015711?
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
/__inference_lstm_cell_166_layer_call_fn_1015728
/__inference_lstm_cell_166_layer_call_fn_1015745?
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015777
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015809?
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
/__inference_lstm_cell_167_layer_call_fn_1015826
/__inference_lstm_cell_167_layer_call_fn_1015843?
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015875
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015907?
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
"__inference__wrapped_model_1010578?-./012345!";?8
1?.
,?)
lstm_561_input?????????
? "5?2
0
	dense_187#? 
	dense_187??????????
F__inference_dense_187_layer_call_and_return_conditional_losses_1015613\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_187_layer_call_fn_1015603O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_561_layer_call_and_return_conditional_losses_1013933?-./O?L
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014076?-./O?L
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014219q-./??<
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
E__inference_lstm_561_layer_call_and_return_conditional_losses_1014362q-./??<
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
*__inference_lstm_561_layer_call_fn_1013757}-./O?L
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
*__inference_lstm_561_layer_call_fn_1013768}-./O?L
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
*__inference_lstm_561_layer_call_fn_1013779d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_561_layer_call_fn_1013790d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014549?012O?L
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014692?012O?L
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014835q012??<
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
E__inference_lstm_562_layer_call_and_return_conditional_losses_1014978q012??<
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
*__inference_lstm_562_layer_call_fn_1014373}012O?L
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
*__inference_lstm_562_layer_call_fn_1014384}012O?L
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
*__inference_lstm_562_layer_call_fn_1014395d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_562_layer_call_fn_1014406d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015165}345O?L
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015308}345O?L
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015451m345??<
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
E__inference_lstm_563_layer_call_and_return_conditional_losses_1015594m345??<
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
*__inference_lstm_563_layer_call_fn_1014989p345O?L
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
*__inference_lstm_563_layer_call_fn_1015000p345O?L
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
*__inference_lstm_563_layer_call_fn_1015011`345??<
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
*__inference_lstm_563_layer_call_fn_1015022`345??<
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015679?-./??}
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
J__inference_lstm_cell_165_layer_call_and_return_conditional_losses_1015711?-./??}
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
/__inference_lstm_cell_165_layer_call_fn_1015630?-./??}
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
/__inference_lstm_cell_165_layer_call_fn_1015647?-./??}
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015777?012??}
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
J__inference_lstm_cell_166_layer_call_and_return_conditional_losses_1015809?012??}
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
/__inference_lstm_cell_166_layer_call_fn_1015728?012??}
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
/__inference_lstm_cell_166_layer_call_fn_1015745?012??}
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015875?345??}
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
J__inference_lstm_cell_167_layer_call_and_return_conditional_losses_1015907?345??}
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
/__inference_lstm_cell_167_layer_call_fn_1015826?345??}
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
/__inference_lstm_cell_167_layer_call_fn_1015843?345??}
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012773y-./012345!"C?@
9?6
,?)
lstm_561_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1012803y-./012345!"C?@
9?6
,?)
lstm_561_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013319q-./012345!";?8
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
K__inference_sequential_187_layer_call_and_return_conditional_losses_1013746q-./012345!";?8
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
0__inference_sequential_187_layer_call_fn_1012127l-./012345!"C?@
9?6
,?)
lstm_561_input?????????
p 

 
? "???????????
0__inference_sequential_187_layer_call_fn_1012743l-./012345!"C?@
9?6
,?)
lstm_561_input?????????
p

 
? "???????????
0__inference_sequential_187_layer_call_fn_1012865d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_187_layer_call_fn_1012892d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1012838?-./012345!"M?J
? 
C?@
>
lstm_561_input,?)
lstm_561_input?????????"5?2
0
	dense_187#? 
	dense_187?????????