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
dense_197/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_197/kernel
u
$dense_197/kernel/Read/ReadVariableOpReadVariableOpdense_197/kernel*
_output_shapes

:
*
dtype0
t
dense_197/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_197/bias
m
"dense_197/bias/Read/ReadVariableOpReadVariableOpdense_197/bias*
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
lstm_591/lstm_cell_591/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_591/lstm_cell_591/kernel
?
1lstm_591/lstm_cell_591/kernel/Read/ReadVariableOpReadVariableOplstm_591/lstm_cell_591/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_591/lstm_cell_591/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_591/lstm_cell_591/recurrent_kernel
?
;lstm_591/lstm_cell_591/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_591/lstm_cell_591/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_591/lstm_cell_591/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_591/lstm_cell_591/bias
?
/lstm_591/lstm_cell_591/bias/Read/ReadVariableOpReadVariableOplstm_591/lstm_cell_591/bias*
_output_shapes	
:?*
dtype0
?
lstm_592/lstm_cell_592/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_592/lstm_cell_592/kernel
?
1lstm_592/lstm_cell_592/kernel/Read/ReadVariableOpReadVariableOplstm_592/lstm_cell_592/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_592/lstm_cell_592/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_592/lstm_cell_592/recurrent_kernel
?
;lstm_592/lstm_cell_592/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_592/lstm_cell_592/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_592/lstm_cell_592/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_592/lstm_cell_592/bias
?
/lstm_592/lstm_cell_592/bias/Read/ReadVariableOpReadVariableOplstm_592/lstm_cell_592/bias*
_output_shapes	
:?*
dtype0
?
lstm_593/lstm_cell_593/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_593/lstm_cell_593/kernel
?
1lstm_593/lstm_cell_593/kernel/Read/ReadVariableOpReadVariableOplstm_593/lstm_cell_593/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_593/lstm_cell_593/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_593/lstm_cell_593/recurrent_kernel
?
;lstm_593/lstm_cell_593/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_593/lstm_cell_593/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_593/lstm_cell_593/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_593/lstm_cell_593/bias
?
/lstm_593/lstm_cell_593/bias/Read/ReadVariableOpReadVariableOplstm_593/lstm_cell_593/bias*
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
Adam/dense_197/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_197/kernel/m
?
+Adam/dense_197/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_197/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_197/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_197/bias/m
{
)Adam/dense_197/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_197/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_591/lstm_cell_591/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_591/lstm_cell_591/kernel/m
?
8Adam/lstm_591/lstm_cell_591/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_591/lstm_cell_591/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_591/lstm_cell_591/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_591/lstm_cell_591/recurrent_kernel/m
?
BAdam/lstm_591/lstm_cell_591/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_591/lstm_cell_591/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_591/lstm_cell_591/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_591/lstm_cell_591/bias/m
?
6Adam/lstm_591/lstm_cell_591/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_591/lstm_cell_591/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_592/lstm_cell_592/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_592/lstm_cell_592/kernel/m
?
8Adam/lstm_592/lstm_cell_592/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_592/lstm_cell_592/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_592/lstm_cell_592/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_592/lstm_cell_592/recurrent_kernel/m
?
BAdam/lstm_592/lstm_cell_592/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_592/lstm_cell_592/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_592/lstm_cell_592/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_592/lstm_cell_592/bias/m
?
6Adam/lstm_592/lstm_cell_592/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_592/lstm_cell_592/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_593/lstm_cell_593/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_593/lstm_cell_593/kernel/m
?
8Adam/lstm_593/lstm_cell_593/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_593/lstm_cell_593/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_593/lstm_cell_593/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_593/lstm_cell_593/recurrent_kernel/m
?
BAdam/lstm_593/lstm_cell_593/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_593/lstm_cell_593/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_593/lstm_cell_593/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_593/lstm_cell_593/bias/m
?
6Adam/lstm_593/lstm_cell_593/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_593/lstm_cell_593/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_197/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_197/kernel/v
?
+Adam/dense_197/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_197/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_197/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_197/bias/v
{
)Adam/dense_197/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_197/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_591/lstm_cell_591/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_591/lstm_cell_591/kernel/v
?
8Adam/lstm_591/lstm_cell_591/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_591/lstm_cell_591/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_591/lstm_cell_591/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_591/lstm_cell_591/recurrent_kernel/v
?
BAdam/lstm_591/lstm_cell_591/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_591/lstm_cell_591/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_591/lstm_cell_591/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_591/lstm_cell_591/bias/v
?
6Adam/lstm_591/lstm_cell_591/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_591/lstm_cell_591/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_592/lstm_cell_592/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_592/lstm_cell_592/kernel/v
?
8Adam/lstm_592/lstm_cell_592/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_592/lstm_cell_592/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_592/lstm_cell_592/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_592/lstm_cell_592/recurrent_kernel/v
?
BAdam/lstm_592/lstm_cell_592/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_592/lstm_cell_592/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_592/lstm_cell_592/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_592/lstm_cell_592/bias/v
?
6Adam/lstm_592/lstm_cell_592/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_592/lstm_cell_592/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_593/lstm_cell_593/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_593/lstm_cell_593/kernel/v
?
8Adam/lstm_593/lstm_cell_593/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_593/lstm_cell_593/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_593/lstm_cell_593/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_593/lstm_cell_593/recurrent_kernel/v
?
BAdam/lstm_593/lstm_cell_593/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_593/lstm_cell_593/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_593/lstm_cell_593/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_593/lstm_cell_593/bias/v
?
6Adam/lstm_593/lstm_cell_593/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_593/lstm_cell_593/bias/v*
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
VARIABLE_VALUEdense_197/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_197/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_591/lstm_cell_591/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_591/lstm_cell_591/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_591/lstm_cell_591/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_592/lstm_cell_592/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_592/lstm_cell_592/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_592/lstm_cell_592/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_593/lstm_cell_593/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_593/lstm_cell_593/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_593/lstm_cell_593/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_197/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_197/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_591/lstm_cell_591/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_591/lstm_cell_591/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_591/lstm_cell_591/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_592/lstm_cell_592/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_592/lstm_cell_592/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_592/lstm_cell_592/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_593/lstm_cell_593/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_593/lstm_cell_593/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_593/lstm_cell_593/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_197/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_197/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_591/lstm_cell_591/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_591/lstm_cell_591/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_591/lstm_cell_591/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_592/lstm_cell_592/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_592/lstm_cell_592/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_592/lstm_cell_592/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_593/lstm_cell_593/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_593/lstm_cell_593/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_593/lstm_cell_593/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_591_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_591_inputlstm_591/lstm_cell_591/kernel'lstm_591/lstm_cell_591/recurrent_kernellstm_591/lstm_cell_591/biaslstm_592/lstm_cell_592/kernel'lstm_592/lstm_cell_592/recurrent_kernellstm_592/lstm_cell_592/biaslstm_593/lstm_cell_593/kernel'lstm_593/lstm_cell_593/recurrent_kernellstm_593/lstm_cell_593/biasdense_197/kerneldense_197/bias*
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
%__inference_signature_wrapper_4207154
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_197/kernel/Read/ReadVariableOp"dense_197/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_591/lstm_cell_591/kernel/Read/ReadVariableOp;lstm_591/lstm_cell_591/recurrent_kernel/Read/ReadVariableOp/lstm_591/lstm_cell_591/bias/Read/ReadVariableOp1lstm_592/lstm_cell_592/kernel/Read/ReadVariableOp;lstm_592/lstm_cell_592/recurrent_kernel/Read/ReadVariableOp/lstm_592/lstm_cell_592/bias/Read/ReadVariableOp1lstm_593/lstm_cell_593/kernel/Read/ReadVariableOp;lstm_593/lstm_cell_593/recurrent_kernel/Read/ReadVariableOp/lstm_593/lstm_cell_593/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_197/kernel/m/Read/ReadVariableOp)Adam/dense_197/bias/m/Read/ReadVariableOp8Adam/lstm_591/lstm_cell_591/kernel/m/Read/ReadVariableOpBAdam/lstm_591/lstm_cell_591/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_591/lstm_cell_591/bias/m/Read/ReadVariableOp8Adam/lstm_592/lstm_cell_592/kernel/m/Read/ReadVariableOpBAdam/lstm_592/lstm_cell_592/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_592/lstm_cell_592/bias/m/Read/ReadVariableOp8Adam/lstm_593/lstm_cell_593/kernel/m/Read/ReadVariableOpBAdam/lstm_593/lstm_cell_593/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_593/lstm_cell_593/bias/m/Read/ReadVariableOp+Adam/dense_197/kernel/v/Read/ReadVariableOp)Adam/dense_197/bias/v/Read/ReadVariableOp8Adam/lstm_591/lstm_cell_591/kernel/v/Read/ReadVariableOpBAdam/lstm_591/lstm_cell_591/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_591/lstm_cell_591/bias/v/Read/ReadVariableOp8Adam/lstm_592/lstm_cell_592/kernel/v/Read/ReadVariableOpBAdam/lstm_592/lstm_cell_592/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_592/lstm_cell_592/bias/v/Read/ReadVariableOp8Adam/lstm_593/lstm_cell_593/kernel/v/Read/ReadVariableOpBAdam/lstm_593/lstm_cell_593/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_593/lstm_cell_593/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4210366
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_197/kerneldense_197/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_591/lstm_cell_591/kernel'lstm_591/lstm_cell_591/recurrent_kernellstm_591/lstm_cell_591/biaslstm_592/lstm_cell_592/kernel'lstm_592/lstm_cell_592/recurrent_kernellstm_592/lstm_cell_592/biaslstm_593/lstm_cell_593/kernel'lstm_593/lstm_cell_593/recurrent_kernellstm_593/lstm_cell_593/biastotalcountAdam/dense_197/kernel/mAdam/dense_197/bias/m$Adam/lstm_591/lstm_cell_591/kernel/m.Adam/lstm_591/lstm_cell_591/recurrent_kernel/m"Adam/lstm_591/lstm_cell_591/bias/m$Adam/lstm_592/lstm_cell_592/kernel/m.Adam/lstm_592/lstm_cell_592/recurrent_kernel/m"Adam/lstm_592/lstm_cell_592/bias/m$Adam/lstm_593/lstm_cell_593/kernel/m.Adam/lstm_593/lstm_cell_593/recurrent_kernel/m"Adam/lstm_593/lstm_cell_593/bias/mAdam/dense_197/kernel/vAdam/dense_197/bias/v$Adam/lstm_591/lstm_cell_591/kernel/v.Adam/lstm_591/lstm_cell_591/recurrent_kernel/v"Adam/lstm_591/lstm_cell_591/bias/v$Adam/lstm_592/lstm_cell_592/kernel/v.Adam/lstm_592/lstm_cell_592/recurrent_kernel/v"Adam/lstm_592/lstm_cell_592/bias/v$Adam/lstm_593/lstm_cell_593/kernel/v.Adam/lstm_593/lstm_cell_593/recurrent_kernel/v"Adam/lstm_593/lstm_cell_593/bias/v*4
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
#__inference__traced_restore_4210496??+
?
?
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4205107

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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4205744

inputs'
lstm_cell_695_4205662:2('
lstm_cell_695_4205664:
(#
lstm_cell_695_4205666:(
identity??%lstm_cell_695/StatefulPartitionedCall?while;
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
%lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_695_4205662lstm_cell_695_4205664lstm_cell_695_4205666*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205661n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_695_4205662lstm_cell_695_4205664lstm_cell_695_4205666*
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
while_body_4205675*
condR
while_cond_4205674*K
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
NoOpNoOp&^lstm_cell_695/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_695/StatefulPartitionedCall%lstm_cell_695/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_592_layer_call_fn_4208711

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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206243s
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206939

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4206855*
condR
while_cond_4206854*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_591_layer_call_and_return_conditional_losses_4205235

inputs(
lstm_cell_693_4205153:	?(
lstm_cell_693_4205155:	d?$
lstm_cell_693_4205157:	?
identity??%lstm_cell_693/StatefulPartitionedCall?while;
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
%lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_693_4205153lstm_cell_693_4205155lstm_cell_693_4205157*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4205107n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_693_4205153lstm_cell_693_4205155lstm_cell_693_4205157*
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
while_body_4205166*
condR
while_cond_4205165*K
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
NoOpNoOp&^lstm_cell_693/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_693/StatefulPartitionedCall%lstm_cell_693/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4208062

inputsH
5lstm_591_lstm_cell_693_matmul_readvariableop_resource:	?J
7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource:	d?E
6lstm_591_lstm_cell_693_biasadd_readvariableop_resource:	?H
5lstm_592_lstm_cell_694_matmul_readvariableop_resource:	d?J
7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource:	2?E
6lstm_592_lstm_cell_694_biasadd_readvariableop_resource:	?G
5lstm_593_lstm_cell_695_matmul_readvariableop_resource:2(I
7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource:
(D
6lstm_593_lstm_cell_695_biasadd_readvariableop_resource:(:
(dense_197_matmul_readvariableop_resource:
7
)dense_197_biasadd_readvariableop_resource:
identity?? dense_197/BiasAdd/ReadVariableOp?dense_197/MatMul/ReadVariableOp?-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp?,lstm_591/lstm_cell_693/MatMul/ReadVariableOp?.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp?lstm_591/while?-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp?,lstm_592/lstm_cell_694/MatMul/ReadVariableOp?.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp?lstm_592/while?-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp?,lstm_593/lstm_cell_695/MatMul/ReadVariableOp?.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp?lstm_593/whileD
lstm_591/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_591/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_591/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_591/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_sliceStridedSlicelstm_591/Shape:output:0%lstm_591/strided_slice/stack:output:0'lstm_591/strided_slice/stack_1:output:0'lstm_591/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_591/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_591/zeros/packedPacklstm_591/strided_slice:output:0 lstm_591/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_591/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_591/zerosFilllstm_591/zeros/packed:output:0lstm_591/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_591/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_591/zeros_1/packedPacklstm_591/strided_slice:output:0"lstm_591/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_591/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_591/zeros_1Fill lstm_591/zeros_1/packed:output:0lstm_591/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_591/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_591/transpose	Transposeinputs lstm_591/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_591/Shape_1Shapelstm_591/transpose:y:0*
T0*
_output_shapes
:h
lstm_591/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_591/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_1StridedSlicelstm_591/Shape_1:output:0'lstm_591/strided_slice_1/stack:output:0)lstm_591/strided_slice_1/stack_1:output:0)lstm_591/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_591/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_591/TensorArrayV2TensorListReserve-lstm_591/TensorArrayV2/element_shape:output:0!lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_591/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_591/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_591/transpose:y:0Glstm_591/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_591/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_591/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_2StridedSlicelstm_591/transpose:y:0'lstm_591/strided_slice_2/stack:output:0)lstm_591/strided_slice_2/stack_1:output:0)lstm_591/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_591/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp5lstm_591_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_591/lstm_cell_693/MatMulMatMul!lstm_591/strided_slice_2:output:04lstm_591/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_591/lstm_cell_693/MatMul_1MatMullstm_591/zeros:output:06lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_591/lstm_cell_693/addAddV2'lstm_591/lstm_cell_693/MatMul:product:0)lstm_591/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp6lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_591/lstm_cell_693/BiasAddBiasAddlstm_591/lstm_cell_693/add:z:05lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_591/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_591/lstm_cell_693/splitSplit/lstm_591/lstm_cell_693/split/split_dim:output:0'lstm_591/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_591/lstm_cell_693/SigmoidSigmoid%lstm_591/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_591/lstm_cell_693/Sigmoid_1Sigmoid%lstm_591/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mulMul$lstm_591/lstm_cell_693/Sigmoid_1:y:0lstm_591/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_591/lstm_cell_693/ReluRelu%lstm_591/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mul_1Mul"lstm_591/lstm_cell_693/Sigmoid:y:0)lstm_591/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/add_1AddV2lstm_591/lstm_cell_693/mul:z:0 lstm_591/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_591/lstm_cell_693/Sigmoid_2Sigmoid%lstm_591/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_591/lstm_cell_693/Relu_1Relu lstm_591/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mul_2Mul$lstm_591/lstm_cell_693/Sigmoid_2:y:0+lstm_591/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_591/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_591/TensorArrayV2_1TensorListReserve/lstm_591/TensorArrayV2_1/element_shape:output:0!lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_591/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_591/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_591/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_591/whileWhile$lstm_591/while/loop_counter:output:0*lstm_591/while/maximum_iterations:output:0lstm_591/time:output:0!lstm_591/TensorArrayV2_1:handle:0lstm_591/zeros:output:0lstm_591/zeros_1:output:0!lstm_591/strided_slice_1:output:0@lstm_591/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_591_lstm_cell_693_matmul_readvariableop_resource7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource6lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
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
lstm_591_while_body_4207694*'
condR
lstm_591_while_cond_4207693*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_591/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_591/TensorArrayV2Stack/TensorListStackTensorListStacklstm_591/while:output:3Blstm_591/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_591/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_591/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_3StridedSlice4lstm_591/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_591/strided_slice_3/stack:output:0)lstm_591/strided_slice_3/stack_1:output:0)lstm_591/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_591/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_591/transpose_1	Transpose4lstm_591/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_591/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_591/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_592/ShapeShapelstm_591/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_592/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_592/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_592/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_sliceStridedSlicelstm_592/Shape:output:0%lstm_592/strided_slice/stack:output:0'lstm_592/strided_slice/stack_1:output:0'lstm_592/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_592/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_592/zeros/packedPacklstm_592/strided_slice:output:0 lstm_592/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_592/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_592/zerosFilllstm_592/zeros/packed:output:0lstm_592/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_592/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_592/zeros_1/packedPacklstm_592/strided_slice:output:0"lstm_592/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_592/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_592/zeros_1Fill lstm_592/zeros_1/packed:output:0lstm_592/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_592/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_592/transpose	Transposelstm_591/transpose_1:y:0 lstm_592/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_592/Shape_1Shapelstm_592/transpose:y:0*
T0*
_output_shapes
:h
lstm_592/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_592/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_1StridedSlicelstm_592/Shape_1:output:0'lstm_592/strided_slice_1/stack:output:0)lstm_592/strided_slice_1/stack_1:output:0)lstm_592/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_592/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_592/TensorArrayV2TensorListReserve-lstm_592/TensorArrayV2/element_shape:output:0!lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_592/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_592/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_592/transpose:y:0Glstm_592/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_592/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_592/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_2StridedSlicelstm_592/transpose:y:0'lstm_592/strided_slice_2/stack:output:0)lstm_592/strided_slice_2/stack_1:output:0)lstm_592/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_592/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp5lstm_592_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_592/lstm_cell_694/MatMulMatMul!lstm_592/strided_slice_2:output:04lstm_592/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_592/lstm_cell_694/MatMul_1MatMullstm_592/zeros:output:06lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_592/lstm_cell_694/addAddV2'lstm_592/lstm_cell_694/MatMul:product:0)lstm_592/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp6lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_592/lstm_cell_694/BiasAddBiasAddlstm_592/lstm_cell_694/add:z:05lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_592/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_592/lstm_cell_694/splitSplit/lstm_592/lstm_cell_694/split/split_dim:output:0'lstm_592/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_592/lstm_cell_694/SigmoidSigmoid%lstm_592/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_592/lstm_cell_694/Sigmoid_1Sigmoid%lstm_592/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mulMul$lstm_592/lstm_cell_694/Sigmoid_1:y:0lstm_592/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_592/lstm_cell_694/ReluRelu%lstm_592/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mul_1Mul"lstm_592/lstm_cell_694/Sigmoid:y:0)lstm_592/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/add_1AddV2lstm_592/lstm_cell_694/mul:z:0 lstm_592/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_592/lstm_cell_694/Sigmoid_2Sigmoid%lstm_592/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_592/lstm_cell_694/Relu_1Relu lstm_592/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mul_2Mul$lstm_592/lstm_cell_694/Sigmoid_2:y:0+lstm_592/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_592/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_592/TensorArrayV2_1TensorListReserve/lstm_592/TensorArrayV2_1/element_shape:output:0!lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_592/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_592/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_592/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_592/whileWhile$lstm_592/while/loop_counter:output:0*lstm_592/while/maximum_iterations:output:0lstm_592/time:output:0!lstm_592/TensorArrayV2_1:handle:0lstm_592/zeros:output:0lstm_592/zeros_1:output:0!lstm_592/strided_slice_1:output:0@lstm_592/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_592_lstm_cell_694_matmul_readvariableop_resource7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource6lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
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
lstm_592_while_body_4207833*'
condR
lstm_592_while_cond_4207832*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_592/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_592/TensorArrayV2Stack/TensorListStackTensorListStacklstm_592/while:output:3Blstm_592/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_592/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_592/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_3StridedSlice4lstm_592/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_592/strided_slice_3/stack:output:0)lstm_592/strided_slice_3/stack_1:output:0)lstm_592/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_592/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_592/transpose_1	Transpose4lstm_592/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_592/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_592/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_593/ShapeShapelstm_592/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_593/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_593/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_593/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_sliceStridedSlicelstm_593/Shape:output:0%lstm_593/strided_slice/stack:output:0'lstm_593/strided_slice/stack_1:output:0'lstm_593/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_593/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_593/zeros/packedPacklstm_593/strided_slice:output:0 lstm_593/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_593/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_593/zerosFilllstm_593/zeros/packed:output:0lstm_593/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_593/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_593/zeros_1/packedPacklstm_593/strided_slice:output:0"lstm_593/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_593/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_593/zeros_1Fill lstm_593/zeros_1/packed:output:0lstm_593/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_593/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_593/transpose	Transposelstm_592/transpose_1:y:0 lstm_593/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_593/Shape_1Shapelstm_593/transpose:y:0*
T0*
_output_shapes
:h
lstm_593/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_593/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_1StridedSlicelstm_593/Shape_1:output:0'lstm_593/strided_slice_1/stack:output:0)lstm_593/strided_slice_1/stack_1:output:0)lstm_593/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_593/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_593/TensorArrayV2TensorListReserve-lstm_593/TensorArrayV2/element_shape:output:0!lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_593/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_593/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_593/transpose:y:0Glstm_593/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_593/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_593/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_2StridedSlicelstm_593/transpose:y:0'lstm_593/strided_slice_2/stack:output:0)lstm_593/strided_slice_2/stack_1:output:0)lstm_593/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_593/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp5lstm_593_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_593/lstm_cell_695/MatMulMatMul!lstm_593/strided_slice_2:output:04lstm_593/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_593/lstm_cell_695/MatMul_1MatMullstm_593/zeros:output:06lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_593/lstm_cell_695/addAddV2'lstm_593/lstm_cell_695/MatMul:product:0)lstm_593/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp6lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_593/lstm_cell_695/BiasAddBiasAddlstm_593/lstm_cell_695/add:z:05lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_593/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_593/lstm_cell_695/splitSplit/lstm_593/lstm_cell_695/split/split_dim:output:0'lstm_593/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_593/lstm_cell_695/SigmoidSigmoid%lstm_593/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_593/lstm_cell_695/Sigmoid_1Sigmoid%lstm_593/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mulMul$lstm_593/lstm_cell_695/Sigmoid_1:y:0lstm_593/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_593/lstm_cell_695/ReluRelu%lstm_593/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mul_1Mul"lstm_593/lstm_cell_695/Sigmoid:y:0)lstm_593/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/add_1AddV2lstm_593/lstm_cell_695/mul:z:0 lstm_593/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_593/lstm_cell_695/Sigmoid_2Sigmoid%lstm_593/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_593/lstm_cell_695/Relu_1Relu lstm_593/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mul_2Mul$lstm_593/lstm_cell_695/Sigmoid_2:y:0+lstm_593/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_593/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_593/TensorArrayV2_1TensorListReserve/lstm_593/TensorArrayV2_1/element_shape:output:0!lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_593/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_593/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_593/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_593/whileWhile$lstm_593/while/loop_counter:output:0*lstm_593/while/maximum_iterations:output:0lstm_593/time:output:0!lstm_593/TensorArrayV2_1:handle:0lstm_593/zeros:output:0lstm_593/zeros_1:output:0!lstm_593/strided_slice_1:output:0@lstm_593/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_593_lstm_cell_695_matmul_readvariableop_resource7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource6lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
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
lstm_593_while_body_4207972*'
condR
lstm_593_while_cond_4207971*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_593/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_593/TensorArrayV2Stack/TensorListStackTensorListStacklstm_593/while:output:3Blstm_593/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_593/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_593/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_3StridedSlice4lstm_593/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_593/strided_slice_3/stack:output:0)lstm_593/strided_slice_3/stack_1:output:0)lstm_593/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_593/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_593/transpose_1	Transpose4lstm_593/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_593/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_593/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_197/MatMul/ReadVariableOpReadVariableOp(dense_197_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_197/MatMulMatMul!lstm_593/strided_slice_3:output:0'dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_197/BiasAdd/ReadVariableOpReadVariableOp)dense_197_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_197/BiasAddBiasAdddense_197/MatMul:product:0(dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_197/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_197/BiasAdd/ReadVariableOp ^dense_197/MatMul/ReadVariableOp.^lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp-^lstm_591/lstm_cell_693/MatMul/ReadVariableOp/^lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp^lstm_591/while.^lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp-^lstm_592/lstm_cell_694/MatMul/ReadVariableOp/^lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp^lstm_592/while.^lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp-^lstm_593/lstm_cell_695/MatMul/ReadVariableOp/^lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp^lstm_593/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_197/BiasAdd/ReadVariableOp dense_197/BiasAdd/ReadVariableOp2B
dense_197/MatMul/ReadVariableOpdense_197/MatMul/ReadVariableOp2^
-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp2\
,lstm_591/lstm_cell_693/MatMul/ReadVariableOp,lstm_591/lstm_cell_693/MatMul/ReadVariableOp2`
.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp2 
lstm_591/whilelstm_591/while2^
-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp2\
,lstm_592/lstm_cell_694/MatMul/ReadVariableOp,lstm_592/lstm_cell_694/MatMul/ReadVariableOp2`
.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp2 
lstm_592/whilelstm_592/while2^
-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp2\
,lstm_593/lstm_cell_695/MatMul/ReadVariableOp,lstm_593/lstm_cell_695/MatMul/ReadVariableOp2`
.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp2 
lstm_593/whilelstm_593/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4206690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4209396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209396___redundant_placeholder05
1while_while_cond_4209396___redundant_placeholder15
1while_while_cond_4209396___redundant_placeholder25
1while_while_cond_4209396___redundant_placeholder3
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4205585

inputs(
lstm_cell_694_4205503:	d?(
lstm_cell_694_4205505:	2?$
lstm_cell_694_4205507:	?
identity??%lstm_cell_694/StatefulPartitionedCall?while;
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
%lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_694_4205503lstm_cell_694_4205505lstm_cell_694_4205507*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205457n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_694_4205503lstm_cell_694_4205505lstm_cell_694_4205507*
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
while_body_4205516*
condR
while_cond_4205515*K
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
NoOpNoOp&^lstm_cell_694/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_694/StatefulPartitionedCall%lstm_cell_694/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_591_layer_call_fn_4208073
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4205044|
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
while_cond_4208780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208780___redundant_placeholder05
1while_while_cond_4208780___redundant_placeholder15
1while_while_cond_4208780___redundant_placeholder25
1while_while_cond_4208780___redundant_placeholder3
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
while_body_4208165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209910

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4209826*
condR
while_cond_4209825*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4208451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4210027

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
*__inference_lstm_592_layer_call_fn_4208689
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4205394|
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
while_body_4205516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_694_4205540_0:	d?0
while_lstm_cell_694_4205542_0:	2?,
while_lstm_cell_694_4205544_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_694_4205540:	d?.
while_lstm_cell_694_4205542:	2?*
while_lstm_cell_694_4205544:	???+while/lstm_cell_694/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_694_4205540_0while_lstm_cell_694_4205542_0while_lstm_cell_694_4205544_0*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205457?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_694/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_694/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_694/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_694/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_694_4205540while_lstm_cell_694_4205540_0"<
while_lstm_cell_694_4205542while_lstm_cell_694_4205542_0"<
while_lstm_cell_694_4205544while_lstm_cell_694_4205544_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_694/StatefulPartitionedCall+while/lstm_cell_694/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209294

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4209210*
condR
while_cond_4209209*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4205865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4205865___redundant_placeholder05
1while_while_cond_4205865___redundant_placeholder15
1while_while_cond_4205865___redundant_placeholder25
1while_while_cond_4205865___redundant_placeholder3
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
*sequential_197_lstm_593_while_body_4204804L
Hsequential_197_lstm_593_while_sequential_197_lstm_593_while_loop_counterR
Nsequential_197_lstm_593_while_sequential_197_lstm_593_while_maximum_iterations-
)sequential_197_lstm_593_while_placeholder/
+sequential_197_lstm_593_while_placeholder_1/
+sequential_197_lstm_593_while_placeholder_2/
+sequential_197_lstm_593_while_placeholder_3K
Gsequential_197_lstm_593_while_sequential_197_lstm_593_strided_slice_1_0?
?sequential_197_lstm_593_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_593_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_197_lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0:2(`
Nsequential_197_lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
([
Msequential_197_lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0:(*
&sequential_197_lstm_593_while_identity,
(sequential_197_lstm_593_while_identity_1,
(sequential_197_lstm_593_while_identity_2,
(sequential_197_lstm_593_while_identity_3,
(sequential_197_lstm_593_while_identity_4,
(sequential_197_lstm_593_while_identity_5I
Esequential_197_lstm_593_while_sequential_197_lstm_593_strided_slice_1?
?sequential_197_lstm_593_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_593_tensorarrayunstack_tensorlistfromtensor\
Jsequential_197_lstm_593_while_lstm_cell_695_matmul_readvariableop_resource:2(^
Lsequential_197_lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource:
(Y
Ksequential_197_lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource:(??Bsequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp?Asequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp?Csequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp?
Osequential_197/lstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_197/lstm_593/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_197_lstm_593_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_593_tensorarrayunstack_tensorlistfromtensor_0)sequential_197_lstm_593_while_placeholderXsequential_197/lstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOpLsequential_197_lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_197/lstm_593/while/lstm_cell_695/MatMulMatMulHsequential_197/lstm_593/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOpNsequential_197_lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_197/lstm_593/while/lstm_cell_695/MatMul_1MatMul+sequential_197_lstm_593_while_placeholder_2Ksequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_197/lstm_593/while/lstm_cell_695/addAddV2<sequential_197/lstm_593/while/lstm_cell_695/MatMul:product:0>sequential_197/lstm_593/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOpMsequential_197_lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_197/lstm_593/while/lstm_cell_695/BiasAddBiasAdd3sequential_197/lstm_593/while/lstm_cell_695/add:z:0Jsequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_197/lstm_593/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_197/lstm_593/while/lstm_cell_695/splitSplitDsequential_197/lstm_593/while/lstm_cell_695/split/split_dim:output:0<sequential_197/lstm_593/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_197/lstm_593/while/lstm_cell_695/SigmoidSigmoid:sequential_197/lstm_593/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_197/lstm_593/while/lstm_cell_695/Sigmoid_1Sigmoid:sequential_197/lstm_593/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_197/lstm_593/while/lstm_cell_695/mulMul9sequential_197/lstm_593/while/lstm_cell_695/Sigmoid_1:y:0+sequential_197_lstm_593_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_197/lstm_593/while/lstm_cell_695/ReluRelu:sequential_197/lstm_593/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_197/lstm_593/while/lstm_cell_695/mul_1Mul7sequential_197/lstm_593/while/lstm_cell_695/Sigmoid:y:0>sequential_197/lstm_593/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_197/lstm_593/while/lstm_cell_695/add_1AddV23sequential_197/lstm_593/while/lstm_cell_695/mul:z:05sequential_197/lstm_593/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_197/lstm_593/while/lstm_cell_695/Sigmoid_2Sigmoid:sequential_197/lstm_593/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_197/lstm_593/while/lstm_cell_695/Relu_1Relu5sequential_197/lstm_593/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_197/lstm_593/while/lstm_cell_695/mul_2Mul9sequential_197/lstm_593/while/lstm_cell_695/Sigmoid_2:y:0@sequential_197/lstm_593/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_197/lstm_593/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_197_lstm_593_while_placeholder_1)sequential_197_lstm_593_while_placeholder5sequential_197/lstm_593/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_197/lstm_593/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_197/lstm_593/while/addAddV2)sequential_197_lstm_593_while_placeholder,sequential_197/lstm_593/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_197/lstm_593/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_197/lstm_593/while/add_1AddV2Hsequential_197_lstm_593_while_sequential_197_lstm_593_while_loop_counter.sequential_197/lstm_593/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_197/lstm_593/while/IdentityIdentity'sequential_197/lstm_593/while/add_1:z:0#^sequential_197/lstm_593/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_593/while/Identity_1IdentityNsequential_197_lstm_593_while_sequential_197_lstm_593_while_maximum_iterations#^sequential_197/lstm_593/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_593/while/Identity_2Identity%sequential_197/lstm_593/while/add:z:0#^sequential_197/lstm_593/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_593/while/Identity_3IdentityRsequential_197/lstm_593/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_197/lstm_593/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_593/while/Identity_4Identity5sequential_197/lstm_593/while/lstm_cell_695/mul_2:z:0#^sequential_197/lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_197/lstm_593/while/Identity_5Identity5sequential_197/lstm_593/while/lstm_cell_695/add_1:z:0#^sequential_197/lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_197/lstm_593/while/NoOpNoOpC^sequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOpB^sequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOpD^sequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_197_lstm_593_while_identity/sequential_197/lstm_593/while/Identity:output:0"]
(sequential_197_lstm_593_while_identity_11sequential_197/lstm_593/while/Identity_1:output:0"]
(sequential_197_lstm_593_while_identity_21sequential_197/lstm_593/while/Identity_2:output:0"]
(sequential_197_lstm_593_while_identity_31sequential_197/lstm_593/while/Identity_3:output:0"]
(sequential_197_lstm_593_while_identity_41sequential_197/lstm_593/while/Identity_4:output:0"]
(sequential_197_lstm_593_while_identity_51sequential_197/lstm_593/while/Identity_5:output:0"?
Ksequential_197_lstm_593_while_lstm_cell_695_biasadd_readvariableop_resourceMsequential_197_lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
Lsequential_197_lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resourceNsequential_197_lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0"?
Jsequential_197_lstm_593_while_lstm_cell_695_matmul_readvariableop_resourceLsequential_197_lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0"?
Esequential_197_lstm_593_while_sequential_197_lstm_593_strided_slice_1Gsequential_197_lstm_593_while_sequential_197_lstm_593_strided_slice_1_0"?
?sequential_197_lstm_593_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_593_tensorarrayunstack_tensorlistfromtensor?sequential_197_lstm_593_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_593_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOpBsequential_197/lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp2?
Asequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOpAsequential_197/lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp2?
Csequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOpCsequential_197/lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411

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
?T
?
*sequential_197_lstm_592_while_body_4204665L
Hsequential_197_lstm_592_while_sequential_197_lstm_592_while_loop_counterR
Nsequential_197_lstm_592_while_sequential_197_lstm_592_while_maximum_iterations-
)sequential_197_lstm_592_while_placeholder/
+sequential_197_lstm_592_while_placeholder_1/
+sequential_197_lstm_592_while_placeholder_2/
+sequential_197_lstm_592_while_placeholder_3K
Gsequential_197_lstm_592_while_sequential_197_lstm_592_strided_slice_1_0?
?sequential_197_lstm_592_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_592_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_197_lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?a
Nsequential_197_lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?\
Msequential_197_lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?*
&sequential_197_lstm_592_while_identity,
(sequential_197_lstm_592_while_identity_1,
(sequential_197_lstm_592_while_identity_2,
(sequential_197_lstm_592_while_identity_3,
(sequential_197_lstm_592_while_identity_4,
(sequential_197_lstm_592_while_identity_5I
Esequential_197_lstm_592_while_sequential_197_lstm_592_strided_slice_1?
?sequential_197_lstm_592_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_592_tensorarrayunstack_tensorlistfromtensor]
Jsequential_197_lstm_592_while_lstm_cell_694_matmul_readvariableop_resource:	d?_
Lsequential_197_lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?Z
Ksequential_197_lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource:	???Bsequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp?Asequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp?Csequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp?
Osequential_197/lstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_197/lstm_592/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_197_lstm_592_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_592_tensorarrayunstack_tensorlistfromtensor_0)sequential_197_lstm_592_while_placeholderXsequential_197/lstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOpLsequential_197_lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_197/lstm_592/while/lstm_cell_694/MatMulMatMulHsequential_197/lstm_592/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOpNsequential_197_lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_197/lstm_592/while/lstm_cell_694/MatMul_1MatMul+sequential_197_lstm_592_while_placeholder_2Ksequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_197/lstm_592/while/lstm_cell_694/addAddV2<sequential_197/lstm_592/while/lstm_cell_694/MatMul:product:0>sequential_197/lstm_592/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOpMsequential_197_lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_197/lstm_592/while/lstm_cell_694/BiasAddBiasAdd3sequential_197/lstm_592/while/lstm_cell_694/add:z:0Jsequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_197/lstm_592/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_197/lstm_592/while/lstm_cell_694/splitSplitDsequential_197/lstm_592/while/lstm_cell_694/split/split_dim:output:0<sequential_197/lstm_592/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_197/lstm_592/while/lstm_cell_694/SigmoidSigmoid:sequential_197/lstm_592/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_197/lstm_592/while/lstm_cell_694/Sigmoid_1Sigmoid:sequential_197/lstm_592/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_197/lstm_592/while/lstm_cell_694/mulMul9sequential_197/lstm_592/while/lstm_cell_694/Sigmoid_1:y:0+sequential_197_lstm_592_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_197/lstm_592/while/lstm_cell_694/ReluRelu:sequential_197/lstm_592/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_197/lstm_592/while/lstm_cell_694/mul_1Mul7sequential_197/lstm_592/while/lstm_cell_694/Sigmoid:y:0>sequential_197/lstm_592/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_197/lstm_592/while/lstm_cell_694/add_1AddV23sequential_197/lstm_592/while/lstm_cell_694/mul:z:05sequential_197/lstm_592/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_197/lstm_592/while/lstm_cell_694/Sigmoid_2Sigmoid:sequential_197/lstm_592/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_197/lstm_592/while/lstm_cell_694/Relu_1Relu5sequential_197/lstm_592/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_197/lstm_592/while/lstm_cell_694/mul_2Mul9sequential_197/lstm_592/while/lstm_cell_694/Sigmoid_2:y:0@sequential_197/lstm_592/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_197/lstm_592/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_197_lstm_592_while_placeholder_1)sequential_197_lstm_592_while_placeholder5sequential_197/lstm_592/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_197/lstm_592/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_197/lstm_592/while/addAddV2)sequential_197_lstm_592_while_placeholder,sequential_197/lstm_592/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_197/lstm_592/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_197/lstm_592/while/add_1AddV2Hsequential_197_lstm_592_while_sequential_197_lstm_592_while_loop_counter.sequential_197/lstm_592/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_197/lstm_592/while/IdentityIdentity'sequential_197/lstm_592/while/add_1:z:0#^sequential_197/lstm_592/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_592/while/Identity_1IdentityNsequential_197_lstm_592_while_sequential_197_lstm_592_while_maximum_iterations#^sequential_197/lstm_592/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_592/while/Identity_2Identity%sequential_197/lstm_592/while/add:z:0#^sequential_197/lstm_592/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_592/while/Identity_3IdentityRsequential_197/lstm_592/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_197/lstm_592/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_592/while/Identity_4Identity5sequential_197/lstm_592/while/lstm_cell_694/mul_2:z:0#^sequential_197/lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_197/lstm_592/while/Identity_5Identity5sequential_197/lstm_592/while/lstm_cell_694/add_1:z:0#^sequential_197/lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_197/lstm_592/while/NoOpNoOpC^sequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOpB^sequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOpD^sequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_197_lstm_592_while_identity/sequential_197/lstm_592/while/Identity:output:0"]
(sequential_197_lstm_592_while_identity_11sequential_197/lstm_592/while/Identity_1:output:0"]
(sequential_197_lstm_592_while_identity_21sequential_197/lstm_592/while/Identity_2:output:0"]
(sequential_197_lstm_592_while_identity_31sequential_197/lstm_592/while/Identity_3:output:0"]
(sequential_197_lstm_592_while_identity_41sequential_197/lstm_592/while/Identity_4:output:0"]
(sequential_197_lstm_592_while_identity_51sequential_197/lstm_592/while/Identity_5:output:0"?
Ksequential_197_lstm_592_while_lstm_cell_694_biasadd_readvariableop_resourceMsequential_197_lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
Lsequential_197_lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resourceNsequential_197_lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0"?
Jsequential_197_lstm_592_while_lstm_cell_694_matmul_readvariableop_resourceLsequential_197_lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0"?
Esequential_197_lstm_592_while_sequential_197_lstm_592_strided_slice_1Gsequential_197_lstm_592_while_sequential_197_lstm_592_strided_slice_1_0"?
?sequential_197_lstm_592_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_592_tensorarrayunstack_tensorlistfromtensor?sequential_197_lstm_592_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_592_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOpBsequential_197/lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp2?
Asequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOpAsequential_197/lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp2?
Csequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOpCsequential_197/lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205457

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
*__inference_lstm_592_layer_call_fn_4208722

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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206774s
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
*__inference_lstm_591_layer_call_fn_4208084
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4205235|
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
while_body_4208781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_695_layer_call_fn_4210142

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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205661o
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
?
while_body_4209540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_591_while_cond_4207266.
*lstm_591_while_lstm_591_while_loop_counter4
0lstm_591_while_lstm_591_while_maximum_iterations
lstm_591_while_placeholder 
lstm_591_while_placeholder_1 
lstm_591_while_placeholder_2 
lstm_591_while_placeholder_30
,lstm_591_while_less_lstm_591_strided_slice_1G
Clstm_591_while_lstm_591_while_cond_4207266___redundant_placeholder0G
Clstm_591_while_lstm_591_while_cond_4207266___redundant_placeholder1G
Clstm_591_while_lstm_591_while_cond_4207266___redundant_placeholder2G
Clstm_591_while_lstm_591_while_cond_4207266___redundant_placeholder3
lstm_591_while_identity
?
lstm_591/while/LessLesslstm_591_while_placeholder,lstm_591_while_less_lstm_591_strided_slice_1*
T0*
_output_shapes
: ]
lstm_591/while/IdentityIdentitylstm_591/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_591_while_identity lstm_591/while/Identity:output:0*(
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210093

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
?
E__inference_lstm_592_layer_call_and_return_conditional_losses_4205394

inputs(
lstm_cell_694_4205312:	d?(
lstm_cell_694_4205314:	2?$
lstm_cell_694_4205316:	?
identity??%lstm_cell_694/StatefulPartitionedCall?while;
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
%lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_694_4205312lstm_cell_694_4205314lstm_cell_694_4205316*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205311n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_694_4205312lstm_cell_694_4205314lstm_cell_694_4205316*
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
while_body_4205325*
condR
while_cond_4205324*K
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
NoOpNoOp&^lstm_cell_694/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_694/StatefulPartitionedCall%lstm_cell_694/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210125

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
while_body_4209683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4210366
file_prefix/
+savev2_dense_197_kernel_read_readvariableop-
)savev2_dense_197_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_591_lstm_cell_591_kernel_read_readvariableopF
Bsavev2_lstm_591_lstm_cell_591_recurrent_kernel_read_readvariableop:
6savev2_lstm_591_lstm_cell_591_bias_read_readvariableop<
8savev2_lstm_592_lstm_cell_592_kernel_read_readvariableopF
Bsavev2_lstm_592_lstm_cell_592_recurrent_kernel_read_readvariableop:
6savev2_lstm_592_lstm_cell_592_bias_read_readvariableop<
8savev2_lstm_593_lstm_cell_593_kernel_read_readvariableopF
Bsavev2_lstm_593_lstm_cell_593_recurrent_kernel_read_readvariableop:
6savev2_lstm_593_lstm_cell_593_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_197_kernel_m_read_readvariableop4
0savev2_adam_dense_197_bias_m_read_readvariableopC
?savev2_adam_lstm_591_lstm_cell_591_kernel_m_read_readvariableopM
Isavev2_adam_lstm_591_lstm_cell_591_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_591_lstm_cell_591_bias_m_read_readvariableopC
?savev2_adam_lstm_592_lstm_cell_592_kernel_m_read_readvariableopM
Isavev2_adam_lstm_592_lstm_cell_592_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_592_lstm_cell_592_bias_m_read_readvariableopC
?savev2_adam_lstm_593_lstm_cell_593_kernel_m_read_readvariableopM
Isavev2_adam_lstm_593_lstm_cell_593_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_593_lstm_cell_593_bias_m_read_readvariableop6
2savev2_adam_dense_197_kernel_v_read_readvariableop4
0savev2_adam_dense_197_bias_v_read_readvariableopC
?savev2_adam_lstm_591_lstm_cell_591_kernel_v_read_readvariableopM
Isavev2_adam_lstm_591_lstm_cell_591_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_591_lstm_cell_591_bias_v_read_readvariableopC
?savev2_adam_lstm_592_lstm_cell_592_kernel_v_read_readvariableopM
Isavev2_adam_lstm_592_lstm_cell_592_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_592_lstm_cell_592_bias_v_read_readvariableopC
?savev2_adam_lstm_593_lstm_cell_593_kernel_v_read_readvariableopM
Isavev2_adam_lstm_593_lstm_cell_593_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_593_lstm_cell_593_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_197_kernel_read_readvariableop)savev2_dense_197_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_591_lstm_cell_591_kernel_read_readvariableopBsavev2_lstm_591_lstm_cell_591_recurrent_kernel_read_readvariableop6savev2_lstm_591_lstm_cell_591_bias_read_readvariableop8savev2_lstm_592_lstm_cell_592_kernel_read_readvariableopBsavev2_lstm_592_lstm_cell_592_recurrent_kernel_read_readvariableop6savev2_lstm_592_lstm_cell_592_bias_read_readvariableop8savev2_lstm_593_lstm_cell_593_kernel_read_readvariableopBsavev2_lstm_593_lstm_cell_593_recurrent_kernel_read_readvariableop6savev2_lstm_593_lstm_cell_593_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_197_kernel_m_read_readvariableop0savev2_adam_dense_197_bias_m_read_readvariableop?savev2_adam_lstm_591_lstm_cell_591_kernel_m_read_readvariableopIsavev2_adam_lstm_591_lstm_cell_591_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_591_lstm_cell_591_bias_m_read_readvariableop?savev2_adam_lstm_592_lstm_cell_592_kernel_m_read_readvariableopIsavev2_adam_lstm_592_lstm_cell_592_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_592_lstm_cell_592_bias_m_read_readvariableop?savev2_adam_lstm_593_lstm_cell_593_kernel_m_read_readvariableopIsavev2_adam_lstm_593_lstm_cell_593_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_593_lstm_cell_593_bias_m_read_readvariableop2savev2_adam_dense_197_kernel_v_read_readvariableop0savev2_adam_dense_197_bias_v_read_readvariableop?savev2_adam_lstm_591_lstm_cell_591_kernel_v_read_readvariableopIsavev2_adam_lstm_591_lstm_cell_591_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_591_lstm_cell_591_bias_v_read_readvariableop?savev2_adam_lstm_592_lstm_cell_592_kernel_v_read_readvariableopIsavev2_adam_lstm_592_lstm_cell_592_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_592_lstm_cell_592_bias_v_read_readvariableop?savev2_adam_lstm_593_lstm_cell_593_kernel_v_read_readvariableopIsavev2_adam_lstm_593_lstm_cell_593_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_593_lstm_cell_593_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4205675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_695_4205699_0:2(/
while_lstm_cell_695_4205701_0:
(+
while_lstm_cell_695_4205703_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_695_4205699:2(-
while_lstm_cell_695_4205701:
()
while_lstm_cell_695_4205703:(??+while/lstm_cell_695/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_695_4205699_0while_lstm_cell_695_4205701_0while_lstm_cell_695_4205703_0*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205661?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_695/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_695/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_695/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_695_4205699while_lstm_cell_695_4205699_0"<
while_lstm_cell_695_4205701while_lstm_cell_695_4205701_0"<
while_lstm_cell_695_4205703while_lstm_cell_695_4205703_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_695/StatefulPartitionedCall+while/lstm_cell_695/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4206009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_197_lstm_591_while_cond_4204525L
Hsequential_197_lstm_591_while_sequential_197_lstm_591_while_loop_counterR
Nsequential_197_lstm_591_while_sequential_197_lstm_591_while_maximum_iterations-
)sequential_197_lstm_591_while_placeholder/
+sequential_197_lstm_591_while_placeholder_1/
+sequential_197_lstm_591_while_placeholder_2/
+sequential_197_lstm_591_while_placeholder_3N
Jsequential_197_lstm_591_while_less_sequential_197_lstm_591_strided_slice_1e
asequential_197_lstm_591_while_sequential_197_lstm_591_while_cond_4204525___redundant_placeholder0e
asequential_197_lstm_591_while_sequential_197_lstm_591_while_cond_4204525___redundant_placeholder1e
asequential_197_lstm_591_while_sequential_197_lstm_591_while_cond_4204525___redundant_placeholder2e
asequential_197_lstm_591_while_sequential_197_lstm_591_while_cond_4204525___redundant_placeholder3*
&sequential_197_lstm_591_while_identity
?
"sequential_197/lstm_591/while/LessLess)sequential_197_lstm_591_while_placeholderJsequential_197_lstm_591_while_less_sequential_197_lstm_591_strided_slice_1*
T0*
_output_shapes
: {
&sequential_197/lstm_591/while/IdentityIdentity&sequential_197/lstm_591/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_197_lstm_591_while_identity/sequential_197/lstm_591/while/Identity:output:0*(
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
while_body_4206525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_592_while_body_4207406.
*lstm_592_while_lstm_592_while_loop_counter4
0lstm_592_while_lstm_592_while_maximum_iterations
lstm_592_while_placeholder 
lstm_592_while_placeholder_1 
lstm_592_while_placeholder_2 
lstm_592_while_placeholder_3-
)lstm_592_while_lstm_592_strided_slice_1_0i
elstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?R
?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?M
>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
lstm_592_while_identity
lstm_592_while_identity_1
lstm_592_while_identity_2
lstm_592_while_identity_3
lstm_592_while_identity_4
lstm_592_while_identity_5+
'lstm_592_while_lstm_592_strided_slice_1g
clstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensorN
;lstm_592_while_lstm_cell_694_matmul_readvariableop_resource:	d?P
=lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?K
<lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource:	???3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp?2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp?4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp?
@lstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_592/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0lstm_592_while_placeholderIlstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_592/while/lstm_cell_694/MatMulMatMul9lstm_592/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_592/while/lstm_cell_694/MatMul_1MatMullstm_592_while_placeholder_2<lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_592/while/lstm_cell_694/addAddV2-lstm_592/while/lstm_cell_694/MatMul:product:0/lstm_592/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_592/while/lstm_cell_694/BiasAddBiasAdd$lstm_592/while/lstm_cell_694/add:z:0;lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_592/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_592/while/lstm_cell_694/splitSplit5lstm_592/while/lstm_cell_694/split/split_dim:output:0-lstm_592/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_592/while/lstm_cell_694/SigmoidSigmoid+lstm_592/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_592/while/lstm_cell_694/Sigmoid_1Sigmoid+lstm_592/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_592/while/lstm_cell_694/mulMul*lstm_592/while/lstm_cell_694/Sigmoid_1:y:0lstm_592_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_592/while/lstm_cell_694/ReluRelu+lstm_592/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/mul_1Mul(lstm_592/while/lstm_cell_694/Sigmoid:y:0/lstm_592/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/add_1AddV2$lstm_592/while/lstm_cell_694/mul:z:0&lstm_592/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_592/while/lstm_cell_694/Sigmoid_2Sigmoid+lstm_592/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_592/while/lstm_cell_694/Relu_1Relu&lstm_592/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/mul_2Mul*lstm_592/while/lstm_cell_694/Sigmoid_2:y:01lstm_592/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_592/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_592_while_placeholder_1lstm_592_while_placeholder&lstm_592/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_592/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_592/while/addAddV2lstm_592_while_placeholderlstm_592/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_592/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_592/while/add_1AddV2*lstm_592_while_lstm_592_while_loop_counterlstm_592/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_592/while/IdentityIdentitylstm_592/while/add_1:z:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_1Identity0lstm_592_while_lstm_592_while_maximum_iterations^lstm_592/while/NoOp*
T0*
_output_shapes
: t
lstm_592/while/Identity_2Identitylstm_592/while/add:z:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_3IdentityClstm_592/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_4Identity&lstm_592/while/lstm_cell_694/mul_2:z:0^lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_592/while/Identity_5Identity&lstm_592/while/lstm_cell_694/add_1:z:0^lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_592/while/NoOpNoOp4^lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp3^lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp5^lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_592_while_identity lstm_592/while/Identity:output:0"?
lstm_592_while_identity_1"lstm_592/while/Identity_1:output:0"?
lstm_592_while_identity_2"lstm_592/while/Identity_2:output:0"?
lstm_592_while_identity_3"lstm_592/while/Identity_3:output:0"?
lstm_592_while_identity_4"lstm_592/while/Identity_4:output:0"?
lstm_592_while_identity_5"lstm_592/while/Identity_5:output:0"T
'lstm_592_while_lstm_592_strided_slice_1)lstm_592_while_lstm_592_strided_slice_1_0"~
<lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
=lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0"|
;lstm_592_while_lstm_cell_694_matmul_readvariableop_resource=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0"?
clstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensorelstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp2h
2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp2l
4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4209067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4205044

inputs(
lstm_cell_693_4204962:	?(
lstm_cell_693_4204964:	d?$
lstm_cell_693_4204966:	?
identity??%lstm_cell_693/StatefulPartitionedCall?while;
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
%lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_693_4204962lstm_cell_693_4204964lstm_cell_693_4204966*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4204961n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_693_4204962lstm_cell_693_4204964lstm_cell_693_4204966*
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
while_body_4204975*
condR
while_cond_4204974*K
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
NoOpNoOp&^lstm_cell_693/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_693/StatefulPartitionedCall%lstm_cell_693/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_592_while_body_4207833.
*lstm_592_while_lstm_592_while_loop_counter4
0lstm_592_while_lstm_592_while_maximum_iterations
lstm_592_while_placeholder 
lstm_592_while_placeholder_1 
lstm_592_while_placeholder_2 
lstm_592_while_placeholder_3-
)lstm_592_while_lstm_592_strided_slice_1_0i
elstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?R
?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?M
>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
lstm_592_while_identity
lstm_592_while_identity_1
lstm_592_while_identity_2
lstm_592_while_identity_3
lstm_592_while_identity_4
lstm_592_while_identity_5+
'lstm_592_while_lstm_592_strided_slice_1g
clstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensorN
;lstm_592_while_lstm_cell_694_matmul_readvariableop_resource:	d?P
=lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?K
<lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource:	???3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp?2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp?4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp?
@lstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_592/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0lstm_592_while_placeholderIlstm_592/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_592/while/lstm_cell_694/MatMulMatMul9lstm_592/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_592/while/lstm_cell_694/MatMul_1MatMullstm_592_while_placeholder_2<lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_592/while/lstm_cell_694/addAddV2-lstm_592/while/lstm_cell_694/MatMul:product:0/lstm_592/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_592/while/lstm_cell_694/BiasAddBiasAdd$lstm_592/while/lstm_cell_694/add:z:0;lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_592/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_592/while/lstm_cell_694/splitSplit5lstm_592/while/lstm_cell_694/split/split_dim:output:0-lstm_592/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_592/while/lstm_cell_694/SigmoidSigmoid+lstm_592/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_592/while/lstm_cell_694/Sigmoid_1Sigmoid+lstm_592/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_592/while/lstm_cell_694/mulMul*lstm_592/while/lstm_cell_694/Sigmoid_1:y:0lstm_592_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_592/while/lstm_cell_694/ReluRelu+lstm_592/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/mul_1Mul(lstm_592/while/lstm_cell_694/Sigmoid:y:0/lstm_592/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/add_1AddV2$lstm_592/while/lstm_cell_694/mul:z:0&lstm_592/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_592/while/lstm_cell_694/Sigmoid_2Sigmoid+lstm_592/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_592/while/lstm_cell_694/Relu_1Relu&lstm_592/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_592/while/lstm_cell_694/mul_2Mul*lstm_592/while/lstm_cell_694/Sigmoid_2:y:01lstm_592/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_592/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_592_while_placeholder_1lstm_592_while_placeholder&lstm_592/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_592/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_592/while/addAddV2lstm_592_while_placeholderlstm_592/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_592/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_592/while/add_1AddV2*lstm_592_while_lstm_592_while_loop_counterlstm_592/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_592/while/IdentityIdentitylstm_592/while/add_1:z:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_1Identity0lstm_592_while_lstm_592_while_maximum_iterations^lstm_592/while/NoOp*
T0*
_output_shapes
: t
lstm_592/while/Identity_2Identitylstm_592/while/add:z:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_3IdentityClstm_592/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_592/while/NoOp*
T0*
_output_shapes
: ?
lstm_592/while/Identity_4Identity&lstm_592/while/lstm_cell_694/mul_2:z:0^lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_592/while/Identity_5Identity&lstm_592/while/lstm_cell_694/add_1:z:0^lstm_592/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_592/while/NoOpNoOp4^lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp3^lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp5^lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_592_while_identity lstm_592/while/Identity:output:0"?
lstm_592_while_identity_1"lstm_592/while/Identity_1:output:0"?
lstm_592_while_identity_2"lstm_592/while/Identity_2:output:0"?
lstm_592_while_identity_3"lstm_592/while/Identity_3:output:0"?
lstm_592_while_identity_4"lstm_592/while/Identity_4:output:0"?
lstm_592_while_identity_5"lstm_592/while/Identity_5:output:0"T
'lstm_592_while_lstm_592_strided_slice_1)lstm_592_while_lstm_592_strided_slice_1_0"~
<lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource>lstm_592_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
=lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource?lstm_592_while_lstm_cell_694_matmul_1_readvariableop_resource_0"|
;lstm_592_while_lstm_cell_694_matmul_readvariableop_resource=lstm_592_while_lstm_cell_694_matmul_readvariableop_resource_0"?
clstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensorelstm_592_while_tensorarrayv2read_tensorlistgetitem_lstm_592_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp3lstm_592/while/lstm_cell_694/BiasAdd/ReadVariableOp2h
2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp2lstm_592/while/lstm_cell_694/MatMul/ReadVariableOp2l
4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp4lstm_592/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208249
inputs_0?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4208165*
condR
while_cond_4208164*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205311

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
lstm_593_while_cond_4207544.
*lstm_593_while_lstm_593_while_loop_counter4
0lstm_593_while_lstm_593_while_maximum_iterations
lstm_593_while_placeholder 
lstm_593_while_placeholder_1 
lstm_593_while_placeholder_2 
lstm_593_while_placeholder_30
,lstm_593_while_less_lstm_593_strided_slice_1G
Clstm_593_while_lstm_593_while_cond_4207544___redundant_placeholder0G
Clstm_593_while_lstm_593_while_cond_4207544___redundant_placeholder1G
Clstm_593_while_lstm_593_while_cond_4207544___redundant_placeholder2G
Clstm_593_while_lstm_593_while_cond_4207544___redundant_placeholder3
lstm_593_while_identity
?
lstm_593/while/LessLesslstm_593_while_placeholder,lstm_593_while_less_lstm_593_strided_slice_1*
T0*
_output_shapes
: ]
lstm_593/while/IdentityIdentitylstm_593/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_593_while_identity lstm_593/while/Identity:output:0*(
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
while_cond_4205674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4205674___redundant_placeholder05
1while_while_cond_4205674___redundant_placeholder15
1while_while_cond_4205674___redundant_placeholder25
1while_while_cond_4205674___redundant_placeholder3
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208535

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4208451*
condR
while_cond_4208450*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209767

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4209683*
condR
while_cond_4209682*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4208164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208164___redundant_placeholder05
1while_while_cond_4208164___redundant_placeholder15
1while_while_cond_4208164___redundant_placeholder25
1while_while_cond_4208164___redundant_placeholder3
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205807

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
while_cond_4208923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208923___redundant_placeholder05
1while_while_cond_4208923___redundant_placeholder15
1while_while_cond_4208923___redundant_placeholder25
1while_while_cond_4208923___redundant_placeholder3
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
??
?
"__inference__wrapped_model_4204894
lstm_591_inputW
Dsequential_197_lstm_591_lstm_cell_693_matmul_readvariableop_resource:	?Y
Fsequential_197_lstm_591_lstm_cell_693_matmul_1_readvariableop_resource:	d?T
Esequential_197_lstm_591_lstm_cell_693_biasadd_readvariableop_resource:	?W
Dsequential_197_lstm_592_lstm_cell_694_matmul_readvariableop_resource:	d?Y
Fsequential_197_lstm_592_lstm_cell_694_matmul_1_readvariableop_resource:	2?T
Esequential_197_lstm_592_lstm_cell_694_biasadd_readvariableop_resource:	?V
Dsequential_197_lstm_593_lstm_cell_695_matmul_readvariableop_resource:2(X
Fsequential_197_lstm_593_lstm_cell_695_matmul_1_readvariableop_resource:
(S
Esequential_197_lstm_593_lstm_cell_695_biasadd_readvariableop_resource:(I
7sequential_197_dense_197_matmul_readvariableop_resource:
F
8sequential_197_dense_197_biasadd_readvariableop_resource:
identity??/sequential_197/dense_197/BiasAdd/ReadVariableOp?.sequential_197/dense_197/MatMul/ReadVariableOp?<sequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp?;sequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOp?=sequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp?sequential_197/lstm_591/while?<sequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp?;sequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOp?=sequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp?sequential_197/lstm_592/while?<sequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp?;sequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOp?=sequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp?sequential_197/lstm_593/while[
sequential_197/lstm_591/ShapeShapelstm_591_input*
T0*
_output_shapes
:u
+sequential_197/lstm_591/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_197/lstm_591/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_197/lstm_591/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_197/lstm_591/strided_sliceStridedSlice&sequential_197/lstm_591/Shape:output:04sequential_197/lstm_591/strided_slice/stack:output:06sequential_197/lstm_591/strided_slice/stack_1:output:06sequential_197/lstm_591/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_197/lstm_591/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_197/lstm_591/zeros/packedPack.sequential_197/lstm_591/strided_slice:output:0/sequential_197/lstm_591/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_197/lstm_591/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_591/zerosFill-sequential_197/lstm_591/zeros/packed:output:0,sequential_197/lstm_591/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_197/lstm_591/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_197/lstm_591/zeros_1/packedPack.sequential_197/lstm_591/strided_slice:output:01sequential_197/lstm_591/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_197/lstm_591/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_591/zeros_1Fill/sequential_197/lstm_591/zeros_1/packed:output:0.sequential_197/lstm_591/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_197/lstm_591/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_197/lstm_591/transpose	Transposelstm_591_input/sequential_197/lstm_591/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_197/lstm_591/Shape_1Shape%sequential_197/lstm_591/transpose:y:0*
T0*
_output_shapes
:w
-sequential_197/lstm_591/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_591/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_591/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_591/strided_slice_1StridedSlice(sequential_197/lstm_591/Shape_1:output:06sequential_197/lstm_591/strided_slice_1/stack:output:08sequential_197/lstm_591/strided_slice_1/stack_1:output:08sequential_197/lstm_591/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_197/lstm_591/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_197/lstm_591/TensorArrayV2TensorListReserve<sequential_197/lstm_591/TensorArrayV2/element_shape:output:00sequential_197/lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_197/lstm_591/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_197/lstm_591/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_197/lstm_591/transpose:y:0Vsequential_197/lstm_591/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_197/lstm_591/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_591/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_591/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_591/strided_slice_2StridedSlice%sequential_197/lstm_591/transpose:y:06sequential_197/lstm_591/strided_slice_2/stack:output:08sequential_197/lstm_591/strided_slice_2/stack_1:output:08sequential_197/lstm_591/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOpReadVariableOpDsequential_197_lstm_591_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_197/lstm_591/lstm_cell_693/MatMulMatMul0sequential_197/lstm_591/strided_slice_2:output:0Csequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOpFsequential_197_lstm_591_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_197/lstm_591/lstm_cell_693/MatMul_1MatMul&sequential_197/lstm_591/zeros:output:0Esequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_197/lstm_591/lstm_cell_693/addAddV26sequential_197/lstm_591/lstm_cell_693/MatMul:product:08sequential_197/lstm_591/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOpEsequential_197_lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_197/lstm_591/lstm_cell_693/BiasAddBiasAdd-sequential_197/lstm_591/lstm_cell_693/add:z:0Dsequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_197/lstm_591/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_197/lstm_591/lstm_cell_693/splitSplit>sequential_197/lstm_591/lstm_cell_693/split/split_dim:output:06sequential_197/lstm_591/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_197/lstm_591/lstm_cell_693/SigmoidSigmoid4sequential_197/lstm_591/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_197/lstm_591/lstm_cell_693/Sigmoid_1Sigmoid4sequential_197/lstm_591/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_197/lstm_591/lstm_cell_693/mulMul3sequential_197/lstm_591/lstm_cell_693/Sigmoid_1:y:0(sequential_197/lstm_591/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_197/lstm_591/lstm_cell_693/ReluRelu4sequential_197/lstm_591/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_197/lstm_591/lstm_cell_693/mul_1Mul1sequential_197/lstm_591/lstm_cell_693/Sigmoid:y:08sequential_197/lstm_591/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_197/lstm_591/lstm_cell_693/add_1AddV2-sequential_197/lstm_591/lstm_cell_693/mul:z:0/sequential_197/lstm_591/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_197/lstm_591/lstm_cell_693/Sigmoid_2Sigmoid4sequential_197/lstm_591/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_197/lstm_591/lstm_cell_693/Relu_1Relu/sequential_197/lstm_591/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_197/lstm_591/lstm_cell_693/mul_2Mul3sequential_197/lstm_591/lstm_cell_693/Sigmoid_2:y:0:sequential_197/lstm_591/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_197/lstm_591/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_197/lstm_591/TensorArrayV2_1TensorListReserve>sequential_197/lstm_591/TensorArrayV2_1/element_shape:output:00sequential_197/lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_197/lstm_591/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_197/lstm_591/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_197/lstm_591/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_197/lstm_591/whileWhile3sequential_197/lstm_591/while/loop_counter:output:09sequential_197/lstm_591/while/maximum_iterations:output:0%sequential_197/lstm_591/time:output:00sequential_197/lstm_591/TensorArrayV2_1:handle:0&sequential_197/lstm_591/zeros:output:0(sequential_197/lstm_591/zeros_1:output:00sequential_197/lstm_591/strided_slice_1:output:0Osequential_197/lstm_591/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_197_lstm_591_lstm_cell_693_matmul_readvariableop_resourceFsequential_197_lstm_591_lstm_cell_693_matmul_1_readvariableop_resourceEsequential_197_lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
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
*sequential_197_lstm_591_while_body_4204526*6
cond.R,
*sequential_197_lstm_591_while_cond_4204525*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_197/lstm_591/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_197/lstm_591/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_197/lstm_591/while:output:3Qsequential_197/lstm_591/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_197/lstm_591/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_197/lstm_591/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_591/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_591/strided_slice_3StridedSliceCsequential_197/lstm_591/TensorArrayV2Stack/TensorListStack:tensor:06sequential_197/lstm_591/strided_slice_3/stack:output:08sequential_197/lstm_591/strided_slice_3/stack_1:output:08sequential_197/lstm_591/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_197/lstm_591/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_197/lstm_591/transpose_1	TransposeCsequential_197/lstm_591/TensorArrayV2Stack/TensorListStack:tensor:01sequential_197/lstm_591/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_197/lstm_591/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_197/lstm_592/ShapeShape'sequential_197/lstm_591/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_197/lstm_592/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_197/lstm_592/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_197/lstm_592/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_197/lstm_592/strided_sliceStridedSlice&sequential_197/lstm_592/Shape:output:04sequential_197/lstm_592/strided_slice/stack:output:06sequential_197/lstm_592/strided_slice/stack_1:output:06sequential_197/lstm_592/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_197/lstm_592/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_197/lstm_592/zeros/packedPack.sequential_197/lstm_592/strided_slice:output:0/sequential_197/lstm_592/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_197/lstm_592/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_592/zerosFill-sequential_197/lstm_592/zeros/packed:output:0,sequential_197/lstm_592/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_197/lstm_592/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_197/lstm_592/zeros_1/packedPack.sequential_197/lstm_592/strided_slice:output:01sequential_197/lstm_592/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_197/lstm_592/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_592/zeros_1Fill/sequential_197/lstm_592/zeros_1/packed:output:0.sequential_197/lstm_592/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_197/lstm_592/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_197/lstm_592/transpose	Transpose'sequential_197/lstm_591/transpose_1:y:0/sequential_197/lstm_592/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_197/lstm_592/Shape_1Shape%sequential_197/lstm_592/transpose:y:0*
T0*
_output_shapes
:w
-sequential_197/lstm_592/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_592/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_592/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_592/strided_slice_1StridedSlice(sequential_197/lstm_592/Shape_1:output:06sequential_197/lstm_592/strided_slice_1/stack:output:08sequential_197/lstm_592/strided_slice_1/stack_1:output:08sequential_197/lstm_592/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_197/lstm_592/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_197/lstm_592/TensorArrayV2TensorListReserve<sequential_197/lstm_592/TensorArrayV2/element_shape:output:00sequential_197/lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_197/lstm_592/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_197/lstm_592/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_197/lstm_592/transpose:y:0Vsequential_197/lstm_592/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_197/lstm_592/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_592/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_592/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_592/strided_slice_2StridedSlice%sequential_197/lstm_592/transpose:y:06sequential_197/lstm_592/strided_slice_2/stack:output:08sequential_197/lstm_592/strided_slice_2/stack_1:output:08sequential_197/lstm_592/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOpReadVariableOpDsequential_197_lstm_592_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_197/lstm_592/lstm_cell_694/MatMulMatMul0sequential_197/lstm_592/strided_slice_2:output:0Csequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOpFsequential_197_lstm_592_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_197/lstm_592/lstm_cell_694/MatMul_1MatMul&sequential_197/lstm_592/zeros:output:0Esequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_197/lstm_592/lstm_cell_694/addAddV26sequential_197/lstm_592/lstm_cell_694/MatMul:product:08sequential_197/lstm_592/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOpEsequential_197_lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_197/lstm_592/lstm_cell_694/BiasAddBiasAdd-sequential_197/lstm_592/lstm_cell_694/add:z:0Dsequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_197/lstm_592/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_197/lstm_592/lstm_cell_694/splitSplit>sequential_197/lstm_592/lstm_cell_694/split/split_dim:output:06sequential_197/lstm_592/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_197/lstm_592/lstm_cell_694/SigmoidSigmoid4sequential_197/lstm_592/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_197/lstm_592/lstm_cell_694/Sigmoid_1Sigmoid4sequential_197/lstm_592/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_197/lstm_592/lstm_cell_694/mulMul3sequential_197/lstm_592/lstm_cell_694/Sigmoid_1:y:0(sequential_197/lstm_592/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_197/lstm_592/lstm_cell_694/ReluRelu4sequential_197/lstm_592/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_197/lstm_592/lstm_cell_694/mul_1Mul1sequential_197/lstm_592/lstm_cell_694/Sigmoid:y:08sequential_197/lstm_592/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_197/lstm_592/lstm_cell_694/add_1AddV2-sequential_197/lstm_592/lstm_cell_694/mul:z:0/sequential_197/lstm_592/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_197/lstm_592/lstm_cell_694/Sigmoid_2Sigmoid4sequential_197/lstm_592/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_197/lstm_592/lstm_cell_694/Relu_1Relu/sequential_197/lstm_592/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_197/lstm_592/lstm_cell_694/mul_2Mul3sequential_197/lstm_592/lstm_cell_694/Sigmoid_2:y:0:sequential_197/lstm_592/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_197/lstm_592/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_197/lstm_592/TensorArrayV2_1TensorListReserve>sequential_197/lstm_592/TensorArrayV2_1/element_shape:output:00sequential_197/lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_197/lstm_592/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_197/lstm_592/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_197/lstm_592/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_197/lstm_592/whileWhile3sequential_197/lstm_592/while/loop_counter:output:09sequential_197/lstm_592/while/maximum_iterations:output:0%sequential_197/lstm_592/time:output:00sequential_197/lstm_592/TensorArrayV2_1:handle:0&sequential_197/lstm_592/zeros:output:0(sequential_197/lstm_592/zeros_1:output:00sequential_197/lstm_592/strided_slice_1:output:0Osequential_197/lstm_592/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_197_lstm_592_lstm_cell_694_matmul_readvariableop_resourceFsequential_197_lstm_592_lstm_cell_694_matmul_1_readvariableop_resourceEsequential_197_lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
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
*sequential_197_lstm_592_while_body_4204665*6
cond.R,
*sequential_197_lstm_592_while_cond_4204664*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_197/lstm_592/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_197/lstm_592/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_197/lstm_592/while:output:3Qsequential_197/lstm_592/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_197/lstm_592/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_197/lstm_592/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_592/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_592/strided_slice_3StridedSliceCsequential_197/lstm_592/TensorArrayV2Stack/TensorListStack:tensor:06sequential_197/lstm_592/strided_slice_3/stack:output:08sequential_197/lstm_592/strided_slice_3/stack_1:output:08sequential_197/lstm_592/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_197/lstm_592/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_197/lstm_592/transpose_1	TransposeCsequential_197/lstm_592/TensorArrayV2Stack/TensorListStack:tensor:01sequential_197/lstm_592/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_197/lstm_592/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_197/lstm_593/ShapeShape'sequential_197/lstm_592/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_197/lstm_593/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_197/lstm_593/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_197/lstm_593/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_197/lstm_593/strided_sliceStridedSlice&sequential_197/lstm_593/Shape:output:04sequential_197/lstm_593/strided_slice/stack:output:06sequential_197/lstm_593/strided_slice/stack_1:output:06sequential_197/lstm_593/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_197/lstm_593/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_197/lstm_593/zeros/packedPack.sequential_197/lstm_593/strided_slice:output:0/sequential_197/lstm_593/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_197/lstm_593/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_593/zerosFill-sequential_197/lstm_593/zeros/packed:output:0,sequential_197/lstm_593/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_197/lstm_593/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_197/lstm_593/zeros_1/packedPack.sequential_197/lstm_593/strided_slice:output:01sequential_197/lstm_593/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_197/lstm_593/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_197/lstm_593/zeros_1Fill/sequential_197/lstm_593/zeros_1/packed:output:0.sequential_197/lstm_593/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_197/lstm_593/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_197/lstm_593/transpose	Transpose'sequential_197/lstm_592/transpose_1:y:0/sequential_197/lstm_593/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_197/lstm_593/Shape_1Shape%sequential_197/lstm_593/transpose:y:0*
T0*
_output_shapes
:w
-sequential_197/lstm_593/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_593/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_593/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_593/strided_slice_1StridedSlice(sequential_197/lstm_593/Shape_1:output:06sequential_197/lstm_593/strided_slice_1/stack:output:08sequential_197/lstm_593/strided_slice_1/stack_1:output:08sequential_197/lstm_593/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_197/lstm_593/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_197/lstm_593/TensorArrayV2TensorListReserve<sequential_197/lstm_593/TensorArrayV2/element_shape:output:00sequential_197/lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_197/lstm_593/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_197/lstm_593/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_197/lstm_593/transpose:y:0Vsequential_197/lstm_593/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_197/lstm_593/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_593/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_197/lstm_593/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_593/strided_slice_2StridedSlice%sequential_197/lstm_593/transpose:y:06sequential_197/lstm_593/strided_slice_2/stack:output:08sequential_197/lstm_593/strided_slice_2/stack_1:output:08sequential_197/lstm_593/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOpReadVariableOpDsequential_197_lstm_593_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_197/lstm_593/lstm_cell_695/MatMulMatMul0sequential_197/lstm_593/strided_slice_2:output:0Csequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOpFsequential_197_lstm_593_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_197/lstm_593/lstm_cell_695/MatMul_1MatMul&sequential_197/lstm_593/zeros:output:0Esequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_197/lstm_593/lstm_cell_695/addAddV26sequential_197/lstm_593/lstm_cell_695/MatMul:product:08sequential_197/lstm_593/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOpEsequential_197_lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_197/lstm_593/lstm_cell_695/BiasAddBiasAdd-sequential_197/lstm_593/lstm_cell_695/add:z:0Dsequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_197/lstm_593/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_197/lstm_593/lstm_cell_695/splitSplit>sequential_197/lstm_593/lstm_cell_695/split/split_dim:output:06sequential_197/lstm_593/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_197/lstm_593/lstm_cell_695/SigmoidSigmoid4sequential_197/lstm_593/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_197/lstm_593/lstm_cell_695/Sigmoid_1Sigmoid4sequential_197/lstm_593/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_197/lstm_593/lstm_cell_695/mulMul3sequential_197/lstm_593/lstm_cell_695/Sigmoid_1:y:0(sequential_197/lstm_593/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_197/lstm_593/lstm_cell_695/ReluRelu4sequential_197/lstm_593/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_197/lstm_593/lstm_cell_695/mul_1Mul1sequential_197/lstm_593/lstm_cell_695/Sigmoid:y:08sequential_197/lstm_593/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_197/lstm_593/lstm_cell_695/add_1AddV2-sequential_197/lstm_593/lstm_cell_695/mul:z:0/sequential_197/lstm_593/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_197/lstm_593/lstm_cell_695/Sigmoid_2Sigmoid4sequential_197/lstm_593/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_197/lstm_593/lstm_cell_695/Relu_1Relu/sequential_197/lstm_593/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_197/lstm_593/lstm_cell_695/mul_2Mul3sequential_197/lstm_593/lstm_cell_695/Sigmoid_2:y:0:sequential_197/lstm_593/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_197/lstm_593/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_197/lstm_593/TensorArrayV2_1TensorListReserve>sequential_197/lstm_593/TensorArrayV2_1/element_shape:output:00sequential_197/lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_197/lstm_593/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_197/lstm_593/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_197/lstm_593/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_197/lstm_593/whileWhile3sequential_197/lstm_593/while/loop_counter:output:09sequential_197/lstm_593/while/maximum_iterations:output:0%sequential_197/lstm_593/time:output:00sequential_197/lstm_593/TensorArrayV2_1:handle:0&sequential_197/lstm_593/zeros:output:0(sequential_197/lstm_593/zeros_1:output:00sequential_197/lstm_593/strided_slice_1:output:0Osequential_197/lstm_593/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_197_lstm_593_lstm_cell_695_matmul_readvariableop_resourceFsequential_197_lstm_593_lstm_cell_695_matmul_1_readvariableop_resourceEsequential_197_lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
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
*sequential_197_lstm_593_while_body_4204804*6
cond.R,
*sequential_197_lstm_593_while_cond_4204803*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_197/lstm_593/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_197/lstm_593/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_197/lstm_593/while:output:3Qsequential_197/lstm_593/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_197/lstm_593/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_197/lstm_593/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_197/lstm_593/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_197/lstm_593/strided_slice_3StridedSliceCsequential_197/lstm_593/TensorArrayV2Stack/TensorListStack:tensor:06sequential_197/lstm_593/strided_slice_3/stack:output:08sequential_197/lstm_593/strided_slice_3/stack_1:output:08sequential_197/lstm_593/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_197/lstm_593/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_197/lstm_593/transpose_1	TransposeCsequential_197/lstm_593/TensorArrayV2Stack/TensorListStack:tensor:01sequential_197/lstm_593/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_197/lstm_593/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_197/dense_197/MatMul/ReadVariableOpReadVariableOp7sequential_197_dense_197_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_197/dense_197/MatMulMatMul0sequential_197/lstm_593/strided_slice_3:output:06sequential_197/dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_197/dense_197/BiasAdd/ReadVariableOpReadVariableOp8sequential_197_dense_197_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_197/dense_197/BiasAddBiasAdd)sequential_197/dense_197/MatMul:product:07sequential_197/dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_197/dense_197/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_197/dense_197/BiasAdd/ReadVariableOp/^sequential_197/dense_197/MatMul/ReadVariableOp=^sequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp<^sequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOp>^sequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp^sequential_197/lstm_591/while=^sequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp<^sequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOp>^sequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp^sequential_197/lstm_592/while=^sequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp<^sequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOp>^sequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp^sequential_197/lstm_593/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_197/dense_197/BiasAdd/ReadVariableOp/sequential_197/dense_197/BiasAdd/ReadVariableOp2`
.sequential_197/dense_197/MatMul/ReadVariableOp.sequential_197/dense_197/MatMul/ReadVariableOp2|
<sequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp<sequential_197/lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp2z
;sequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOp;sequential_197/lstm_591/lstm_cell_693/MatMul/ReadVariableOp2~
=sequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp=sequential_197/lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp2>
sequential_197/lstm_591/whilesequential_197/lstm_591/while2|
<sequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp<sequential_197/lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp2z
;sequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOp;sequential_197/lstm_592/lstm_cell_694/MatMul/ReadVariableOp2~
=sequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp=sequential_197/lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp2>
sequential_197/lstm_592/whilesequential_197/lstm_592/while2|
<sequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp<sequential_197/lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp2z
;sequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOp;sequential_197/lstm_593/lstm_cell_695/MatMul/ReadVariableOp2~
=sequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp=sequential_197/lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp2>
sequential_197/lstm_593/whilesequential_197/lstm_593/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_591_input
?K
?
E__inference_lstm_592_layer_call_and_return_conditional_losses_4208865
inputs_0?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4208781*
condR
while_cond_4208780*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_592_while_cond_4207832.
*lstm_592_while_lstm_592_while_loop_counter4
0lstm_592_while_lstm_592_while_maximum_iterations
lstm_592_while_placeholder 
lstm_592_while_placeholder_1 
lstm_592_while_placeholder_2 
lstm_592_while_placeholder_30
,lstm_592_while_less_lstm_592_strided_slice_1G
Clstm_592_while_lstm_592_while_cond_4207832___redundant_placeholder0G
Clstm_592_while_lstm_592_while_cond_4207832___redundant_placeholder1G
Clstm_592_while_lstm_592_while_cond_4207832___redundant_placeholder2G
Clstm_592_while_lstm_592_while_cond_4207832___redundant_placeholder3
lstm_592_while_identity
?
lstm_592/while/LessLesslstm_592_while_placeholder,lstm_592_while_less_lstm_592_strided_slice_1*
T0*
_output_shapes
: ]
lstm_592/while/IdentityIdentitylstm_592/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_592_while_identity lstm_592/while/Identity:output:0*(
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209008
inputs_0?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4208924*
condR
while_cond_4208923*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_591_while_body_4207694.
*lstm_591_while_lstm_591_while_loop_counter4
0lstm_591_while_lstm_591_while_maximum_iterations
lstm_591_while_placeholder 
lstm_591_while_placeholder_1 
lstm_591_while_placeholder_2 
lstm_591_while_placeholder_3-
)lstm_591_while_lstm_591_strided_slice_1_0i
elstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0:	?R
?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?M
>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
lstm_591_while_identity
lstm_591_while_identity_1
lstm_591_while_identity_2
lstm_591_while_identity_3
lstm_591_while_identity_4
lstm_591_while_identity_5+
'lstm_591_while_lstm_591_strided_slice_1g
clstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensorN
;lstm_591_while_lstm_cell_693_matmul_readvariableop_resource:	?P
=lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?K
<lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource:	???3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp?2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp?4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp?
@lstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_591/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0lstm_591_while_placeholderIlstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_591/while/lstm_cell_693/MatMulMatMul9lstm_591/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_591/while/lstm_cell_693/MatMul_1MatMullstm_591_while_placeholder_2<lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_591/while/lstm_cell_693/addAddV2-lstm_591/while/lstm_cell_693/MatMul:product:0/lstm_591/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_591/while/lstm_cell_693/BiasAddBiasAdd$lstm_591/while/lstm_cell_693/add:z:0;lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_591/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_591/while/lstm_cell_693/splitSplit5lstm_591/while/lstm_cell_693/split/split_dim:output:0-lstm_591/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_591/while/lstm_cell_693/SigmoidSigmoid+lstm_591/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_591/while/lstm_cell_693/Sigmoid_1Sigmoid+lstm_591/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_591/while/lstm_cell_693/mulMul*lstm_591/while/lstm_cell_693/Sigmoid_1:y:0lstm_591_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_591/while/lstm_cell_693/ReluRelu+lstm_591/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/mul_1Mul(lstm_591/while/lstm_cell_693/Sigmoid:y:0/lstm_591/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/add_1AddV2$lstm_591/while/lstm_cell_693/mul:z:0&lstm_591/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_591/while/lstm_cell_693/Sigmoid_2Sigmoid+lstm_591/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_591/while/lstm_cell_693/Relu_1Relu&lstm_591/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/mul_2Mul*lstm_591/while/lstm_cell_693/Sigmoid_2:y:01lstm_591/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_591/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_591_while_placeholder_1lstm_591_while_placeholder&lstm_591/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_591/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_591/while/addAddV2lstm_591_while_placeholderlstm_591/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_591/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_591/while/add_1AddV2*lstm_591_while_lstm_591_while_loop_counterlstm_591/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_591/while/IdentityIdentitylstm_591/while/add_1:z:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_1Identity0lstm_591_while_lstm_591_while_maximum_iterations^lstm_591/while/NoOp*
T0*
_output_shapes
: t
lstm_591/while/Identity_2Identitylstm_591/while/add:z:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_3IdentityClstm_591/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_4Identity&lstm_591/while/lstm_cell_693/mul_2:z:0^lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_591/while/Identity_5Identity&lstm_591/while/lstm_cell_693/add_1:z:0^lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_591/while/NoOpNoOp4^lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp3^lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp5^lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_591_while_identity lstm_591/while/Identity:output:0"?
lstm_591_while_identity_1"lstm_591/while/Identity_1:output:0"?
lstm_591_while_identity_2"lstm_591/while/Identity_2:output:0"?
lstm_591_while_identity_3"lstm_591/while/Identity_3:output:0"?
lstm_591_while_identity_4"lstm_591/while/Identity_4:output:0"?
lstm_591_while_identity_5"lstm_591/while/Identity_5:output:0"T
'lstm_591_while_lstm_591_strided_slice_1)lstm_591_while_lstm_591_strided_slice_1_0"~
<lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
=lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0"|
;lstm_591_while_lstm_cell_693_matmul_readvariableop_resource=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0"?
clstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensorelstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp2h
2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp2l
4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_593_while_cond_4207971.
*lstm_593_while_lstm_593_while_loop_counter4
0lstm_593_while_lstm_593_while_maximum_iterations
lstm_593_while_placeholder 
lstm_593_while_placeholder_1 
lstm_593_while_placeholder_2 
lstm_593_while_placeholder_30
,lstm_593_while_less_lstm_593_strided_slice_1G
Clstm_593_while_lstm_593_while_cond_4207971___redundant_placeholder0G
Clstm_593_while_lstm_593_while_cond_4207971___redundant_placeholder1G
Clstm_593_while_lstm_593_while_cond_4207971___redundant_placeholder2G
Clstm_593_while_lstm_593_while_cond_4207971___redundant_placeholder3
lstm_593_while_identity
?
lstm_593/while/LessLesslstm_593_while_placeholder,lstm_593_while_less_lstm_593_strided_slice_1*
T0*
_output_shapes
: ]
lstm_593/while/IdentityIdentitylstm_593/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_593_while_identity lstm_593/while/Identity:output:0*(
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210191

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
?
?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4206418

inputs#
lstm_591_4206094:	?#
lstm_591_4206096:	d?
lstm_591_4206098:	?#
lstm_592_4206244:	d?#
lstm_592_4206246:	2?
lstm_592_4206248:	?"
lstm_593_4206394:2("
lstm_593_4206396:
(
lstm_593_4206398:(#
dense_197_4206412:

dense_197_4206414:
identity??!dense_197/StatefulPartitionedCall? lstm_591/StatefulPartitionedCall? lstm_592/StatefulPartitionedCall? lstm_593/StatefulPartitionedCall?
 lstm_591/StatefulPartitionedCallStatefulPartitionedCallinputslstm_591_4206094lstm_591_4206096lstm_591_4206098*
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206093?
 lstm_592/StatefulPartitionedCallStatefulPartitionedCall)lstm_591/StatefulPartitionedCall:output:0lstm_592_4206244lstm_592_4206246lstm_592_4206248*
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206243?
 lstm_593/StatefulPartitionedCallStatefulPartitionedCall)lstm_592/StatefulPartitionedCall:output:0lstm_593_4206394lstm_593_4206396lstm_593_4206398*
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206393?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_593/StatefulPartitionedCall:output:0dense_197_4206412dense_197_4206414*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411y
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_197/StatefulPartitionedCall!^lstm_591/StatefulPartitionedCall!^lstm_592/StatefulPartitionedCall!^lstm_593/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2D
 lstm_591/StatefulPartitionedCall lstm_591/StatefulPartitionedCall2D
 lstm_592/StatefulPartitionedCall lstm_592/StatefulPartitionedCall2D
 lstm_593/StatefulPartitionedCall lstm_593/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4209066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209066___redundant_placeholder05
1while_while_cond_4209066___redundant_placeholder15
1while_while_cond_4209066___redundant_placeholder25
1while_while_cond_4209066___redundant_placeholder3
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
??
?
#__inference__traced_restore_4210496
file_prefix3
!assignvariableop_dense_197_kernel:
/
!assignvariableop_1_dense_197_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_591_lstm_cell_591_kernel:	?M
:assignvariableop_8_lstm_591_lstm_cell_591_recurrent_kernel:	d?=
.assignvariableop_9_lstm_591_lstm_cell_591_bias:	?D
1assignvariableop_10_lstm_592_lstm_cell_592_kernel:	d?N
;assignvariableop_11_lstm_592_lstm_cell_592_recurrent_kernel:	2?>
/assignvariableop_12_lstm_592_lstm_cell_592_bias:	?C
1assignvariableop_13_lstm_593_lstm_cell_593_kernel:2(M
;assignvariableop_14_lstm_593_lstm_cell_593_recurrent_kernel:
(=
/assignvariableop_15_lstm_593_lstm_cell_593_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_197_kernel_m:
7
)assignvariableop_19_adam_dense_197_bias_m:K
8assignvariableop_20_adam_lstm_591_lstm_cell_591_kernel_m:	?U
Bassignvariableop_21_adam_lstm_591_lstm_cell_591_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_591_lstm_cell_591_bias_m:	?K
8assignvariableop_23_adam_lstm_592_lstm_cell_592_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_592_lstm_cell_592_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_592_lstm_cell_592_bias_m:	?J
8assignvariableop_26_adam_lstm_593_lstm_cell_593_kernel_m:2(T
Bassignvariableop_27_adam_lstm_593_lstm_cell_593_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_593_lstm_cell_593_bias_m:(=
+assignvariableop_29_adam_dense_197_kernel_v:
7
)assignvariableop_30_adam_dense_197_bias_v:K
8assignvariableop_31_adam_lstm_591_lstm_cell_591_kernel_v:	?U
Bassignvariableop_32_adam_lstm_591_lstm_cell_591_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_591_lstm_cell_591_bias_v:	?K
8assignvariableop_34_adam_lstm_592_lstm_cell_592_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_592_lstm_cell_592_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_592_lstm_cell_592_bias_v:	?J
8assignvariableop_37_adam_lstm_593_lstm_cell_593_kernel_v:2(T
Bassignvariableop_38_adam_lstm_593_lstm_cell_593_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_593_lstm_cell_593_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_197_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_197_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_591_lstm_cell_591_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_591_lstm_cell_591_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_591_lstm_cell_591_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_592_lstm_cell_592_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_592_lstm_cell_592_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_592_lstm_cell_592_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_593_lstm_cell_593_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_593_lstm_cell_593_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_593_lstm_cell_593_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_197_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_197_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_591_lstm_cell_591_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_591_lstm_cell_591_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_591_lstm_cell_591_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_592_lstm_cell_592_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_592_lstm_cell_592_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_592_lstm_cell_592_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_593_lstm_cell_593_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_593_lstm_cell_593_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_593_lstm_cell_593_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_197_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_197_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_591_lstm_cell_591_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_591_lstm_cell_591_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_591_lstm_cell_591_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_592_lstm_cell_592_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_592_lstm_cell_592_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_592_lstm_cell_592_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_593_lstm_cell_593_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_593_lstm_cell_593_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_593_lstm_cell_593_bias_vIdentity_39:output:0"/device:CPU:0*
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
?C
?

lstm_591_while_body_4207267.
*lstm_591_while_lstm_591_while_loop_counter4
0lstm_591_while_lstm_591_while_maximum_iterations
lstm_591_while_placeholder 
lstm_591_while_placeholder_1 
lstm_591_while_placeholder_2 
lstm_591_while_placeholder_3-
)lstm_591_while_lstm_591_strided_slice_1_0i
elstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0:	?R
?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?M
>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
lstm_591_while_identity
lstm_591_while_identity_1
lstm_591_while_identity_2
lstm_591_while_identity_3
lstm_591_while_identity_4
lstm_591_while_identity_5+
'lstm_591_while_lstm_591_strided_slice_1g
clstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensorN
;lstm_591_while_lstm_cell_693_matmul_readvariableop_resource:	?P
=lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?K
<lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource:	???3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp?2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp?4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp?
@lstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_591/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0lstm_591_while_placeholderIlstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_591/while/lstm_cell_693/MatMulMatMul9lstm_591/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_591/while/lstm_cell_693/MatMul_1MatMullstm_591_while_placeholder_2<lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_591/while/lstm_cell_693/addAddV2-lstm_591/while/lstm_cell_693/MatMul:product:0/lstm_591/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_591/while/lstm_cell_693/BiasAddBiasAdd$lstm_591/while/lstm_cell_693/add:z:0;lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_591/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_591/while/lstm_cell_693/splitSplit5lstm_591/while/lstm_cell_693/split/split_dim:output:0-lstm_591/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_591/while/lstm_cell_693/SigmoidSigmoid+lstm_591/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_591/while/lstm_cell_693/Sigmoid_1Sigmoid+lstm_591/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_591/while/lstm_cell_693/mulMul*lstm_591/while/lstm_cell_693/Sigmoid_1:y:0lstm_591_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_591/while/lstm_cell_693/ReluRelu+lstm_591/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/mul_1Mul(lstm_591/while/lstm_cell_693/Sigmoid:y:0/lstm_591/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/add_1AddV2$lstm_591/while/lstm_cell_693/mul:z:0&lstm_591/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_591/while/lstm_cell_693/Sigmoid_2Sigmoid+lstm_591/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_591/while/lstm_cell_693/Relu_1Relu&lstm_591/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_591/while/lstm_cell_693/mul_2Mul*lstm_591/while/lstm_cell_693/Sigmoid_2:y:01lstm_591/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_591/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_591_while_placeholder_1lstm_591_while_placeholder&lstm_591/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_591/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_591/while/addAddV2lstm_591_while_placeholderlstm_591/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_591/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_591/while/add_1AddV2*lstm_591_while_lstm_591_while_loop_counterlstm_591/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_591/while/IdentityIdentitylstm_591/while/add_1:z:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_1Identity0lstm_591_while_lstm_591_while_maximum_iterations^lstm_591/while/NoOp*
T0*
_output_shapes
: t
lstm_591/while/Identity_2Identitylstm_591/while/add:z:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_3IdentityClstm_591/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_591/while/NoOp*
T0*
_output_shapes
: ?
lstm_591/while/Identity_4Identity&lstm_591/while/lstm_cell_693/mul_2:z:0^lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_591/while/Identity_5Identity&lstm_591/while/lstm_cell_693/add_1:z:0^lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_591/while/NoOpNoOp4^lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp3^lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp5^lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_591_while_identity lstm_591/while/Identity:output:0"?
lstm_591_while_identity_1"lstm_591/while/Identity_1:output:0"?
lstm_591_while_identity_2"lstm_591/while/Identity_2:output:0"?
lstm_591_while_identity_3"lstm_591/while/Identity_3:output:0"?
lstm_591_while_identity_4"lstm_591/while/Identity_4:output:0"?
lstm_591_while_identity_5"lstm_591/while/Identity_5:output:0"T
'lstm_591_while_lstm_591_strided_slice_1)lstm_591_while_lstm_591_strided_slice_1_0"~
<lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource>lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
=lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource?lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0"|
;lstm_591_while_lstm_cell_693_matmul_readvariableop_resource=lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0"?
clstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensorelstm_591_while_tensorarrayv2read_tensorlistgetitem_lstm_591_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp3lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp2h
2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp2lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp2l
4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp4lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4206524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206524___redundant_placeholder05
1while_while_cond_4206524___redundant_placeholder15
1while_while_cond_4206524___redundant_placeholder25
1while_while_cond_4206524___redundant_placeholder3
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
/__inference_lstm_cell_693_layer_call_fn_4209963

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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4205107o
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
/__inference_lstm_cell_694_layer_call_fn_4210044

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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205311o
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4205935

inputs'
lstm_cell_695_4205853:2('
lstm_cell_695_4205855:
(#
lstm_cell_695_4205857:(
identity??%lstm_cell_695/StatefulPartitionedCall?while;
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
%lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_695_4205853lstm_cell_695_4205855lstm_cell_695_4205857*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205807n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_695_4205853lstm_cell_695_4205855lstm_cell_695_4205857*
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
while_body_4205866*
condR
while_cond_4205865*K
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
NoOpNoOp&^lstm_cell_695/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_695/StatefulPartitionedCall%lstm_cell_695/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4204974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4204974___redundant_placeholder05
1while_while_cond_4204974___redundant_placeholder15
1while_while_cond_4204974___redundant_placeholder25
1while_while_cond_4204974___redundant_placeholder3
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
*sequential_197_lstm_593_while_cond_4204803L
Hsequential_197_lstm_593_while_sequential_197_lstm_593_while_loop_counterR
Nsequential_197_lstm_593_while_sequential_197_lstm_593_while_maximum_iterations-
)sequential_197_lstm_593_while_placeholder/
+sequential_197_lstm_593_while_placeholder_1/
+sequential_197_lstm_593_while_placeholder_2/
+sequential_197_lstm_593_while_placeholder_3N
Jsequential_197_lstm_593_while_less_sequential_197_lstm_593_strided_slice_1e
asequential_197_lstm_593_while_sequential_197_lstm_593_while_cond_4204803___redundant_placeholder0e
asequential_197_lstm_593_while_sequential_197_lstm_593_while_cond_4204803___redundant_placeholder1e
asequential_197_lstm_593_while_sequential_197_lstm_593_while_cond_4204803___redundant_placeholder2e
asequential_197_lstm_593_while_sequential_197_lstm_593_while_cond_4204803___redundant_placeholder3*
&sequential_197_lstm_593_while_identity
?
"sequential_197/lstm_593/while/LessLess)sequential_197_lstm_593_while_placeholderJsequential_197_lstm_593_while_less_sequential_197_lstm_593_strided_slice_1*
T0*
_output_shapes
: {
&sequential_197/lstm_593/while/IdentityIdentity&sequential_197/lstm_593/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_197_lstm_593_while_identity/sequential_197/lstm_593/while/Identity:output:0*(
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
while_body_4208924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4209825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209825___redundant_placeholder05
1while_while_cond_4209825___redundant_placeholder15
1while_while_cond_4209825___redundant_placeholder25
1while_while_cond_4209825___redundant_placeholder3
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
while_body_4205325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_694_4205349_0:	d?0
while_lstm_cell_694_4205351_0:	2?,
while_lstm_cell_694_4205353_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_694_4205349:	d?.
while_lstm_cell_694_4205351:	2?*
while_lstm_cell_694_4205353:	???+while/lstm_cell_694/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_694_4205349_0while_lstm_cell_694_4205351_0while_lstm_cell_694_4205353_0*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205311?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_694/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_694/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_694/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_694/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_694_4205349while_lstm_cell_694_4205349_0"<
while_lstm_cell_694_4205351while_lstm_cell_694_4205351_0"<
while_lstm_cell_694_4205353while_lstm_cell_694_4205353_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_694/StatefulPartitionedCall+while/lstm_cell_694/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_197_layer_call_fn_4206443
lstm_591_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_591_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4206418o
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
_user_specified_namelstm_591_input
?
?
*__inference_lstm_591_layer_call_fn_4208095

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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206093s
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
?
?
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4209995

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
while_cond_4205165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4205165___redundant_placeholder05
1while_while_cond_4205165___redundant_placeholder15
1while_while_cond_4205165___redundant_placeholder25
1while_while_cond_4205165___redundant_placeholder3
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
*__inference_lstm_593_layer_call_fn_4209338

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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206609o
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
while_cond_4205515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4205515___redundant_placeholder05
1while_while_cond_4205515___redundant_placeholder15
1while_while_cond_4205515___redundant_placeholder25
1while_while_cond_4205515___redundant_placeholder3
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
??
?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207635

inputsH
5lstm_591_lstm_cell_693_matmul_readvariableop_resource:	?J
7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource:	d?E
6lstm_591_lstm_cell_693_biasadd_readvariableop_resource:	?H
5lstm_592_lstm_cell_694_matmul_readvariableop_resource:	d?J
7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource:	2?E
6lstm_592_lstm_cell_694_biasadd_readvariableop_resource:	?G
5lstm_593_lstm_cell_695_matmul_readvariableop_resource:2(I
7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource:
(D
6lstm_593_lstm_cell_695_biasadd_readvariableop_resource:(:
(dense_197_matmul_readvariableop_resource:
7
)dense_197_biasadd_readvariableop_resource:
identity?? dense_197/BiasAdd/ReadVariableOp?dense_197/MatMul/ReadVariableOp?-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp?,lstm_591/lstm_cell_693/MatMul/ReadVariableOp?.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp?lstm_591/while?-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp?,lstm_592/lstm_cell_694/MatMul/ReadVariableOp?.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp?lstm_592/while?-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp?,lstm_593/lstm_cell_695/MatMul/ReadVariableOp?.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp?lstm_593/whileD
lstm_591/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_591/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_591/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_591/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_sliceStridedSlicelstm_591/Shape:output:0%lstm_591/strided_slice/stack:output:0'lstm_591/strided_slice/stack_1:output:0'lstm_591/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_591/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_591/zeros/packedPacklstm_591/strided_slice:output:0 lstm_591/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_591/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_591/zerosFilllstm_591/zeros/packed:output:0lstm_591/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_591/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_591/zeros_1/packedPacklstm_591/strided_slice:output:0"lstm_591/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_591/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_591/zeros_1Fill lstm_591/zeros_1/packed:output:0lstm_591/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_591/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_591/transpose	Transposeinputs lstm_591/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_591/Shape_1Shapelstm_591/transpose:y:0*
T0*
_output_shapes
:h
lstm_591/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_591/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_1StridedSlicelstm_591/Shape_1:output:0'lstm_591/strided_slice_1/stack:output:0)lstm_591/strided_slice_1/stack_1:output:0)lstm_591/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_591/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_591/TensorArrayV2TensorListReserve-lstm_591/TensorArrayV2/element_shape:output:0!lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_591/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_591/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_591/transpose:y:0Glstm_591/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_591/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_591/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_2StridedSlicelstm_591/transpose:y:0'lstm_591/strided_slice_2/stack:output:0)lstm_591/strided_slice_2/stack_1:output:0)lstm_591/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_591/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp5lstm_591_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_591/lstm_cell_693/MatMulMatMul!lstm_591/strided_slice_2:output:04lstm_591/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_591/lstm_cell_693/MatMul_1MatMullstm_591/zeros:output:06lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_591/lstm_cell_693/addAddV2'lstm_591/lstm_cell_693/MatMul:product:0)lstm_591/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp6lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_591/lstm_cell_693/BiasAddBiasAddlstm_591/lstm_cell_693/add:z:05lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_591/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_591/lstm_cell_693/splitSplit/lstm_591/lstm_cell_693/split/split_dim:output:0'lstm_591/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_591/lstm_cell_693/SigmoidSigmoid%lstm_591/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_591/lstm_cell_693/Sigmoid_1Sigmoid%lstm_591/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mulMul$lstm_591/lstm_cell_693/Sigmoid_1:y:0lstm_591/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_591/lstm_cell_693/ReluRelu%lstm_591/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mul_1Mul"lstm_591/lstm_cell_693/Sigmoid:y:0)lstm_591/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/add_1AddV2lstm_591/lstm_cell_693/mul:z:0 lstm_591/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_591/lstm_cell_693/Sigmoid_2Sigmoid%lstm_591/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_591/lstm_cell_693/Relu_1Relu lstm_591/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_591/lstm_cell_693/mul_2Mul$lstm_591/lstm_cell_693/Sigmoid_2:y:0+lstm_591/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_591/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_591/TensorArrayV2_1TensorListReserve/lstm_591/TensorArrayV2_1/element_shape:output:0!lstm_591/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_591/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_591/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_591/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_591/whileWhile$lstm_591/while/loop_counter:output:0*lstm_591/while/maximum_iterations:output:0lstm_591/time:output:0!lstm_591/TensorArrayV2_1:handle:0lstm_591/zeros:output:0lstm_591/zeros_1:output:0!lstm_591/strided_slice_1:output:0@lstm_591/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_591_lstm_cell_693_matmul_readvariableop_resource7lstm_591_lstm_cell_693_matmul_1_readvariableop_resource6lstm_591_lstm_cell_693_biasadd_readvariableop_resource*
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
lstm_591_while_body_4207267*'
condR
lstm_591_while_cond_4207266*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_591/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_591/TensorArrayV2Stack/TensorListStackTensorListStacklstm_591/while:output:3Blstm_591/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_591/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_591/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_591/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_591/strided_slice_3StridedSlice4lstm_591/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_591/strided_slice_3/stack:output:0)lstm_591/strided_slice_3/stack_1:output:0)lstm_591/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_591/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_591/transpose_1	Transpose4lstm_591/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_591/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_591/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_592/ShapeShapelstm_591/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_592/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_592/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_592/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_sliceStridedSlicelstm_592/Shape:output:0%lstm_592/strided_slice/stack:output:0'lstm_592/strided_slice/stack_1:output:0'lstm_592/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_592/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_592/zeros/packedPacklstm_592/strided_slice:output:0 lstm_592/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_592/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_592/zerosFilllstm_592/zeros/packed:output:0lstm_592/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_592/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_592/zeros_1/packedPacklstm_592/strided_slice:output:0"lstm_592/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_592/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_592/zeros_1Fill lstm_592/zeros_1/packed:output:0lstm_592/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_592/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_592/transpose	Transposelstm_591/transpose_1:y:0 lstm_592/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_592/Shape_1Shapelstm_592/transpose:y:0*
T0*
_output_shapes
:h
lstm_592/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_592/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_1StridedSlicelstm_592/Shape_1:output:0'lstm_592/strided_slice_1/stack:output:0)lstm_592/strided_slice_1/stack_1:output:0)lstm_592/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_592/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_592/TensorArrayV2TensorListReserve-lstm_592/TensorArrayV2/element_shape:output:0!lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_592/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_592/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_592/transpose:y:0Glstm_592/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_592/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_592/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_2StridedSlicelstm_592/transpose:y:0'lstm_592/strided_slice_2/stack:output:0)lstm_592/strided_slice_2/stack_1:output:0)lstm_592/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_592/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp5lstm_592_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_592/lstm_cell_694/MatMulMatMul!lstm_592/strided_slice_2:output:04lstm_592/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_592/lstm_cell_694/MatMul_1MatMullstm_592/zeros:output:06lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_592/lstm_cell_694/addAddV2'lstm_592/lstm_cell_694/MatMul:product:0)lstm_592/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp6lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_592/lstm_cell_694/BiasAddBiasAddlstm_592/lstm_cell_694/add:z:05lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_592/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_592/lstm_cell_694/splitSplit/lstm_592/lstm_cell_694/split/split_dim:output:0'lstm_592/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_592/lstm_cell_694/SigmoidSigmoid%lstm_592/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_592/lstm_cell_694/Sigmoid_1Sigmoid%lstm_592/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mulMul$lstm_592/lstm_cell_694/Sigmoid_1:y:0lstm_592/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_592/lstm_cell_694/ReluRelu%lstm_592/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mul_1Mul"lstm_592/lstm_cell_694/Sigmoid:y:0)lstm_592/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/add_1AddV2lstm_592/lstm_cell_694/mul:z:0 lstm_592/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_592/lstm_cell_694/Sigmoid_2Sigmoid%lstm_592/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_592/lstm_cell_694/Relu_1Relu lstm_592/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_592/lstm_cell_694/mul_2Mul$lstm_592/lstm_cell_694/Sigmoid_2:y:0+lstm_592/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_592/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_592/TensorArrayV2_1TensorListReserve/lstm_592/TensorArrayV2_1/element_shape:output:0!lstm_592/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_592/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_592/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_592/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_592/whileWhile$lstm_592/while/loop_counter:output:0*lstm_592/while/maximum_iterations:output:0lstm_592/time:output:0!lstm_592/TensorArrayV2_1:handle:0lstm_592/zeros:output:0lstm_592/zeros_1:output:0!lstm_592/strided_slice_1:output:0@lstm_592/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_592_lstm_cell_694_matmul_readvariableop_resource7lstm_592_lstm_cell_694_matmul_1_readvariableop_resource6lstm_592_lstm_cell_694_biasadd_readvariableop_resource*
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
lstm_592_while_body_4207406*'
condR
lstm_592_while_cond_4207405*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_592/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_592/TensorArrayV2Stack/TensorListStackTensorListStacklstm_592/while:output:3Blstm_592/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_592/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_592/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_592/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_592/strided_slice_3StridedSlice4lstm_592/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_592/strided_slice_3/stack:output:0)lstm_592/strided_slice_3/stack_1:output:0)lstm_592/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_592/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_592/transpose_1	Transpose4lstm_592/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_592/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_592/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_593/ShapeShapelstm_592/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_593/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_593/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_593/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_sliceStridedSlicelstm_593/Shape:output:0%lstm_593/strided_slice/stack:output:0'lstm_593/strided_slice/stack_1:output:0'lstm_593/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_593/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_593/zeros/packedPacklstm_593/strided_slice:output:0 lstm_593/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_593/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_593/zerosFilllstm_593/zeros/packed:output:0lstm_593/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_593/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_593/zeros_1/packedPacklstm_593/strided_slice:output:0"lstm_593/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_593/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_593/zeros_1Fill lstm_593/zeros_1/packed:output:0lstm_593/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_593/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_593/transpose	Transposelstm_592/transpose_1:y:0 lstm_593/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_593/Shape_1Shapelstm_593/transpose:y:0*
T0*
_output_shapes
:h
lstm_593/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_593/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_1StridedSlicelstm_593/Shape_1:output:0'lstm_593/strided_slice_1/stack:output:0)lstm_593/strided_slice_1/stack_1:output:0)lstm_593/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_593/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_593/TensorArrayV2TensorListReserve-lstm_593/TensorArrayV2/element_shape:output:0!lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_593/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_593/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_593/transpose:y:0Glstm_593/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_593/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_593/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_2StridedSlicelstm_593/transpose:y:0'lstm_593/strided_slice_2/stack:output:0)lstm_593/strided_slice_2/stack_1:output:0)lstm_593/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_593/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp5lstm_593_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_593/lstm_cell_695/MatMulMatMul!lstm_593/strided_slice_2:output:04lstm_593/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_593/lstm_cell_695/MatMul_1MatMullstm_593/zeros:output:06lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_593/lstm_cell_695/addAddV2'lstm_593/lstm_cell_695/MatMul:product:0)lstm_593/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp6lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_593/lstm_cell_695/BiasAddBiasAddlstm_593/lstm_cell_695/add:z:05lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_593/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_593/lstm_cell_695/splitSplit/lstm_593/lstm_cell_695/split/split_dim:output:0'lstm_593/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_593/lstm_cell_695/SigmoidSigmoid%lstm_593/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_593/lstm_cell_695/Sigmoid_1Sigmoid%lstm_593/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mulMul$lstm_593/lstm_cell_695/Sigmoid_1:y:0lstm_593/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_593/lstm_cell_695/ReluRelu%lstm_593/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mul_1Mul"lstm_593/lstm_cell_695/Sigmoid:y:0)lstm_593/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/add_1AddV2lstm_593/lstm_cell_695/mul:z:0 lstm_593/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_593/lstm_cell_695/Sigmoid_2Sigmoid%lstm_593/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_593/lstm_cell_695/Relu_1Relu lstm_593/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_593/lstm_cell_695/mul_2Mul$lstm_593/lstm_cell_695/Sigmoid_2:y:0+lstm_593/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_593/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_593/TensorArrayV2_1TensorListReserve/lstm_593/TensorArrayV2_1/element_shape:output:0!lstm_593/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_593/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_593/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_593/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_593/whileWhile$lstm_593/while/loop_counter:output:0*lstm_593/while/maximum_iterations:output:0lstm_593/time:output:0!lstm_593/TensorArrayV2_1:handle:0lstm_593/zeros:output:0lstm_593/zeros_1:output:0!lstm_593/strided_slice_1:output:0@lstm_593/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_593_lstm_cell_695_matmul_readvariableop_resource7lstm_593_lstm_cell_695_matmul_1_readvariableop_resource6lstm_593_lstm_cell_695_biasadd_readvariableop_resource*
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
lstm_593_while_body_4207545*'
condR
lstm_593_while_cond_4207544*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_593/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_593/TensorArrayV2Stack/TensorListStackTensorListStacklstm_593/while:output:3Blstm_593/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_593/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_593/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_593/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_593/strided_slice_3StridedSlice4lstm_593/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_593/strided_slice_3/stack:output:0)lstm_593/strided_slice_3/stack_1:output:0)lstm_593/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_593/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_593/transpose_1	Transpose4lstm_593/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_593/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_593/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_197/MatMul/ReadVariableOpReadVariableOp(dense_197_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_197/MatMulMatMul!lstm_593/strided_slice_3:output:0'dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_197/BiasAdd/ReadVariableOpReadVariableOp)dense_197_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_197/BiasAddBiasAdddense_197/MatMul:product:0(dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_197/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_197/BiasAdd/ReadVariableOp ^dense_197/MatMul/ReadVariableOp.^lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp-^lstm_591/lstm_cell_693/MatMul/ReadVariableOp/^lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp^lstm_591/while.^lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp-^lstm_592/lstm_cell_694/MatMul/ReadVariableOp/^lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp^lstm_592/while.^lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp-^lstm_593/lstm_cell_695/MatMul/ReadVariableOp/^lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp^lstm_593/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_197/BiasAdd/ReadVariableOp dense_197/BiasAdd/ReadVariableOp2B
dense_197/MatMul/ReadVariableOpdense_197/MatMul/ReadVariableOp2^
-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp-lstm_591/lstm_cell_693/BiasAdd/ReadVariableOp2\
,lstm_591/lstm_cell_693/MatMul/ReadVariableOp,lstm_591/lstm_cell_693/MatMul/ReadVariableOp2`
.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp.lstm_591/lstm_cell_693/MatMul_1/ReadVariableOp2 
lstm_591/whilelstm_591/while2^
-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp-lstm_592/lstm_cell_694/BiasAdd/ReadVariableOp2\
,lstm_592/lstm_cell_694/MatMul/ReadVariableOp,lstm_592/lstm_cell_694/MatMul/ReadVariableOp2`
.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp.lstm_592/lstm_cell_694/MatMul_1/ReadVariableOp2 
lstm_592/whilelstm_592/while2^
-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp-lstm_593/lstm_cell_695/BiasAdd/ReadVariableOp2\
,lstm_593/lstm_cell_695/MatMul/ReadVariableOp,lstm_593/lstm_cell_695/MatMul/ReadVariableOp2`
.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp.lstm_593/lstm_cell_695/MatMul_1/ReadVariableOp2 
lstm_593/whilelstm_593/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4208450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208450___redundant_placeholder05
1while_while_cond_4208450___redundant_placeholder15
1while_while_cond_4208450___redundant_placeholder25
1while_while_cond_4208450___redundant_placeholder3
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
lstm_591_while_cond_4207693.
*lstm_591_while_lstm_591_while_loop_counter4
0lstm_591_while_lstm_591_while_maximum_iterations
lstm_591_while_placeholder 
lstm_591_while_placeholder_1 
lstm_591_while_placeholder_2 
lstm_591_while_placeholder_30
,lstm_591_while_less_lstm_591_strided_slice_1G
Clstm_591_while_lstm_591_while_cond_4207693___redundant_placeholder0G
Clstm_591_while_lstm_591_while_cond_4207693___redundant_placeholder1G
Clstm_591_while_lstm_591_while_cond_4207693___redundant_placeholder2G
Clstm_591_while_lstm_591_while_cond_4207693___redundant_placeholder3
lstm_591_while_identity
?
lstm_591/while/LessLesslstm_591_while_placeholder,lstm_591_while_less_lstm_591_strided_slice_1*
T0*
_output_shapes
: ]
lstm_591/while/IdentityIdentitylstm_591/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_591_while_identity lstm_591/while/Identity:output:0*(
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
while_cond_4206308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206308___redundant_placeholder05
1while_while_cond_4206308___redundant_placeholder15
1while_while_cond_4206308___redundant_placeholder25
1while_while_cond_4206308___redundant_placeholder3
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207007

inputs#
lstm_591_4206980:	?#
lstm_591_4206982:	d?
lstm_591_4206984:	?#
lstm_592_4206987:	d?#
lstm_592_4206989:	2?
lstm_592_4206991:	?"
lstm_593_4206994:2("
lstm_593_4206996:
(
lstm_593_4206998:(#
dense_197_4207001:

dense_197_4207003:
identity??!dense_197/StatefulPartitionedCall? lstm_591/StatefulPartitionedCall? lstm_592/StatefulPartitionedCall? lstm_593/StatefulPartitionedCall?
 lstm_591/StatefulPartitionedCallStatefulPartitionedCallinputslstm_591_4206980lstm_591_4206982lstm_591_4206984*
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206939?
 lstm_592/StatefulPartitionedCallStatefulPartitionedCall)lstm_591/StatefulPartitionedCall:output:0lstm_592_4206987lstm_592_4206989lstm_592_4206991*
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206774?
 lstm_593/StatefulPartitionedCallStatefulPartitionedCall)lstm_592/StatefulPartitionedCall:output:0lstm_593_4206994lstm_593_4206996lstm_593_4206998*
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206609?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_593/StatefulPartitionedCall:output:0dense_197_4207001dense_197_4207003*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411y
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_197/StatefulPartitionedCall!^lstm_591/StatefulPartitionedCall!^lstm_592/StatefulPartitionedCall!^lstm_593/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2D
 lstm_591/StatefulPartitionedCall lstm_591/StatefulPartitionedCall2D
 lstm_592/StatefulPartitionedCall lstm_592/StatefulPartitionedCall2D
 lstm_593/StatefulPartitionedCall lstm_593/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4206008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206008___redundant_placeholder05
1while_while_cond_4206008___redundant_placeholder15
1while_while_cond_4206008___redundant_placeholder25
1while_while_cond_4206008___redundant_placeholder3
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
while_body_4205166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_693_4205190_0:	?0
while_lstm_cell_693_4205192_0:	d?,
while_lstm_cell_693_4205194_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_693_4205190:	?.
while_lstm_cell_693_4205192:	d?*
while_lstm_cell_693_4205194:	???+while/lstm_cell_693/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_693_4205190_0while_lstm_cell_693_4205192_0while_lstm_cell_693_4205194_0*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4205107?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_693/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_693/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_693/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_693/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_693_4205190while_lstm_cell_693_4205190_0"<
while_lstm_cell_693_4205192while_lstm_cell_693_4205192_0"<
while_lstm_cell_693_4205194while_lstm_cell_693_4205194_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_693/StatefulPartitionedCall+while/lstm_cell_693/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4208307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208307___redundant_placeholder05
1while_while_cond_4208307___redundant_placeholder15
1while_while_cond_4208307___redundant_placeholder25
1while_while_cond_4208307___redundant_placeholder3
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206393

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4206309*
condR
while_cond_4206308*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207089
lstm_591_input#
lstm_591_4207062:	?#
lstm_591_4207064:	d?
lstm_591_4207066:	?#
lstm_592_4207069:	d?#
lstm_592_4207071:	2?
lstm_592_4207073:	?"
lstm_593_4207076:2("
lstm_593_4207078:
(
lstm_593_4207080:(#
dense_197_4207083:

dense_197_4207085:
identity??!dense_197/StatefulPartitionedCall? lstm_591/StatefulPartitionedCall? lstm_592/StatefulPartitionedCall? lstm_593/StatefulPartitionedCall?
 lstm_591/StatefulPartitionedCallStatefulPartitionedCalllstm_591_inputlstm_591_4207062lstm_591_4207064lstm_591_4207066*
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206093?
 lstm_592/StatefulPartitionedCallStatefulPartitionedCall)lstm_591/StatefulPartitionedCall:output:0lstm_592_4207069lstm_592_4207071lstm_592_4207073*
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206243?
 lstm_593/StatefulPartitionedCallStatefulPartitionedCall)lstm_592/StatefulPartitionedCall:output:0lstm_593_4207076lstm_593_4207078lstm_593_4207080*
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206393?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_593/StatefulPartitionedCall:output:0dense_197_4207083dense_197_4207085*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411y
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_197/StatefulPartitionedCall!^lstm_591/StatefulPartitionedCall!^lstm_592/StatefulPartitionedCall!^lstm_593/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2D
 lstm_591/StatefulPartitionedCall lstm_591/StatefulPartitionedCall2D
 lstm_592/StatefulPartitionedCall lstm_592/StatefulPartitionedCall2D
 lstm_593/StatefulPartitionedCall lstm_593/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_591_input
?
?
while_cond_4208593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4208593___redundant_placeholder05
1while_while_cond_4208593___redundant_placeholder15
1while_while_cond_4208593___redundant_placeholder25
1while_while_cond_4208593___redundant_placeholder3
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209624
inputs_0>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4209540*
condR
while_cond_4209539*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_693_layer_call_fn_4209946

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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4204961o
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
*__inference_lstm_592_layer_call_fn_4208700
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4205585|
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

?
lstm_592_while_cond_4207405.
*lstm_592_while_lstm_592_while_loop_counter4
0lstm_592_while_lstm_592_while_maximum_iterations
lstm_592_while_placeholder 
lstm_592_while_placeholder_1 
lstm_592_while_placeholder_2 
lstm_592_while_placeholder_30
,lstm_592_while_less_lstm_592_strided_slice_1G
Clstm_592_while_lstm_592_while_cond_4207405___redundant_placeholder0G
Clstm_592_while_lstm_592_while_cond_4207405___redundant_placeholder1G
Clstm_592_while_lstm_592_while_cond_4207405___redundant_placeholder2G
Clstm_592_while_lstm_592_while_cond_4207405___redundant_placeholder3
lstm_592_while_identity
?
lstm_592/while/LessLesslstm_592_while_placeholder,lstm_592_while_less_lstm_592_strided_slice_1*
T0*
_output_shapes
: ]
lstm_592/while/IdentityIdentitylstm_592/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_592_while_identity lstm_592/while/Identity:output:0*(
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209481
inputs_0>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4209397*
condR
while_cond_4209396*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_695_layer_call_fn_4210159

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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205807o
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

?
0__inference_sequential_197_layer_call_fn_4207059
lstm_591_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_591_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207007o
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
_user_specified_namelstm_591_input
?
?
*__inference_lstm_593_layer_call_fn_4209305
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4205744o
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
while_cond_4206689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206689___redundant_placeholder05
1while_while_cond_4206689___redundant_placeholder15
1while_while_cond_4206689___redundant_placeholder25
1while_while_cond_4206689___redundant_placeholder3
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
+__inference_dense_197_layer_call_fn_4209919

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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411o
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
?J
?
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206243

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4206159*
condR
while_cond_4206158*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4208308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4205324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4205324___redundant_placeholder05
1while_while_cond_4205324___redundant_placeholder15
1while_while_cond_4205324___redundant_placeholder25
1while_while_cond_4205324___redundant_placeholder3
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205661

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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208392
inputs_0?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4208308*
condR
while_cond_4208307*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_593_layer_call_fn_4209316
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4205935o
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
?#
?
while_body_4204975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_693_4204999_0:	?0
while_lstm_cell_693_4205001_0:	d?,
while_lstm_cell_693_4205003_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_693_4204999:	?.
while_lstm_cell_693_4205001:	d?*
while_lstm_cell_693_4205003:	???+while/lstm_cell_693/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_693_4204999_0while_lstm_cell_693_4205001_0while_lstm_cell_693_4205003_0*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4204961?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_693/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_693/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_693/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_693/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_693_4204999while_lstm_cell_693_4204999_0"<
while_lstm_cell_693_4205001while_lstm_cell_693_4205001_0"<
while_lstm_cell_693_4205003while_lstm_cell_693_4205003_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_693/StatefulPartitionedCall+while/lstm_cell_693/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_593_layer_call_fn_4209327

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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206393o
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
*sequential_197_lstm_592_while_cond_4204664L
Hsequential_197_lstm_592_while_sequential_197_lstm_592_while_loop_counterR
Nsequential_197_lstm_592_while_sequential_197_lstm_592_while_maximum_iterations-
)sequential_197_lstm_592_while_placeholder/
+sequential_197_lstm_592_while_placeholder_1/
+sequential_197_lstm_592_while_placeholder_2/
+sequential_197_lstm_592_while_placeholder_3N
Jsequential_197_lstm_592_while_less_sequential_197_lstm_592_strided_slice_1e
asequential_197_lstm_592_while_sequential_197_lstm_592_while_cond_4204664___redundant_placeholder0e
asequential_197_lstm_592_while_sequential_197_lstm_592_while_cond_4204664___redundant_placeholder1e
asequential_197_lstm_592_while_sequential_197_lstm_592_while_cond_4204664___redundant_placeholder2e
asequential_197_lstm_592_while_sequential_197_lstm_592_while_cond_4204664___redundant_placeholder3*
&sequential_197_lstm_592_while_identity
?
"sequential_197/lstm_592/while/LessLess)sequential_197_lstm_592_while_placeholderJsequential_197_lstm_592_while_less_sequential_197_lstm_592_strided_slice_1*
T0*
_output_shapes
: {
&sequential_197/lstm_592/while/IdentityIdentity&sequential_197/lstm_592/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_197_lstm_592_while_identity/sequential_197/lstm_592/while/Identity:output:0*(
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
while_body_4209397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4206309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209151

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4209067*
condR
while_cond_4209066*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206609

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4206525*
condR
while_cond_4206524*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_593_while_body_4207972.
*lstm_593_while_lstm_593_while_loop_counter4
0lstm_593_while_lstm_593_while_maximum_iterations
lstm_593_while_placeholder 
lstm_593_while_placeholder_1 
lstm_593_while_placeholder_2 
lstm_593_while_placeholder_3-
)lstm_593_while_lstm_593_strided_slice_1_0i
elstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0:2(Q
?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(L
>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0:(
lstm_593_while_identity
lstm_593_while_identity_1
lstm_593_while_identity_2
lstm_593_while_identity_3
lstm_593_while_identity_4
lstm_593_while_identity_5+
'lstm_593_while_lstm_593_strided_slice_1g
clstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensorM
;lstm_593_while_lstm_cell_695_matmul_readvariableop_resource:2(O
=lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource:
(J
<lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource:(??3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp?2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp?4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp?
@lstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_593/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0lstm_593_while_placeholderIlstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_593/while/lstm_cell_695/MatMulMatMul9lstm_593/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_593/while/lstm_cell_695/MatMul_1MatMullstm_593_while_placeholder_2<lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_593/while/lstm_cell_695/addAddV2-lstm_593/while/lstm_cell_695/MatMul:product:0/lstm_593/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_593/while/lstm_cell_695/BiasAddBiasAdd$lstm_593/while/lstm_cell_695/add:z:0;lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_593/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_593/while/lstm_cell_695/splitSplit5lstm_593/while/lstm_cell_695/split/split_dim:output:0-lstm_593/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_593/while/lstm_cell_695/SigmoidSigmoid+lstm_593/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_593/while/lstm_cell_695/Sigmoid_1Sigmoid+lstm_593/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_593/while/lstm_cell_695/mulMul*lstm_593/while/lstm_cell_695/Sigmoid_1:y:0lstm_593_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_593/while/lstm_cell_695/ReluRelu+lstm_593/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/mul_1Mul(lstm_593/while/lstm_cell_695/Sigmoid:y:0/lstm_593/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/add_1AddV2$lstm_593/while/lstm_cell_695/mul:z:0&lstm_593/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_593/while/lstm_cell_695/Sigmoid_2Sigmoid+lstm_593/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_593/while/lstm_cell_695/Relu_1Relu&lstm_593/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/mul_2Mul*lstm_593/while/lstm_cell_695/Sigmoid_2:y:01lstm_593/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_593/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_593_while_placeholder_1lstm_593_while_placeholder&lstm_593/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_593/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_593/while/addAddV2lstm_593_while_placeholderlstm_593/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_593/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_593/while/add_1AddV2*lstm_593_while_lstm_593_while_loop_counterlstm_593/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_593/while/IdentityIdentitylstm_593/while/add_1:z:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_1Identity0lstm_593_while_lstm_593_while_maximum_iterations^lstm_593/while/NoOp*
T0*
_output_shapes
: t
lstm_593/while/Identity_2Identitylstm_593/while/add:z:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_3IdentityClstm_593/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_4Identity&lstm_593/while/lstm_cell_695/mul_2:z:0^lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_593/while/Identity_5Identity&lstm_593/while/lstm_cell_695/add_1:z:0^lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_593/while/NoOpNoOp4^lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp3^lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp5^lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_593_while_identity lstm_593/while/Identity:output:0"?
lstm_593_while_identity_1"lstm_593/while/Identity_1:output:0"?
lstm_593_while_identity_2"lstm_593/while/Identity_2:output:0"?
lstm_593_while_identity_3"lstm_593/while/Identity_3:output:0"?
lstm_593_while_identity_4"lstm_593/while/Identity_4:output:0"?
lstm_593_while_identity_5"lstm_593/while/Identity_5:output:0"T
'lstm_593_while_lstm_593_strided_slice_1)lstm_593_while_lstm_593_strided_slice_1_0"~
<lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
=lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0"|
;lstm_593_while_lstm_cell_695_matmul_readvariableop_resource=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0"?
clstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensorelstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp2h
2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp2l
4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4207154
lstm_591_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_591_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4204894o
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
_user_specified_namelstm_591_input
?8
?
while_body_4209210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4209682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209682___redundant_placeholder05
1while_while_cond_4209682___redundant_placeholder15
1while_while_cond_4209682___redundant_placeholder25
1while_while_cond_4209682___redundant_placeholder3
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
while_cond_4209209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209209___redundant_placeholder05
1while_while_cond_4209209___redundant_placeholder15
1while_while_cond_4209209___redundant_placeholder25
1while_while_cond_4209209___redundant_placeholder3
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
while_cond_4206158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206158___redundant_placeholder05
1while_while_cond_4206158___redundant_placeholder15
1while_while_cond_4206158___redundant_placeholder25
1while_while_cond_4206158___redundant_placeholder3
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4204961

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
?
?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207119
lstm_591_input#
lstm_591_4207092:	?#
lstm_591_4207094:	d?
lstm_591_4207096:	?#
lstm_592_4207099:	d?#
lstm_592_4207101:	2?
lstm_592_4207103:	?"
lstm_593_4207106:2("
lstm_593_4207108:
(
lstm_593_4207110:(#
dense_197_4207113:

dense_197_4207115:
identity??!dense_197/StatefulPartitionedCall? lstm_591/StatefulPartitionedCall? lstm_592/StatefulPartitionedCall? lstm_593/StatefulPartitionedCall?
 lstm_591/StatefulPartitionedCallStatefulPartitionedCalllstm_591_inputlstm_591_4207092lstm_591_4207094lstm_591_4207096*
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206939?
 lstm_592/StatefulPartitionedCallStatefulPartitionedCall)lstm_591/StatefulPartitionedCall:output:0lstm_592_4207099lstm_592_4207101lstm_592_4207103*
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206774?
 lstm_593/StatefulPartitionedCallStatefulPartitionedCall)lstm_592/StatefulPartitionedCall:output:0lstm_593_4207106lstm_593_4207108lstm_593_4207110*
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4206609?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_593/StatefulPartitionedCall:output:0dense_197_4207113dense_197_4207115*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4206411y
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_197/StatefulPartitionedCall!^lstm_591/StatefulPartitionedCall!^lstm_592/StatefulPartitionedCall!^lstm_593/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2D
 lstm_591/StatefulPartitionedCall lstm_591/StatefulPartitionedCall2D
 lstm_592/StatefulPartitionedCall lstm_592/StatefulPartitionedCall2D
 lstm_593/StatefulPartitionedCall lstm_593/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_591_input
?
?
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210223

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
while_cond_4206854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4206854___redundant_placeholder05
1while_while_cond_4206854___redundant_placeholder15
1while_while_cond_4206854___redundant_placeholder25
1while_while_cond_4206854___redundant_placeholder3
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
while_body_4205866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_695_4205890_0:2(/
while_lstm_cell_695_4205892_0:
(+
while_lstm_cell_695_4205894_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_695_4205890:2(-
while_lstm_cell_695_4205892:
()
while_lstm_cell_695_4205894:(??+while/lstm_cell_695/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_695_4205890_0while_lstm_cell_695_4205892_0while_lstm_cell_695_4205894_0*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4205807?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_695/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_695/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_695/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_695_4205890while_lstm_cell_695_4205890_0"<
while_lstm_cell_695_4205892while_lstm_cell_695_4205892_0"<
while_lstm_cell_695_4205894while_lstm_cell_695_4205894_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_695/StatefulPartitionedCall+while/lstm_cell_695/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_197_lstm_591_while_body_4204526L
Hsequential_197_lstm_591_while_sequential_197_lstm_591_while_loop_counterR
Nsequential_197_lstm_591_while_sequential_197_lstm_591_while_maximum_iterations-
)sequential_197_lstm_591_while_placeholder/
+sequential_197_lstm_591_while_placeholder_1/
+sequential_197_lstm_591_while_placeholder_2/
+sequential_197_lstm_591_while_placeholder_3K
Gsequential_197_lstm_591_while_sequential_197_lstm_591_strided_slice_1_0?
?sequential_197_lstm_591_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_591_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_197_lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0:	?a
Nsequential_197_lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?\
Msequential_197_lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?*
&sequential_197_lstm_591_while_identity,
(sequential_197_lstm_591_while_identity_1,
(sequential_197_lstm_591_while_identity_2,
(sequential_197_lstm_591_while_identity_3,
(sequential_197_lstm_591_while_identity_4,
(sequential_197_lstm_591_while_identity_5I
Esequential_197_lstm_591_while_sequential_197_lstm_591_strided_slice_1?
?sequential_197_lstm_591_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_591_tensorarrayunstack_tensorlistfromtensor]
Jsequential_197_lstm_591_while_lstm_cell_693_matmul_readvariableop_resource:	?_
Lsequential_197_lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?Z
Ksequential_197_lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource:	???Bsequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp?Asequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp?Csequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp?
Osequential_197/lstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_197/lstm_591/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_197_lstm_591_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_591_tensorarrayunstack_tensorlistfromtensor_0)sequential_197_lstm_591_while_placeholderXsequential_197/lstm_591/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOpLsequential_197_lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_197/lstm_591/while/lstm_cell_693/MatMulMatMulHsequential_197/lstm_591/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOpNsequential_197_lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_197/lstm_591/while/lstm_cell_693/MatMul_1MatMul+sequential_197_lstm_591_while_placeholder_2Ksequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_197/lstm_591/while/lstm_cell_693/addAddV2<sequential_197/lstm_591/while/lstm_cell_693/MatMul:product:0>sequential_197/lstm_591/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOpMsequential_197_lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_197/lstm_591/while/lstm_cell_693/BiasAddBiasAdd3sequential_197/lstm_591/while/lstm_cell_693/add:z:0Jsequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_197/lstm_591/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_197/lstm_591/while/lstm_cell_693/splitSplitDsequential_197/lstm_591/while/lstm_cell_693/split/split_dim:output:0<sequential_197/lstm_591/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_197/lstm_591/while/lstm_cell_693/SigmoidSigmoid:sequential_197/lstm_591/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_197/lstm_591/while/lstm_cell_693/Sigmoid_1Sigmoid:sequential_197/lstm_591/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_197/lstm_591/while/lstm_cell_693/mulMul9sequential_197/lstm_591/while/lstm_cell_693/Sigmoid_1:y:0+sequential_197_lstm_591_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_197/lstm_591/while/lstm_cell_693/ReluRelu:sequential_197/lstm_591/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_197/lstm_591/while/lstm_cell_693/mul_1Mul7sequential_197/lstm_591/while/lstm_cell_693/Sigmoid:y:0>sequential_197/lstm_591/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_197/lstm_591/while/lstm_cell_693/add_1AddV23sequential_197/lstm_591/while/lstm_cell_693/mul:z:05sequential_197/lstm_591/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_197/lstm_591/while/lstm_cell_693/Sigmoid_2Sigmoid:sequential_197/lstm_591/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_197/lstm_591/while/lstm_cell_693/Relu_1Relu5sequential_197/lstm_591/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_197/lstm_591/while/lstm_cell_693/mul_2Mul9sequential_197/lstm_591/while/lstm_cell_693/Sigmoid_2:y:0@sequential_197/lstm_591/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_197/lstm_591/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_197_lstm_591_while_placeholder_1)sequential_197_lstm_591_while_placeholder5sequential_197/lstm_591/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_197/lstm_591/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_197/lstm_591/while/addAddV2)sequential_197_lstm_591_while_placeholder,sequential_197/lstm_591/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_197/lstm_591/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_197/lstm_591/while/add_1AddV2Hsequential_197_lstm_591_while_sequential_197_lstm_591_while_loop_counter.sequential_197/lstm_591/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_197/lstm_591/while/IdentityIdentity'sequential_197/lstm_591/while/add_1:z:0#^sequential_197/lstm_591/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_591/while/Identity_1IdentityNsequential_197_lstm_591_while_sequential_197_lstm_591_while_maximum_iterations#^sequential_197/lstm_591/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_591/while/Identity_2Identity%sequential_197/lstm_591/while/add:z:0#^sequential_197/lstm_591/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_591/while/Identity_3IdentityRsequential_197/lstm_591/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_197/lstm_591/while/NoOp*
T0*
_output_shapes
: ?
(sequential_197/lstm_591/while/Identity_4Identity5sequential_197/lstm_591/while/lstm_cell_693/mul_2:z:0#^sequential_197/lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_197/lstm_591/while/Identity_5Identity5sequential_197/lstm_591/while/lstm_cell_693/add_1:z:0#^sequential_197/lstm_591/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_197/lstm_591/while/NoOpNoOpC^sequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOpB^sequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOpD^sequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_197_lstm_591_while_identity/sequential_197/lstm_591/while/Identity:output:0"]
(sequential_197_lstm_591_while_identity_11sequential_197/lstm_591/while/Identity_1:output:0"]
(sequential_197_lstm_591_while_identity_21sequential_197/lstm_591/while/Identity_2:output:0"]
(sequential_197_lstm_591_while_identity_31sequential_197/lstm_591/while/Identity_3:output:0"]
(sequential_197_lstm_591_while_identity_41sequential_197/lstm_591/while/Identity_4:output:0"]
(sequential_197_lstm_591_while_identity_51sequential_197/lstm_591/while/Identity_5:output:0"?
Ksequential_197_lstm_591_while_lstm_cell_693_biasadd_readvariableop_resourceMsequential_197_lstm_591_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
Lsequential_197_lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resourceNsequential_197_lstm_591_while_lstm_cell_693_matmul_1_readvariableop_resource_0"?
Jsequential_197_lstm_591_while_lstm_cell_693_matmul_readvariableop_resourceLsequential_197_lstm_591_while_lstm_cell_693_matmul_readvariableop_resource_0"?
Esequential_197_lstm_591_while_sequential_197_lstm_591_strided_slice_1Gsequential_197_lstm_591_while_sequential_197_lstm_591_strided_slice_1_0"?
?sequential_197_lstm_591_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_591_tensorarrayunstack_tensorlistfromtensor?sequential_197_lstm_591_while_tensorarrayv2read_tensorlistgetitem_sequential_197_lstm_591_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOpBsequential_197/lstm_591/while/lstm_cell_693/BiasAdd/ReadVariableOp2?
Asequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOpAsequential_197/lstm_591/while/lstm_cell_693/MatMul/ReadVariableOp2?
Csequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOpCsequential_197/lstm_591/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_694_layer_call_fn_4210061

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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4205457o
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
while_body_4206159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_593_while_body_4207545.
*lstm_593_while_lstm_593_while_loop_counter4
0lstm_593_while_lstm_593_while_maximum_iterations
lstm_593_while_placeholder 
lstm_593_while_placeholder_1 
lstm_593_while_placeholder_2 
lstm_593_while_placeholder_3-
)lstm_593_while_lstm_593_strided_slice_1_0i
elstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0:2(Q
?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(L
>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0:(
lstm_593_while_identity
lstm_593_while_identity_1
lstm_593_while_identity_2
lstm_593_while_identity_3
lstm_593_while_identity_4
lstm_593_while_identity_5+
'lstm_593_while_lstm_593_strided_slice_1g
clstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensorM
;lstm_593_while_lstm_cell_695_matmul_readvariableop_resource:2(O
=lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource:
(J
<lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource:(??3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp?2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp?4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp?
@lstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_593/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0lstm_593_while_placeholderIlstm_593/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_593/while/lstm_cell_695/MatMulMatMul9lstm_593/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_593/while/lstm_cell_695/MatMul_1MatMullstm_593_while_placeholder_2<lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_593/while/lstm_cell_695/addAddV2-lstm_593/while/lstm_cell_695/MatMul:product:0/lstm_593/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_593/while/lstm_cell_695/BiasAddBiasAdd$lstm_593/while/lstm_cell_695/add:z:0;lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_593/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_593/while/lstm_cell_695/splitSplit5lstm_593/while/lstm_cell_695/split/split_dim:output:0-lstm_593/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_593/while/lstm_cell_695/SigmoidSigmoid+lstm_593/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_593/while/lstm_cell_695/Sigmoid_1Sigmoid+lstm_593/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_593/while/lstm_cell_695/mulMul*lstm_593/while/lstm_cell_695/Sigmoid_1:y:0lstm_593_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_593/while/lstm_cell_695/ReluRelu+lstm_593/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/mul_1Mul(lstm_593/while/lstm_cell_695/Sigmoid:y:0/lstm_593/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/add_1AddV2$lstm_593/while/lstm_cell_695/mul:z:0&lstm_593/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_593/while/lstm_cell_695/Sigmoid_2Sigmoid+lstm_593/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_593/while/lstm_cell_695/Relu_1Relu&lstm_593/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_593/while/lstm_cell_695/mul_2Mul*lstm_593/while/lstm_cell_695/Sigmoid_2:y:01lstm_593/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_593/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_593_while_placeholder_1lstm_593_while_placeholder&lstm_593/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_593/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_593/while/addAddV2lstm_593_while_placeholderlstm_593/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_593/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_593/while/add_1AddV2*lstm_593_while_lstm_593_while_loop_counterlstm_593/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_593/while/IdentityIdentitylstm_593/while/add_1:z:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_1Identity0lstm_593_while_lstm_593_while_maximum_iterations^lstm_593/while/NoOp*
T0*
_output_shapes
: t
lstm_593/while/Identity_2Identitylstm_593/while/add:z:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_3IdentityClstm_593/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_593/while/NoOp*
T0*
_output_shapes
: ?
lstm_593/while/Identity_4Identity&lstm_593/while/lstm_cell_695/mul_2:z:0^lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_593/while/Identity_5Identity&lstm_593/while/lstm_cell_695/add_1:z:0^lstm_593/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_593/while/NoOpNoOp4^lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp3^lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp5^lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_593_while_identity lstm_593/while/Identity:output:0"?
lstm_593_while_identity_1"lstm_593/while/Identity_1:output:0"?
lstm_593_while_identity_2"lstm_593/while/Identity_2:output:0"?
lstm_593_while_identity_3"lstm_593/while/Identity_3:output:0"?
lstm_593_while_identity_4"lstm_593/while/Identity_4:output:0"?
lstm_593_while_identity_5"lstm_593/while/Identity_5:output:0"T
'lstm_593_while_lstm_593_strided_slice_1)lstm_593_while_lstm_593_strided_slice_1_0"~
<lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource>lstm_593_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
=lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource?lstm_593_while_lstm_cell_695_matmul_1_readvariableop_resource_0"|
;lstm_593_while_lstm_cell_695_matmul_readvariableop_resource=lstm_593_while_lstm_cell_695_matmul_readvariableop_resource_0"?
clstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensorelstm_593_while_tensorarrayv2read_tensorlistgetitem_lstm_593_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp3lstm_593/while/lstm_cell_695/BiasAdd/ReadVariableOp2h
2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp2lstm_593/while/lstm_cell_695/MatMul/ReadVariableOp2l
4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp4lstm_593/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4206774

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4206690*
condR
while_cond_4206689*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4208594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4209539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4209539___redundant_placeholder05
1while_while_cond_4209539___redundant_placeholder15
1while_while_cond_4209539___redundant_placeholder25
1while_while_cond_4209539___redundant_placeholder3
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
*__inference_lstm_591_layer_call_fn_4208106

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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206939s
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208678

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4208594*
condR
while_cond_4208593*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4206855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4209929

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

?
0__inference_sequential_197_layer_call_fn_4207208

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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207007o
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4206093

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4206009*
condR
while_cond_4206008*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_197_layer_call_fn_4207181

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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4206418o
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
while_body_4209826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_591_input;
 serving_default_lstm_591_input:0?????????=
	dense_1970
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
2dense_197/kernel
:2dense_197/bias
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
0:.	?2lstm_591/lstm_cell_591/kernel
::8	d?2'lstm_591/lstm_cell_591/recurrent_kernel
*:(?2lstm_591/lstm_cell_591/bias
0:.	d?2lstm_592/lstm_cell_592/kernel
::8	2?2'lstm_592/lstm_cell_592/recurrent_kernel
*:(?2lstm_592/lstm_cell_592/bias
/:-2(2lstm_593/lstm_cell_593/kernel
9:7
(2'lstm_593/lstm_cell_593/recurrent_kernel
):'(2lstm_593/lstm_cell_593/bias
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
2Adam/dense_197/kernel/m
!:2Adam/dense_197/bias/m
5:3	?2$Adam/lstm_591/lstm_cell_591/kernel/m
?:=	d?2.Adam/lstm_591/lstm_cell_591/recurrent_kernel/m
/:-?2"Adam/lstm_591/lstm_cell_591/bias/m
5:3	d?2$Adam/lstm_592/lstm_cell_592/kernel/m
?:=	2?2.Adam/lstm_592/lstm_cell_592/recurrent_kernel/m
/:-?2"Adam/lstm_592/lstm_cell_592/bias/m
4:22(2$Adam/lstm_593/lstm_cell_593/kernel/m
>:<
(2.Adam/lstm_593/lstm_cell_593/recurrent_kernel/m
.:,(2"Adam/lstm_593/lstm_cell_593/bias/m
':%
2Adam/dense_197/kernel/v
!:2Adam/dense_197/bias/v
5:3	?2$Adam/lstm_591/lstm_cell_591/kernel/v
?:=	d?2.Adam/lstm_591/lstm_cell_591/recurrent_kernel/v
/:-?2"Adam/lstm_591/lstm_cell_591/bias/v
5:3	d?2$Adam/lstm_592/lstm_cell_592/kernel/v
?:=	2?2.Adam/lstm_592/lstm_cell_592/recurrent_kernel/v
/:-?2"Adam/lstm_592/lstm_cell_592/bias/v
4:22(2$Adam/lstm_593/lstm_cell_593/kernel/v
>:<
(2.Adam/lstm_593/lstm_cell_593/recurrent_kernel/v
.:,(2"Adam/lstm_593/lstm_cell_593/bias/v
?2?
0__inference_sequential_197_layer_call_fn_4206443
0__inference_sequential_197_layer_call_fn_4207181
0__inference_sequential_197_layer_call_fn_4207208
0__inference_sequential_197_layer_call_fn_4207059?
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207635
K__inference_sequential_197_layer_call_and_return_conditional_losses_4208062
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207089
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207119?
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
"__inference__wrapped_model_4204894lstm_591_input"?
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
*__inference_lstm_591_layer_call_fn_4208073
*__inference_lstm_591_layer_call_fn_4208084
*__inference_lstm_591_layer_call_fn_4208095
*__inference_lstm_591_layer_call_fn_4208106?
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208249
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208392
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208535
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208678?
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
*__inference_lstm_592_layer_call_fn_4208689
*__inference_lstm_592_layer_call_fn_4208700
*__inference_lstm_592_layer_call_fn_4208711
*__inference_lstm_592_layer_call_fn_4208722?
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4208865
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209008
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209151
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209294?
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
*__inference_lstm_593_layer_call_fn_4209305
*__inference_lstm_593_layer_call_fn_4209316
*__inference_lstm_593_layer_call_fn_4209327
*__inference_lstm_593_layer_call_fn_4209338?
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209481
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209624
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209767
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209910?
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
+__inference_dense_197_layer_call_fn_4209919?
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
F__inference_dense_197_layer_call_and_return_conditional_losses_4209929?
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
%__inference_signature_wrapper_4207154lstm_591_input"?
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
/__inference_lstm_cell_693_layer_call_fn_4209946
/__inference_lstm_cell_693_layer_call_fn_4209963?
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4209995
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4210027?
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
/__inference_lstm_cell_694_layer_call_fn_4210044
/__inference_lstm_cell_694_layer_call_fn_4210061?
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210093
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210125?
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
/__inference_lstm_cell_695_layer_call_fn_4210142
/__inference_lstm_cell_695_layer_call_fn_4210159?
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210191
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210223?
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
"__inference__wrapped_model_4204894?-./012345!";?8
1?.
,?)
lstm_591_input?????????
? "5?2
0
	dense_197#? 
	dense_197??????????
F__inference_dense_197_layer_call_and_return_conditional_losses_4209929\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_197_layer_call_fn_4209919O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208249?-./O?L
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208392?-./O?L
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208535q-./??<
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
E__inference_lstm_591_layer_call_and_return_conditional_losses_4208678q-./??<
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
*__inference_lstm_591_layer_call_fn_4208073}-./O?L
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
*__inference_lstm_591_layer_call_fn_4208084}-./O?L
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
*__inference_lstm_591_layer_call_fn_4208095d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_591_layer_call_fn_4208106d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_592_layer_call_and_return_conditional_losses_4208865?012O?L
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209008?012O?L
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209151q012??<
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
E__inference_lstm_592_layer_call_and_return_conditional_losses_4209294q012??<
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
*__inference_lstm_592_layer_call_fn_4208689}012O?L
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
*__inference_lstm_592_layer_call_fn_4208700}012O?L
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
*__inference_lstm_592_layer_call_fn_4208711d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_592_layer_call_fn_4208722d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209481}345O?L
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209624}345O?L
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209767m345??<
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
E__inference_lstm_593_layer_call_and_return_conditional_losses_4209910m345??<
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
*__inference_lstm_593_layer_call_fn_4209305p345O?L
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
*__inference_lstm_593_layer_call_fn_4209316p345O?L
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
*__inference_lstm_593_layer_call_fn_4209327`345??<
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
*__inference_lstm_593_layer_call_fn_4209338`345??<
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4209995?-./??}
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4210027?-./??}
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
/__inference_lstm_cell_693_layer_call_fn_4209946?-./??}
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
/__inference_lstm_cell_693_layer_call_fn_4209963?-./??}
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210093?012??}
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4210125?012??}
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
/__inference_lstm_cell_694_layer_call_fn_4210044?012??}
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
/__inference_lstm_cell_694_layer_call_fn_4210061?012??}
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210191?345??}
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4210223?345??}
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
/__inference_lstm_cell_695_layer_call_fn_4210142?345??}
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
/__inference_lstm_cell_695_layer_call_fn_4210159?345??}
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207089y-./012345!"C?@
9?6
,?)
lstm_591_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207119y-./012345!"C?@
9?6
,?)
lstm_591_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_197_layer_call_and_return_conditional_losses_4207635q-./012345!";?8
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
K__inference_sequential_197_layer_call_and_return_conditional_losses_4208062q-./012345!";?8
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
0__inference_sequential_197_layer_call_fn_4206443l-./012345!"C?@
9?6
,?)
lstm_591_input?????????
p 

 
? "???????????
0__inference_sequential_197_layer_call_fn_4207059l-./012345!"C?@
9?6
,?)
lstm_591_input?????????
p

 
? "???????????
0__inference_sequential_197_layer_call_fn_4207181d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_197_layer_call_fn_4207208d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4207154?-./012345!"M?J
? 
C?@
>
lstm_591_input,?)
lstm_591_input?????????"5?2
0
	dense_197#? 
	dense_197?????????