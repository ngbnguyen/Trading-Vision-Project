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
dense_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_196/kernel
u
$dense_196/kernel/Read/ReadVariableOpReadVariableOpdense_196/kernel*
_output_shapes

:
*
dtype0
t
dense_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_196/bias
m
"dense_196/bias/Read/ReadVariableOpReadVariableOpdense_196/bias*
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
lstm_588/lstm_cell_588/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_588/lstm_cell_588/kernel
?
1lstm_588/lstm_cell_588/kernel/Read/ReadVariableOpReadVariableOplstm_588/lstm_cell_588/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_588/lstm_cell_588/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_588/lstm_cell_588/recurrent_kernel
?
;lstm_588/lstm_cell_588/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_588/lstm_cell_588/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_588/lstm_cell_588/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_588/lstm_cell_588/bias
?
/lstm_588/lstm_cell_588/bias/Read/ReadVariableOpReadVariableOplstm_588/lstm_cell_588/bias*
_output_shapes	
:?*
dtype0
?
lstm_589/lstm_cell_589/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_589/lstm_cell_589/kernel
?
1lstm_589/lstm_cell_589/kernel/Read/ReadVariableOpReadVariableOplstm_589/lstm_cell_589/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_589/lstm_cell_589/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_589/lstm_cell_589/recurrent_kernel
?
;lstm_589/lstm_cell_589/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_589/lstm_cell_589/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_589/lstm_cell_589/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_589/lstm_cell_589/bias
?
/lstm_589/lstm_cell_589/bias/Read/ReadVariableOpReadVariableOplstm_589/lstm_cell_589/bias*
_output_shapes	
:?*
dtype0
?
lstm_590/lstm_cell_590/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_590/lstm_cell_590/kernel
?
1lstm_590/lstm_cell_590/kernel/Read/ReadVariableOpReadVariableOplstm_590/lstm_cell_590/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_590/lstm_cell_590/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_590/lstm_cell_590/recurrent_kernel
?
;lstm_590/lstm_cell_590/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_590/lstm_cell_590/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_590/lstm_cell_590/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_590/lstm_cell_590/bias
?
/lstm_590/lstm_cell_590/bias/Read/ReadVariableOpReadVariableOplstm_590/lstm_cell_590/bias*
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
Adam/dense_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_196/kernel/m
?
+Adam/dense_196/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_196/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_196/bias/m
{
)Adam/dense_196/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_196/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_588/lstm_cell_588/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_588/lstm_cell_588/kernel/m
?
8Adam/lstm_588/lstm_cell_588/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_588/lstm_cell_588/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_588/lstm_cell_588/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_588/lstm_cell_588/recurrent_kernel/m
?
BAdam/lstm_588/lstm_cell_588/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_588/lstm_cell_588/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_588/lstm_cell_588/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_588/lstm_cell_588/bias/m
?
6Adam/lstm_588/lstm_cell_588/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_588/lstm_cell_588/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_589/lstm_cell_589/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_589/lstm_cell_589/kernel/m
?
8Adam/lstm_589/lstm_cell_589/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_589/lstm_cell_589/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_589/lstm_cell_589/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_589/lstm_cell_589/recurrent_kernel/m
?
BAdam/lstm_589/lstm_cell_589/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_589/lstm_cell_589/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_589/lstm_cell_589/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_589/lstm_cell_589/bias/m
?
6Adam/lstm_589/lstm_cell_589/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_589/lstm_cell_589/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_590/lstm_cell_590/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_590/lstm_cell_590/kernel/m
?
8Adam/lstm_590/lstm_cell_590/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_590/lstm_cell_590/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_590/lstm_cell_590/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_590/lstm_cell_590/recurrent_kernel/m
?
BAdam/lstm_590/lstm_cell_590/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_590/lstm_cell_590/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_590/lstm_cell_590/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_590/lstm_cell_590/bias/m
?
6Adam/lstm_590/lstm_cell_590/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_590/lstm_cell_590/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_196/kernel/v
?
+Adam/dense_196/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_196/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_196/bias/v
{
)Adam/dense_196/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_196/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_588/lstm_cell_588/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_588/lstm_cell_588/kernel/v
?
8Adam/lstm_588/lstm_cell_588/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_588/lstm_cell_588/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_588/lstm_cell_588/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_588/lstm_cell_588/recurrent_kernel/v
?
BAdam/lstm_588/lstm_cell_588/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_588/lstm_cell_588/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_588/lstm_cell_588/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_588/lstm_cell_588/bias/v
?
6Adam/lstm_588/lstm_cell_588/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_588/lstm_cell_588/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_589/lstm_cell_589/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_589/lstm_cell_589/kernel/v
?
8Adam/lstm_589/lstm_cell_589/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_589/lstm_cell_589/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_589/lstm_cell_589/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_589/lstm_cell_589/recurrent_kernel/v
?
BAdam/lstm_589/lstm_cell_589/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_589/lstm_cell_589/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_589/lstm_cell_589/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_589/lstm_cell_589/bias/v
?
6Adam/lstm_589/lstm_cell_589/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_589/lstm_cell_589/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_590/lstm_cell_590/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_590/lstm_cell_590/kernel/v
?
8Adam/lstm_590/lstm_cell_590/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_590/lstm_cell_590/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_590/lstm_cell_590/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_590/lstm_cell_590/recurrent_kernel/v
?
BAdam/lstm_590/lstm_cell_590/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_590/lstm_cell_590/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_590/lstm_cell_590/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_590/lstm_cell_590/bias/v
?
6Adam/lstm_590/lstm_cell_590/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_590/lstm_cell_590/bias/v*
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
VARIABLE_VALUEdense_196/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_196/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_588/lstm_cell_588/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_588/lstm_cell_588/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_588/lstm_cell_588/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_589/lstm_cell_589/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_589/lstm_cell_589/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_589/lstm_cell_589/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_590/lstm_cell_590/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_590/lstm_cell_590/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_590/lstm_cell_590/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_196/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_196/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_588/lstm_cell_588/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_588/lstm_cell_588/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_588/lstm_cell_588/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_589/lstm_cell_589/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_589/lstm_cell_589/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_589/lstm_cell_589/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_590/lstm_cell_590/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_590/lstm_cell_590/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_590/lstm_cell_590/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_196/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_196/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_588/lstm_cell_588/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_588/lstm_cell_588/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_588/lstm_cell_588/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_589/lstm_cell_589/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_589/lstm_cell_589/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_589/lstm_cell_589/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_590/lstm_cell_590/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_590/lstm_cell_590/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_590/lstm_cell_590/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_588_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_588_inputlstm_588/lstm_cell_588/kernel'lstm_588/lstm_cell_588/recurrent_kernellstm_588/lstm_cell_588/biaslstm_589/lstm_cell_589/kernel'lstm_589/lstm_cell_589/recurrent_kernellstm_589/lstm_cell_589/biaslstm_590/lstm_cell_590/kernel'lstm_590/lstm_cell_590/recurrent_kernellstm_590/lstm_cell_590/biasdense_196/kerneldense_196/bias*
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
%__inference_signature_wrapper_3554096
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_196/kernel/Read/ReadVariableOp"dense_196/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_588/lstm_cell_588/kernel/Read/ReadVariableOp;lstm_588/lstm_cell_588/recurrent_kernel/Read/ReadVariableOp/lstm_588/lstm_cell_588/bias/Read/ReadVariableOp1lstm_589/lstm_cell_589/kernel/Read/ReadVariableOp;lstm_589/lstm_cell_589/recurrent_kernel/Read/ReadVariableOp/lstm_589/lstm_cell_589/bias/Read/ReadVariableOp1lstm_590/lstm_cell_590/kernel/Read/ReadVariableOp;lstm_590/lstm_cell_590/recurrent_kernel/Read/ReadVariableOp/lstm_590/lstm_cell_590/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_196/kernel/m/Read/ReadVariableOp)Adam/dense_196/bias/m/Read/ReadVariableOp8Adam/lstm_588/lstm_cell_588/kernel/m/Read/ReadVariableOpBAdam/lstm_588/lstm_cell_588/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_588/lstm_cell_588/bias/m/Read/ReadVariableOp8Adam/lstm_589/lstm_cell_589/kernel/m/Read/ReadVariableOpBAdam/lstm_589/lstm_cell_589/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_589/lstm_cell_589/bias/m/Read/ReadVariableOp8Adam/lstm_590/lstm_cell_590/kernel/m/Read/ReadVariableOpBAdam/lstm_590/lstm_cell_590/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_590/lstm_cell_590/bias/m/Read/ReadVariableOp+Adam/dense_196/kernel/v/Read/ReadVariableOp)Adam/dense_196/bias/v/Read/ReadVariableOp8Adam/lstm_588/lstm_cell_588/kernel/v/Read/ReadVariableOpBAdam/lstm_588/lstm_cell_588/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_588/lstm_cell_588/bias/v/Read/ReadVariableOp8Adam/lstm_589/lstm_cell_589/kernel/v/Read/ReadVariableOpBAdam/lstm_589/lstm_cell_589/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_589/lstm_cell_589/bias/v/Read/ReadVariableOp8Adam/lstm_590/lstm_cell_590/kernel/v/Read/ReadVariableOpBAdam/lstm_590/lstm_cell_590/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_590/lstm_cell_590/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3557308
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_196/kerneldense_196/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_588/lstm_cell_588/kernel'lstm_588/lstm_cell_588/recurrent_kernellstm_588/lstm_cell_588/biaslstm_589/lstm_cell_589/kernel'lstm_589/lstm_cell_589/recurrent_kernellstm_589/lstm_cell_589/biaslstm_590/lstm_cell_590/kernel'lstm_590/lstm_cell_590/recurrent_kernellstm_590/lstm_cell_590/biastotalcountAdam/dense_196/kernel/mAdam/dense_196/bias/m$Adam/lstm_588/lstm_cell_588/kernel/m.Adam/lstm_588/lstm_cell_588/recurrent_kernel/m"Adam/lstm_588/lstm_cell_588/bias/m$Adam/lstm_589/lstm_cell_589/kernel/m.Adam/lstm_589/lstm_cell_589/recurrent_kernel/m"Adam/lstm_589/lstm_cell_589/bias/m$Adam/lstm_590/lstm_cell_590/kernel/m.Adam/lstm_590/lstm_cell_590/recurrent_kernel/m"Adam/lstm_590/lstm_cell_590/bias/mAdam/dense_196/kernel/vAdam/dense_196/bias/v$Adam/lstm_588/lstm_cell_588/kernel/v.Adam/lstm_588/lstm_cell_588/recurrent_kernel/v"Adam/lstm_588/lstm_cell_588/bias/v$Adam/lstm_589/lstm_cell_589/kernel/v.Adam/lstm_589/lstm_cell_589/recurrent_kernel/v"Adam/lstm_589/lstm_cell_589/bias/v$Adam/lstm_590/lstm_cell_590/kernel/v.Adam/lstm_590/lstm_cell_590/recurrent_kernel/v"Adam/lstm_590/lstm_cell_590/bias/v*4
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
#__inference__traced_restore_3557438??+
?8
?
while_body_3556768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_588_layer_call_fn_3555026
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3552177|
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
*__inference_lstm_589_layer_call_fn_3555631
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3552336|
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

lstm_589_while_body_3554775.
*lstm_589_while_lstm_589_while_loop_counter4
0lstm_589_while_lstm_589_while_maximum_iterations
lstm_589_while_placeholder 
lstm_589_while_placeholder_1 
lstm_589_while_placeholder_2 
lstm_589_while_placeholder_3-
)lstm_589_while_lstm_589_strided_slice_1_0i
elstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0:	d?R
?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?M
>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
lstm_589_while_identity
lstm_589_while_identity_1
lstm_589_while_identity_2
lstm_589_while_identity_3
lstm_589_while_identity_4
lstm_589_while_identity_5+
'lstm_589_while_lstm_589_strided_slice_1g
clstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensorN
;lstm_589_while_lstm_cell_586_matmul_readvariableop_resource:	d?P
=lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource:	2?K
<lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource:	???3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp?2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp?4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp?
@lstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_589/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0lstm_589_while_placeholderIlstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_589/while/lstm_cell_586/MatMulMatMul9lstm_589/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_589/while/lstm_cell_586/MatMul_1MatMullstm_589_while_placeholder_2<lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_589/while/lstm_cell_586/addAddV2-lstm_589/while/lstm_cell_586/MatMul:product:0/lstm_589/while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_589/while/lstm_cell_586/BiasAddBiasAdd$lstm_589/while/lstm_cell_586/add:z:0;lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_589/while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_589/while/lstm_cell_586/splitSplit5lstm_589/while/lstm_cell_586/split/split_dim:output:0-lstm_589/while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_589/while/lstm_cell_586/SigmoidSigmoid+lstm_589/while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_589/while/lstm_cell_586/Sigmoid_1Sigmoid+lstm_589/while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_589/while/lstm_cell_586/mulMul*lstm_589/while/lstm_cell_586/Sigmoid_1:y:0lstm_589_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_589/while/lstm_cell_586/ReluRelu+lstm_589/while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/mul_1Mul(lstm_589/while/lstm_cell_586/Sigmoid:y:0/lstm_589/while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/add_1AddV2$lstm_589/while/lstm_cell_586/mul:z:0&lstm_589/while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_589/while/lstm_cell_586/Sigmoid_2Sigmoid+lstm_589/while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_589/while/lstm_cell_586/Relu_1Relu&lstm_589/while/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/mul_2Mul*lstm_589/while/lstm_cell_586/Sigmoid_2:y:01lstm_589/while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_589/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_589_while_placeholder_1lstm_589_while_placeholder&lstm_589/while/lstm_cell_586/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_589/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_589/while/addAddV2lstm_589_while_placeholderlstm_589/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_589/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_589/while/add_1AddV2*lstm_589_while_lstm_589_while_loop_counterlstm_589/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_589/while/IdentityIdentitylstm_589/while/add_1:z:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_1Identity0lstm_589_while_lstm_589_while_maximum_iterations^lstm_589/while/NoOp*
T0*
_output_shapes
: t
lstm_589/while/Identity_2Identitylstm_589/while/add:z:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_3IdentityClstm_589/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_4Identity&lstm_589/while/lstm_cell_586/mul_2:z:0^lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_589/while/Identity_5Identity&lstm_589/while/lstm_cell_586/add_1:z:0^lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_589/while/NoOpNoOp4^lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp3^lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp5^lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_589_while_identity lstm_589/while/Identity:output:0"?
lstm_589_while_identity_1"lstm_589/while/Identity_1:output:0"?
lstm_589_while_identity_2"lstm_589/while/Identity_2:output:0"?
lstm_589_while_identity_3"lstm_589/while/Identity_3:output:0"?
lstm_589_while_identity_4"lstm_589/while/Identity_4:output:0"?
lstm_589_while_identity_5"lstm_589/while/Identity_5:output:0"T
'lstm_589_while_lstm_589_strided_slice_1)lstm_589_while_lstm_589_strided_slice_1_0"~
<lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0"?
=lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0"|
;lstm_589_while_lstm_cell_586_matmul_readvariableop_resource=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0"?
clstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensorelstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp2h
2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp2l
4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553716

inputs?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3553632*
condR
while_cond_3553631*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3553632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3553466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3553466___redundant_placeholder05
1while_while_cond_3553466___redundant_placeholder15
1while_while_cond_3553466___redundant_placeholder25
1while_while_cond_3553466___redundant_placeholder3
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554061
lstm_588_input#
lstm_588_3554034:	?#
lstm_588_3554036:	d?
lstm_588_3554038:	?#
lstm_589_3554041:	d?#
lstm_589_3554043:	2?
lstm_589_3554045:	?"
lstm_590_3554048:2("
lstm_590_3554050:
(
lstm_590_3554052:(#
dense_196_3554055:

dense_196_3554057:
identity??!dense_196/StatefulPartitionedCall? lstm_588/StatefulPartitionedCall? lstm_589/StatefulPartitionedCall? lstm_590/StatefulPartitionedCall?
 lstm_588/StatefulPartitionedCallStatefulPartitionedCalllstm_588_inputlstm_588_3554034lstm_588_3554036lstm_588_3554038*
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553881?
 lstm_589/StatefulPartitionedCallStatefulPartitionedCall)lstm_588/StatefulPartitionedCall:output:0lstm_589_3554041lstm_589_3554043lstm_589_3554045*
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553716?
 lstm_590/StatefulPartitionedCallStatefulPartitionedCall)lstm_589/StatefulPartitionedCall:output:0lstm_590_3554048lstm_590_3554050lstm_590_3554052*
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553551?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_590/StatefulPartitionedCall:output:0dense_196_3554055dense_196_3554057*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353y
IdentityIdentity*dense_196/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_196/StatefulPartitionedCall!^lstm_588/StatefulPartitionedCall!^lstm_589/StatefulPartitionedCall!^lstm_590/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2D
 lstm_588/StatefulPartitionedCall lstm_588/StatefulPartitionedCall2D
 lstm_589/StatefulPartitionedCall lstm_589/StatefulPartitionedCall2D
 lstm_590/StatefulPartitionedCall lstm_590/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_588_input
?
?
*sequential_196_lstm_589_while_cond_3551606L
Hsequential_196_lstm_589_while_sequential_196_lstm_589_while_loop_counterR
Nsequential_196_lstm_589_while_sequential_196_lstm_589_while_maximum_iterations-
)sequential_196_lstm_589_while_placeholder/
+sequential_196_lstm_589_while_placeholder_1/
+sequential_196_lstm_589_while_placeholder_2/
+sequential_196_lstm_589_while_placeholder_3N
Jsequential_196_lstm_589_while_less_sequential_196_lstm_589_strided_slice_1e
asequential_196_lstm_589_while_sequential_196_lstm_589_while_cond_3551606___redundant_placeholder0e
asequential_196_lstm_589_while_sequential_196_lstm_589_while_cond_3551606___redundant_placeholder1e
asequential_196_lstm_589_while_sequential_196_lstm_589_while_cond_3551606___redundant_placeholder2e
asequential_196_lstm_589_while_sequential_196_lstm_589_while_cond_3551606___redundant_placeholder3*
&sequential_196_lstm_589_while_identity
?
"sequential_196/lstm_589/while/LessLess)sequential_196_lstm_589_while_placeholderJsequential_196_lstm_589_while_less_sequential_196_lstm_589_strided_slice_1*
T0*
_output_shapes
: {
&sequential_196/lstm_589/while/IdentityIdentity&sequential_196/lstm_589/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_196_lstm_589_while_identity/sequential_196/lstm_589/while/Identity:output:0*(
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
lstm_590_while_cond_3554486.
*lstm_590_while_lstm_590_while_loop_counter4
0lstm_590_while_lstm_590_while_maximum_iterations
lstm_590_while_placeholder 
lstm_590_while_placeholder_1 
lstm_590_while_placeholder_2 
lstm_590_while_placeholder_30
,lstm_590_while_less_lstm_590_strided_slice_1G
Clstm_590_while_lstm_590_while_cond_3554486___redundant_placeholder0G
Clstm_590_while_lstm_590_while_cond_3554486___redundant_placeholder1G
Clstm_590_while_lstm_590_while_cond_3554486___redundant_placeholder2G
Clstm_590_while_lstm_590_while_cond_3554486___redundant_placeholder3
lstm_590_while_identity
?
lstm_590/while/LessLesslstm_590_while_placeholder,lstm_590_while_less_lstm_590_strided_slice_1*
T0*
_output_shapes
: ]
lstm_590/while/IdentityIdentitylstm_590/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_590_while_identity lstm_590/while/Identity:output:0*(
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555477

inputs?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3555393*
condR
while_cond_3555392*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_590_while_body_3554487.
*lstm_590_while_lstm_590_while_loop_counter4
0lstm_590_while_lstm_590_while_maximum_iterations
lstm_590_while_placeholder 
lstm_590_while_placeholder_1 
lstm_590_while_placeholder_2 
lstm_590_while_placeholder_3-
)lstm_590_while_lstm_590_strided_slice_1_0i
elstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0:2(Q
?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(L
>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0:(
lstm_590_while_identity
lstm_590_while_identity_1
lstm_590_while_identity_2
lstm_590_while_identity_3
lstm_590_while_identity_4
lstm_590_while_identity_5+
'lstm_590_while_lstm_590_strided_slice_1g
clstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensorM
;lstm_590_while_lstm_cell_587_matmul_readvariableop_resource:2(O
=lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource:
(J
<lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource:(??3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp?2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp?4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp?
@lstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_590/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0lstm_590_while_placeholderIlstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_590/while/lstm_cell_587/MatMulMatMul9lstm_590/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_590/while/lstm_cell_587/MatMul_1MatMullstm_590_while_placeholder_2<lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_590/while/lstm_cell_587/addAddV2-lstm_590/while/lstm_cell_587/MatMul:product:0/lstm_590/while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_590/while/lstm_cell_587/BiasAddBiasAdd$lstm_590/while/lstm_cell_587/add:z:0;lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_590/while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_590/while/lstm_cell_587/splitSplit5lstm_590/while/lstm_cell_587/split/split_dim:output:0-lstm_590/while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_590/while/lstm_cell_587/SigmoidSigmoid+lstm_590/while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_590/while/lstm_cell_587/Sigmoid_1Sigmoid+lstm_590/while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_590/while/lstm_cell_587/mulMul*lstm_590/while/lstm_cell_587/Sigmoid_1:y:0lstm_590_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_590/while/lstm_cell_587/ReluRelu+lstm_590/while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/mul_1Mul(lstm_590/while/lstm_cell_587/Sigmoid:y:0/lstm_590/while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/add_1AddV2$lstm_590/while/lstm_cell_587/mul:z:0&lstm_590/while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_590/while/lstm_cell_587/Sigmoid_2Sigmoid+lstm_590/while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_590/while/lstm_cell_587/Relu_1Relu&lstm_590/while/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/mul_2Mul*lstm_590/while/lstm_cell_587/Sigmoid_2:y:01lstm_590/while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_590/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_590_while_placeholder_1lstm_590_while_placeholder&lstm_590/while/lstm_cell_587/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_590/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_590/while/addAddV2lstm_590_while_placeholderlstm_590/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_590/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_590/while/add_1AddV2*lstm_590_while_lstm_590_while_loop_counterlstm_590/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_590/while/IdentityIdentitylstm_590/while/add_1:z:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_1Identity0lstm_590_while_lstm_590_while_maximum_iterations^lstm_590/while/NoOp*
T0*
_output_shapes
: t
lstm_590/while/Identity_2Identitylstm_590/while/add:z:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_3IdentityClstm_590/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_4Identity&lstm_590/while/lstm_cell_587/mul_2:z:0^lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_590/while/Identity_5Identity&lstm_590/while/lstm_cell_587/add_1:z:0^lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_590/while/NoOpNoOp4^lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp3^lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp5^lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_590_while_identity lstm_590/while/Identity:output:0"?
lstm_590_while_identity_1"lstm_590/while/Identity_1:output:0"?
lstm_590_while_identity_2"lstm_590/while/Identity_2:output:0"?
lstm_590_while_identity_3"lstm_590/while/Identity_3:output:0"?
lstm_590_while_identity_4"lstm_590/while/Identity_4:output:0"?
lstm_590_while_identity_5"lstm_590/while/Identity_5:output:0"T
'lstm_590_while_lstm_590_strided_slice_1)lstm_590_while_lstm_590_strided_slice_1_0"~
<lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0"?
=lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0"|
;lstm_590_while_lstm_cell_587_matmul_readvariableop_resource=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0"?
clstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensorelstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp2h
2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp2l
4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_196_lstm_588_while_cond_3551467L
Hsequential_196_lstm_588_while_sequential_196_lstm_588_while_loop_counterR
Nsequential_196_lstm_588_while_sequential_196_lstm_588_while_maximum_iterations-
)sequential_196_lstm_588_while_placeholder/
+sequential_196_lstm_588_while_placeholder_1/
+sequential_196_lstm_588_while_placeholder_2/
+sequential_196_lstm_588_while_placeholder_3N
Jsequential_196_lstm_588_while_less_sequential_196_lstm_588_strided_slice_1e
asequential_196_lstm_588_while_sequential_196_lstm_588_while_cond_3551467___redundant_placeholder0e
asequential_196_lstm_588_while_sequential_196_lstm_588_while_cond_3551467___redundant_placeholder1e
asequential_196_lstm_588_while_sequential_196_lstm_588_while_cond_3551467___redundant_placeholder2e
asequential_196_lstm_588_while_sequential_196_lstm_588_while_cond_3551467___redundant_placeholder3*
&sequential_196_lstm_588_while_identity
?
"sequential_196/lstm_588/while/LessLess)sequential_196_lstm_588_while_placeholderJsequential_196_lstm_588_while_less_sequential_196_lstm_588_strided_slice_1*
T0*
_output_shapes
: {
&sequential_196/lstm_588/while/IdentityIdentity&sequential_196/lstm_588/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_196_lstm_588_while_identity/sequential_196/lstm_588/while/Identity:output:0*(
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
while_cond_3555865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555865___redundant_placeholder05
1while_while_cond_3555865___redundant_placeholder15
1while_while_cond_3555865___redundant_placeholder25
1while_while_cond_3555865___redundant_placeholder3
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
while_cond_3552457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552457___redundant_placeholder05
1while_while_cond_3552457___redundant_placeholder15
1while_while_cond_3552457___redundant_placeholder25
1while_while_cond_3552457___redundant_placeholder3
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
while_body_3556339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3555722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555722___redundant_placeholder05
1while_while_cond_3555722___redundant_placeholder15
1while_while_cond_3555722___redundant_placeholder25
1while_while_cond_3555722___redundant_placeholder3
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553035

inputs?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3552951*
condR
while_cond_3552950*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3556767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556767___redundant_placeholder05
1while_while_cond_3556767___redundant_placeholder15
1while_while_cond_3556767___redundant_placeholder25
1while_while_cond_3556767___redundant_placeholder3
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
%__inference_signature_wrapper_3554096
lstm_588_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_588_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3551836o
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
_user_specified_namelstm_588_input
?K
?
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555191
inputs_0?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3555107*
condR
while_cond_3555106*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_589_while_body_3554348.
*lstm_589_while_lstm_589_while_loop_counter4
0lstm_589_while_lstm_589_while_maximum_iterations
lstm_589_while_placeholder 
lstm_589_while_placeholder_1 
lstm_589_while_placeholder_2 
lstm_589_while_placeholder_3-
)lstm_589_while_lstm_589_strided_slice_1_0i
elstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0:	d?R
?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?M
>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
lstm_589_while_identity
lstm_589_while_identity_1
lstm_589_while_identity_2
lstm_589_while_identity_3
lstm_589_while_identity_4
lstm_589_while_identity_5+
'lstm_589_while_lstm_589_strided_slice_1g
clstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensorN
;lstm_589_while_lstm_cell_586_matmul_readvariableop_resource:	d?P
=lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource:	2?K
<lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource:	???3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp?2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp?4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp?
@lstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_589/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0lstm_589_while_placeholderIlstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_589/while/lstm_cell_586/MatMulMatMul9lstm_589/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_589/while/lstm_cell_586/MatMul_1MatMullstm_589_while_placeholder_2<lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_589/while/lstm_cell_586/addAddV2-lstm_589/while/lstm_cell_586/MatMul:product:0/lstm_589/while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_589/while/lstm_cell_586/BiasAddBiasAdd$lstm_589/while/lstm_cell_586/add:z:0;lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_589/while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_589/while/lstm_cell_586/splitSplit5lstm_589/while/lstm_cell_586/split/split_dim:output:0-lstm_589/while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_589/while/lstm_cell_586/SigmoidSigmoid+lstm_589/while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_589/while/lstm_cell_586/Sigmoid_1Sigmoid+lstm_589/while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_589/while/lstm_cell_586/mulMul*lstm_589/while/lstm_cell_586/Sigmoid_1:y:0lstm_589_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_589/while/lstm_cell_586/ReluRelu+lstm_589/while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/mul_1Mul(lstm_589/while/lstm_cell_586/Sigmoid:y:0/lstm_589/while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/add_1AddV2$lstm_589/while/lstm_cell_586/mul:z:0&lstm_589/while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_589/while/lstm_cell_586/Sigmoid_2Sigmoid+lstm_589/while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_589/while/lstm_cell_586/Relu_1Relu&lstm_589/while/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_589/while/lstm_cell_586/mul_2Mul*lstm_589/while/lstm_cell_586/Sigmoid_2:y:01lstm_589/while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_589/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_589_while_placeholder_1lstm_589_while_placeholder&lstm_589/while/lstm_cell_586/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_589/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_589/while/addAddV2lstm_589_while_placeholderlstm_589/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_589/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_589/while/add_1AddV2*lstm_589_while_lstm_589_while_loop_counterlstm_589/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_589/while/IdentityIdentitylstm_589/while/add_1:z:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_1Identity0lstm_589_while_lstm_589_while_maximum_iterations^lstm_589/while/NoOp*
T0*
_output_shapes
: t
lstm_589/while/Identity_2Identitylstm_589/while/add:z:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_3IdentityClstm_589/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_589/while/NoOp*
T0*
_output_shapes
: ?
lstm_589/while/Identity_4Identity&lstm_589/while/lstm_cell_586/mul_2:z:0^lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_589/while/Identity_5Identity&lstm_589/while/lstm_cell_586/add_1:z:0^lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_589/while/NoOpNoOp4^lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp3^lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp5^lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_589_while_identity lstm_589/while/Identity:output:0"?
lstm_589_while_identity_1"lstm_589/while/Identity_1:output:0"?
lstm_589_while_identity_2"lstm_589/while/Identity_2:output:0"?
lstm_589_while_identity_3"lstm_589/while/Identity_3:output:0"?
lstm_589_while_identity_4"lstm_589/while/Identity_4:output:0"?
lstm_589_while_identity_5"lstm_589/while/Identity_5:output:0"T
'lstm_589_while_lstm_589_strided_slice_1)lstm_589_while_lstm_589_strided_slice_1_0"~
<lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource>lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0"?
=lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource?lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0"|
;lstm_589_while_lstm_cell_586_matmul_readvariableop_resource=lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0"?
clstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensorelstm_589_while_tensorarrayv2read_tensorlistgetitem_lstm_589_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp3lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp2h
2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp2lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp2l
4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp4lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_588_layer_call_fn_3555015
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3551986|
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
?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554031
lstm_588_input#
lstm_588_3554004:	?#
lstm_588_3554006:	d?
lstm_588_3554008:	?#
lstm_589_3554011:	d?#
lstm_589_3554013:	2?
lstm_589_3554015:	?"
lstm_590_3554018:2("
lstm_590_3554020:
(
lstm_590_3554022:(#
dense_196_3554025:

dense_196_3554027:
identity??!dense_196/StatefulPartitionedCall? lstm_588/StatefulPartitionedCall? lstm_589/StatefulPartitionedCall? lstm_590/StatefulPartitionedCall?
 lstm_588/StatefulPartitionedCallStatefulPartitionedCalllstm_588_inputlstm_588_3554004lstm_588_3554006lstm_588_3554008*
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553035?
 lstm_589/StatefulPartitionedCallStatefulPartitionedCall)lstm_588/StatefulPartitionedCall:output:0lstm_589_3554011lstm_589_3554013lstm_589_3554015*
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553185?
 lstm_590/StatefulPartitionedCallStatefulPartitionedCall)lstm_589/StatefulPartitionedCall:output:0lstm_590_3554018lstm_590_3554020lstm_590_3554022*
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553335?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_590/StatefulPartitionedCall:output:0dense_196_3554025dense_196_3554027*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353y
IdentityIdentity*dense_196/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_196/StatefulPartitionedCall!^lstm_588/StatefulPartitionedCall!^lstm_589/StatefulPartitionedCall!^lstm_590/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2D
 lstm_588/StatefulPartitionedCall lstm_588/StatefulPartitionedCall2D
 lstm_589/StatefulPartitionedCall lstm_589/StatefulPartitionedCall2D
 lstm_590/StatefulPartitionedCall lstm_590/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_588_input
??
?
"__inference__wrapped_model_3551836
lstm_588_inputW
Dsequential_196_lstm_588_lstm_cell_585_matmul_readvariableop_resource:	?Y
Fsequential_196_lstm_588_lstm_cell_585_matmul_1_readvariableop_resource:	d?T
Esequential_196_lstm_588_lstm_cell_585_biasadd_readvariableop_resource:	?W
Dsequential_196_lstm_589_lstm_cell_586_matmul_readvariableop_resource:	d?Y
Fsequential_196_lstm_589_lstm_cell_586_matmul_1_readvariableop_resource:	2?T
Esequential_196_lstm_589_lstm_cell_586_biasadd_readvariableop_resource:	?V
Dsequential_196_lstm_590_lstm_cell_587_matmul_readvariableop_resource:2(X
Fsequential_196_lstm_590_lstm_cell_587_matmul_1_readvariableop_resource:
(S
Esequential_196_lstm_590_lstm_cell_587_biasadd_readvariableop_resource:(I
7sequential_196_dense_196_matmul_readvariableop_resource:
F
8sequential_196_dense_196_biasadd_readvariableop_resource:
identity??/sequential_196/dense_196/BiasAdd/ReadVariableOp?.sequential_196/dense_196/MatMul/ReadVariableOp?<sequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp?;sequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOp?=sequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp?sequential_196/lstm_588/while?<sequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp?;sequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOp?=sequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp?sequential_196/lstm_589/while?<sequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp?;sequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOp?=sequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp?sequential_196/lstm_590/while[
sequential_196/lstm_588/ShapeShapelstm_588_input*
T0*
_output_shapes
:u
+sequential_196/lstm_588/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_196/lstm_588/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_196/lstm_588/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_196/lstm_588/strided_sliceStridedSlice&sequential_196/lstm_588/Shape:output:04sequential_196/lstm_588/strided_slice/stack:output:06sequential_196/lstm_588/strided_slice/stack_1:output:06sequential_196/lstm_588/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_196/lstm_588/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_196/lstm_588/zeros/packedPack.sequential_196/lstm_588/strided_slice:output:0/sequential_196/lstm_588/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_196/lstm_588/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_588/zerosFill-sequential_196/lstm_588/zeros/packed:output:0,sequential_196/lstm_588/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_196/lstm_588/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_196/lstm_588/zeros_1/packedPack.sequential_196/lstm_588/strided_slice:output:01sequential_196/lstm_588/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_196/lstm_588/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_588/zeros_1Fill/sequential_196/lstm_588/zeros_1/packed:output:0.sequential_196/lstm_588/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_196/lstm_588/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_196/lstm_588/transpose	Transposelstm_588_input/sequential_196/lstm_588/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_196/lstm_588/Shape_1Shape%sequential_196/lstm_588/transpose:y:0*
T0*
_output_shapes
:w
-sequential_196/lstm_588/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_588/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_588/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_588/strided_slice_1StridedSlice(sequential_196/lstm_588/Shape_1:output:06sequential_196/lstm_588/strided_slice_1/stack:output:08sequential_196/lstm_588/strided_slice_1/stack_1:output:08sequential_196/lstm_588/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_196/lstm_588/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_196/lstm_588/TensorArrayV2TensorListReserve<sequential_196/lstm_588/TensorArrayV2/element_shape:output:00sequential_196/lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_196/lstm_588/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_196/lstm_588/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_196/lstm_588/transpose:y:0Vsequential_196/lstm_588/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_196/lstm_588/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_588/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_588/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_588/strided_slice_2StridedSlice%sequential_196/lstm_588/transpose:y:06sequential_196/lstm_588/strided_slice_2/stack:output:08sequential_196/lstm_588/strided_slice_2/stack_1:output:08sequential_196/lstm_588/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOpReadVariableOpDsequential_196_lstm_588_lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_196/lstm_588/lstm_cell_585/MatMulMatMul0sequential_196/lstm_588/strided_slice_2:output:0Csequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOpFsequential_196_lstm_588_lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_196/lstm_588/lstm_cell_585/MatMul_1MatMul&sequential_196/lstm_588/zeros:output:0Esequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_196/lstm_588/lstm_cell_585/addAddV26sequential_196/lstm_588/lstm_cell_585/MatMul:product:08sequential_196/lstm_588/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOpEsequential_196_lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_196/lstm_588/lstm_cell_585/BiasAddBiasAdd-sequential_196/lstm_588/lstm_cell_585/add:z:0Dsequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_196/lstm_588/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_196/lstm_588/lstm_cell_585/splitSplit>sequential_196/lstm_588/lstm_cell_585/split/split_dim:output:06sequential_196/lstm_588/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_196/lstm_588/lstm_cell_585/SigmoidSigmoid4sequential_196/lstm_588/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_196/lstm_588/lstm_cell_585/Sigmoid_1Sigmoid4sequential_196/lstm_588/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_196/lstm_588/lstm_cell_585/mulMul3sequential_196/lstm_588/lstm_cell_585/Sigmoid_1:y:0(sequential_196/lstm_588/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_196/lstm_588/lstm_cell_585/ReluRelu4sequential_196/lstm_588/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_196/lstm_588/lstm_cell_585/mul_1Mul1sequential_196/lstm_588/lstm_cell_585/Sigmoid:y:08sequential_196/lstm_588/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_196/lstm_588/lstm_cell_585/add_1AddV2-sequential_196/lstm_588/lstm_cell_585/mul:z:0/sequential_196/lstm_588/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_196/lstm_588/lstm_cell_585/Sigmoid_2Sigmoid4sequential_196/lstm_588/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_196/lstm_588/lstm_cell_585/Relu_1Relu/sequential_196/lstm_588/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_196/lstm_588/lstm_cell_585/mul_2Mul3sequential_196/lstm_588/lstm_cell_585/Sigmoid_2:y:0:sequential_196/lstm_588/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_196/lstm_588/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_196/lstm_588/TensorArrayV2_1TensorListReserve>sequential_196/lstm_588/TensorArrayV2_1/element_shape:output:00sequential_196/lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_196/lstm_588/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_196/lstm_588/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_196/lstm_588/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_196/lstm_588/whileWhile3sequential_196/lstm_588/while/loop_counter:output:09sequential_196/lstm_588/while/maximum_iterations:output:0%sequential_196/lstm_588/time:output:00sequential_196/lstm_588/TensorArrayV2_1:handle:0&sequential_196/lstm_588/zeros:output:0(sequential_196/lstm_588/zeros_1:output:00sequential_196/lstm_588/strided_slice_1:output:0Osequential_196/lstm_588/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_196_lstm_588_lstm_cell_585_matmul_readvariableop_resourceFsequential_196_lstm_588_lstm_cell_585_matmul_1_readvariableop_resourceEsequential_196_lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
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
*sequential_196_lstm_588_while_body_3551468*6
cond.R,
*sequential_196_lstm_588_while_cond_3551467*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_196/lstm_588/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_196/lstm_588/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_196/lstm_588/while:output:3Qsequential_196/lstm_588/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_196/lstm_588/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_196/lstm_588/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_588/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_588/strided_slice_3StridedSliceCsequential_196/lstm_588/TensorArrayV2Stack/TensorListStack:tensor:06sequential_196/lstm_588/strided_slice_3/stack:output:08sequential_196/lstm_588/strided_slice_3/stack_1:output:08sequential_196/lstm_588/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_196/lstm_588/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_196/lstm_588/transpose_1	TransposeCsequential_196/lstm_588/TensorArrayV2Stack/TensorListStack:tensor:01sequential_196/lstm_588/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_196/lstm_588/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_196/lstm_589/ShapeShape'sequential_196/lstm_588/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_196/lstm_589/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_196/lstm_589/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_196/lstm_589/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_196/lstm_589/strided_sliceStridedSlice&sequential_196/lstm_589/Shape:output:04sequential_196/lstm_589/strided_slice/stack:output:06sequential_196/lstm_589/strided_slice/stack_1:output:06sequential_196/lstm_589/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_196/lstm_589/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_196/lstm_589/zeros/packedPack.sequential_196/lstm_589/strided_slice:output:0/sequential_196/lstm_589/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_196/lstm_589/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_589/zerosFill-sequential_196/lstm_589/zeros/packed:output:0,sequential_196/lstm_589/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_196/lstm_589/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_196/lstm_589/zeros_1/packedPack.sequential_196/lstm_589/strided_slice:output:01sequential_196/lstm_589/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_196/lstm_589/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_589/zeros_1Fill/sequential_196/lstm_589/zeros_1/packed:output:0.sequential_196/lstm_589/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_196/lstm_589/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_196/lstm_589/transpose	Transpose'sequential_196/lstm_588/transpose_1:y:0/sequential_196/lstm_589/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_196/lstm_589/Shape_1Shape%sequential_196/lstm_589/transpose:y:0*
T0*
_output_shapes
:w
-sequential_196/lstm_589/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_589/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_589/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_589/strided_slice_1StridedSlice(sequential_196/lstm_589/Shape_1:output:06sequential_196/lstm_589/strided_slice_1/stack:output:08sequential_196/lstm_589/strided_slice_1/stack_1:output:08sequential_196/lstm_589/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_196/lstm_589/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_196/lstm_589/TensorArrayV2TensorListReserve<sequential_196/lstm_589/TensorArrayV2/element_shape:output:00sequential_196/lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_196/lstm_589/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_196/lstm_589/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_196/lstm_589/transpose:y:0Vsequential_196/lstm_589/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_196/lstm_589/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_589/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_589/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_589/strided_slice_2StridedSlice%sequential_196/lstm_589/transpose:y:06sequential_196/lstm_589/strided_slice_2/stack:output:08sequential_196/lstm_589/strided_slice_2/stack_1:output:08sequential_196/lstm_589/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOpReadVariableOpDsequential_196_lstm_589_lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_196/lstm_589/lstm_cell_586/MatMulMatMul0sequential_196/lstm_589/strided_slice_2:output:0Csequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOpFsequential_196_lstm_589_lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_196/lstm_589/lstm_cell_586/MatMul_1MatMul&sequential_196/lstm_589/zeros:output:0Esequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_196/lstm_589/lstm_cell_586/addAddV26sequential_196/lstm_589/lstm_cell_586/MatMul:product:08sequential_196/lstm_589/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOpEsequential_196_lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_196/lstm_589/lstm_cell_586/BiasAddBiasAdd-sequential_196/lstm_589/lstm_cell_586/add:z:0Dsequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_196/lstm_589/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_196/lstm_589/lstm_cell_586/splitSplit>sequential_196/lstm_589/lstm_cell_586/split/split_dim:output:06sequential_196/lstm_589/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_196/lstm_589/lstm_cell_586/SigmoidSigmoid4sequential_196/lstm_589/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_196/lstm_589/lstm_cell_586/Sigmoid_1Sigmoid4sequential_196/lstm_589/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_196/lstm_589/lstm_cell_586/mulMul3sequential_196/lstm_589/lstm_cell_586/Sigmoid_1:y:0(sequential_196/lstm_589/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_196/lstm_589/lstm_cell_586/ReluRelu4sequential_196/lstm_589/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_196/lstm_589/lstm_cell_586/mul_1Mul1sequential_196/lstm_589/lstm_cell_586/Sigmoid:y:08sequential_196/lstm_589/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_196/lstm_589/lstm_cell_586/add_1AddV2-sequential_196/lstm_589/lstm_cell_586/mul:z:0/sequential_196/lstm_589/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_196/lstm_589/lstm_cell_586/Sigmoid_2Sigmoid4sequential_196/lstm_589/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_196/lstm_589/lstm_cell_586/Relu_1Relu/sequential_196/lstm_589/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_196/lstm_589/lstm_cell_586/mul_2Mul3sequential_196/lstm_589/lstm_cell_586/Sigmoid_2:y:0:sequential_196/lstm_589/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_196/lstm_589/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_196/lstm_589/TensorArrayV2_1TensorListReserve>sequential_196/lstm_589/TensorArrayV2_1/element_shape:output:00sequential_196/lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_196/lstm_589/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_196/lstm_589/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_196/lstm_589/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_196/lstm_589/whileWhile3sequential_196/lstm_589/while/loop_counter:output:09sequential_196/lstm_589/while/maximum_iterations:output:0%sequential_196/lstm_589/time:output:00sequential_196/lstm_589/TensorArrayV2_1:handle:0&sequential_196/lstm_589/zeros:output:0(sequential_196/lstm_589/zeros_1:output:00sequential_196/lstm_589/strided_slice_1:output:0Osequential_196/lstm_589/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_196_lstm_589_lstm_cell_586_matmul_readvariableop_resourceFsequential_196_lstm_589_lstm_cell_586_matmul_1_readvariableop_resourceEsequential_196_lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
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
*sequential_196_lstm_589_while_body_3551607*6
cond.R,
*sequential_196_lstm_589_while_cond_3551606*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_196/lstm_589/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_196/lstm_589/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_196/lstm_589/while:output:3Qsequential_196/lstm_589/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_196/lstm_589/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_196/lstm_589/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_589/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_589/strided_slice_3StridedSliceCsequential_196/lstm_589/TensorArrayV2Stack/TensorListStack:tensor:06sequential_196/lstm_589/strided_slice_3/stack:output:08sequential_196/lstm_589/strided_slice_3/stack_1:output:08sequential_196/lstm_589/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_196/lstm_589/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_196/lstm_589/transpose_1	TransposeCsequential_196/lstm_589/TensorArrayV2Stack/TensorListStack:tensor:01sequential_196/lstm_589/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_196/lstm_589/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_196/lstm_590/ShapeShape'sequential_196/lstm_589/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_196/lstm_590/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_196/lstm_590/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_196/lstm_590/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_196/lstm_590/strided_sliceStridedSlice&sequential_196/lstm_590/Shape:output:04sequential_196/lstm_590/strided_slice/stack:output:06sequential_196/lstm_590/strided_slice/stack_1:output:06sequential_196/lstm_590/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_196/lstm_590/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_196/lstm_590/zeros/packedPack.sequential_196/lstm_590/strided_slice:output:0/sequential_196/lstm_590/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_196/lstm_590/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_590/zerosFill-sequential_196/lstm_590/zeros/packed:output:0,sequential_196/lstm_590/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_196/lstm_590/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_196/lstm_590/zeros_1/packedPack.sequential_196/lstm_590/strided_slice:output:01sequential_196/lstm_590/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_196/lstm_590/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_196/lstm_590/zeros_1Fill/sequential_196/lstm_590/zeros_1/packed:output:0.sequential_196/lstm_590/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_196/lstm_590/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_196/lstm_590/transpose	Transpose'sequential_196/lstm_589/transpose_1:y:0/sequential_196/lstm_590/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_196/lstm_590/Shape_1Shape%sequential_196/lstm_590/transpose:y:0*
T0*
_output_shapes
:w
-sequential_196/lstm_590/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_590/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_590/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_590/strided_slice_1StridedSlice(sequential_196/lstm_590/Shape_1:output:06sequential_196/lstm_590/strided_slice_1/stack:output:08sequential_196/lstm_590/strided_slice_1/stack_1:output:08sequential_196/lstm_590/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_196/lstm_590/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_196/lstm_590/TensorArrayV2TensorListReserve<sequential_196/lstm_590/TensorArrayV2/element_shape:output:00sequential_196/lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_196/lstm_590/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_196/lstm_590/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_196/lstm_590/transpose:y:0Vsequential_196/lstm_590/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_196/lstm_590/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_590/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_196/lstm_590/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_590/strided_slice_2StridedSlice%sequential_196/lstm_590/transpose:y:06sequential_196/lstm_590/strided_slice_2/stack:output:08sequential_196/lstm_590/strided_slice_2/stack_1:output:08sequential_196/lstm_590/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOpReadVariableOpDsequential_196_lstm_590_lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_196/lstm_590/lstm_cell_587/MatMulMatMul0sequential_196/lstm_590/strided_slice_2:output:0Csequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOpFsequential_196_lstm_590_lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_196/lstm_590/lstm_cell_587/MatMul_1MatMul&sequential_196/lstm_590/zeros:output:0Esequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_196/lstm_590/lstm_cell_587/addAddV26sequential_196/lstm_590/lstm_cell_587/MatMul:product:08sequential_196/lstm_590/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOpEsequential_196_lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_196/lstm_590/lstm_cell_587/BiasAddBiasAdd-sequential_196/lstm_590/lstm_cell_587/add:z:0Dsequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_196/lstm_590/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_196/lstm_590/lstm_cell_587/splitSplit>sequential_196/lstm_590/lstm_cell_587/split/split_dim:output:06sequential_196/lstm_590/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_196/lstm_590/lstm_cell_587/SigmoidSigmoid4sequential_196/lstm_590/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_196/lstm_590/lstm_cell_587/Sigmoid_1Sigmoid4sequential_196/lstm_590/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_196/lstm_590/lstm_cell_587/mulMul3sequential_196/lstm_590/lstm_cell_587/Sigmoid_1:y:0(sequential_196/lstm_590/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_196/lstm_590/lstm_cell_587/ReluRelu4sequential_196/lstm_590/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_196/lstm_590/lstm_cell_587/mul_1Mul1sequential_196/lstm_590/lstm_cell_587/Sigmoid:y:08sequential_196/lstm_590/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_196/lstm_590/lstm_cell_587/add_1AddV2-sequential_196/lstm_590/lstm_cell_587/mul:z:0/sequential_196/lstm_590/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_196/lstm_590/lstm_cell_587/Sigmoid_2Sigmoid4sequential_196/lstm_590/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_196/lstm_590/lstm_cell_587/Relu_1Relu/sequential_196/lstm_590/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_196/lstm_590/lstm_cell_587/mul_2Mul3sequential_196/lstm_590/lstm_cell_587/Sigmoid_2:y:0:sequential_196/lstm_590/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_196/lstm_590/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_196/lstm_590/TensorArrayV2_1TensorListReserve>sequential_196/lstm_590/TensorArrayV2_1/element_shape:output:00sequential_196/lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_196/lstm_590/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_196/lstm_590/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_196/lstm_590/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_196/lstm_590/whileWhile3sequential_196/lstm_590/while/loop_counter:output:09sequential_196/lstm_590/while/maximum_iterations:output:0%sequential_196/lstm_590/time:output:00sequential_196/lstm_590/TensorArrayV2_1:handle:0&sequential_196/lstm_590/zeros:output:0(sequential_196/lstm_590/zeros_1:output:00sequential_196/lstm_590/strided_slice_1:output:0Osequential_196/lstm_590/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_196_lstm_590_lstm_cell_587_matmul_readvariableop_resourceFsequential_196_lstm_590_lstm_cell_587_matmul_1_readvariableop_resourceEsequential_196_lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
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
*sequential_196_lstm_590_while_body_3551746*6
cond.R,
*sequential_196_lstm_590_while_cond_3551745*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_196/lstm_590/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_196/lstm_590/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_196/lstm_590/while:output:3Qsequential_196/lstm_590/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_196/lstm_590/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_196/lstm_590/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_196/lstm_590/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_196/lstm_590/strided_slice_3StridedSliceCsequential_196/lstm_590/TensorArrayV2Stack/TensorListStack:tensor:06sequential_196/lstm_590/strided_slice_3/stack:output:08sequential_196/lstm_590/strided_slice_3/stack_1:output:08sequential_196/lstm_590/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_196/lstm_590/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_196/lstm_590/transpose_1	TransposeCsequential_196/lstm_590/TensorArrayV2Stack/TensorListStack:tensor:01sequential_196/lstm_590/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_196/lstm_590/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_196/dense_196/MatMul/ReadVariableOpReadVariableOp7sequential_196_dense_196_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_196/dense_196/MatMulMatMul0sequential_196/lstm_590/strided_slice_3:output:06sequential_196/dense_196/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_196/dense_196/BiasAdd/ReadVariableOpReadVariableOp8sequential_196_dense_196_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_196/dense_196/BiasAddBiasAdd)sequential_196/dense_196/MatMul:product:07sequential_196/dense_196/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_196/dense_196/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_196/dense_196/BiasAdd/ReadVariableOp/^sequential_196/dense_196/MatMul/ReadVariableOp=^sequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp<^sequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOp>^sequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp^sequential_196/lstm_588/while=^sequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp<^sequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOp>^sequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp^sequential_196/lstm_589/while=^sequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp<^sequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOp>^sequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp^sequential_196/lstm_590/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_196/dense_196/BiasAdd/ReadVariableOp/sequential_196/dense_196/BiasAdd/ReadVariableOp2`
.sequential_196/dense_196/MatMul/ReadVariableOp.sequential_196/dense_196/MatMul/ReadVariableOp2|
<sequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp<sequential_196/lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp2z
;sequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOp;sequential_196/lstm_588/lstm_cell_585/MatMul/ReadVariableOp2~
=sequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp=sequential_196/lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp2>
sequential_196/lstm_588/whilesequential_196/lstm_588/while2|
<sequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp<sequential_196/lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp2z
;sequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOp;sequential_196/lstm_589/lstm_cell_586/MatMul/ReadVariableOp2~
=sequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp=sequential_196/lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp2>
sequential_196/lstm_589/whilesequential_196/lstm_589/while2|
<sequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp<sequential_196/lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp2z
;sequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOp;sequential_196/lstm_590/lstm_cell_587/MatMul/ReadVariableOp2~
=sequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp=sequential_196/lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp2>
sequential_196/lstm_590/whilesequential_196/lstm_590/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_588_input
?C
?

lstm_590_while_body_3554914.
*lstm_590_while_lstm_590_while_loop_counter4
0lstm_590_while_lstm_590_while_maximum_iterations
lstm_590_while_placeholder 
lstm_590_while_placeholder_1 
lstm_590_while_placeholder_2 
lstm_590_while_placeholder_3-
)lstm_590_while_lstm_590_strided_slice_1_0i
elstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0:2(Q
?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(L
>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0:(
lstm_590_while_identity
lstm_590_while_identity_1
lstm_590_while_identity_2
lstm_590_while_identity_3
lstm_590_while_identity_4
lstm_590_while_identity_5+
'lstm_590_while_lstm_590_strided_slice_1g
clstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensorM
;lstm_590_while_lstm_cell_587_matmul_readvariableop_resource:2(O
=lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource:
(J
<lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource:(??3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp?2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp?4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp?
@lstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_590/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0lstm_590_while_placeholderIlstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_590/while/lstm_cell_587/MatMulMatMul9lstm_590/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_590/while/lstm_cell_587/MatMul_1MatMullstm_590_while_placeholder_2<lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_590/while/lstm_cell_587/addAddV2-lstm_590/while/lstm_cell_587/MatMul:product:0/lstm_590/while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_590/while/lstm_cell_587/BiasAddBiasAdd$lstm_590/while/lstm_cell_587/add:z:0;lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_590/while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_590/while/lstm_cell_587/splitSplit5lstm_590/while/lstm_cell_587/split/split_dim:output:0-lstm_590/while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_590/while/lstm_cell_587/SigmoidSigmoid+lstm_590/while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_590/while/lstm_cell_587/Sigmoid_1Sigmoid+lstm_590/while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_590/while/lstm_cell_587/mulMul*lstm_590/while/lstm_cell_587/Sigmoid_1:y:0lstm_590_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_590/while/lstm_cell_587/ReluRelu+lstm_590/while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/mul_1Mul(lstm_590/while/lstm_cell_587/Sigmoid:y:0/lstm_590/while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/add_1AddV2$lstm_590/while/lstm_cell_587/mul:z:0&lstm_590/while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_590/while/lstm_cell_587/Sigmoid_2Sigmoid+lstm_590/while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_590/while/lstm_cell_587/Relu_1Relu&lstm_590/while/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_590/while/lstm_cell_587/mul_2Mul*lstm_590/while/lstm_cell_587/Sigmoid_2:y:01lstm_590/while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_590/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_590_while_placeholder_1lstm_590_while_placeholder&lstm_590/while/lstm_cell_587/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_590/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_590/while/addAddV2lstm_590_while_placeholderlstm_590/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_590/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_590/while/add_1AddV2*lstm_590_while_lstm_590_while_loop_counterlstm_590/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_590/while/IdentityIdentitylstm_590/while/add_1:z:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_1Identity0lstm_590_while_lstm_590_while_maximum_iterations^lstm_590/while/NoOp*
T0*
_output_shapes
: t
lstm_590/while/Identity_2Identitylstm_590/while/add:z:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_3IdentityClstm_590/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_590/while/NoOp*
T0*
_output_shapes
: ?
lstm_590/while/Identity_4Identity&lstm_590/while/lstm_cell_587/mul_2:z:0^lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_590/while/Identity_5Identity&lstm_590/while/lstm_cell_587/add_1:z:0^lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_590/while/NoOpNoOp4^lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp3^lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp5^lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_590_while_identity lstm_590/while/Identity:output:0"?
lstm_590_while_identity_1"lstm_590/while/Identity_1:output:0"?
lstm_590_while_identity_2"lstm_590/while/Identity_2:output:0"?
lstm_590_while_identity_3"lstm_590/while/Identity_3:output:0"?
lstm_590_while_identity_4"lstm_590/while/Identity_4:output:0"?
lstm_590_while_identity_5"lstm_590/while/Identity_5:output:0"T
'lstm_590_while_lstm_590_strided_slice_1)lstm_590_while_lstm_590_strided_slice_1_0"~
<lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource>lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0"?
=lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource?lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0"|
;lstm_590_while_lstm_cell_587_matmul_readvariableop_resource=lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0"?
clstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensorelstm_590_while_tensorarrayv2read_tensorlistgetitem_lstm_590_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp3lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp2h
2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp2lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp2l
4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp4lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3555106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555106___redundant_placeholder05
1while_while_cond_3555106___redundant_placeholder15
1while_while_cond_3555106___redundant_placeholder25
1while_while_cond_3555106___redundant_placeholder3
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
?W
?
 __inference__traced_save_3557308
file_prefix/
+savev2_dense_196_kernel_read_readvariableop-
)savev2_dense_196_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_588_lstm_cell_588_kernel_read_readvariableopF
Bsavev2_lstm_588_lstm_cell_588_recurrent_kernel_read_readvariableop:
6savev2_lstm_588_lstm_cell_588_bias_read_readvariableop<
8savev2_lstm_589_lstm_cell_589_kernel_read_readvariableopF
Bsavev2_lstm_589_lstm_cell_589_recurrent_kernel_read_readvariableop:
6savev2_lstm_589_lstm_cell_589_bias_read_readvariableop<
8savev2_lstm_590_lstm_cell_590_kernel_read_readvariableopF
Bsavev2_lstm_590_lstm_cell_590_recurrent_kernel_read_readvariableop:
6savev2_lstm_590_lstm_cell_590_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_196_kernel_m_read_readvariableop4
0savev2_adam_dense_196_bias_m_read_readvariableopC
?savev2_adam_lstm_588_lstm_cell_588_kernel_m_read_readvariableopM
Isavev2_adam_lstm_588_lstm_cell_588_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_588_lstm_cell_588_bias_m_read_readvariableopC
?savev2_adam_lstm_589_lstm_cell_589_kernel_m_read_readvariableopM
Isavev2_adam_lstm_589_lstm_cell_589_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_589_lstm_cell_589_bias_m_read_readvariableopC
?savev2_adam_lstm_590_lstm_cell_590_kernel_m_read_readvariableopM
Isavev2_adam_lstm_590_lstm_cell_590_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_590_lstm_cell_590_bias_m_read_readvariableop6
2savev2_adam_dense_196_kernel_v_read_readvariableop4
0savev2_adam_dense_196_bias_v_read_readvariableopC
?savev2_adam_lstm_588_lstm_cell_588_kernel_v_read_readvariableopM
Isavev2_adam_lstm_588_lstm_cell_588_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_588_lstm_cell_588_bias_v_read_readvariableopC
?savev2_adam_lstm_589_lstm_cell_589_kernel_v_read_readvariableopM
Isavev2_adam_lstm_589_lstm_cell_589_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_589_lstm_cell_589_bias_v_read_readvariableopC
?savev2_adam_lstm_590_lstm_cell_590_kernel_v_read_readvariableopM
Isavev2_adam_lstm_590_lstm_cell_590_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_590_lstm_cell_590_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_196_kernel_read_readvariableop)savev2_dense_196_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_588_lstm_cell_588_kernel_read_readvariableopBsavev2_lstm_588_lstm_cell_588_recurrent_kernel_read_readvariableop6savev2_lstm_588_lstm_cell_588_bias_read_readvariableop8savev2_lstm_589_lstm_cell_589_kernel_read_readvariableopBsavev2_lstm_589_lstm_cell_589_recurrent_kernel_read_readvariableop6savev2_lstm_589_lstm_cell_589_bias_read_readvariableop8savev2_lstm_590_lstm_cell_590_kernel_read_readvariableopBsavev2_lstm_590_lstm_cell_590_recurrent_kernel_read_readvariableop6savev2_lstm_590_lstm_cell_590_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_196_kernel_m_read_readvariableop0savev2_adam_dense_196_bias_m_read_readvariableop?savev2_adam_lstm_588_lstm_cell_588_kernel_m_read_readvariableopIsavev2_adam_lstm_588_lstm_cell_588_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_588_lstm_cell_588_bias_m_read_readvariableop?savev2_adam_lstm_589_lstm_cell_589_kernel_m_read_readvariableopIsavev2_adam_lstm_589_lstm_cell_589_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_589_lstm_cell_589_bias_m_read_readvariableop?savev2_adam_lstm_590_lstm_cell_590_kernel_m_read_readvariableopIsavev2_adam_lstm_590_lstm_cell_590_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_590_lstm_cell_590_bias_m_read_readvariableop2savev2_adam_dense_196_kernel_v_read_readvariableop0savev2_adam_dense_196_bias_v_read_readvariableop?savev2_adam_lstm_588_lstm_cell_588_kernel_v_read_readvariableopIsavev2_adam_lstm_588_lstm_cell_588_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_588_lstm_cell_588_bias_v_read_readvariableop?savev2_adam_lstm_589_lstm_cell_589_kernel_v_read_readvariableopIsavev2_adam_lstm_589_lstm_cell_589_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_589_lstm_cell_589_bias_v_read_readvariableop?savev2_adam_lstm_590_lstm_cell_590_kernel_v_read_readvariableopIsavev2_adam_lstm_590_lstm_cell_590_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_590_lstm_cell_590_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
E__inference_lstm_590_layer_call_and_return_conditional_losses_3552686

inputs'
lstm_cell_587_3552604:2('
lstm_cell_587_3552606:
(#
lstm_cell_587_3552608:(
identity??%lstm_cell_587/StatefulPartitionedCall?while;
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
%lstm_cell_587/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_587_3552604lstm_cell_587_3552606lstm_cell_587_3552608*
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552603n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_587_3552604lstm_cell_587_3552606lstm_cell_587_3552608*
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
while_body_3552617*
condR
while_cond_3552616*K
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
NoOpNoOp&^lstm_cell_587/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_587/StatefulPartitionedCall%lstm_cell_587/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553551

inputs>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3553467*
condR
while_cond_3553466*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553185

inputs?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3553101*
condR
while_cond_3553100*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3551917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_585_3551941_0:	?0
while_lstm_cell_585_3551943_0:	d?,
while_lstm_cell_585_3551945_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_585_3551941:	?.
while_lstm_cell_585_3551943:	d?*
while_lstm_cell_585_3551945:	???+while/lstm_cell_585/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_585/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_585_3551941_0while_lstm_cell_585_3551943_0while_lstm_cell_585_3551945_0*
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3551903?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_585/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_585/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_585/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_585/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_585_3551941while_lstm_cell_585_3551941_0"<
while_lstm_cell_585_3551943while_lstm_cell_585_3551943_0"<
while_lstm_cell_585_3551945while_lstm_cell_585_3551945_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_585/StatefulPartitionedCall+while/lstm_cell_585/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_589_layer_call_fn_3555642
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3552527|
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552749

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
?#
?
while_body_3552808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_587_3552832_0:2(/
while_lstm_cell_587_3552834_0:
(+
while_lstm_cell_587_3552836_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_587_3552832:2(-
while_lstm_cell_587_3552834:
()
while_lstm_cell_587_3552836:(??+while/lstm_cell_587/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_587/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_587_3552832_0while_lstm_cell_587_3552834_0while_lstm_cell_587_3552836_0*
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552749?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_587/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_587/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_587/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_587_3552832while_lstm_cell_587_3552832_0"<
while_lstm_cell_587_3552834while_lstm_cell_587_3552834_0"<
while_lstm_cell_587_3552836while_lstm_cell_587_3552836_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_587/StatefulPartitionedCall+while/lstm_cell_587/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555620

inputs?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3555536*
condR
while_cond_3555535*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_196_layer_call_fn_3556861

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
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353o
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557067

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
?
?
*__inference_lstm_590_layer_call_fn_3556247
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3552686o
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
0__inference_sequential_196_layer_call_fn_3553385
lstm_588_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_588_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553360o
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
_user_specified_namelstm_588_input
?
?
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552253

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
?K
?
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555334
inputs_0?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3555250*
condR
while_cond_3555249*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3556624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556624___redundant_placeholder05
1while_while_cond_3556624___redundant_placeholder15
1while_while_cond_3556624___redundant_placeholder25
1while_while_cond_3556624___redundant_placeholder3
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
/__inference_lstm_cell_587_layer_call_fn_3557084

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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552603o
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552399

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
while_body_3555107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_588_layer_call_fn_3555037

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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553035s
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
while_body_3555536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3553250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3553250___redundant_placeholder05
1while_while_cond_3553250___redundant_placeholder15
1while_while_cond_3553250___redundant_placeholder25
1while_while_cond_3553250___redundant_placeholder3
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3552877

inputs'
lstm_cell_587_3552795:2('
lstm_cell_587_3552797:
(#
lstm_cell_587_3552799:(
identity??%lstm_cell_587/StatefulPartitionedCall?while;
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
%lstm_cell_587/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_587_3552795lstm_cell_587_3552797lstm_cell_587_3552799*
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552749n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_587_3552795lstm_cell_587_3552797lstm_cell_587_3552799*
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
while_body_3552808*
condR
while_cond_3552807*K
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
NoOpNoOp&^lstm_cell_587/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_587/StatefulPartitionedCall%lstm_cell_587/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557165

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
F__inference_dense_196_layer_call_and_return_conditional_losses_3556871

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

?
lstm_588_while_cond_3554635.
*lstm_588_while_lstm_588_while_loop_counter4
0lstm_588_while_lstm_588_while_maximum_iterations
lstm_588_while_placeholder 
lstm_588_while_placeholder_1 
lstm_588_while_placeholder_2 
lstm_588_while_placeholder_30
,lstm_588_while_less_lstm_588_strided_slice_1G
Clstm_588_while_lstm_588_while_cond_3554635___redundant_placeholder0G
Clstm_588_while_lstm_588_while_cond_3554635___redundant_placeholder1G
Clstm_588_while_lstm_588_while_cond_3554635___redundant_placeholder2G
Clstm_588_while_lstm_588_while_cond_3554635___redundant_placeholder3
lstm_588_while_identity
?
lstm_588/while/LessLesslstm_588_while_placeholder,lstm_588_while_less_lstm_588_strided_slice_1*
T0*
_output_shapes
: ]
lstm_588/while/IdentityIdentitylstm_588/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_588_while_identity lstm_588/while/Identity:output:0*(
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3552177

inputs(
lstm_cell_585_3552095:	?(
lstm_cell_585_3552097:	d?$
lstm_cell_585_3552099:	?
identity??%lstm_cell_585/StatefulPartitionedCall?while;
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
%lstm_cell_585/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_585_3552095lstm_cell_585_3552097lstm_cell_585_3552099*
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3552049n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_585_3552095lstm_cell_585_3552097lstm_cell_585_3552099*
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
while_body_3552108*
condR
while_cond_3552107*K
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
NoOpNoOp&^lstm_cell_585/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_585/StatefulPartitionedCall%lstm_cell_585/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556423
inputs_0>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3556339*
condR
while_cond_3556338*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556852

inputs>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3556768*
condR
while_cond_3556767*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_589_layer_call_and_return_conditional_losses_3552527

inputs(
lstm_cell_586_3552445:	d?(
lstm_cell_586_3552447:	2?$
lstm_cell_586_3552449:	?
identity??%lstm_cell_586/StatefulPartitionedCall?while;
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
%lstm_cell_586/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_586_3552445lstm_cell_586_3552447lstm_cell_586_3552449*
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552399n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_586_3552445lstm_cell_586_3552447lstm_cell_586_3552449*
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
while_body_3552458*
condR
while_cond_3552457*K
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
NoOpNoOp&^lstm_cell_586/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_586/StatefulPartitionedCall%lstm_cell_586/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_3557438
file_prefix3
!assignvariableop_dense_196_kernel:
/
!assignvariableop_1_dense_196_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_588_lstm_cell_588_kernel:	?M
:assignvariableop_8_lstm_588_lstm_cell_588_recurrent_kernel:	d?=
.assignvariableop_9_lstm_588_lstm_cell_588_bias:	?D
1assignvariableop_10_lstm_589_lstm_cell_589_kernel:	d?N
;assignvariableop_11_lstm_589_lstm_cell_589_recurrent_kernel:	2?>
/assignvariableop_12_lstm_589_lstm_cell_589_bias:	?C
1assignvariableop_13_lstm_590_lstm_cell_590_kernel:2(M
;assignvariableop_14_lstm_590_lstm_cell_590_recurrent_kernel:
(=
/assignvariableop_15_lstm_590_lstm_cell_590_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_196_kernel_m:
7
)assignvariableop_19_adam_dense_196_bias_m:K
8assignvariableop_20_adam_lstm_588_lstm_cell_588_kernel_m:	?U
Bassignvariableop_21_adam_lstm_588_lstm_cell_588_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_588_lstm_cell_588_bias_m:	?K
8assignvariableop_23_adam_lstm_589_lstm_cell_589_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_589_lstm_cell_589_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_589_lstm_cell_589_bias_m:	?J
8assignvariableop_26_adam_lstm_590_lstm_cell_590_kernel_m:2(T
Bassignvariableop_27_adam_lstm_590_lstm_cell_590_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_590_lstm_cell_590_bias_m:(=
+assignvariableop_29_adam_dense_196_kernel_v:
7
)assignvariableop_30_adam_dense_196_bias_v:K
8assignvariableop_31_adam_lstm_588_lstm_cell_588_kernel_v:	?U
Bassignvariableop_32_adam_lstm_588_lstm_cell_588_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_588_lstm_cell_588_bias_v:	?K
8assignvariableop_34_adam_lstm_589_lstm_cell_589_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_589_lstm_cell_589_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_589_lstm_cell_589_bias_v:	?J
8assignvariableop_37_adam_lstm_590_lstm_cell_590_kernel_v:2(T
Bassignvariableop_38_adam_lstm_590_lstm_cell_590_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_590_lstm_cell_590_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_196_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_196_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_588_lstm_cell_588_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_588_lstm_cell_588_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_588_lstm_cell_588_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_589_lstm_cell_589_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_589_lstm_cell_589_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_589_lstm_cell_589_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_590_lstm_cell_590_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_590_lstm_cell_590_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_590_lstm_cell_590_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_196_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_196_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_588_lstm_cell_588_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_588_lstm_cell_588_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_588_lstm_cell_588_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_589_lstm_cell_589_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_589_lstm_cell_589_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_589_lstm_cell_589_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_590_lstm_cell_590_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_590_lstm_cell_590_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_590_lstm_cell_590_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_196_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_196_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_588_lstm_cell_588_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_588_lstm_cell_588_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_588_lstm_cell_588_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_589_lstm_cell_589_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_589_lstm_cell_589_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_589_lstm_cell_589_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_590_lstm_cell_590_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_590_lstm_cell_590_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_590_lstm_cell_590_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3552336

inputs(
lstm_cell_586_3552254:	d?(
lstm_cell_586_3552256:	2?$
lstm_cell_586_3552258:	?
identity??%lstm_cell_586/StatefulPartitionedCall?while;
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
%lstm_cell_586/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_586_3552254lstm_cell_586_3552256lstm_cell_586_3552258*
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552253n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_586_3552254lstm_cell_586_3552256lstm_cell_586_3552258*
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
while_body_3552267*
condR
while_cond_3552266*K
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
NoOpNoOp&^lstm_cell_586/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_586/StatefulPartitionedCall%lstm_cell_586/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?T
?
*sequential_196_lstm_588_while_body_3551468L
Hsequential_196_lstm_588_while_sequential_196_lstm_588_while_loop_counterR
Nsequential_196_lstm_588_while_sequential_196_lstm_588_while_maximum_iterations-
)sequential_196_lstm_588_while_placeholder/
+sequential_196_lstm_588_while_placeholder_1/
+sequential_196_lstm_588_while_placeholder_2/
+sequential_196_lstm_588_while_placeholder_3K
Gsequential_196_lstm_588_while_sequential_196_lstm_588_strided_slice_1_0?
?sequential_196_lstm_588_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_588_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_196_lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0:	?a
Nsequential_196_lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?\
Msequential_196_lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0:	?*
&sequential_196_lstm_588_while_identity,
(sequential_196_lstm_588_while_identity_1,
(sequential_196_lstm_588_while_identity_2,
(sequential_196_lstm_588_while_identity_3,
(sequential_196_lstm_588_while_identity_4,
(sequential_196_lstm_588_while_identity_5I
Esequential_196_lstm_588_while_sequential_196_lstm_588_strided_slice_1?
?sequential_196_lstm_588_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_588_tensorarrayunstack_tensorlistfromtensor]
Jsequential_196_lstm_588_while_lstm_cell_585_matmul_readvariableop_resource:	?_
Lsequential_196_lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource:	d?Z
Ksequential_196_lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource:	???Bsequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp?Asequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp?Csequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp?
Osequential_196/lstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_196/lstm_588/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_196_lstm_588_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_588_tensorarrayunstack_tensorlistfromtensor_0)sequential_196_lstm_588_while_placeholderXsequential_196/lstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOpLsequential_196_lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_196/lstm_588/while/lstm_cell_585/MatMulMatMulHsequential_196/lstm_588/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOpNsequential_196_lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_196/lstm_588/while/lstm_cell_585/MatMul_1MatMul+sequential_196_lstm_588_while_placeholder_2Ksequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_196/lstm_588/while/lstm_cell_585/addAddV2<sequential_196/lstm_588/while/lstm_cell_585/MatMul:product:0>sequential_196/lstm_588/while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOpMsequential_196_lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_196/lstm_588/while/lstm_cell_585/BiasAddBiasAdd3sequential_196/lstm_588/while/lstm_cell_585/add:z:0Jsequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_196/lstm_588/while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_196/lstm_588/while/lstm_cell_585/splitSplitDsequential_196/lstm_588/while/lstm_cell_585/split/split_dim:output:0<sequential_196/lstm_588/while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_196/lstm_588/while/lstm_cell_585/SigmoidSigmoid:sequential_196/lstm_588/while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_196/lstm_588/while/lstm_cell_585/Sigmoid_1Sigmoid:sequential_196/lstm_588/while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_196/lstm_588/while/lstm_cell_585/mulMul9sequential_196/lstm_588/while/lstm_cell_585/Sigmoid_1:y:0+sequential_196_lstm_588_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_196/lstm_588/while/lstm_cell_585/ReluRelu:sequential_196/lstm_588/while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_196/lstm_588/while/lstm_cell_585/mul_1Mul7sequential_196/lstm_588/while/lstm_cell_585/Sigmoid:y:0>sequential_196/lstm_588/while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_196/lstm_588/while/lstm_cell_585/add_1AddV23sequential_196/lstm_588/while/lstm_cell_585/mul:z:05sequential_196/lstm_588/while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_196/lstm_588/while/lstm_cell_585/Sigmoid_2Sigmoid:sequential_196/lstm_588/while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_196/lstm_588/while/lstm_cell_585/Relu_1Relu5sequential_196/lstm_588/while/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_196/lstm_588/while/lstm_cell_585/mul_2Mul9sequential_196/lstm_588/while/lstm_cell_585/Sigmoid_2:y:0@sequential_196/lstm_588/while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_196/lstm_588/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_196_lstm_588_while_placeholder_1)sequential_196_lstm_588_while_placeholder5sequential_196/lstm_588/while/lstm_cell_585/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_196/lstm_588/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_196/lstm_588/while/addAddV2)sequential_196_lstm_588_while_placeholder,sequential_196/lstm_588/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_196/lstm_588/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_196/lstm_588/while/add_1AddV2Hsequential_196_lstm_588_while_sequential_196_lstm_588_while_loop_counter.sequential_196/lstm_588/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_196/lstm_588/while/IdentityIdentity'sequential_196/lstm_588/while/add_1:z:0#^sequential_196/lstm_588/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_588/while/Identity_1IdentityNsequential_196_lstm_588_while_sequential_196_lstm_588_while_maximum_iterations#^sequential_196/lstm_588/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_588/while/Identity_2Identity%sequential_196/lstm_588/while/add:z:0#^sequential_196/lstm_588/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_588/while/Identity_3IdentityRsequential_196/lstm_588/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_196/lstm_588/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_588/while/Identity_4Identity5sequential_196/lstm_588/while/lstm_cell_585/mul_2:z:0#^sequential_196/lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_196/lstm_588/while/Identity_5Identity5sequential_196/lstm_588/while/lstm_cell_585/add_1:z:0#^sequential_196/lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_196/lstm_588/while/NoOpNoOpC^sequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOpB^sequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOpD^sequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_196_lstm_588_while_identity/sequential_196/lstm_588/while/Identity:output:0"]
(sequential_196_lstm_588_while_identity_11sequential_196/lstm_588/while/Identity_1:output:0"]
(sequential_196_lstm_588_while_identity_21sequential_196/lstm_588/while/Identity_2:output:0"]
(sequential_196_lstm_588_while_identity_31sequential_196/lstm_588/while/Identity_3:output:0"]
(sequential_196_lstm_588_while_identity_41sequential_196/lstm_588/while/Identity_4:output:0"]
(sequential_196_lstm_588_while_identity_51sequential_196/lstm_588/while/Identity_5:output:0"?
Ksequential_196_lstm_588_while_lstm_cell_585_biasadd_readvariableop_resourceMsequential_196_lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0"?
Lsequential_196_lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resourceNsequential_196_lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0"?
Jsequential_196_lstm_588_while_lstm_cell_585_matmul_readvariableop_resourceLsequential_196_lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0"?
Esequential_196_lstm_588_while_sequential_196_lstm_588_strided_slice_1Gsequential_196_lstm_588_while_sequential_196_lstm_588_strided_slice_1_0"?
?sequential_196_lstm_588_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_588_tensorarrayunstack_tensorlistfromtensor?sequential_196_lstm_588_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_588_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOpBsequential_196/lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp2?
Asequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOpAsequential_196/lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp2?
Csequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOpCsequential_196/lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553335

inputs>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3553251*
condR
while_cond_3553250*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_589_while_cond_3554774.
*lstm_589_while_lstm_589_while_loop_counter4
0lstm_589_while_lstm_589_while_maximum_iterations
lstm_589_while_placeholder 
lstm_589_while_placeholder_1 
lstm_589_while_placeholder_2 
lstm_589_while_placeholder_30
,lstm_589_while_less_lstm_589_strided_slice_1G
Clstm_589_while_lstm_589_while_cond_3554774___redundant_placeholder0G
Clstm_589_while_lstm_589_while_cond_3554774___redundant_placeholder1G
Clstm_589_while_lstm_589_while_cond_3554774___redundant_placeholder2G
Clstm_589_while_lstm_589_while_cond_3554774___redundant_placeholder3
lstm_589_while_identity
?
lstm_589/while/LessLesslstm_589_while_placeholder,lstm_589_while_less_lstm_589_strided_slice_1*
T0*
_output_shapes
: ]
lstm_589/while/IdentityIdentitylstm_589/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_589_while_identity lstm_589/while/Identity:output:0*(
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
*__inference_lstm_589_layer_call_fn_3555653

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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553185s
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
while_cond_3552266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552266___redundant_placeholder05
1while_while_cond_3552266___redundant_placeholder15
1while_while_cond_3552266___redundant_placeholder25
1while_while_cond_3552266___redundant_placeholder3
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553949

inputs#
lstm_588_3553922:	?#
lstm_588_3553924:	d?
lstm_588_3553926:	?#
lstm_589_3553929:	d?#
lstm_589_3553931:	2?
lstm_589_3553933:	?"
lstm_590_3553936:2("
lstm_590_3553938:
(
lstm_590_3553940:(#
dense_196_3553943:

dense_196_3553945:
identity??!dense_196/StatefulPartitionedCall? lstm_588/StatefulPartitionedCall? lstm_589/StatefulPartitionedCall? lstm_590/StatefulPartitionedCall?
 lstm_588/StatefulPartitionedCallStatefulPartitionedCallinputslstm_588_3553922lstm_588_3553924lstm_588_3553926*
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553881?
 lstm_589/StatefulPartitionedCallStatefulPartitionedCall)lstm_588/StatefulPartitionedCall:output:0lstm_589_3553929lstm_589_3553931lstm_589_3553933*
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553716?
 lstm_590/StatefulPartitionedCallStatefulPartitionedCall)lstm_589/StatefulPartitionedCall:output:0lstm_590_3553936lstm_590_3553938lstm_590_3553940*
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553551?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_590/StatefulPartitionedCall:output:0dense_196_3553943dense_196_3553945*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353y
IdentityIdentity*dense_196/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_196/StatefulPartitionedCall!^lstm_588/StatefulPartitionedCall!^lstm_589/StatefulPartitionedCall!^lstm_590/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2D
 lstm_588/StatefulPartitionedCall lstm_588/StatefulPartitionedCall2D
 lstm_589/StatefulPartitionedCall lstm_589/StatefulPartitionedCall2D
 lstm_590/StatefulPartitionedCall lstm_590/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_589_while_cond_3554347.
*lstm_589_while_lstm_589_while_loop_counter4
0lstm_589_while_lstm_589_while_maximum_iterations
lstm_589_while_placeholder 
lstm_589_while_placeholder_1 
lstm_589_while_placeholder_2 
lstm_589_while_placeholder_30
,lstm_589_while_less_lstm_589_strided_slice_1G
Clstm_589_while_lstm_589_while_cond_3554347___redundant_placeholder0G
Clstm_589_while_lstm_589_while_cond_3554347___redundant_placeholder1G
Clstm_589_while_lstm_589_while_cond_3554347___redundant_placeholder2G
Clstm_589_while_lstm_589_while_cond_3554347___redundant_placeholder3
lstm_589_while_identity
?
lstm_589/while/LessLesslstm_589_while_placeholder,lstm_589_while_less_lstm_589_strided_slice_1*
T0*
_output_shapes
: ]
lstm_589/while/IdentityIdentitylstm_589/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_589_while_identity lstm_589/while/Identity:output:0*(
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
0__inference_sequential_196_layer_call_fn_3554001
lstm_588_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_588_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553949o
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
_user_specified_namelstm_588_input
?
?
/__inference_lstm_cell_586_layer_call_fn_3557003

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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552399o
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
while_body_3556009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557035

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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3551903

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
while_body_3553797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_196_lstm_589_while_body_3551607L
Hsequential_196_lstm_589_while_sequential_196_lstm_589_while_loop_counterR
Nsequential_196_lstm_589_while_sequential_196_lstm_589_while_maximum_iterations-
)sequential_196_lstm_589_while_placeholder/
+sequential_196_lstm_589_while_placeholder_1/
+sequential_196_lstm_589_while_placeholder_2/
+sequential_196_lstm_589_while_placeholder_3K
Gsequential_196_lstm_589_while_sequential_196_lstm_589_strided_slice_1_0?
?sequential_196_lstm_589_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_589_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_196_lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0:	d?a
Nsequential_196_lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?\
Msequential_196_lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0:	?*
&sequential_196_lstm_589_while_identity,
(sequential_196_lstm_589_while_identity_1,
(sequential_196_lstm_589_while_identity_2,
(sequential_196_lstm_589_while_identity_3,
(sequential_196_lstm_589_while_identity_4,
(sequential_196_lstm_589_while_identity_5I
Esequential_196_lstm_589_while_sequential_196_lstm_589_strided_slice_1?
?sequential_196_lstm_589_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_589_tensorarrayunstack_tensorlistfromtensor]
Jsequential_196_lstm_589_while_lstm_cell_586_matmul_readvariableop_resource:	d?_
Lsequential_196_lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource:	2?Z
Ksequential_196_lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource:	???Bsequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp?Asequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp?Csequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp?
Osequential_196/lstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_196/lstm_589/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_196_lstm_589_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_589_tensorarrayunstack_tensorlistfromtensor_0)sequential_196_lstm_589_while_placeholderXsequential_196/lstm_589/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOpLsequential_196_lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_196/lstm_589/while/lstm_cell_586/MatMulMatMulHsequential_196/lstm_589/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOpNsequential_196_lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_196/lstm_589/while/lstm_cell_586/MatMul_1MatMul+sequential_196_lstm_589_while_placeholder_2Ksequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_196/lstm_589/while/lstm_cell_586/addAddV2<sequential_196/lstm_589/while/lstm_cell_586/MatMul:product:0>sequential_196/lstm_589/while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOpMsequential_196_lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_196/lstm_589/while/lstm_cell_586/BiasAddBiasAdd3sequential_196/lstm_589/while/lstm_cell_586/add:z:0Jsequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_196/lstm_589/while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_196/lstm_589/while/lstm_cell_586/splitSplitDsequential_196/lstm_589/while/lstm_cell_586/split/split_dim:output:0<sequential_196/lstm_589/while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_196/lstm_589/while/lstm_cell_586/SigmoidSigmoid:sequential_196/lstm_589/while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_196/lstm_589/while/lstm_cell_586/Sigmoid_1Sigmoid:sequential_196/lstm_589/while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_196/lstm_589/while/lstm_cell_586/mulMul9sequential_196/lstm_589/while/lstm_cell_586/Sigmoid_1:y:0+sequential_196_lstm_589_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_196/lstm_589/while/lstm_cell_586/ReluRelu:sequential_196/lstm_589/while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_196/lstm_589/while/lstm_cell_586/mul_1Mul7sequential_196/lstm_589/while/lstm_cell_586/Sigmoid:y:0>sequential_196/lstm_589/while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_196/lstm_589/while/lstm_cell_586/add_1AddV23sequential_196/lstm_589/while/lstm_cell_586/mul:z:05sequential_196/lstm_589/while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_196/lstm_589/while/lstm_cell_586/Sigmoid_2Sigmoid:sequential_196/lstm_589/while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_196/lstm_589/while/lstm_cell_586/Relu_1Relu5sequential_196/lstm_589/while/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_196/lstm_589/while/lstm_cell_586/mul_2Mul9sequential_196/lstm_589/while/lstm_cell_586/Sigmoid_2:y:0@sequential_196/lstm_589/while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_196/lstm_589/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_196_lstm_589_while_placeholder_1)sequential_196_lstm_589_while_placeholder5sequential_196/lstm_589/while/lstm_cell_586/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_196/lstm_589/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_196/lstm_589/while/addAddV2)sequential_196_lstm_589_while_placeholder,sequential_196/lstm_589/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_196/lstm_589/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_196/lstm_589/while/add_1AddV2Hsequential_196_lstm_589_while_sequential_196_lstm_589_while_loop_counter.sequential_196/lstm_589/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_196/lstm_589/while/IdentityIdentity'sequential_196/lstm_589/while/add_1:z:0#^sequential_196/lstm_589/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_589/while/Identity_1IdentityNsequential_196_lstm_589_while_sequential_196_lstm_589_while_maximum_iterations#^sequential_196/lstm_589/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_589/while/Identity_2Identity%sequential_196/lstm_589/while/add:z:0#^sequential_196/lstm_589/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_589/while/Identity_3IdentityRsequential_196/lstm_589/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_196/lstm_589/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_589/while/Identity_4Identity5sequential_196/lstm_589/while/lstm_cell_586/mul_2:z:0#^sequential_196/lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_196/lstm_589/while/Identity_5Identity5sequential_196/lstm_589/while/lstm_cell_586/add_1:z:0#^sequential_196/lstm_589/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_196/lstm_589/while/NoOpNoOpC^sequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOpB^sequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOpD^sequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_196_lstm_589_while_identity/sequential_196/lstm_589/while/Identity:output:0"]
(sequential_196_lstm_589_while_identity_11sequential_196/lstm_589/while/Identity_1:output:0"]
(sequential_196_lstm_589_while_identity_21sequential_196/lstm_589/while/Identity_2:output:0"]
(sequential_196_lstm_589_while_identity_31sequential_196/lstm_589/while/Identity_3:output:0"]
(sequential_196_lstm_589_while_identity_41sequential_196/lstm_589/while/Identity_4:output:0"]
(sequential_196_lstm_589_while_identity_51sequential_196/lstm_589/while/Identity_5:output:0"?
Ksequential_196_lstm_589_while_lstm_cell_586_biasadd_readvariableop_resourceMsequential_196_lstm_589_while_lstm_cell_586_biasadd_readvariableop_resource_0"?
Lsequential_196_lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resourceNsequential_196_lstm_589_while_lstm_cell_586_matmul_1_readvariableop_resource_0"?
Jsequential_196_lstm_589_while_lstm_cell_586_matmul_readvariableop_resourceLsequential_196_lstm_589_while_lstm_cell_586_matmul_readvariableop_resource_0"?
Esequential_196_lstm_589_while_sequential_196_lstm_589_strided_slice_1Gsequential_196_lstm_589_while_sequential_196_lstm_589_strided_slice_1_0"?
?sequential_196_lstm_589_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_589_tensorarrayunstack_tensorlistfromtensor?sequential_196_lstm_589_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_589_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOpBsequential_196/lstm_589/while/lstm_cell_586/BiasAdd/ReadVariableOp2?
Asequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOpAsequential_196/lstm_589/while/lstm_cell_586/MatMul/ReadVariableOp2?
Csequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOpCsequential_196/lstm_589/while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3555392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555392___redundant_placeholder05
1while_while_cond_3555392___redundant_placeholder15
1while_while_cond_3555392___redundant_placeholder25
1while_while_cond_3555392___redundant_placeholder3
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
while_cond_3556481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556481___redundant_placeholder05
1while_while_cond_3556481___redundant_placeholder15
1while_while_cond_3556481___redundant_placeholder25
1while_while_cond_3556481___redundant_placeholder3
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
while_body_3556625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_590_while_cond_3554913.
*lstm_590_while_lstm_590_while_loop_counter4
0lstm_590_while_lstm_590_while_maximum_iterations
lstm_590_while_placeholder 
lstm_590_while_placeholder_1 
lstm_590_while_placeholder_2 
lstm_590_while_placeholder_30
,lstm_590_while_less_lstm_590_strided_slice_1G
Clstm_590_while_lstm_590_while_cond_3554913___redundant_placeholder0G
Clstm_590_while_lstm_590_while_cond_3554913___redundant_placeholder1G
Clstm_590_while_lstm_590_while_cond_3554913___redundant_placeholder2G
Clstm_590_while_lstm_590_while_cond_3554913___redundant_placeholder3
lstm_590_while_identity
?
lstm_590/while/LessLesslstm_590_while_placeholder,lstm_590_while_less_lstm_590_strided_slice_1*
T0*
_output_shapes
: ]
lstm_590/while/IdentityIdentitylstm_590/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_590_while_identity lstm_590/while/Identity:output:0*(
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

lstm_588_while_body_3554636.
*lstm_588_while_lstm_588_while_loop_counter4
0lstm_588_while_lstm_588_while_maximum_iterations
lstm_588_while_placeholder 
lstm_588_while_placeholder_1 
lstm_588_while_placeholder_2 
lstm_588_while_placeholder_3-
)lstm_588_while_lstm_588_strided_slice_1_0i
elstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0:	?R
?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?M
>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
lstm_588_while_identity
lstm_588_while_identity_1
lstm_588_while_identity_2
lstm_588_while_identity_3
lstm_588_while_identity_4
lstm_588_while_identity_5+
'lstm_588_while_lstm_588_strided_slice_1g
clstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensorN
;lstm_588_while_lstm_cell_585_matmul_readvariableop_resource:	?P
=lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource:	d?K
<lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource:	???3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp?2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp?4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp?
@lstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_588/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0lstm_588_while_placeholderIlstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_588/while/lstm_cell_585/MatMulMatMul9lstm_588/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_588/while/lstm_cell_585/MatMul_1MatMullstm_588_while_placeholder_2<lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_588/while/lstm_cell_585/addAddV2-lstm_588/while/lstm_cell_585/MatMul:product:0/lstm_588/while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_588/while/lstm_cell_585/BiasAddBiasAdd$lstm_588/while/lstm_cell_585/add:z:0;lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_588/while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_588/while/lstm_cell_585/splitSplit5lstm_588/while/lstm_cell_585/split/split_dim:output:0-lstm_588/while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_588/while/lstm_cell_585/SigmoidSigmoid+lstm_588/while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_588/while/lstm_cell_585/Sigmoid_1Sigmoid+lstm_588/while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_588/while/lstm_cell_585/mulMul*lstm_588/while/lstm_cell_585/Sigmoid_1:y:0lstm_588_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_588/while/lstm_cell_585/ReluRelu+lstm_588/while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/mul_1Mul(lstm_588/while/lstm_cell_585/Sigmoid:y:0/lstm_588/while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/add_1AddV2$lstm_588/while/lstm_cell_585/mul:z:0&lstm_588/while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_588/while/lstm_cell_585/Sigmoid_2Sigmoid+lstm_588/while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_588/while/lstm_cell_585/Relu_1Relu&lstm_588/while/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/mul_2Mul*lstm_588/while/lstm_cell_585/Sigmoid_2:y:01lstm_588/while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_588/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_588_while_placeholder_1lstm_588_while_placeholder&lstm_588/while/lstm_cell_585/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_588/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_588/while/addAddV2lstm_588_while_placeholderlstm_588/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_588/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_588/while/add_1AddV2*lstm_588_while_lstm_588_while_loop_counterlstm_588/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_588/while/IdentityIdentitylstm_588/while/add_1:z:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_1Identity0lstm_588_while_lstm_588_while_maximum_iterations^lstm_588/while/NoOp*
T0*
_output_shapes
: t
lstm_588/while/Identity_2Identitylstm_588/while/add:z:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_3IdentityClstm_588/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_4Identity&lstm_588/while/lstm_cell_585/mul_2:z:0^lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_588/while/Identity_5Identity&lstm_588/while/lstm_cell_585/add_1:z:0^lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_588/while/NoOpNoOp4^lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp3^lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp5^lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_588_while_identity lstm_588/while/Identity:output:0"?
lstm_588_while_identity_1"lstm_588/while/Identity_1:output:0"?
lstm_588_while_identity_2"lstm_588/while/Identity_2:output:0"?
lstm_588_while_identity_3"lstm_588/while/Identity_3:output:0"?
lstm_588_while_identity_4"lstm_588/while/Identity_4:output:0"?
lstm_588_while_identity_5"lstm_588/while/Identity_5:output:0"T
'lstm_588_while_lstm_588_strided_slice_1)lstm_588_while_lstm_588_strided_slice_1_0"~
<lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0"?
=lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0"|
;lstm_588_while_lstm_cell_585_matmul_readvariableop_resource=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0"?
clstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensorelstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp2h
2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp2l
4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_589_layer_call_fn_3555664

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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553716s
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
while_body_3555866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553881

inputs?
,lstm_cell_585_matmul_readvariableop_resource:	?A
.lstm_cell_585_matmul_1_readvariableop_resource:	d?<
-lstm_cell_585_biasadd_readvariableop_resource:	?
identity??$lstm_cell_585/BiasAdd/ReadVariableOp?#lstm_cell_585/MatMul/ReadVariableOp?%lstm_cell_585/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_585/MatMul/ReadVariableOpReadVariableOp,lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_585/MatMulMatMulstrided_slice_2:output:0+lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_585/MatMul_1MatMulzeros:output:0-lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_585/addAddV2lstm_cell_585/MatMul:product:0 lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_585/BiasAddBiasAddlstm_cell_585/add:z:0,lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_585/splitSplit&lstm_cell_585/split/split_dim:output:0lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_585/SigmoidSigmoidlstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_1Sigmoidlstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_585/mulMullstm_cell_585/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_585/ReluRelulstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_1Mullstm_cell_585/Sigmoid:y:0 lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_585/add_1AddV2lstm_cell_585/mul:z:0lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_585/Sigmoid_2Sigmoidlstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_585/Relu_1Relulstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_585/mul_2Mullstm_cell_585/Sigmoid_2:y:0"lstm_cell_585/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_585_matmul_readvariableop_resource.lstm_cell_585_matmul_1_readvariableop_resource-lstm_cell_585_biasadd_readvariableop_resource*
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
while_body_3553797*
condR
while_cond_3553796*K
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
NoOpNoOp%^lstm_cell_585/BiasAdd/ReadVariableOp$^lstm_cell_585/MatMul/ReadVariableOp&^lstm_cell_585/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_585/BiasAdd/ReadVariableOp$lstm_cell_585/BiasAdd/ReadVariableOp2J
#lstm_cell_585/MatMul/ReadVariableOp#lstm_cell_585/MatMul/ReadVariableOp2N
%lstm_cell_585/MatMul_1/ReadVariableOp%lstm_cell_585/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555950
inputs_0?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3555866*
condR
while_cond_3555865*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552603

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
while_cond_3552616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552616___redundant_placeholder05
1while_while_cond_3552616___redundant_placeholder15
1while_while_cond_3552616___redundant_placeholder25
1while_while_cond_3552616___redundant_placeholder3
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
/__inference_lstm_cell_586_layer_call_fn_3556986

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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552253o
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
?
*__inference_lstm_590_layer_call_fn_3556258
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3552877o
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
/__inference_lstm_cell_585_layer_call_fn_3556905

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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3552049o
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556093

inputs?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3556009*
condR
while_cond_3556008*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3552267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_586_3552291_0:	d?0
while_lstm_cell_586_3552293_0:	2?,
while_lstm_cell_586_3552295_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_586_3552291:	d?.
while_lstm_cell_586_3552293:	2?*
while_lstm_cell_586_3552295:	???+while/lstm_cell_586/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_586/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_586_3552291_0while_lstm_cell_586_3552293_0while_lstm_cell_586_3552295_0*
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552253?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_586/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_586/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_586/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_586/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_586_3552291while_lstm_cell_586_3552291_0"<
while_lstm_cell_586_3552293while_lstm_cell_586_3552293_0"<
while_lstm_cell_586_3552295while_lstm_cell_586_3552295_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_586/StatefulPartitionedCall+while/lstm_cell_586/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3553796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3553796___redundant_placeholder05
1while_while_cond_3553796___redundant_placeholder15
1while_while_cond_3553796___redundant_placeholder25
1while_while_cond_3553796___redundant_placeholder3
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
*__inference_lstm_590_layer_call_fn_3556269

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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553335o
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
while_cond_3555249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555249___redundant_placeholder05
1while_while_cond_3555249___redundant_placeholder15
1while_while_cond_3555249___redundant_placeholder25
1while_while_cond_3555249___redundant_placeholder3
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
while_cond_3552807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552807___redundant_placeholder05
1while_while_cond_3552807___redundant_placeholder15
1while_while_cond_3552807___redundant_placeholder25
1while_while_cond_3552807___redundant_placeholder3
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
while_body_3553101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_590_layer_call_fn_3556280

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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553551o
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
while_body_3553251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3553631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3553631___redundant_placeholder05
1while_while_cond_3553631___redundant_placeholder15
1while_while_cond_3553631___redundant_placeholder25
1while_while_cond_3553631___redundant_placeholder3
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
*__inference_lstm_588_layer_call_fn_3555048

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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553881s
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
while_cond_3552950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552950___redundant_placeholder05
1while_while_cond_3552950___redundant_placeholder15
1while_while_cond_3552950___redundant_placeholder25
1while_while_cond_3552950___redundant_placeholder3
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
while_body_3552108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_585_3552132_0:	?0
while_lstm_cell_585_3552134_0:	d?,
while_lstm_cell_585_3552136_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_585_3552132:	?.
while_lstm_cell_585_3552134:	d?*
while_lstm_cell_585_3552136:	???+while/lstm_cell_585/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_585/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_585_3552132_0while_lstm_cell_585_3552134_0while_lstm_cell_585_3552136_0*
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3552049?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_585/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_585/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_585/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_585/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_585_3552132while_lstm_cell_585_3552132_0"<
while_lstm_cell_585_3552134while_lstm_cell_585_3552134_0"<
while_lstm_cell_585_3552136while_lstm_cell_585_3552136_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_585/StatefulPartitionedCall+while/lstm_cell_585/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3556338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556338___redundant_placeholder05
1while_while_cond_3556338___redundant_placeholder15
1while_while_cond_3556338___redundant_placeholder25
1while_while_cond_3556338___redundant_placeholder3
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3551986

inputs(
lstm_cell_585_3551904:	?(
lstm_cell_585_3551906:	d?$
lstm_cell_585_3551908:	?
identity??%lstm_cell_585/StatefulPartitionedCall?while;
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
%lstm_cell_585/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_585_3551904lstm_cell_585_3551906lstm_cell_585_3551908*
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3551903n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_585_3551904lstm_cell_585_3551906lstm_cell_585_3551908*
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
while_body_3551917*
condR
while_cond_3551916*K
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
NoOpNoOp&^lstm_cell_585/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_585/StatefulPartitionedCall%lstm_cell_585/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3555250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3556152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3552951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3555535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3555535___redundant_placeholder05
1while_while_cond_3555535___redundant_placeholder15
1while_while_cond_3555535___redundant_placeholder25
1while_while_cond_3555535___redundant_placeholder3
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556566
inputs_0>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3556482*
condR
while_cond_3556481*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_585_layer_call_fn_3556888

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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3551903o
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
while_cond_3553100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3553100___redundant_placeholder05
1while_while_cond_3553100___redundant_placeholder15
1while_while_cond_3553100___redundant_placeholder25
1while_while_cond_3553100___redundant_placeholder3
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556709

inputs>
,lstm_cell_587_matmul_readvariableop_resource:2(@
.lstm_cell_587_matmul_1_readvariableop_resource:
(;
-lstm_cell_587_biasadd_readvariableop_resource:(
identity??$lstm_cell_587/BiasAdd/ReadVariableOp?#lstm_cell_587/MatMul/ReadVariableOp?%lstm_cell_587/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_587/MatMul/ReadVariableOpReadVariableOp,lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_587/MatMulMatMulstrided_slice_2:output:0+lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_587/MatMul_1MatMulzeros:output:0-lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_587/addAddV2lstm_cell_587/MatMul:product:0 lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_587/BiasAddBiasAddlstm_cell_587/add:z:0,lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_587/splitSplit&lstm_cell_587/split/split_dim:output:0lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_587/SigmoidSigmoidlstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_1Sigmoidlstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_587/mulMullstm_cell_587/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_587/ReluRelulstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_1Mullstm_cell_587/Sigmoid:y:0 lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_587/add_1AddV2lstm_cell_587/mul:z:0lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_587/Sigmoid_2Sigmoidlstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_587/Relu_1Relulstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_587/mul_2Mullstm_cell_587/Sigmoid_2:y:0"lstm_cell_587/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_587_matmul_readvariableop_resource.lstm_cell_587_matmul_1_readvariableop_resource-lstm_cell_587_biasadd_readvariableop_resource*
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
while_body_3556625*
condR
while_cond_3556624*K
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
NoOpNoOp%^lstm_cell_587/BiasAdd/ReadVariableOp$^lstm_cell_587/MatMul/ReadVariableOp&^lstm_cell_587/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_587/BiasAdd/ReadVariableOp$lstm_cell_587/BiasAdd/ReadVariableOp2J
#lstm_cell_587/MatMul/ReadVariableOp#lstm_cell_587/MatMul/ReadVariableOp2N
%lstm_cell_587/MatMul_1/ReadVariableOp%lstm_cell_587/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557133

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
while_body_3555393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_585_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_585_matmul_readvariableop_resource:	?G
4while_lstm_cell_585_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_585_biasadd_readvariableop_resource:	???*while/lstm_cell_585/BiasAdd/ReadVariableOp?)while/lstm_cell_585/MatMul/ReadVariableOp?+while/lstm_cell_585/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_585/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_585/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_585/addAddV2$while/lstm_cell_585/MatMul:product:0&while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_585/BiasAddBiasAddwhile/lstm_cell_585/add:z:02while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_585/splitSplit,while/lstm_cell_585/split/split_dim:output:0$while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_585/SigmoidSigmoid"while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_1Sigmoid"while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mulMul!while/lstm_cell_585/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_585/ReluRelu"while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_1Mulwhile/lstm_cell_585/Sigmoid:y:0&while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/add_1AddV2while/lstm_cell_585/mul:z:0while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_585/Sigmoid_2Sigmoid"while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_585/Relu_1Reluwhile/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_585/mul_2Mul!while/lstm_cell_585/Sigmoid_2:y:0(while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_585/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_585/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_585/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_585/BiasAdd/ReadVariableOp*^while/lstm_cell_585/MatMul/ReadVariableOp,^while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_585_biasadd_readvariableop_resource5while_lstm_cell_585_biasadd_readvariableop_resource_0"n
4while_lstm_cell_585_matmul_1_readvariableop_resource6while_lstm_cell_585_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_585_matmul_readvariableop_resource4while_lstm_cell_585_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_585/BiasAdd/ReadVariableOp*while/lstm_cell_585/BiasAdd/ReadVariableOp2V
)while/lstm_cell_585/MatMul/ReadVariableOp)while/lstm_cell_585/MatMul/ReadVariableOp2Z
+while/lstm_cell_585/MatMul_1/ReadVariableOp+while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556937

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

?
0__inference_sequential_196_layer_call_fn_3554150

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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553949o
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
?
?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553360

inputs#
lstm_588_3553036:	?#
lstm_588_3553038:	d?
lstm_588_3553040:	?#
lstm_589_3553186:	d?#
lstm_589_3553188:	2?
lstm_589_3553190:	?"
lstm_590_3553336:2("
lstm_590_3553338:
(
lstm_590_3553340:(#
dense_196_3553354:

dense_196_3553356:
identity??!dense_196/StatefulPartitionedCall? lstm_588/StatefulPartitionedCall? lstm_589/StatefulPartitionedCall? lstm_590/StatefulPartitionedCall?
 lstm_588/StatefulPartitionedCallStatefulPartitionedCallinputslstm_588_3553036lstm_588_3553038lstm_588_3553040*
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3553035?
 lstm_589/StatefulPartitionedCallStatefulPartitionedCall)lstm_588/StatefulPartitionedCall:output:0lstm_589_3553186lstm_589_3553188lstm_589_3553190*
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3553185?
 lstm_590/StatefulPartitionedCallStatefulPartitionedCall)lstm_589/StatefulPartitionedCall:output:0lstm_590_3553336lstm_590_3553338lstm_590_3553340*
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3553335?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_590/StatefulPartitionedCall:output:0dense_196_3553354dense_196_3553356*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353y
IdentityIdentity*dense_196/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_196/StatefulPartitionedCall!^lstm_588/StatefulPartitionedCall!^lstm_589/StatefulPartitionedCall!^lstm_590/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2D
 lstm_588/StatefulPartitionedCall lstm_588/StatefulPartitionedCall2D
 lstm_589/StatefulPartitionedCall lstm_589/StatefulPartitionedCall2D
 lstm_590/StatefulPartitionedCall lstm_590/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_196_layer_call_and_return_conditional_losses_3553353

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
??
?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554577

inputsH
5lstm_588_lstm_cell_585_matmul_readvariableop_resource:	?J
7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource:	d?E
6lstm_588_lstm_cell_585_biasadd_readvariableop_resource:	?H
5lstm_589_lstm_cell_586_matmul_readvariableop_resource:	d?J
7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource:	2?E
6lstm_589_lstm_cell_586_biasadd_readvariableop_resource:	?G
5lstm_590_lstm_cell_587_matmul_readvariableop_resource:2(I
7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource:
(D
6lstm_590_lstm_cell_587_biasadd_readvariableop_resource:(:
(dense_196_matmul_readvariableop_resource:
7
)dense_196_biasadd_readvariableop_resource:
identity?? dense_196/BiasAdd/ReadVariableOp?dense_196/MatMul/ReadVariableOp?-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp?,lstm_588/lstm_cell_585/MatMul/ReadVariableOp?.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp?lstm_588/while?-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp?,lstm_589/lstm_cell_586/MatMul/ReadVariableOp?.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp?lstm_589/while?-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp?,lstm_590/lstm_cell_587/MatMul/ReadVariableOp?.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp?lstm_590/whileD
lstm_588/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_588/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_588/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_588/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_sliceStridedSlicelstm_588/Shape:output:0%lstm_588/strided_slice/stack:output:0'lstm_588/strided_slice/stack_1:output:0'lstm_588/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_588/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_588/zeros/packedPacklstm_588/strided_slice:output:0 lstm_588/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_588/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_588/zerosFilllstm_588/zeros/packed:output:0lstm_588/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_588/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_588/zeros_1/packedPacklstm_588/strided_slice:output:0"lstm_588/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_588/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_588/zeros_1Fill lstm_588/zeros_1/packed:output:0lstm_588/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_588/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_588/transpose	Transposeinputs lstm_588/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_588/Shape_1Shapelstm_588/transpose:y:0*
T0*
_output_shapes
:h
lstm_588/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_588/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_1StridedSlicelstm_588/Shape_1:output:0'lstm_588/strided_slice_1/stack:output:0)lstm_588/strided_slice_1/stack_1:output:0)lstm_588/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_588/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_588/TensorArrayV2TensorListReserve-lstm_588/TensorArrayV2/element_shape:output:0!lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_588/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_588/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_588/transpose:y:0Glstm_588/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_588/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_588/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_2StridedSlicelstm_588/transpose:y:0'lstm_588/strided_slice_2/stack:output:0)lstm_588/strided_slice_2/stack_1:output:0)lstm_588/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_588/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp5lstm_588_lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_588/lstm_cell_585/MatMulMatMul!lstm_588/strided_slice_2:output:04lstm_588/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_588/lstm_cell_585/MatMul_1MatMullstm_588/zeros:output:06lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_588/lstm_cell_585/addAddV2'lstm_588/lstm_cell_585/MatMul:product:0)lstm_588/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp6lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_588/lstm_cell_585/BiasAddBiasAddlstm_588/lstm_cell_585/add:z:05lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_588/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_588/lstm_cell_585/splitSplit/lstm_588/lstm_cell_585/split/split_dim:output:0'lstm_588/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_588/lstm_cell_585/SigmoidSigmoid%lstm_588/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_588/lstm_cell_585/Sigmoid_1Sigmoid%lstm_588/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mulMul$lstm_588/lstm_cell_585/Sigmoid_1:y:0lstm_588/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_588/lstm_cell_585/ReluRelu%lstm_588/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mul_1Mul"lstm_588/lstm_cell_585/Sigmoid:y:0)lstm_588/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/add_1AddV2lstm_588/lstm_cell_585/mul:z:0 lstm_588/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_588/lstm_cell_585/Sigmoid_2Sigmoid%lstm_588/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_588/lstm_cell_585/Relu_1Relu lstm_588/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mul_2Mul$lstm_588/lstm_cell_585/Sigmoid_2:y:0+lstm_588/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_588/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_588/TensorArrayV2_1TensorListReserve/lstm_588/TensorArrayV2_1/element_shape:output:0!lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_588/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_588/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_588/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_588/whileWhile$lstm_588/while/loop_counter:output:0*lstm_588/while/maximum_iterations:output:0lstm_588/time:output:0!lstm_588/TensorArrayV2_1:handle:0lstm_588/zeros:output:0lstm_588/zeros_1:output:0!lstm_588/strided_slice_1:output:0@lstm_588/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_588_lstm_cell_585_matmul_readvariableop_resource7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource6lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
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
lstm_588_while_body_3554209*'
condR
lstm_588_while_cond_3554208*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_588/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_588/TensorArrayV2Stack/TensorListStackTensorListStacklstm_588/while:output:3Blstm_588/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_588/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_588/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_3StridedSlice4lstm_588/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_588/strided_slice_3/stack:output:0)lstm_588/strided_slice_3/stack_1:output:0)lstm_588/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_588/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_588/transpose_1	Transpose4lstm_588/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_588/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_588/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_589/ShapeShapelstm_588/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_589/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_589/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_589/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_sliceStridedSlicelstm_589/Shape:output:0%lstm_589/strided_slice/stack:output:0'lstm_589/strided_slice/stack_1:output:0'lstm_589/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_589/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_589/zeros/packedPacklstm_589/strided_slice:output:0 lstm_589/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_589/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_589/zerosFilllstm_589/zeros/packed:output:0lstm_589/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_589/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_589/zeros_1/packedPacklstm_589/strided_slice:output:0"lstm_589/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_589/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_589/zeros_1Fill lstm_589/zeros_1/packed:output:0lstm_589/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_589/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_589/transpose	Transposelstm_588/transpose_1:y:0 lstm_589/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_589/Shape_1Shapelstm_589/transpose:y:0*
T0*
_output_shapes
:h
lstm_589/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_589/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_1StridedSlicelstm_589/Shape_1:output:0'lstm_589/strided_slice_1/stack:output:0)lstm_589/strided_slice_1/stack_1:output:0)lstm_589/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_589/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_589/TensorArrayV2TensorListReserve-lstm_589/TensorArrayV2/element_shape:output:0!lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_589/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_589/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_589/transpose:y:0Glstm_589/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_589/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_589/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_2StridedSlicelstm_589/transpose:y:0'lstm_589/strided_slice_2/stack:output:0)lstm_589/strided_slice_2/stack_1:output:0)lstm_589/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_589/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp5lstm_589_lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_589/lstm_cell_586/MatMulMatMul!lstm_589/strided_slice_2:output:04lstm_589/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_589/lstm_cell_586/MatMul_1MatMullstm_589/zeros:output:06lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_589/lstm_cell_586/addAddV2'lstm_589/lstm_cell_586/MatMul:product:0)lstm_589/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp6lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_589/lstm_cell_586/BiasAddBiasAddlstm_589/lstm_cell_586/add:z:05lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_589/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_589/lstm_cell_586/splitSplit/lstm_589/lstm_cell_586/split/split_dim:output:0'lstm_589/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_589/lstm_cell_586/SigmoidSigmoid%lstm_589/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_589/lstm_cell_586/Sigmoid_1Sigmoid%lstm_589/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mulMul$lstm_589/lstm_cell_586/Sigmoid_1:y:0lstm_589/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_589/lstm_cell_586/ReluRelu%lstm_589/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mul_1Mul"lstm_589/lstm_cell_586/Sigmoid:y:0)lstm_589/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/add_1AddV2lstm_589/lstm_cell_586/mul:z:0 lstm_589/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_589/lstm_cell_586/Sigmoid_2Sigmoid%lstm_589/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_589/lstm_cell_586/Relu_1Relu lstm_589/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mul_2Mul$lstm_589/lstm_cell_586/Sigmoid_2:y:0+lstm_589/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_589/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_589/TensorArrayV2_1TensorListReserve/lstm_589/TensorArrayV2_1/element_shape:output:0!lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_589/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_589/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_589/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_589/whileWhile$lstm_589/while/loop_counter:output:0*lstm_589/while/maximum_iterations:output:0lstm_589/time:output:0!lstm_589/TensorArrayV2_1:handle:0lstm_589/zeros:output:0lstm_589/zeros_1:output:0!lstm_589/strided_slice_1:output:0@lstm_589/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_589_lstm_cell_586_matmul_readvariableop_resource7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource6lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
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
lstm_589_while_body_3554348*'
condR
lstm_589_while_cond_3554347*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_589/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_589/TensorArrayV2Stack/TensorListStackTensorListStacklstm_589/while:output:3Blstm_589/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_589/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_589/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_3StridedSlice4lstm_589/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_589/strided_slice_3/stack:output:0)lstm_589/strided_slice_3/stack_1:output:0)lstm_589/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_589/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_589/transpose_1	Transpose4lstm_589/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_589/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_589/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_590/ShapeShapelstm_589/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_590/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_590/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_590/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_sliceStridedSlicelstm_590/Shape:output:0%lstm_590/strided_slice/stack:output:0'lstm_590/strided_slice/stack_1:output:0'lstm_590/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_590/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_590/zeros/packedPacklstm_590/strided_slice:output:0 lstm_590/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_590/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_590/zerosFilllstm_590/zeros/packed:output:0lstm_590/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_590/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_590/zeros_1/packedPacklstm_590/strided_slice:output:0"lstm_590/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_590/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_590/zeros_1Fill lstm_590/zeros_1/packed:output:0lstm_590/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_590/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_590/transpose	Transposelstm_589/transpose_1:y:0 lstm_590/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_590/Shape_1Shapelstm_590/transpose:y:0*
T0*
_output_shapes
:h
lstm_590/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_590/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_1StridedSlicelstm_590/Shape_1:output:0'lstm_590/strided_slice_1/stack:output:0)lstm_590/strided_slice_1/stack_1:output:0)lstm_590/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_590/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_590/TensorArrayV2TensorListReserve-lstm_590/TensorArrayV2/element_shape:output:0!lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_590/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_590/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_590/transpose:y:0Glstm_590/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_590/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_590/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_2StridedSlicelstm_590/transpose:y:0'lstm_590/strided_slice_2/stack:output:0)lstm_590/strided_slice_2/stack_1:output:0)lstm_590/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_590/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp5lstm_590_lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_590/lstm_cell_587/MatMulMatMul!lstm_590/strided_slice_2:output:04lstm_590/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_590/lstm_cell_587/MatMul_1MatMullstm_590/zeros:output:06lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_590/lstm_cell_587/addAddV2'lstm_590/lstm_cell_587/MatMul:product:0)lstm_590/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp6lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_590/lstm_cell_587/BiasAddBiasAddlstm_590/lstm_cell_587/add:z:05lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_590/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_590/lstm_cell_587/splitSplit/lstm_590/lstm_cell_587/split/split_dim:output:0'lstm_590/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_590/lstm_cell_587/SigmoidSigmoid%lstm_590/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_590/lstm_cell_587/Sigmoid_1Sigmoid%lstm_590/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mulMul$lstm_590/lstm_cell_587/Sigmoid_1:y:0lstm_590/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_590/lstm_cell_587/ReluRelu%lstm_590/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mul_1Mul"lstm_590/lstm_cell_587/Sigmoid:y:0)lstm_590/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/add_1AddV2lstm_590/lstm_cell_587/mul:z:0 lstm_590/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_590/lstm_cell_587/Sigmoid_2Sigmoid%lstm_590/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_590/lstm_cell_587/Relu_1Relu lstm_590/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mul_2Mul$lstm_590/lstm_cell_587/Sigmoid_2:y:0+lstm_590/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_590/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_590/TensorArrayV2_1TensorListReserve/lstm_590/TensorArrayV2_1/element_shape:output:0!lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_590/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_590/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_590/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_590/whileWhile$lstm_590/while/loop_counter:output:0*lstm_590/while/maximum_iterations:output:0lstm_590/time:output:0!lstm_590/TensorArrayV2_1:handle:0lstm_590/zeros:output:0lstm_590/zeros_1:output:0!lstm_590/strided_slice_1:output:0@lstm_590/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_590_lstm_cell_587_matmul_readvariableop_resource7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource6lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
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
lstm_590_while_body_3554487*'
condR
lstm_590_while_cond_3554486*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_590/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_590/TensorArrayV2Stack/TensorListStackTensorListStacklstm_590/while:output:3Blstm_590/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_590/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_590/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_3StridedSlice4lstm_590/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_590/strided_slice_3/stack:output:0)lstm_590/strided_slice_3/stack_1:output:0)lstm_590/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_590/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_590/transpose_1	Transpose4lstm_590/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_590/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_590/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_196/MatMul/ReadVariableOpReadVariableOp(dense_196_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_196/MatMulMatMul!lstm_590/strided_slice_3:output:0'dense_196/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_196/BiasAdd/ReadVariableOpReadVariableOp)dense_196_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_196/BiasAddBiasAdddense_196/MatMul:product:0(dense_196/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_196/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_196/BiasAdd/ReadVariableOp ^dense_196/MatMul/ReadVariableOp.^lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp-^lstm_588/lstm_cell_585/MatMul/ReadVariableOp/^lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp^lstm_588/while.^lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp-^lstm_589/lstm_cell_586/MatMul/ReadVariableOp/^lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp^lstm_589/while.^lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp-^lstm_590/lstm_cell_587/MatMul/ReadVariableOp/^lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp^lstm_590/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_196/BiasAdd/ReadVariableOp dense_196/BiasAdd/ReadVariableOp2B
dense_196/MatMul/ReadVariableOpdense_196/MatMul/ReadVariableOp2^
-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp2\
,lstm_588/lstm_cell_585/MatMul/ReadVariableOp,lstm_588/lstm_cell_585/MatMul/ReadVariableOp2`
.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp2 
lstm_588/whilelstm_588/while2^
-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp2\
,lstm_589/lstm_cell_586/MatMul/ReadVariableOp,lstm_589/lstm_cell_586/MatMul/ReadVariableOp2`
.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp2 
lstm_589/whilelstm_589/while2^
-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp2\
,lstm_590/lstm_cell_587/MatMul/ReadVariableOp,lstm_590/lstm_cell_587/MatMul/ReadVariableOp2`
.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp2 
lstm_590/whilelstm_590/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3555004

inputsH
5lstm_588_lstm_cell_585_matmul_readvariableop_resource:	?J
7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource:	d?E
6lstm_588_lstm_cell_585_biasadd_readvariableop_resource:	?H
5lstm_589_lstm_cell_586_matmul_readvariableop_resource:	d?J
7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource:	2?E
6lstm_589_lstm_cell_586_biasadd_readvariableop_resource:	?G
5lstm_590_lstm_cell_587_matmul_readvariableop_resource:2(I
7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource:
(D
6lstm_590_lstm_cell_587_biasadd_readvariableop_resource:(:
(dense_196_matmul_readvariableop_resource:
7
)dense_196_biasadd_readvariableop_resource:
identity?? dense_196/BiasAdd/ReadVariableOp?dense_196/MatMul/ReadVariableOp?-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp?,lstm_588/lstm_cell_585/MatMul/ReadVariableOp?.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp?lstm_588/while?-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp?,lstm_589/lstm_cell_586/MatMul/ReadVariableOp?.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp?lstm_589/while?-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp?,lstm_590/lstm_cell_587/MatMul/ReadVariableOp?.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp?lstm_590/whileD
lstm_588/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_588/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_588/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_588/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_sliceStridedSlicelstm_588/Shape:output:0%lstm_588/strided_slice/stack:output:0'lstm_588/strided_slice/stack_1:output:0'lstm_588/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_588/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_588/zeros/packedPacklstm_588/strided_slice:output:0 lstm_588/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_588/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_588/zerosFilllstm_588/zeros/packed:output:0lstm_588/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_588/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_588/zeros_1/packedPacklstm_588/strided_slice:output:0"lstm_588/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_588/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_588/zeros_1Fill lstm_588/zeros_1/packed:output:0lstm_588/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_588/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_588/transpose	Transposeinputs lstm_588/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_588/Shape_1Shapelstm_588/transpose:y:0*
T0*
_output_shapes
:h
lstm_588/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_588/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_1StridedSlicelstm_588/Shape_1:output:0'lstm_588/strided_slice_1/stack:output:0)lstm_588/strided_slice_1/stack_1:output:0)lstm_588/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_588/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_588/TensorArrayV2TensorListReserve-lstm_588/TensorArrayV2/element_shape:output:0!lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_588/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_588/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_588/transpose:y:0Glstm_588/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_588/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_588/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_2StridedSlicelstm_588/transpose:y:0'lstm_588/strided_slice_2/stack:output:0)lstm_588/strided_slice_2/stack_1:output:0)lstm_588/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_588/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp5lstm_588_lstm_cell_585_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_588/lstm_cell_585/MatMulMatMul!lstm_588/strided_slice_2:output:04lstm_588/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_588/lstm_cell_585/MatMul_1MatMullstm_588/zeros:output:06lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_588/lstm_cell_585/addAddV2'lstm_588/lstm_cell_585/MatMul:product:0)lstm_588/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp6lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_588/lstm_cell_585/BiasAddBiasAddlstm_588/lstm_cell_585/add:z:05lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_588/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_588/lstm_cell_585/splitSplit/lstm_588/lstm_cell_585/split/split_dim:output:0'lstm_588/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_588/lstm_cell_585/SigmoidSigmoid%lstm_588/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_588/lstm_cell_585/Sigmoid_1Sigmoid%lstm_588/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mulMul$lstm_588/lstm_cell_585/Sigmoid_1:y:0lstm_588/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_588/lstm_cell_585/ReluRelu%lstm_588/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mul_1Mul"lstm_588/lstm_cell_585/Sigmoid:y:0)lstm_588/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/add_1AddV2lstm_588/lstm_cell_585/mul:z:0 lstm_588/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_588/lstm_cell_585/Sigmoid_2Sigmoid%lstm_588/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_588/lstm_cell_585/Relu_1Relu lstm_588/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_588/lstm_cell_585/mul_2Mul$lstm_588/lstm_cell_585/Sigmoid_2:y:0+lstm_588/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_588/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_588/TensorArrayV2_1TensorListReserve/lstm_588/TensorArrayV2_1/element_shape:output:0!lstm_588/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_588/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_588/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_588/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_588/whileWhile$lstm_588/while/loop_counter:output:0*lstm_588/while/maximum_iterations:output:0lstm_588/time:output:0!lstm_588/TensorArrayV2_1:handle:0lstm_588/zeros:output:0lstm_588/zeros_1:output:0!lstm_588/strided_slice_1:output:0@lstm_588/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_588_lstm_cell_585_matmul_readvariableop_resource7lstm_588_lstm_cell_585_matmul_1_readvariableop_resource6lstm_588_lstm_cell_585_biasadd_readvariableop_resource*
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
lstm_588_while_body_3554636*'
condR
lstm_588_while_cond_3554635*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_588/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_588/TensorArrayV2Stack/TensorListStackTensorListStacklstm_588/while:output:3Blstm_588/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_588/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_588/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_588/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_588/strided_slice_3StridedSlice4lstm_588/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_588/strided_slice_3/stack:output:0)lstm_588/strided_slice_3/stack_1:output:0)lstm_588/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_588/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_588/transpose_1	Transpose4lstm_588/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_588/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_588/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_589/ShapeShapelstm_588/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_589/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_589/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_589/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_sliceStridedSlicelstm_589/Shape:output:0%lstm_589/strided_slice/stack:output:0'lstm_589/strided_slice/stack_1:output:0'lstm_589/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_589/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_589/zeros/packedPacklstm_589/strided_slice:output:0 lstm_589/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_589/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_589/zerosFilllstm_589/zeros/packed:output:0lstm_589/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_589/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_589/zeros_1/packedPacklstm_589/strided_slice:output:0"lstm_589/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_589/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_589/zeros_1Fill lstm_589/zeros_1/packed:output:0lstm_589/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_589/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_589/transpose	Transposelstm_588/transpose_1:y:0 lstm_589/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_589/Shape_1Shapelstm_589/transpose:y:0*
T0*
_output_shapes
:h
lstm_589/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_589/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_1StridedSlicelstm_589/Shape_1:output:0'lstm_589/strided_slice_1/stack:output:0)lstm_589/strided_slice_1/stack_1:output:0)lstm_589/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_589/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_589/TensorArrayV2TensorListReserve-lstm_589/TensorArrayV2/element_shape:output:0!lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_589/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_589/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_589/transpose:y:0Glstm_589/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_589/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_589/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_2StridedSlicelstm_589/transpose:y:0'lstm_589/strided_slice_2/stack:output:0)lstm_589/strided_slice_2/stack_1:output:0)lstm_589/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_589/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp5lstm_589_lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_589/lstm_cell_586/MatMulMatMul!lstm_589/strided_slice_2:output:04lstm_589/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_589/lstm_cell_586/MatMul_1MatMullstm_589/zeros:output:06lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_589/lstm_cell_586/addAddV2'lstm_589/lstm_cell_586/MatMul:product:0)lstm_589/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp6lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_589/lstm_cell_586/BiasAddBiasAddlstm_589/lstm_cell_586/add:z:05lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_589/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_589/lstm_cell_586/splitSplit/lstm_589/lstm_cell_586/split/split_dim:output:0'lstm_589/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_589/lstm_cell_586/SigmoidSigmoid%lstm_589/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_589/lstm_cell_586/Sigmoid_1Sigmoid%lstm_589/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mulMul$lstm_589/lstm_cell_586/Sigmoid_1:y:0lstm_589/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_589/lstm_cell_586/ReluRelu%lstm_589/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mul_1Mul"lstm_589/lstm_cell_586/Sigmoid:y:0)lstm_589/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/add_1AddV2lstm_589/lstm_cell_586/mul:z:0 lstm_589/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_589/lstm_cell_586/Sigmoid_2Sigmoid%lstm_589/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_589/lstm_cell_586/Relu_1Relu lstm_589/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_589/lstm_cell_586/mul_2Mul$lstm_589/lstm_cell_586/Sigmoid_2:y:0+lstm_589/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_589/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_589/TensorArrayV2_1TensorListReserve/lstm_589/TensorArrayV2_1/element_shape:output:0!lstm_589/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_589/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_589/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_589/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_589/whileWhile$lstm_589/while/loop_counter:output:0*lstm_589/while/maximum_iterations:output:0lstm_589/time:output:0!lstm_589/TensorArrayV2_1:handle:0lstm_589/zeros:output:0lstm_589/zeros_1:output:0!lstm_589/strided_slice_1:output:0@lstm_589/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_589_lstm_cell_586_matmul_readvariableop_resource7lstm_589_lstm_cell_586_matmul_1_readvariableop_resource6lstm_589_lstm_cell_586_biasadd_readvariableop_resource*
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
lstm_589_while_body_3554775*'
condR
lstm_589_while_cond_3554774*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_589/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_589/TensorArrayV2Stack/TensorListStackTensorListStacklstm_589/while:output:3Blstm_589/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_589/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_589/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_589/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_589/strided_slice_3StridedSlice4lstm_589/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_589/strided_slice_3/stack:output:0)lstm_589/strided_slice_3/stack_1:output:0)lstm_589/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_589/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_589/transpose_1	Transpose4lstm_589/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_589/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_589/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_590/ShapeShapelstm_589/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_590/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_590/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_590/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_sliceStridedSlicelstm_590/Shape:output:0%lstm_590/strided_slice/stack:output:0'lstm_590/strided_slice/stack_1:output:0'lstm_590/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_590/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_590/zeros/packedPacklstm_590/strided_slice:output:0 lstm_590/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_590/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_590/zerosFilllstm_590/zeros/packed:output:0lstm_590/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_590/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_590/zeros_1/packedPacklstm_590/strided_slice:output:0"lstm_590/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_590/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_590/zeros_1Fill lstm_590/zeros_1/packed:output:0lstm_590/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_590/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_590/transpose	Transposelstm_589/transpose_1:y:0 lstm_590/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_590/Shape_1Shapelstm_590/transpose:y:0*
T0*
_output_shapes
:h
lstm_590/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_590/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_1StridedSlicelstm_590/Shape_1:output:0'lstm_590/strided_slice_1/stack:output:0)lstm_590/strided_slice_1/stack_1:output:0)lstm_590/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_590/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_590/TensorArrayV2TensorListReserve-lstm_590/TensorArrayV2/element_shape:output:0!lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_590/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_590/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_590/transpose:y:0Glstm_590/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_590/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_590/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_2StridedSlicelstm_590/transpose:y:0'lstm_590/strided_slice_2/stack:output:0)lstm_590/strided_slice_2/stack_1:output:0)lstm_590/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_590/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp5lstm_590_lstm_cell_587_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_590/lstm_cell_587/MatMulMatMul!lstm_590/strided_slice_2:output:04lstm_590/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_590/lstm_cell_587/MatMul_1MatMullstm_590/zeros:output:06lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_590/lstm_cell_587/addAddV2'lstm_590/lstm_cell_587/MatMul:product:0)lstm_590/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp6lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_590/lstm_cell_587/BiasAddBiasAddlstm_590/lstm_cell_587/add:z:05lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_590/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_590/lstm_cell_587/splitSplit/lstm_590/lstm_cell_587/split/split_dim:output:0'lstm_590/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_590/lstm_cell_587/SigmoidSigmoid%lstm_590/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_590/lstm_cell_587/Sigmoid_1Sigmoid%lstm_590/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mulMul$lstm_590/lstm_cell_587/Sigmoid_1:y:0lstm_590/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_590/lstm_cell_587/ReluRelu%lstm_590/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mul_1Mul"lstm_590/lstm_cell_587/Sigmoid:y:0)lstm_590/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/add_1AddV2lstm_590/lstm_cell_587/mul:z:0 lstm_590/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_590/lstm_cell_587/Sigmoid_2Sigmoid%lstm_590/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_590/lstm_cell_587/Relu_1Relu lstm_590/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_590/lstm_cell_587/mul_2Mul$lstm_590/lstm_cell_587/Sigmoid_2:y:0+lstm_590/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_590/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_590/TensorArrayV2_1TensorListReserve/lstm_590/TensorArrayV2_1/element_shape:output:0!lstm_590/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_590/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_590/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_590/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_590/whileWhile$lstm_590/while/loop_counter:output:0*lstm_590/while/maximum_iterations:output:0lstm_590/time:output:0!lstm_590/TensorArrayV2_1:handle:0lstm_590/zeros:output:0lstm_590/zeros_1:output:0!lstm_590/strided_slice_1:output:0@lstm_590/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_590_lstm_cell_587_matmul_readvariableop_resource7lstm_590_lstm_cell_587_matmul_1_readvariableop_resource6lstm_590_lstm_cell_587_biasadd_readvariableop_resource*
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
lstm_590_while_body_3554914*'
condR
lstm_590_while_cond_3554913*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_590/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_590/TensorArrayV2Stack/TensorListStackTensorListStacklstm_590/while:output:3Blstm_590/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_590/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_590/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_590/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_590/strided_slice_3StridedSlice4lstm_590/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_590/strided_slice_3/stack:output:0)lstm_590/strided_slice_3/stack_1:output:0)lstm_590/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_590/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_590/transpose_1	Transpose4lstm_590/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_590/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_590/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_196/MatMul/ReadVariableOpReadVariableOp(dense_196_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_196/MatMulMatMul!lstm_590/strided_slice_3:output:0'dense_196/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_196/BiasAdd/ReadVariableOpReadVariableOp)dense_196_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_196/BiasAddBiasAdddense_196/MatMul:product:0(dense_196/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_196/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_196/BiasAdd/ReadVariableOp ^dense_196/MatMul/ReadVariableOp.^lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp-^lstm_588/lstm_cell_585/MatMul/ReadVariableOp/^lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp^lstm_588/while.^lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp-^lstm_589/lstm_cell_586/MatMul/ReadVariableOp/^lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp^lstm_589/while.^lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp-^lstm_590/lstm_cell_587/MatMul/ReadVariableOp/^lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp^lstm_590/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_196/BiasAdd/ReadVariableOp dense_196/BiasAdd/ReadVariableOp2B
dense_196/MatMul/ReadVariableOpdense_196/MatMul/ReadVariableOp2^
-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp-lstm_588/lstm_cell_585/BiasAdd/ReadVariableOp2\
,lstm_588/lstm_cell_585/MatMul/ReadVariableOp,lstm_588/lstm_cell_585/MatMul/ReadVariableOp2`
.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp.lstm_588/lstm_cell_585/MatMul_1/ReadVariableOp2 
lstm_588/whilelstm_588/while2^
-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp-lstm_589/lstm_cell_586/BiasAdd/ReadVariableOp2\
,lstm_589/lstm_cell_586/MatMul/ReadVariableOp,lstm_589/lstm_cell_586/MatMul/ReadVariableOp2`
.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp.lstm_589/lstm_cell_586/MatMul_1/ReadVariableOp2 
lstm_589/whilelstm_589/while2^
-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp-lstm_590/lstm_cell_587/BiasAdd/ReadVariableOp2\
,lstm_590/lstm_cell_587/MatMul/ReadVariableOp,lstm_590/lstm_cell_587/MatMul/ReadVariableOp2`
.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp.lstm_590/lstm_cell_587/MatMul_1/ReadVariableOp2 
lstm_590/whilelstm_590/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3552458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_586_3552482_0:	d?0
while_lstm_cell_586_3552484_0:	2?,
while_lstm_cell_586_3552486_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_586_3552482:	d?.
while_lstm_cell_586_3552484:	2?*
while_lstm_cell_586_3552486:	???+while/lstm_cell_586/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_586/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_586_3552482_0while_lstm_cell_586_3552484_0while_lstm_cell_586_3552486_0*
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3552399?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_586/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_586/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_586/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_586/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_586_3552482while_lstm_cell_586_3552482_0"<
while_lstm_cell_586_3552484while_lstm_cell_586_3552484_0"<
while_lstm_cell_586_3552486while_lstm_cell_586_3552486_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_586/StatefulPartitionedCall+while/lstm_cell_586/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_588_while_cond_3554208.
*lstm_588_while_lstm_588_while_loop_counter4
0lstm_588_while_lstm_588_while_maximum_iterations
lstm_588_while_placeholder 
lstm_588_while_placeholder_1 
lstm_588_while_placeholder_2 
lstm_588_while_placeholder_30
,lstm_588_while_less_lstm_588_strided_slice_1G
Clstm_588_while_lstm_588_while_cond_3554208___redundant_placeholder0G
Clstm_588_while_lstm_588_while_cond_3554208___redundant_placeholder1G
Clstm_588_while_lstm_588_while_cond_3554208___redundant_placeholder2G
Clstm_588_while_lstm_588_while_cond_3554208___redundant_placeholder3
lstm_588_while_identity
?
lstm_588/while/LessLesslstm_588_while_placeholder,lstm_588_while_less_lstm_588_strided_slice_1*
T0*
_output_shapes
: ]
lstm_588/while/IdentityIdentitylstm_588/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_588_while_identity lstm_588/while/Identity:output:0*(
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3552049

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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556969

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
?
/__inference_lstm_cell_587_layer_call_fn_3557101

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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552749o
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
while_cond_3556151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556151___redundant_placeholder05
1while_while_cond_3556151___redundant_placeholder15
1while_while_cond_3556151___redundant_placeholder25
1while_while_cond_3556151___redundant_placeholder3
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
*sequential_196_lstm_590_while_body_3551746L
Hsequential_196_lstm_590_while_sequential_196_lstm_590_while_loop_counterR
Nsequential_196_lstm_590_while_sequential_196_lstm_590_while_maximum_iterations-
)sequential_196_lstm_590_while_placeholder/
+sequential_196_lstm_590_while_placeholder_1/
+sequential_196_lstm_590_while_placeholder_2/
+sequential_196_lstm_590_while_placeholder_3K
Gsequential_196_lstm_590_while_sequential_196_lstm_590_strided_slice_1_0?
?sequential_196_lstm_590_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_590_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_196_lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0:2(`
Nsequential_196_lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0:
([
Msequential_196_lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0:(*
&sequential_196_lstm_590_while_identity,
(sequential_196_lstm_590_while_identity_1,
(sequential_196_lstm_590_while_identity_2,
(sequential_196_lstm_590_while_identity_3,
(sequential_196_lstm_590_while_identity_4,
(sequential_196_lstm_590_while_identity_5I
Esequential_196_lstm_590_while_sequential_196_lstm_590_strided_slice_1?
?sequential_196_lstm_590_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_590_tensorarrayunstack_tensorlistfromtensor\
Jsequential_196_lstm_590_while_lstm_cell_587_matmul_readvariableop_resource:2(^
Lsequential_196_lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource:
(Y
Ksequential_196_lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource:(??Bsequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp?Asequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp?Csequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp?
Osequential_196/lstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_196/lstm_590/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_196_lstm_590_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_590_tensorarrayunstack_tensorlistfromtensor_0)sequential_196_lstm_590_while_placeholderXsequential_196/lstm_590/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOpLsequential_196_lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_196/lstm_590/while/lstm_cell_587/MatMulMatMulHsequential_196/lstm_590/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOpNsequential_196_lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_196/lstm_590/while/lstm_cell_587/MatMul_1MatMul+sequential_196_lstm_590_while_placeholder_2Ksequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_196/lstm_590/while/lstm_cell_587/addAddV2<sequential_196/lstm_590/while/lstm_cell_587/MatMul:product:0>sequential_196/lstm_590/while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOpMsequential_196_lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_196/lstm_590/while/lstm_cell_587/BiasAddBiasAdd3sequential_196/lstm_590/while/lstm_cell_587/add:z:0Jsequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_196/lstm_590/while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_196/lstm_590/while/lstm_cell_587/splitSplitDsequential_196/lstm_590/while/lstm_cell_587/split/split_dim:output:0<sequential_196/lstm_590/while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_196/lstm_590/while/lstm_cell_587/SigmoidSigmoid:sequential_196/lstm_590/while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_196/lstm_590/while/lstm_cell_587/Sigmoid_1Sigmoid:sequential_196/lstm_590/while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_196/lstm_590/while/lstm_cell_587/mulMul9sequential_196/lstm_590/while/lstm_cell_587/Sigmoid_1:y:0+sequential_196_lstm_590_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_196/lstm_590/while/lstm_cell_587/ReluRelu:sequential_196/lstm_590/while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_196/lstm_590/while/lstm_cell_587/mul_1Mul7sequential_196/lstm_590/while/lstm_cell_587/Sigmoid:y:0>sequential_196/lstm_590/while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_196/lstm_590/while/lstm_cell_587/add_1AddV23sequential_196/lstm_590/while/lstm_cell_587/mul:z:05sequential_196/lstm_590/while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_196/lstm_590/while/lstm_cell_587/Sigmoid_2Sigmoid:sequential_196/lstm_590/while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_196/lstm_590/while/lstm_cell_587/Relu_1Relu5sequential_196/lstm_590/while/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_196/lstm_590/while/lstm_cell_587/mul_2Mul9sequential_196/lstm_590/while/lstm_cell_587/Sigmoid_2:y:0@sequential_196/lstm_590/while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_196/lstm_590/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_196_lstm_590_while_placeholder_1)sequential_196_lstm_590_while_placeholder5sequential_196/lstm_590/while/lstm_cell_587/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_196/lstm_590/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_196/lstm_590/while/addAddV2)sequential_196_lstm_590_while_placeholder,sequential_196/lstm_590/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_196/lstm_590/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_196/lstm_590/while/add_1AddV2Hsequential_196_lstm_590_while_sequential_196_lstm_590_while_loop_counter.sequential_196/lstm_590/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_196/lstm_590/while/IdentityIdentity'sequential_196/lstm_590/while/add_1:z:0#^sequential_196/lstm_590/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_590/while/Identity_1IdentityNsequential_196_lstm_590_while_sequential_196_lstm_590_while_maximum_iterations#^sequential_196/lstm_590/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_590/while/Identity_2Identity%sequential_196/lstm_590/while/add:z:0#^sequential_196/lstm_590/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_590/while/Identity_3IdentityRsequential_196/lstm_590/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_196/lstm_590/while/NoOp*
T0*
_output_shapes
: ?
(sequential_196/lstm_590/while/Identity_4Identity5sequential_196/lstm_590/while/lstm_cell_587/mul_2:z:0#^sequential_196/lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_196/lstm_590/while/Identity_5Identity5sequential_196/lstm_590/while/lstm_cell_587/add_1:z:0#^sequential_196/lstm_590/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_196/lstm_590/while/NoOpNoOpC^sequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOpB^sequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOpD^sequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_196_lstm_590_while_identity/sequential_196/lstm_590/while/Identity:output:0"]
(sequential_196_lstm_590_while_identity_11sequential_196/lstm_590/while/Identity_1:output:0"]
(sequential_196_lstm_590_while_identity_21sequential_196/lstm_590/while/Identity_2:output:0"]
(sequential_196_lstm_590_while_identity_31sequential_196/lstm_590/while/Identity_3:output:0"]
(sequential_196_lstm_590_while_identity_41sequential_196/lstm_590/while/Identity_4:output:0"]
(sequential_196_lstm_590_while_identity_51sequential_196/lstm_590/while/Identity_5:output:0"?
Ksequential_196_lstm_590_while_lstm_cell_587_biasadd_readvariableop_resourceMsequential_196_lstm_590_while_lstm_cell_587_biasadd_readvariableop_resource_0"?
Lsequential_196_lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resourceNsequential_196_lstm_590_while_lstm_cell_587_matmul_1_readvariableop_resource_0"?
Jsequential_196_lstm_590_while_lstm_cell_587_matmul_readvariableop_resourceLsequential_196_lstm_590_while_lstm_cell_587_matmul_readvariableop_resource_0"?
Esequential_196_lstm_590_while_sequential_196_lstm_590_strided_slice_1Gsequential_196_lstm_590_while_sequential_196_lstm_590_strided_slice_1_0"?
?sequential_196_lstm_590_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_590_tensorarrayunstack_tensorlistfromtensor?sequential_196_lstm_590_while_tensorarrayv2read_tensorlistgetitem_sequential_196_lstm_590_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOpBsequential_196/lstm_590/while/lstm_cell_587/BiasAdd/ReadVariableOp2?
Asequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOpAsequential_196/lstm_590/while/lstm_cell_587/MatMul/ReadVariableOp2?
Csequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOpCsequential_196/lstm_590/while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3552107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3552107___redundant_placeholder05
1while_while_cond_3552107___redundant_placeholder15
1while_while_cond_3552107___redundant_placeholder25
1while_while_cond_3552107___redundant_placeholder3
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556236

inputs?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3556152*
condR
while_cond_3556151*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3551916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3551916___redundant_placeholder05
1while_while_cond_3551916___redundant_placeholder15
1while_while_cond_3551916___redundant_placeholder25
1while_while_cond_3551916___redundant_placeholder3
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
while_cond_3556008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3556008___redundant_placeholder05
1while_while_cond_3556008___redundant_placeholder15
1while_while_cond_3556008___redundant_placeholder25
1while_while_cond_3556008___redundant_placeholder3
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
while_body_3556482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_196_lstm_590_while_cond_3551745L
Hsequential_196_lstm_590_while_sequential_196_lstm_590_while_loop_counterR
Nsequential_196_lstm_590_while_sequential_196_lstm_590_while_maximum_iterations-
)sequential_196_lstm_590_while_placeholder/
+sequential_196_lstm_590_while_placeholder_1/
+sequential_196_lstm_590_while_placeholder_2/
+sequential_196_lstm_590_while_placeholder_3N
Jsequential_196_lstm_590_while_less_sequential_196_lstm_590_strided_slice_1e
asequential_196_lstm_590_while_sequential_196_lstm_590_while_cond_3551745___redundant_placeholder0e
asequential_196_lstm_590_while_sequential_196_lstm_590_while_cond_3551745___redundant_placeholder1e
asequential_196_lstm_590_while_sequential_196_lstm_590_while_cond_3551745___redundant_placeholder2e
asequential_196_lstm_590_while_sequential_196_lstm_590_while_cond_3551745___redundant_placeholder3*
&sequential_196_lstm_590_while_identity
?
"sequential_196/lstm_590/while/LessLess)sequential_196_lstm_590_while_placeholderJsequential_196_lstm_590_while_less_sequential_196_lstm_590_strided_slice_1*
T0*
_output_shapes
: {
&sequential_196/lstm_590/while/IdentityIdentity&sequential_196/lstm_590/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_196_lstm_590_while_identity/sequential_196/lstm_590/while/Identity:output:0*(
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
0__inference_sequential_196_layer_call_fn_3554123

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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3553360o
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
while_body_3553467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_587_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_587_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_587_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_587_matmul_readvariableop_resource:2(F
4while_lstm_cell_587_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_587_biasadd_readvariableop_resource:(??*while/lstm_cell_587/BiasAdd/ReadVariableOp?)while/lstm_cell_587/MatMul/ReadVariableOp?+while/lstm_cell_587/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_587/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_587_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_587/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_587/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_587/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_587_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_587/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_587/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_587/addAddV2$while/lstm_cell_587/MatMul:product:0&while/lstm_cell_587/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_587/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_587_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_587/BiasAddBiasAddwhile/lstm_cell_587/add:z:02while/lstm_cell_587/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_587/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_587/splitSplit,while/lstm_cell_587/split/split_dim:output:0$while/lstm_cell_587/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_587/SigmoidSigmoid"while/lstm_cell_587/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_1Sigmoid"while/lstm_cell_587/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mulMul!while/lstm_cell_587/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_587/ReluRelu"while/lstm_cell_587/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_1Mulwhile/lstm_cell_587/Sigmoid:y:0&while/lstm_cell_587/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/add_1AddV2while/lstm_cell_587/mul:z:0while/lstm_cell_587/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_587/Sigmoid_2Sigmoid"while/lstm_cell_587/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_587/Relu_1Reluwhile/lstm_cell_587/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_587/mul_2Mul!while/lstm_cell_587/Sigmoid_2:y:0(while/lstm_cell_587/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_587/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_587/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_587/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_587/BiasAdd/ReadVariableOp*^while/lstm_cell_587/MatMul/ReadVariableOp,^while/lstm_cell_587/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_587_biasadd_readvariableop_resource5while_lstm_cell_587_biasadd_readvariableop_resource_0"n
4while_lstm_cell_587_matmul_1_readvariableop_resource6while_lstm_cell_587_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_587_matmul_readvariableop_resource4while_lstm_cell_587_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_587/BiasAdd/ReadVariableOp*while/lstm_cell_587/BiasAdd/ReadVariableOp2V
)while/lstm_cell_587/MatMul/ReadVariableOp)while/lstm_cell_587/MatMul/ReadVariableOp2Z
+while/lstm_cell_587/MatMul_1/ReadVariableOp+while/lstm_cell_587/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555807
inputs_0?
,lstm_cell_586_matmul_readvariableop_resource:	d?A
.lstm_cell_586_matmul_1_readvariableop_resource:	2?<
-lstm_cell_586_biasadd_readvariableop_resource:	?
identity??$lstm_cell_586/BiasAdd/ReadVariableOp?#lstm_cell_586/MatMul/ReadVariableOp?%lstm_cell_586/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_586/MatMul/ReadVariableOpReadVariableOp,lstm_cell_586_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_586/MatMulMatMulstrided_slice_2:output:0+lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_586_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_586/MatMul_1MatMulzeros:output:0-lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_586/addAddV2lstm_cell_586/MatMul:product:0 lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_586_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_586/BiasAddBiasAddlstm_cell_586/add:z:0,lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_586/splitSplit&lstm_cell_586/split/split_dim:output:0lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_586/SigmoidSigmoidlstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_1Sigmoidlstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_586/mulMullstm_cell_586/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_586/ReluRelulstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_1Mullstm_cell_586/Sigmoid:y:0 lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_586/add_1AddV2lstm_cell_586/mul:z:0lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_586/Sigmoid_2Sigmoidlstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_586/Relu_1Relulstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_586/mul_2Mullstm_cell_586/Sigmoid_2:y:0"lstm_cell_586/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_586_matmul_readvariableop_resource.lstm_cell_586_matmul_1_readvariableop_resource-lstm_cell_586_biasadd_readvariableop_resource*
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
while_body_3555723*
condR
while_cond_3555722*K
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
NoOpNoOp%^lstm_cell_586/BiasAdd/ReadVariableOp$^lstm_cell_586/MatMul/ReadVariableOp&^lstm_cell_586/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_586/BiasAdd/ReadVariableOp$lstm_cell_586/BiasAdd/ReadVariableOp2J
#lstm_cell_586/MatMul/ReadVariableOp#lstm_cell_586/MatMul/ReadVariableOp2N
%lstm_cell_586/MatMul_1/ReadVariableOp%lstm_cell_586/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_588_while_body_3554209.
*lstm_588_while_lstm_588_while_loop_counter4
0lstm_588_while_lstm_588_while_maximum_iterations
lstm_588_while_placeholder 
lstm_588_while_placeholder_1 
lstm_588_while_placeholder_2 
lstm_588_while_placeholder_3-
)lstm_588_while_lstm_588_strided_slice_1_0i
elstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0:	?R
?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0:	d?M
>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0:	?
lstm_588_while_identity
lstm_588_while_identity_1
lstm_588_while_identity_2
lstm_588_while_identity_3
lstm_588_while_identity_4
lstm_588_while_identity_5+
'lstm_588_while_lstm_588_strided_slice_1g
clstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensorN
;lstm_588_while_lstm_cell_585_matmul_readvariableop_resource:	?P
=lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource:	d?K
<lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource:	???3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp?2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp?4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp?
@lstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_588/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0lstm_588_while_placeholderIlstm_588/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOpReadVariableOp=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_588/while/lstm_cell_585/MatMulMatMul9lstm_588/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOpReadVariableOp?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_588/while/lstm_cell_585/MatMul_1MatMullstm_588_while_placeholder_2<lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_588/while/lstm_cell_585/addAddV2-lstm_588/while/lstm_cell_585/MatMul:product:0/lstm_588/while/lstm_cell_585/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOpReadVariableOp>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_588/while/lstm_cell_585/BiasAddBiasAdd$lstm_588/while/lstm_cell_585/add:z:0;lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_588/while/lstm_cell_585/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_588/while/lstm_cell_585/splitSplit5lstm_588/while/lstm_cell_585/split/split_dim:output:0-lstm_588/while/lstm_cell_585/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_588/while/lstm_cell_585/SigmoidSigmoid+lstm_588/while/lstm_cell_585/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_588/while/lstm_cell_585/Sigmoid_1Sigmoid+lstm_588/while/lstm_cell_585/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_588/while/lstm_cell_585/mulMul*lstm_588/while/lstm_cell_585/Sigmoid_1:y:0lstm_588_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_588/while/lstm_cell_585/ReluRelu+lstm_588/while/lstm_cell_585/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/mul_1Mul(lstm_588/while/lstm_cell_585/Sigmoid:y:0/lstm_588/while/lstm_cell_585/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/add_1AddV2$lstm_588/while/lstm_cell_585/mul:z:0&lstm_588/while/lstm_cell_585/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_588/while/lstm_cell_585/Sigmoid_2Sigmoid+lstm_588/while/lstm_cell_585/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_588/while/lstm_cell_585/Relu_1Relu&lstm_588/while/lstm_cell_585/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_588/while/lstm_cell_585/mul_2Mul*lstm_588/while/lstm_cell_585/Sigmoid_2:y:01lstm_588/while/lstm_cell_585/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_588/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_588_while_placeholder_1lstm_588_while_placeholder&lstm_588/while/lstm_cell_585/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_588/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_588/while/addAddV2lstm_588_while_placeholderlstm_588/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_588/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_588/while/add_1AddV2*lstm_588_while_lstm_588_while_loop_counterlstm_588/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_588/while/IdentityIdentitylstm_588/while/add_1:z:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_1Identity0lstm_588_while_lstm_588_while_maximum_iterations^lstm_588/while/NoOp*
T0*
_output_shapes
: t
lstm_588/while/Identity_2Identitylstm_588/while/add:z:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_3IdentityClstm_588/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_588/while/NoOp*
T0*
_output_shapes
: ?
lstm_588/while/Identity_4Identity&lstm_588/while/lstm_cell_585/mul_2:z:0^lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_588/while/Identity_5Identity&lstm_588/while/lstm_cell_585/add_1:z:0^lstm_588/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_588/while/NoOpNoOp4^lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp3^lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp5^lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_588_while_identity lstm_588/while/Identity:output:0"?
lstm_588_while_identity_1"lstm_588/while/Identity_1:output:0"?
lstm_588_while_identity_2"lstm_588/while/Identity_2:output:0"?
lstm_588_while_identity_3"lstm_588/while/Identity_3:output:0"?
lstm_588_while_identity_4"lstm_588/while/Identity_4:output:0"?
lstm_588_while_identity_5"lstm_588/while/Identity_5:output:0"T
'lstm_588_while_lstm_588_strided_slice_1)lstm_588_while_lstm_588_strided_slice_1_0"~
<lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource>lstm_588_while_lstm_cell_585_biasadd_readvariableop_resource_0"?
=lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource?lstm_588_while_lstm_cell_585_matmul_1_readvariableop_resource_0"|
;lstm_588_while_lstm_cell_585_matmul_readvariableop_resource=lstm_588_while_lstm_cell_585_matmul_readvariableop_resource_0"?
clstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensorelstm_588_while_tensorarrayv2read_tensorlistgetitem_lstm_588_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp3lstm_588/while/lstm_cell_585/BiasAdd/ReadVariableOp2h
2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp2lstm_588/while/lstm_cell_585/MatMul/ReadVariableOp2l
4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp4lstm_588/while/lstm_cell_585/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3552617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_587_3552641_0:2(/
while_lstm_cell_587_3552643_0:
(+
while_lstm_cell_587_3552645_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_587_3552641:2(-
while_lstm_cell_587_3552643:
()
while_lstm_cell_587_3552645:(??+while/lstm_cell_587/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_587/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_587_3552641_0while_lstm_cell_587_3552643_0while_lstm_cell_587_3552645_0*
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3552603?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_587/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_587/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_587/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_587_3552641while_lstm_cell_587_3552641_0"<
while_lstm_cell_587_3552643while_lstm_cell_587_3552643_0"<
while_lstm_cell_587_3552645while_lstm_cell_587_3552645_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_587/StatefulPartitionedCall+while/lstm_cell_587/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3555723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_586_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_586_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_586_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_586_matmul_readvariableop_resource:	d?G
4while_lstm_cell_586_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_586_biasadd_readvariableop_resource:	???*while/lstm_cell_586/BiasAdd/ReadVariableOp?)while/lstm_cell_586/MatMul/ReadVariableOp?+while/lstm_cell_586/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_586/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_586_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_586/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_586/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_586/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_586_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_586/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_586/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_586/addAddV2$while/lstm_cell_586/MatMul:product:0&while/lstm_cell_586/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_586/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_586_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_586/BiasAddBiasAddwhile/lstm_cell_586/add:z:02while/lstm_cell_586/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_586/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_586/splitSplit,while/lstm_cell_586/split/split_dim:output:0$while/lstm_cell_586/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_586/SigmoidSigmoid"while/lstm_cell_586/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_1Sigmoid"while/lstm_cell_586/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mulMul!while/lstm_cell_586/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_586/ReluRelu"while/lstm_cell_586/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_1Mulwhile/lstm_cell_586/Sigmoid:y:0&while/lstm_cell_586/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/add_1AddV2while/lstm_cell_586/mul:z:0while/lstm_cell_586/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_586/Sigmoid_2Sigmoid"while/lstm_cell_586/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_586/Relu_1Reluwhile/lstm_cell_586/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_586/mul_2Mul!while/lstm_cell_586/Sigmoid_2:y:0(while/lstm_cell_586/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_586/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_586/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_586/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_586/BiasAdd/ReadVariableOp*^while/lstm_cell_586/MatMul/ReadVariableOp,^while/lstm_cell_586/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_586_biasadd_readvariableop_resource5while_lstm_cell_586_biasadd_readvariableop_resource_0"n
4while_lstm_cell_586_matmul_1_readvariableop_resource6while_lstm_cell_586_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_586_matmul_readvariableop_resource4while_lstm_cell_586_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_586/BiasAdd/ReadVariableOp*while/lstm_cell_586/BiasAdd/ReadVariableOp2V
)while/lstm_cell_586/MatMul/ReadVariableOp)while/lstm_cell_586/MatMul/ReadVariableOp2Z
+while/lstm_cell_586/MatMul_1/ReadVariableOp+while/lstm_cell_586/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_588_input;
 serving_default_lstm_588_input:0?????????=
	dense_1960
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
2dense_196/kernel
:2dense_196/bias
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
0:.	?2lstm_588/lstm_cell_588/kernel
::8	d?2'lstm_588/lstm_cell_588/recurrent_kernel
*:(?2lstm_588/lstm_cell_588/bias
0:.	d?2lstm_589/lstm_cell_589/kernel
::8	2?2'lstm_589/lstm_cell_589/recurrent_kernel
*:(?2lstm_589/lstm_cell_589/bias
/:-2(2lstm_590/lstm_cell_590/kernel
9:7
(2'lstm_590/lstm_cell_590/recurrent_kernel
):'(2lstm_590/lstm_cell_590/bias
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
2Adam/dense_196/kernel/m
!:2Adam/dense_196/bias/m
5:3	?2$Adam/lstm_588/lstm_cell_588/kernel/m
?:=	d?2.Adam/lstm_588/lstm_cell_588/recurrent_kernel/m
/:-?2"Adam/lstm_588/lstm_cell_588/bias/m
5:3	d?2$Adam/lstm_589/lstm_cell_589/kernel/m
?:=	2?2.Adam/lstm_589/lstm_cell_589/recurrent_kernel/m
/:-?2"Adam/lstm_589/lstm_cell_589/bias/m
4:22(2$Adam/lstm_590/lstm_cell_590/kernel/m
>:<
(2.Adam/lstm_590/lstm_cell_590/recurrent_kernel/m
.:,(2"Adam/lstm_590/lstm_cell_590/bias/m
':%
2Adam/dense_196/kernel/v
!:2Adam/dense_196/bias/v
5:3	?2$Adam/lstm_588/lstm_cell_588/kernel/v
?:=	d?2.Adam/lstm_588/lstm_cell_588/recurrent_kernel/v
/:-?2"Adam/lstm_588/lstm_cell_588/bias/v
5:3	d?2$Adam/lstm_589/lstm_cell_589/kernel/v
?:=	2?2.Adam/lstm_589/lstm_cell_589/recurrent_kernel/v
/:-?2"Adam/lstm_589/lstm_cell_589/bias/v
4:22(2$Adam/lstm_590/lstm_cell_590/kernel/v
>:<
(2.Adam/lstm_590/lstm_cell_590/recurrent_kernel/v
.:,(2"Adam/lstm_590/lstm_cell_590/bias/v
?2?
0__inference_sequential_196_layer_call_fn_3553385
0__inference_sequential_196_layer_call_fn_3554123
0__inference_sequential_196_layer_call_fn_3554150
0__inference_sequential_196_layer_call_fn_3554001?
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554577
K__inference_sequential_196_layer_call_and_return_conditional_losses_3555004
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554031
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554061?
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
"__inference__wrapped_model_3551836lstm_588_input"?
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
*__inference_lstm_588_layer_call_fn_3555015
*__inference_lstm_588_layer_call_fn_3555026
*__inference_lstm_588_layer_call_fn_3555037
*__inference_lstm_588_layer_call_fn_3555048?
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555191
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555334
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555477
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555620?
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
*__inference_lstm_589_layer_call_fn_3555631
*__inference_lstm_589_layer_call_fn_3555642
*__inference_lstm_589_layer_call_fn_3555653
*__inference_lstm_589_layer_call_fn_3555664?
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555807
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555950
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556093
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556236?
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
*__inference_lstm_590_layer_call_fn_3556247
*__inference_lstm_590_layer_call_fn_3556258
*__inference_lstm_590_layer_call_fn_3556269
*__inference_lstm_590_layer_call_fn_3556280?
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556423
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556566
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556709
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556852?
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
+__inference_dense_196_layer_call_fn_3556861?
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
F__inference_dense_196_layer_call_and_return_conditional_losses_3556871?
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
%__inference_signature_wrapper_3554096lstm_588_input"?
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
/__inference_lstm_cell_585_layer_call_fn_3556888
/__inference_lstm_cell_585_layer_call_fn_3556905?
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556937
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556969?
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
/__inference_lstm_cell_586_layer_call_fn_3556986
/__inference_lstm_cell_586_layer_call_fn_3557003?
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557035
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557067?
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
/__inference_lstm_cell_587_layer_call_fn_3557084
/__inference_lstm_cell_587_layer_call_fn_3557101?
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557133
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557165?
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
"__inference__wrapped_model_3551836?-./012345!";?8
1?.
,?)
lstm_588_input?????????
? "5?2
0
	dense_196#? 
	dense_196??????????
F__inference_dense_196_layer_call_and_return_conditional_losses_3556871\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_196_layer_call_fn_3556861O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555191?-./O?L
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555334?-./O?L
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555477q-./??<
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
E__inference_lstm_588_layer_call_and_return_conditional_losses_3555620q-./??<
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
*__inference_lstm_588_layer_call_fn_3555015}-./O?L
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
*__inference_lstm_588_layer_call_fn_3555026}-./O?L
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
*__inference_lstm_588_layer_call_fn_3555037d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_588_layer_call_fn_3555048d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555807?012O?L
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3555950?012O?L
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556093q012??<
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
E__inference_lstm_589_layer_call_and_return_conditional_losses_3556236q012??<
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
*__inference_lstm_589_layer_call_fn_3555631}012O?L
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
*__inference_lstm_589_layer_call_fn_3555642}012O?L
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
*__inference_lstm_589_layer_call_fn_3555653d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_589_layer_call_fn_3555664d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556423}345O?L
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556566}345O?L
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556709m345??<
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
E__inference_lstm_590_layer_call_and_return_conditional_losses_3556852m345??<
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
*__inference_lstm_590_layer_call_fn_3556247p345O?L
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
*__inference_lstm_590_layer_call_fn_3556258p345O?L
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
*__inference_lstm_590_layer_call_fn_3556269`345??<
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
*__inference_lstm_590_layer_call_fn_3556280`345??<
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556937?-./??}
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
J__inference_lstm_cell_585_layer_call_and_return_conditional_losses_3556969?-./??}
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
/__inference_lstm_cell_585_layer_call_fn_3556888?-./??}
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
/__inference_lstm_cell_585_layer_call_fn_3556905?-./??}
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557035?012??}
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
J__inference_lstm_cell_586_layer_call_and_return_conditional_losses_3557067?012??}
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
/__inference_lstm_cell_586_layer_call_fn_3556986?012??}
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
/__inference_lstm_cell_586_layer_call_fn_3557003?012??}
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557133?345??}
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
J__inference_lstm_cell_587_layer_call_and_return_conditional_losses_3557165?345??}
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
/__inference_lstm_cell_587_layer_call_fn_3557084?345??}
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
/__inference_lstm_cell_587_layer_call_fn_3557101?345??}
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554031y-./012345!"C?@
9?6
,?)
lstm_588_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554061y-./012345!"C?@
9?6
,?)
lstm_588_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_196_layer_call_and_return_conditional_losses_3554577q-./012345!";?8
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
K__inference_sequential_196_layer_call_and_return_conditional_losses_3555004q-./012345!";?8
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
0__inference_sequential_196_layer_call_fn_3553385l-./012345!"C?@
9?6
,?)
lstm_588_input?????????
p 

 
? "???????????
0__inference_sequential_196_layer_call_fn_3554001l-./012345!"C?@
9?6
,?)
lstm_588_input?????????
p

 
? "???????????
0__inference_sequential_196_layer_call_fn_3554123d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_196_layer_call_fn_3554150d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3554096?-./012345!"M?J
? 
C?@
>
lstm_588_input,?)
lstm_588_input?????????"5?2
0
	dense_196#? 
	dense_196?????????