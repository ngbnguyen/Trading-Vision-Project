½/
µ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
Ğ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28-
z
dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_84/kernel
s
#dense_84/kernel/Read/ReadVariableOpReadVariableOpdense_84/kernel*
_output_shapes

:
*
dtype0
r
dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_84/bias
k
!dense_84/bias/Read/ReadVariableOpReadVariableOpdense_84/bias*
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

lstm_252/lstm_cell_252/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_252/lstm_cell_252/kernel

1lstm_252/lstm_cell_252/kernel/Read/ReadVariableOpReadVariableOplstm_252/lstm_cell_252/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_252/lstm_cell_252/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_252/lstm_cell_252/recurrent_kernel
¤
;lstm_252/lstm_cell_252/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_252/lstm_cell_252/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_252/lstm_cell_252/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_252/lstm_cell_252/bias

/lstm_252/lstm_cell_252/bias/Read/ReadVariableOpReadVariableOplstm_252/lstm_cell_252/bias*
_output_shapes	
:*
dtype0

lstm_253/lstm_cell_253/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_253/lstm_cell_253/kernel

1lstm_253/lstm_cell_253/kernel/Read/ReadVariableOpReadVariableOplstm_253/lstm_cell_253/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_253/lstm_cell_253/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_253/lstm_cell_253/recurrent_kernel
¤
;lstm_253/lstm_cell_253/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_253/lstm_cell_253/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_253/lstm_cell_253/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_253/lstm_cell_253/bias

/lstm_253/lstm_cell_253/bias/Read/ReadVariableOpReadVariableOplstm_253/lstm_cell_253/bias*
_output_shapes	
:È*
dtype0

lstm_254/lstm_cell_254/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_254/lstm_cell_254/kernel

1lstm_254/lstm_cell_254/kernel/Read/ReadVariableOpReadVariableOplstm_254/lstm_cell_254/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_254/lstm_cell_254/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_254/lstm_cell_254/recurrent_kernel
£
;lstm_254/lstm_cell_254/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_254/lstm_cell_254/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_254/lstm_cell_254/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_254/lstm_cell_254/bias

/lstm_254/lstm_cell_254/bias/Read/ReadVariableOpReadVariableOplstm_254/lstm_cell_254/bias*
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

Adam/dense_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_84/kernel/m

*Adam/dense_84/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/m
y
(Adam/dense_84/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_252/lstm_cell_252/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_252/lstm_cell_252/kernel/m

8Adam/lstm_252/lstm_cell_252/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_252/lstm_cell_252/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_252/lstm_cell_252/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_252/lstm_cell_252/recurrent_kernel/m
²
BAdam/lstm_252/lstm_cell_252/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_252/lstm_cell_252/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_252/lstm_cell_252/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_252/lstm_cell_252/bias/m

6Adam/lstm_252/lstm_cell_252/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_252/lstm_cell_252/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_253/lstm_cell_253/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_253/lstm_cell_253/kernel/m

8Adam/lstm_253/lstm_cell_253/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_253/lstm_cell_253/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_253/lstm_cell_253/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_253/lstm_cell_253/recurrent_kernel/m
²
BAdam/lstm_253/lstm_cell_253/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_253/lstm_cell_253/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_253/lstm_cell_253/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_253/lstm_cell_253/bias/m

6Adam/lstm_253/lstm_cell_253/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_253/lstm_cell_253/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_254/lstm_cell_254/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_254/lstm_cell_254/kernel/m

8Adam/lstm_254/lstm_cell_254/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_254/lstm_cell_254/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_254/lstm_cell_254/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_254/lstm_cell_254/recurrent_kernel/m
ħ
BAdam/lstm_254/lstm_cell_254/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_254/lstm_cell_254/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_254/lstm_cell_254/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_254/lstm_cell_254/bias/m

6Adam/lstm_254/lstm_cell_254/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_254/lstm_cell_254/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_84/kernel/v

*Adam/dense_84/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/v
y
(Adam/dense_84/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_252/lstm_cell_252/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_252/lstm_cell_252/kernel/v

8Adam/lstm_252/lstm_cell_252/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_252/lstm_cell_252/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_252/lstm_cell_252/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_252/lstm_cell_252/recurrent_kernel/v
²
BAdam/lstm_252/lstm_cell_252/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_252/lstm_cell_252/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_252/lstm_cell_252/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_252/lstm_cell_252/bias/v

6Adam/lstm_252/lstm_cell_252/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_252/lstm_cell_252/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_253/lstm_cell_253/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_253/lstm_cell_253/kernel/v

8Adam/lstm_253/lstm_cell_253/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_253/lstm_cell_253/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_253/lstm_cell_253/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_253/lstm_cell_253/recurrent_kernel/v
²
BAdam/lstm_253/lstm_cell_253/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_253/lstm_cell_253/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_253/lstm_cell_253/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_253/lstm_cell_253/bias/v

6Adam/lstm_253/lstm_cell_253/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_253/lstm_cell_253/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_254/lstm_cell_254/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_254/lstm_cell_254/kernel/v

8Adam/lstm_254/lstm_cell_254/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_254/lstm_cell_254/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_254/lstm_cell_254/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_254/lstm_cell_254/recurrent_kernel/v
ħ
BAdam/lstm_254/lstm_cell_254/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_254/lstm_cell_254/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_254/lstm_cell_254/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_254/lstm_cell_254/bias/v

6Adam/lstm_254/lstm_cell_254/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_254/lstm_cell_254/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ßA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*A
valueABA BA
²
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

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
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
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
³
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
ı

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
³
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
ı

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
³
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
ı

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_84/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_84/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
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
VARIABLE_VALUElstm_252/lstm_cell_252/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_252/lstm_cell_252/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_252/lstm_cell_252/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_253/lstm_cell_253/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_253/lstm_cell_253/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_253/lstm_cell_253/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_254/lstm_cell_254/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_254/lstm_cell_254/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_254/lstm_cell_254/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
~|
VARIABLE_VALUEAdam/dense_84/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_84/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_252/lstm_cell_252/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_252/lstm_cell_252/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_252/lstm_cell_252/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_253/lstm_cell_253/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_253/lstm_cell_253/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_253/lstm_cell_253/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_254/lstm_cell_254/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_254/lstm_cell_254/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_254/lstm_cell_254/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_84/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_84/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_252/lstm_cell_252/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_252/lstm_cell_252/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_252/lstm_cell_252/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_253/lstm_cell_253/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_253/lstm_cell_253/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_253/lstm_cell_253/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_254/lstm_cell_254/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_254/lstm_cell_254/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_254/lstm_cell_254/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_252_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_252_inputlstm_252/lstm_cell_252/kernel'lstm_252/lstm_cell_252/recurrent_kernellstm_252/lstm_cell_252/biaslstm_253/lstm_cell_253/kernel'lstm_253/lstm_cell_253/recurrent_kernellstm_253/lstm_cell_253/biaslstm_254/lstm_cell_254/kernel'lstm_254/lstm_cell_254/recurrent_kernellstm_254/lstm_cell_254/biasdense_84/kerneldense_84/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_413350
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_84/kernel/Read/ReadVariableOp!dense_84/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_252/lstm_cell_252/kernel/Read/ReadVariableOp;lstm_252/lstm_cell_252/recurrent_kernel/Read/ReadVariableOp/lstm_252/lstm_cell_252/bias/Read/ReadVariableOp1lstm_253/lstm_cell_253/kernel/Read/ReadVariableOp;lstm_253/lstm_cell_253/recurrent_kernel/Read/ReadVariableOp/lstm_253/lstm_cell_253/bias/Read/ReadVariableOp1lstm_254/lstm_cell_254/kernel/Read/ReadVariableOp;lstm_254/lstm_cell_254/recurrent_kernel/Read/ReadVariableOp/lstm_254/lstm_cell_254/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_84/kernel/m/Read/ReadVariableOp(Adam/dense_84/bias/m/Read/ReadVariableOp8Adam/lstm_252/lstm_cell_252/kernel/m/Read/ReadVariableOpBAdam/lstm_252/lstm_cell_252/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_252/lstm_cell_252/bias/m/Read/ReadVariableOp8Adam/lstm_253/lstm_cell_253/kernel/m/Read/ReadVariableOpBAdam/lstm_253/lstm_cell_253/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_253/lstm_cell_253/bias/m/Read/ReadVariableOp8Adam/lstm_254/lstm_cell_254/kernel/m/Read/ReadVariableOpBAdam/lstm_254/lstm_cell_254/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_254/lstm_cell_254/bias/m/Read/ReadVariableOp*Adam/dense_84/kernel/v/Read/ReadVariableOp(Adam/dense_84/bias/v/Read/ReadVariableOp8Adam/lstm_252/lstm_cell_252/kernel/v/Read/ReadVariableOpBAdam/lstm_252/lstm_cell_252/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_252/lstm_cell_252/bias/v/Read/ReadVariableOp8Adam/lstm_253/lstm_cell_253/kernel/v/Read/ReadVariableOpBAdam/lstm_253/lstm_cell_253/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_253/lstm_cell_253/bias/v/Read/ReadVariableOp8Adam/lstm_254/lstm_cell_254/kernel/v/Read/ReadVariableOpBAdam/lstm_254/lstm_cell_254/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_254/lstm_cell_254/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *(
f#R!
__inference__traced_save_416562

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_84/kerneldense_84/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_252/lstm_cell_252/kernel'lstm_252/lstm_cell_252/recurrent_kernellstm_252/lstm_cell_252/biaslstm_253/lstm_cell_253/kernel'lstm_253/lstm_cell_253/recurrent_kernellstm_253/lstm_cell_253/biaslstm_254/lstm_cell_254/kernel'lstm_254/lstm_cell_254/recurrent_kernellstm_254/lstm_cell_254/biastotalcountAdam/dense_84/kernel/mAdam/dense_84/bias/m$Adam/lstm_252/lstm_cell_252/kernel/m.Adam/lstm_252/lstm_cell_252/recurrent_kernel/m"Adam/lstm_252/lstm_cell_252/bias/m$Adam/lstm_253/lstm_cell_253/kernel/m.Adam/lstm_253/lstm_cell_253/recurrent_kernel/m"Adam/lstm_253/lstm_cell_253/bias/m$Adam/lstm_254/lstm_cell_254/kernel/m.Adam/lstm_254/lstm_cell_254/recurrent_kernel/m"Adam/lstm_254/lstm_cell_254/bias/mAdam/dense_84/kernel/vAdam/dense_84/bias/v$Adam/lstm_252/lstm_cell_252/kernel/v.Adam/lstm_252/lstm_cell_252/recurrent_kernel/v"Adam/lstm_252/lstm_cell_252/bias/v$Adam/lstm_253/lstm_cell_253/kernel/v.Adam/lstm_253/lstm_cell_253/recurrent_kernel/v"Adam/lstm_253/lstm_cell_253/bias/v$Adam/lstm_254/lstm_cell_254/kernel/v.Adam/lstm_254/lstm_cell_254/recurrent_kernel/v"Adam/lstm_254/lstm_cell_254/bias/v*4
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_416692½Ó+
S
­
(sequential_84_lstm_254_while_body_411000J
Fsequential_84_lstm_254_while_sequential_84_lstm_254_while_loop_counterP
Lsequential_84_lstm_254_while_sequential_84_lstm_254_while_maximum_iterations,
(sequential_84_lstm_254_while_placeholder.
*sequential_84_lstm_254_while_placeholder_1.
*sequential_84_lstm_254_while_placeholder_2.
*sequential_84_lstm_254_while_placeholder_3I
Esequential_84_lstm_254_while_sequential_84_lstm_254_strided_slice_1_0
sequential_84_lstm_254_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_254_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_84_lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0:2(^
Lsequential_84_lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(Y
Ksequential_84_lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0:()
%sequential_84_lstm_254_while_identity+
'sequential_84_lstm_254_while_identity_1+
'sequential_84_lstm_254_while_identity_2+
'sequential_84_lstm_254_while_identity_3+
'sequential_84_lstm_254_while_identity_4+
'sequential_84_lstm_254_while_identity_5G
Csequential_84_lstm_254_while_sequential_84_lstm_254_strided_slice_1
sequential_84_lstm_254_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_254_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_84_lstm_254_while_lstm_cell_68_matmul_readvariableop_resource:2(\
Jsequential_84_lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource:
(W
Isequential_84_lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource:(˘@sequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp˘?sequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp˘Asequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp
Nsequential_84/lstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_84/lstm_254/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_84_lstm_254_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_254_tensorarrayunstack_tensorlistfromtensor_0(sequential_84_lstm_254_while_placeholderWsequential_84/lstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpJsequential_84_lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_84/lstm_254/while/lstm_cell_68/MatMulMatMulGsequential_84/lstm_254/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpLsequential_84_lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_84/lstm_254/while/lstm_cell_68/MatMul_1MatMul*sequential_84_lstm_254_while_placeholder_2Isequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_84/lstm_254/while/lstm_cell_68/addAddV2:sequential_84/lstm_254/while/lstm_cell_68/MatMul:product:0<sequential_84/lstm_254/while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpKsequential_84_lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_84/lstm_254/while/lstm_cell_68/BiasAddBiasAdd1sequential_84/lstm_254/while/lstm_cell_68/add:z:0Hsequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_84/lstm_254/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_84/lstm_254/while/lstm_cell_68/splitSplitBsequential_84/lstm_254/while/lstm_cell_68/split/split_dim:output:0:sequential_84/lstm_254/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_84/lstm_254/while/lstm_cell_68/SigmoidSigmoid8sequential_84/lstm_254/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_84/lstm_254/while/lstm_cell_68/Sigmoid_1Sigmoid8sequential_84/lstm_254/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_84/lstm_254/while/lstm_cell_68/mulMul7sequential_84/lstm_254/while/lstm_cell_68/Sigmoid_1:y:0*sequential_84_lstm_254_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_84/lstm_254/while/lstm_cell_68/ReluRelu8sequential_84/lstm_254/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_84/lstm_254/while/lstm_cell_68/mul_1Mul5sequential_84/lstm_254/while/lstm_cell_68/Sigmoid:y:0<sequential_84/lstm_254/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_84/lstm_254/while/lstm_cell_68/add_1AddV21sequential_84/lstm_254/while/lstm_cell_68/mul:z:03sequential_84/lstm_254/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_84/lstm_254/while/lstm_cell_68/Sigmoid_2Sigmoid8sequential_84/lstm_254/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_84/lstm_254/while/lstm_cell_68/Relu_1Relu3sequential_84/lstm_254/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_84/lstm_254/while/lstm_cell_68/mul_2Mul7sequential_84/lstm_254/while/lstm_cell_68/Sigmoid_2:y:0>sequential_84/lstm_254/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_84/lstm_254/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_84_lstm_254_while_placeholder_1(sequential_84_lstm_254_while_placeholder3sequential_84/lstm_254/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_84/lstm_254/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_84/lstm_254/while/addAddV2(sequential_84_lstm_254_while_placeholder+sequential_84/lstm_254/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_84/lstm_254/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_84/lstm_254/while/add_1AddV2Fsequential_84_lstm_254_while_sequential_84_lstm_254_while_loop_counter-sequential_84/lstm_254/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_84/lstm_254/while/IdentityIdentity&sequential_84/lstm_254/while/add_1:z:0"^sequential_84/lstm_254/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_84/lstm_254/while/Identity_1IdentityLsequential_84_lstm_254_while_sequential_84_lstm_254_while_maximum_iterations"^sequential_84/lstm_254/while/NoOp*
T0*
_output_shapes
: 
'sequential_84/lstm_254/while/Identity_2Identity$sequential_84/lstm_254/while/add:z:0"^sequential_84/lstm_254/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_84/lstm_254/while/Identity_3IdentityQsequential_84/lstm_254/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_84/lstm_254/while/NoOp*
T0*
_output_shapes
: ?
'sequential_84/lstm_254/while/Identity_4Identity3sequential_84/lstm_254/while/lstm_cell_68/mul_2:z:0"^sequential_84/lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_84/lstm_254/while/Identity_5Identity3sequential_84/lstm_254/while/lstm_cell_68/add_1:z:0"^sequential_84/lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_84/lstm_254/while/NoOpNoOpA^sequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp@^sequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOpB^sequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_84_lstm_254_while_identity.sequential_84/lstm_254/while/Identity:output:0"[
'sequential_84_lstm_254_while_identity_10sequential_84/lstm_254/while/Identity_1:output:0"[
'sequential_84_lstm_254_while_identity_20sequential_84/lstm_254/while/Identity_2:output:0"[
'sequential_84_lstm_254_while_identity_30sequential_84/lstm_254/while/Identity_3:output:0"[
'sequential_84_lstm_254_while_identity_40sequential_84/lstm_254/while/Identity_4:output:0"[
'sequential_84_lstm_254_while_identity_50sequential_84/lstm_254/while/Identity_5:output:0"
Isequential_84_lstm_254_while_lstm_cell_68_biasadd_readvariableop_resourceKsequential_84_lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0"
Jsequential_84_lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resourceLsequential_84_lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0"
Hsequential_84_lstm_254_while_lstm_cell_68_matmul_readvariableop_resourceJsequential_84_lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0"
Csequential_84_lstm_254_while_sequential_84_lstm_254_strided_slice_1Esequential_84_lstm_254_while_sequential_84_lstm_254_strided_slice_1_0"
sequential_84_lstm_254_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_254_tensorarrayunstack_tensorlistfromtensorsequential_84_lstm_254_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_254_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp@sequential_84/lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2
?sequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp?sequential_84/lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp2
Asequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOpAsequential_84/lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_253_layer_call_fn_414896
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_411781|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
8
?
while_body_414361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_253_while_cond_414028.
*lstm_253_while_lstm_253_while_loop_counter4
0lstm_253_while_lstm_253_while_maximum_iterations
lstm_253_while_placeholder 
lstm_253_while_placeholder_1 
lstm_253_while_placeholder_2 
lstm_253_while_placeholder_30
,lstm_253_while_less_lstm_253_strided_slice_1F
Blstm_253_while_lstm_253_while_cond_414028___redundant_placeholder0F
Blstm_253_while_lstm_253_while_cond_414028___redundant_placeholder1F
Blstm_253_while_lstm_253_while_cond_414028___redundant_placeholder2F
Blstm_253_while_lstm_253_while_cond_414028___redundant_placeholder3
lstm_253_while_identity

lstm_253/while/LessLesslstm_253_while_placeholder,lstm_253_while_less_lstm_253_strided_slice_1*
T0*
_output_shapes
: ]
lstm_253/while/IdentityIdentitylstm_253/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_253_while_identity lstm_253/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
Ğ
ë
I__inference_sequential_84_layer_call_and_return_conditional_losses_413203

inputs"
lstm_252_413176:	"
lstm_252_413178:	d
lstm_252_413180:	"
lstm_253_413183:	dÈ"
lstm_253_413185:	2È
lstm_253_413187:	È!
lstm_254_413190:2(!
lstm_254_413192:
(
lstm_254_413194:(!
dense_84_413197:

dense_84_413199:
identity˘ dense_84/StatefulPartitionedCall˘ lstm_252/StatefulPartitionedCall˘ lstm_253/StatefulPartitionedCall˘ lstm_254/StatefulPartitionedCall
 lstm_252/StatefulPartitionedCallStatefulPartitionedCallinputslstm_252_413176lstm_252_413178lstm_252_413180*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_413135Ş
 lstm_253/StatefulPartitionedCallStatefulPartitionedCall)lstm_252/StatefulPartitionedCall:output:0lstm_253_413183lstm_253_413185lstm_253_413187*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412970Ĥ
 lstm_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_253/StatefulPartitionedCall:output:0lstm_254_413190lstm_254_413192lstm_254_413194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412805
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)lstm_254/StatefulPartitionedCall:output:0dense_84_413197dense_84_413199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_412607x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_84/StatefulPartitionedCall!^lstm_252/StatefulPartitionedCall!^lstm_253/StatefulPartitionedCall!^lstm_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2D
 lstm_252/StatefulPartitionedCall lstm_252/StatefulPartitionedCall2D
 lstm_253/StatefulPartitionedCall lstm_253/StatefulPartitionedCall2D
 lstm_254/StatefulPartitionedCall lstm_254/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_253_layer_call_fn_414907

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412439s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_414646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414646___redundant_placeholder04
0while_while_cond_414646___redundant_placeholder14
0while_while_cond_414646___redundant_placeholder24
0while_while_cond_414646___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
ÛB
?

lstm_253_while_body_414029.
*lstm_253_while_lstm_253_while_loop_counter4
0lstm_253_while_lstm_253_while_maximum_iterations
lstm_253_while_placeholder 
lstm_253_while_placeholder_1 
lstm_253_while_placeholder_2 
lstm_253_while_placeholder_3-
)lstm_253_while_lstm_253_strided_slice_1_0i
elstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈQ
>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
lstm_253_while_identity
lstm_253_while_identity_1
lstm_253_while_identity_2
lstm_253_while_identity_3
lstm_253_while_identity_4
lstm_253_while_identity_5+
'lstm_253_while_lstm_253_strided_slice_1g
clstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensorM
:lstm_253_while_lstm_cell_67_matmul_readvariableop_resource:	dÈO
<lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈJ
;lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource:	È˘2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp˘1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp˘3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp
@lstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_253/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0lstm_253_while_placeholderIlstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_253/while/lstm_cell_67/MatMulMatMul9lstm_253/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_253/while/lstm_cell_67/MatMul_1MatMullstm_253_while_placeholder_2;lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_253/while/lstm_cell_67/addAddV2,lstm_253/while/lstm_cell_67/MatMul:product:0.lstm_253/while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_253/while/lstm_cell_67/BiasAddBiasAdd#lstm_253/while/lstm_cell_67/add:z:0:lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_253/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_253/while/lstm_cell_67/splitSplit4lstm_253/while/lstm_cell_67/split/split_dim:output:0,lstm_253/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_253/while/lstm_cell_67/SigmoidSigmoid*lstm_253/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_253/while/lstm_cell_67/Sigmoid_1Sigmoid*lstm_253/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_253/while/lstm_cell_67/mulMul)lstm_253/while/lstm_cell_67/Sigmoid_1:y:0lstm_253_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_253/while/lstm_cell_67/ReluRelu*lstm_253/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_253/while/lstm_cell_67/mul_1Mul'lstm_253/while/lstm_cell_67/Sigmoid:y:0.lstm_253/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_253/while/lstm_cell_67/add_1AddV2#lstm_253/while/lstm_cell_67/mul:z:0%lstm_253/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_253/while/lstm_cell_67/Sigmoid_2Sigmoid*lstm_253/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_253/while/lstm_cell_67/Relu_1Relu%lstm_253/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_253/while/lstm_cell_67/mul_2Mul)lstm_253/while/lstm_cell_67/Sigmoid_2:y:00lstm_253/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_253/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_253_while_placeholder_1lstm_253_while_placeholder%lstm_253/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_253/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_253/while/addAddV2lstm_253_while_placeholderlstm_253/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_253/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_253/while/add_1AddV2*lstm_253_while_lstm_253_while_loop_counterlstm_253/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_253/while/IdentityIdentitylstm_253/while/add_1:z:0^lstm_253/while/NoOp*
T0*
_output_shapes
: 
lstm_253/while/Identity_1Identity0lstm_253_while_lstm_253_while_maximum_iterations^lstm_253/while/NoOp*
T0*
_output_shapes
: t
lstm_253/while/Identity_2Identitylstm_253/while/add:z:0^lstm_253/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_253/while/Identity_3IdentityClstm_253/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_253/while/NoOp*
T0*
_output_shapes
: 
lstm_253/while/Identity_4Identity%lstm_253/while/lstm_cell_67/mul_2:z:0^lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/while/Identity_5Identity%lstm_253/while/lstm_cell_67/add_1:z:0^lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_253/while/NoOpNoOp3^lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2^lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp4^lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_253_while_identity lstm_253/while/Identity:output:0"?
lstm_253_while_identity_1"lstm_253/while/Identity_1:output:0"?
lstm_253_while_identity_2"lstm_253/while/Identity_2:output:0"?
lstm_253_while_identity_3"lstm_253/while/Identity_3:output:0"?
lstm_253_while_identity_4"lstm_253/while/Identity_4:output:0"?
lstm_253_while_identity_5"lstm_253/while/Identity_5:output:0"T
'lstm_253_while_lstm_253_strided_slice_1)lstm_253_while_lstm_253_strided_slice_1_0"|
;lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0"~
<lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0"z
:lstm_253_while_lstm_cell_67_matmul_readvariableop_resource<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0"Ì
clstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensorelstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2f
1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp2j
3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_413051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ĉ"
?
while_body_411521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_67_411545_0:	dÈ.
while_lstm_cell_67_411547_0:	2È*
while_lstm_cell_67_411549_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_67_411545:	dÈ,
while_lstm_cell_67_411547:	2È(
while_lstm_cell_67_411549:	È˘*while/lstm_cell_67/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_67_411545_0while_lstm_cell_67_411547_0while_lstm_cell_67_411549_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411507Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_67/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_67/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_67/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_67_411545while_lstm_cell_67_411545_0"8
while_lstm_cell_67_411547while_lstm_cell_67_411547_0"8
while_lstm_cell_67_411549while_lstm_cell_67_411549_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_67/StatefulPartitionedCall*while/lstm_cell_67/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ò

˘
.__inference_sequential_84_layer_call_fn_412639
lstm_252_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_252_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_84_layer_call_and_return_conditional_losses_412614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input
¤J

D__inference_lstm_253_layer_call_and_return_conditional_losses_415347

inputs>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415263*
condR
while_cond_415262*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_415735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415735___redundant_placeholder04
0while_while_cond_415735___redundant_placeholder14
0while_while_cond_415735___redundant_placeholder24
0while_while_cond_415735___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ó

H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416387

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
Ğ
¸
)__inference_lstm_253_layer_call_fn_414885
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_411590|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_253_layer_call_and_return_conditional_losses_412970

inputs>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412886*
condR
while_cond_412885*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_254_layer_call_and_return_conditional_losses_415820
inputs_0=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415736*
condR
while_cond_415735*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ġ

H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411157

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
µ
?
while_cond_412504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412504___redundant_placeholder04
0while_while_cond_412504___redundant_placeholder14
0while_while_cond_412504___redundant_placeholder24
0while_while_cond_412504___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:

ĥ
)__inference_lstm_253_layer_call_fn_414918

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412970s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_252_layer_call_fn_414302

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_413135s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĉ"
?
while_body_411362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_66_411386_0:	.
while_lstm_cell_66_411388_0:	d*
while_lstm_cell_66_411390_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_66_411386:	,
while_lstm_cell_66_411388:	d(
while_lstm_cell_66_411390:	˘*while/lstm_cell_66/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_411386_0while_lstm_cell_66_411388_0while_lstm_cell_66_411390_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411303Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_66_411386while_lstm_cell_66_411386_0"8
while_lstm_cell_66_411388while_lstm_cell_66_411388_0"8
while_lstm_cell_66_411390while_lstm_cell_66_411390_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_414790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_254_layer_call_and_return_conditional_losses_416106

inputs=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_416022*
condR
while_cond_416021*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8

D__inference_lstm_254_layer_call_and_return_conditional_losses_412131

inputs%
lstm_cell_68_412049:2(%
lstm_cell_68_412051:
(!
lstm_cell_68_412053:(
identity˘$lstm_cell_68/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_412049lstm_cell_68_412051lstm_cell_68_412053*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_412003n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_412049lstm_cell_68_412051lstm_cell_68_412053*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412062*
condR
while_cond_412061*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_253_layer_call_and_return_conditional_losses_412439

inputs>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412355*
condR
while_cond_412354*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_253_layer_call_and_return_conditional_losses_411590

inputs&
lstm_cell_67_411508:	dÈ&
lstm_cell_67_411510:	2È"
lstm_cell_67_411512:	È
identity˘$lstm_cell_67/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_67_411508lstm_cell_67_411510lstm_cell_67_411512*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411507n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_67_411508lstm_cell_67_411510lstm_cell_67_411512*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411521*
condR
while_cond_411520*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_67/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_67/StatefulPartitionedCall$lstm_cell_67/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_411711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411711___redundant_placeholder04
0while_while_cond_411711___redundant_placeholder14
0while_while_cond_411711___redundant_placeholder24
0while_while_cond_411711___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
8
?
while_body_412886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_254_layer_call_and_return_conditional_losses_411940

inputs%
lstm_cell_68_411858:2(%
lstm_cell_68_411860:
(!
lstm_cell_68_411862:(
identity˘$lstm_cell_68/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_411858lstm_cell_68_411860lstm_cell_68_411862*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_411857n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_411858lstm_cell_68_411860lstm_cell_68_411862*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411871*
condR
while_cond_411870*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_416021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_416021___redundant_placeholder04
0while_while_cond_416021___redundant_placeholder14
0while_while_cond_416021___redundant_placeholder24
0while_while_cond_416021___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
˙7
Ê
while_body_412505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
âJ

D__inference_lstm_253_layer_call_and_return_conditional_losses_415204
inputs_0>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415120*
condR
while_cond_415119*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ë
ö
-__inference_lstm_cell_66_layer_call_fn_416159

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
J

D__inference_lstm_254_layer_call_and_return_conditional_losses_415963

inputs=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415879*
condR
while_cond_415878*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_411520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411520___redundant_placeholder04
0while_while_cond_411520___redundant_placeholder14
0while_while_cond_411520___redundant_placeholder24
0while_while_cond_411520___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_412885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412885___redundant_placeholder04
0while_while_cond_412885___redundant_placeholder14
0while_while_cond_412885___redundant_placeholder24
0while_while_cond_412885___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ç¤

"__inference__traced_restore_416692
file_prefix2
 assignvariableop_dense_84_kernel:
.
 assignvariableop_1_dense_84_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_252_lstm_cell_252_kernel:	M
:assignvariableop_8_lstm_252_lstm_cell_252_recurrent_kernel:	d=
.assignvariableop_9_lstm_252_lstm_cell_252_bias:	D
1assignvariableop_10_lstm_253_lstm_cell_253_kernel:	dÈN
;assignvariableop_11_lstm_253_lstm_cell_253_recurrent_kernel:	2È>
/assignvariableop_12_lstm_253_lstm_cell_253_bias:	ÈC
1assignvariableop_13_lstm_254_lstm_cell_254_kernel:2(M
;assignvariableop_14_lstm_254_lstm_cell_254_recurrent_kernel:
(=
/assignvariableop_15_lstm_254_lstm_cell_254_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_84_kernel_m:
6
(assignvariableop_19_adam_dense_84_bias_m:K
8assignvariableop_20_adam_lstm_252_lstm_cell_252_kernel_m:	U
Bassignvariableop_21_adam_lstm_252_lstm_cell_252_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_252_lstm_cell_252_bias_m:	K
8assignvariableop_23_adam_lstm_253_lstm_cell_253_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_253_lstm_cell_253_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_253_lstm_cell_253_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_254_lstm_cell_254_kernel_m:2(T
Bassignvariableop_27_adam_lstm_254_lstm_cell_254_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_254_lstm_cell_254_bias_m:(<
*assignvariableop_29_adam_dense_84_kernel_v:
6
(assignvariableop_30_adam_dense_84_bias_v:K
8assignvariableop_31_adam_lstm_252_lstm_cell_252_kernel_v:	U
Bassignvariableop_32_adam_lstm_252_lstm_cell_252_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_252_lstm_cell_252_bias_v:	K
8assignvariableop_34_adam_lstm_253_lstm_cell_253_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_253_lstm_cell_253_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_253_lstm_cell_253_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_254_lstm_cell_254_kernel_v:2(T
Bassignvariableop_38_adam_lstm_254_lstm_cell_254_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_254_lstm_cell_254_bias_v:(
identity_41˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ş
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_84_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_84_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_252_lstm_cell_252_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_252_lstm_cell_252_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_252_lstm_cell_252_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_253_lstm_cell_253_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_253_lstm_cell_253_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_253_lstm_cell_253_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_254_lstm_cell_254_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_254_lstm_cell_254_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_254_lstm_cell_254_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_84_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_84_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_252_lstm_cell_252_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_252_lstm_cell_252_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_252_lstm_cell_252_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_253_lstm_cell_253_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_253_lstm_cell_253_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_253_lstm_cell_253_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_254_lstm_cell_254_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_254_lstm_cell_254_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_254_lstm_cell_254_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_84_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_84_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_252_lstm_cell_252_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_252_lstm_cell_252_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_252_lstm_cell_252_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_253_lstm_cell_253_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_253_lstm_cell_253_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_253_lstm_cell_253_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_254_lstm_cell_254_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_254_lstm_cell_254_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_254_lstm_cell_254_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ż
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ĵ
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
ÎB
ê

lstm_254_while_body_414168.
*lstm_254_while_lstm_254_while_loop_counter4
0lstm_254_while_lstm_254_while_maximum_iterations
lstm_254_while_placeholder 
lstm_254_while_placeholder_1 
lstm_254_while_placeholder_2 
lstm_254_while_placeholder_3-
)lstm_254_while_lstm_254_strided_slice_1_0i
elstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0:2(P
>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(K
=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0:(
lstm_254_while_identity
lstm_254_while_identity_1
lstm_254_while_identity_2
lstm_254_while_identity_3
lstm_254_while_identity_4
lstm_254_while_identity_5+
'lstm_254_while_lstm_254_strided_slice_1g
clstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensorL
:lstm_254_while_lstm_cell_68_matmul_readvariableop_resource:2(N
<lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource:
(I
;lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource:(˘2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp˘1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp˘3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp
@lstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_254/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0lstm_254_while_placeholderIlstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_254/while/lstm_cell_68/MatMulMatMul9lstm_254/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_254/while/lstm_cell_68/MatMul_1MatMullstm_254_while_placeholder_2;lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_254/while/lstm_cell_68/addAddV2,lstm_254/while/lstm_cell_68/MatMul:product:0.lstm_254/while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_254/while/lstm_cell_68/BiasAddBiasAdd#lstm_254/while/lstm_cell_68/add:z:0:lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_254/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_254/while/lstm_cell_68/splitSplit4lstm_254/while/lstm_cell_68/split/split_dim:output:0,lstm_254/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_254/while/lstm_cell_68/SigmoidSigmoid*lstm_254/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_254/while/lstm_cell_68/Sigmoid_1Sigmoid*lstm_254/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_254/while/lstm_cell_68/mulMul)lstm_254/while/lstm_cell_68/Sigmoid_1:y:0lstm_254_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_254/while/lstm_cell_68/ReluRelu*lstm_254/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_254/while/lstm_cell_68/mul_1Mul'lstm_254/while/lstm_cell_68/Sigmoid:y:0.lstm_254/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_254/while/lstm_cell_68/add_1AddV2#lstm_254/while/lstm_cell_68/mul:z:0%lstm_254/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_254/while/lstm_cell_68/Sigmoid_2Sigmoid*lstm_254/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_254/while/lstm_cell_68/Relu_1Relu%lstm_254/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_254/while/lstm_cell_68/mul_2Mul)lstm_254/while/lstm_cell_68/Sigmoid_2:y:00lstm_254/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_254/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_254_while_placeholder_1lstm_254_while_placeholder%lstm_254/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_254/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_254/while/addAddV2lstm_254_while_placeholderlstm_254/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_254/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_254/while/add_1AddV2*lstm_254_while_lstm_254_while_loop_counterlstm_254/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_254/while/IdentityIdentitylstm_254/while/add_1:z:0^lstm_254/while/NoOp*
T0*
_output_shapes
: 
lstm_254/while/Identity_1Identity0lstm_254_while_lstm_254_while_maximum_iterations^lstm_254/while/NoOp*
T0*
_output_shapes
: t
lstm_254/while/Identity_2Identitylstm_254/while/add:z:0^lstm_254/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_254/while/Identity_3IdentityClstm_254/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_254/while/NoOp*
T0*
_output_shapes
: 
lstm_254/while/Identity_4Identity%lstm_254/while/lstm_cell_68/mul_2:z:0^lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/while/Identity_5Identity%lstm_254/while/lstm_cell_68/add_1:z:0^lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_254/while/NoOpNoOp3^lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2^lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp4^lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_254_while_identity lstm_254/while/Identity:output:0"?
lstm_254_while_identity_1"lstm_254/while/Identity_1:output:0"?
lstm_254_while_identity_2"lstm_254/while/Identity_2:output:0"?
lstm_254_while_identity_3"lstm_254/while/Identity_3:output:0"?
lstm_254_while_identity_4"lstm_254/while/Identity_4:output:0"?
lstm_254_while_identity_5"lstm_254/while/Identity_5:output:0"T
'lstm_254_while_lstm_254_strided_slice_1)lstm_254_while_lstm_254_strided_slice_1_0"|
;lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0"~
<lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0"z
:lstm_254_while_lstm_cell_68_matmul_readvariableop_resource<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0"Ì
clstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensorelstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2f
1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp2j
3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_252_layer_call_fn_414280
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_411431|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
²

÷
lstm_254_while_cond_413740.
*lstm_254_while_lstm_254_while_loop_counter4
0lstm_254_while_lstm_254_while_maximum_iterations
lstm_254_while_placeholder 
lstm_254_while_placeholder_1 
lstm_254_while_placeholder_2 
lstm_254_while_placeholder_30
,lstm_254_while_less_lstm_254_strided_slice_1F
Blstm_254_while_lstm_254_while_cond_413740___redundant_placeholder0F
Blstm_254_while_lstm_254_while_cond_413740___redundant_placeholder1F
Blstm_254_while_lstm_254_while_cond_413740___redundant_placeholder2F
Blstm_254_while_lstm_254_while_cond_413740___redundant_placeholder3
lstm_254_while_identity

lstm_254/while/LessLesslstm_254_while_placeholder,lstm_254_while_less_lstm_254_strided_slice_1*
T0*
_output_shapes
: ]
lstm_254/while/IdentityIdentitylstm_254/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_254_while_identity lstm_254/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_252_layer_call_and_return_conditional_losses_411240

inputs&
lstm_cell_66_411158:	&
lstm_cell_66_411160:	d"
lstm_cell_66_411162:	
identity˘$lstm_cell_66/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_411158lstm_cell_66_411160lstm_cell_66_411162*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411157n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_411158lstm_cell_66_411160lstm_cell_66_411162*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411171*
condR
while_cond_411170*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş

(sequential_84_lstm_253_while_cond_410860J
Fsequential_84_lstm_253_while_sequential_84_lstm_253_while_loop_counterP
Lsequential_84_lstm_253_while_sequential_84_lstm_253_while_maximum_iterations,
(sequential_84_lstm_253_while_placeholder.
*sequential_84_lstm_253_while_placeholder_1.
*sequential_84_lstm_253_while_placeholder_2.
*sequential_84_lstm_253_while_placeholder_3L
Hsequential_84_lstm_253_while_less_sequential_84_lstm_253_strided_slice_1b
^sequential_84_lstm_253_while_sequential_84_lstm_253_while_cond_410860___redundant_placeholder0b
^sequential_84_lstm_253_while_sequential_84_lstm_253_while_cond_410860___redundant_placeholder1b
^sequential_84_lstm_253_while_sequential_84_lstm_253_while_cond_410860___redundant_placeholder2b
^sequential_84_lstm_253_while_sequential_84_lstm_253_while_cond_410860___redundant_placeholder3)
%sequential_84_lstm_253_while_identity
?
!sequential_84/lstm_253/while/LessLess(sequential_84_lstm_253_while_placeholderHsequential_84_lstm_253_while_less_sequential_84_lstm_253_strided_slice_1*
T0*
_output_shapes
: y
%sequential_84/lstm_253/while/IdentityIdentity%sequential_84/lstm_253/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_84_lstm_253_while_identity.sequential_84/lstm_253/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
˙7
Ê
while_body_415879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ç	
ġ
D__inference_dense_84_layer_call_and_return_conditional_losses_412607

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
J

D__inference_lstm_254_layer_call_and_return_conditional_losses_412805

inputs=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412721*
condR
while_cond_412720*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ħ

I__inference_sequential_84_layer_call_and_return_conditional_losses_414258

inputsG
4lstm_252_lstm_cell_66_matmul_readvariableop_resource:	I
6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource:	dD
5lstm_252_lstm_cell_66_biasadd_readvariableop_resource:	G
4lstm_253_lstm_cell_67_matmul_readvariableop_resource:	dÈI
6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈD
5lstm_253_lstm_cell_67_biasadd_readvariableop_resource:	ÈF
4lstm_254_lstm_cell_68_matmul_readvariableop_resource:2(H
6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource:
(C
5lstm_254_lstm_cell_68_biasadd_readvariableop_resource:(9
'dense_84_matmul_readvariableop_resource:
6
(dense_84_biasadd_readvariableop_resource:
identity˘dense_84/BiasAdd/ReadVariableOp˘dense_84/MatMul/ReadVariableOp˘,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp˘+lstm_252/lstm_cell_66/MatMul/ReadVariableOp˘-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp˘lstm_252/while˘,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp˘+lstm_253/lstm_cell_67/MatMul/ReadVariableOp˘-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp˘lstm_253/while˘,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp˘+lstm_254/lstm_cell_68/MatMul/ReadVariableOp˘-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp˘lstm_254/whileD
lstm_252/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_252/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_252/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_252/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_252/strided_sliceStridedSlicelstm_252/Shape:output:0%lstm_252/strided_slice/stack:output:0'lstm_252/strided_slice/stack_1:output:0'lstm_252/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_252/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_252/zeros/packedPacklstm_252/strided_slice:output:0 lstm_252/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_252/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_252/zerosFilllstm_252/zeros/packed:output:0lstm_252/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_252/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_252/zeros_1/packedPacklstm_252/strided_slice:output:0"lstm_252/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_252/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_252/zeros_1Fill lstm_252/zeros_1/packed:output:0lstm_252/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_252/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_252/transpose	Transposeinputs lstm_252/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_252/Shape_1Shapelstm_252/transpose:y:0*
T0*
_output_shapes
:h
lstm_252/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_252/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_252/strided_slice_1StridedSlicelstm_252/Shape_1:output:0'lstm_252/strided_slice_1/stack:output:0)lstm_252/strided_slice_1/stack_1:output:0)lstm_252/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_252/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_252/TensorArrayV2TensorListReserve-lstm_252/TensorArrayV2/element_shape:output:0!lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_252/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_252/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_252/transpose:y:0Glstm_252/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_252/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_252/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_252/strided_slice_2StridedSlicelstm_252/transpose:y:0'lstm_252/strided_slice_2/stack:output:0)lstm_252/strided_slice_2/stack_1:output:0)lstm_252/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_252/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp4lstm_252_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_252/lstm_cell_66/MatMulMatMul!lstm_252/strided_slice_2:output:03lstm_252/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_252/lstm_cell_66/MatMul_1MatMullstm_252/zeros:output:05lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_252/lstm_cell_66/addAddV2&lstm_252/lstm_cell_66/MatMul:product:0(lstm_252/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp5lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_252/lstm_cell_66/BiasAddBiasAddlstm_252/lstm_cell_66/add:z:04lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_252/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_252/lstm_cell_66/splitSplit.lstm_252/lstm_cell_66/split/split_dim:output:0&lstm_252/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_252/lstm_cell_66/SigmoidSigmoid$lstm_252/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/Sigmoid_1Sigmoid$lstm_252/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/mulMul#lstm_252/lstm_cell_66/Sigmoid_1:y:0lstm_252/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_252/lstm_cell_66/ReluRelu$lstm_252/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_252/lstm_cell_66/mul_1Mul!lstm_252/lstm_cell_66/Sigmoid:y:0(lstm_252/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/add_1AddV2lstm_252/lstm_cell_66/mul:z:0lstm_252/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/Sigmoid_2Sigmoid$lstm_252/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_252/lstm_cell_66/Relu_1Relulstm_252/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_252/lstm_cell_66/mul_2Mul#lstm_252/lstm_cell_66/Sigmoid_2:y:0*lstm_252/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_252/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_252/TensorArrayV2_1TensorListReserve/lstm_252/TensorArrayV2_1/element_shape:output:0!lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_252/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_252/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_252/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_252/whileWhile$lstm_252/while/loop_counter:output:0*lstm_252/while/maximum_iterations:output:0lstm_252/time:output:0!lstm_252/TensorArrayV2_1:handle:0lstm_252/zeros:output:0lstm_252/zeros_1:output:0!lstm_252/strided_slice_1:output:0@lstm_252/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_252_lstm_cell_66_matmul_readvariableop_resource6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource5lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_252_while_body_413890*&
condR
lstm_252_while_cond_413889*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_252/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_252/TensorArrayV2Stack/TensorListStackTensorListStacklstm_252/while:output:3Blstm_252/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_252/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_252/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_252/strided_slice_3StridedSlice4lstm_252/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_252/strided_slice_3/stack:output:0)lstm_252/strided_slice_3/stack_1:output:0)lstm_252/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_252/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_252/transpose_1	Transpose4lstm_252/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_252/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_252/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_253/ShapeShapelstm_252/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_253/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_253/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_253/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_253/strided_sliceStridedSlicelstm_253/Shape:output:0%lstm_253/strided_slice/stack:output:0'lstm_253/strided_slice/stack_1:output:0'lstm_253/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_253/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_253/zeros/packedPacklstm_253/strided_slice:output:0 lstm_253/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_253/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_253/zerosFilllstm_253/zeros/packed:output:0lstm_253/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_253/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_253/zeros_1/packedPacklstm_253/strided_slice:output:0"lstm_253/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_253/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_253/zeros_1Fill lstm_253/zeros_1/packed:output:0lstm_253/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_253/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_253/transpose	Transposelstm_252/transpose_1:y:0 lstm_253/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_253/Shape_1Shapelstm_253/transpose:y:0*
T0*
_output_shapes
:h
lstm_253/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_253/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_253/strided_slice_1StridedSlicelstm_253/Shape_1:output:0'lstm_253/strided_slice_1/stack:output:0)lstm_253/strided_slice_1/stack_1:output:0)lstm_253/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_253/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_253/TensorArrayV2TensorListReserve-lstm_253/TensorArrayV2/element_shape:output:0!lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_253/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_253/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_253/transpose:y:0Glstm_253/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_253/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_253/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_253/strided_slice_2StridedSlicelstm_253/transpose:y:0'lstm_253/strided_slice_2/stack:output:0)lstm_253/strided_slice_2/stack_1:output:0)lstm_253/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_253/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp4lstm_253_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_253/lstm_cell_67/MatMulMatMul!lstm_253/strided_slice_2:output:03lstm_253/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_253/lstm_cell_67/MatMul_1MatMullstm_253/zeros:output:05lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_253/lstm_cell_67/addAddV2&lstm_253/lstm_cell_67/MatMul:product:0(lstm_253/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp5lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_253/lstm_cell_67/BiasAddBiasAddlstm_253/lstm_cell_67/add:z:04lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_253/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_253/lstm_cell_67/splitSplit.lstm_253/lstm_cell_67/split/split_dim:output:0&lstm_253/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_253/lstm_cell_67/SigmoidSigmoid$lstm_253/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/Sigmoid_1Sigmoid$lstm_253/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/mulMul#lstm_253/lstm_cell_67/Sigmoid_1:y:0lstm_253/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_253/lstm_cell_67/ReluRelu$lstm_253/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_253/lstm_cell_67/mul_1Mul!lstm_253/lstm_cell_67/Sigmoid:y:0(lstm_253/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/add_1AddV2lstm_253/lstm_cell_67/mul:z:0lstm_253/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/Sigmoid_2Sigmoid$lstm_253/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_253/lstm_cell_67/Relu_1Relulstm_253/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_253/lstm_cell_67/mul_2Mul#lstm_253/lstm_cell_67/Sigmoid_2:y:0*lstm_253/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_253/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_253/TensorArrayV2_1TensorListReserve/lstm_253/TensorArrayV2_1/element_shape:output:0!lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_253/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_253/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_253/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_253/whileWhile$lstm_253/while/loop_counter:output:0*lstm_253/while/maximum_iterations:output:0lstm_253/time:output:0!lstm_253/TensorArrayV2_1:handle:0lstm_253/zeros:output:0lstm_253/zeros_1:output:0!lstm_253/strided_slice_1:output:0@lstm_253/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_253_lstm_cell_67_matmul_readvariableop_resource6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource5lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_253_while_body_414029*&
condR
lstm_253_while_cond_414028*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_253/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_253/TensorArrayV2Stack/TensorListStackTensorListStacklstm_253/while:output:3Blstm_253/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_253/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_253/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_253/strided_slice_3StridedSlice4lstm_253/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_253/strided_slice_3/stack:output:0)lstm_253/strided_slice_3/stack_1:output:0)lstm_253/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_253/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_253/transpose_1	Transpose4lstm_253/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_253/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_253/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_254/ShapeShapelstm_253/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_254/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_254/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_254/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_254/strided_sliceStridedSlicelstm_254/Shape:output:0%lstm_254/strided_slice/stack:output:0'lstm_254/strided_slice/stack_1:output:0'lstm_254/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_254/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_254/zeros/packedPacklstm_254/strided_slice:output:0 lstm_254/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_254/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_254/zerosFilllstm_254/zeros/packed:output:0lstm_254/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_254/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_254/zeros_1/packedPacklstm_254/strided_slice:output:0"lstm_254/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_254/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_254/zeros_1Fill lstm_254/zeros_1/packed:output:0lstm_254/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_254/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_254/transpose	Transposelstm_253/transpose_1:y:0 lstm_254/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_254/Shape_1Shapelstm_254/transpose:y:0*
T0*
_output_shapes
:h
lstm_254/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_254/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_254/strided_slice_1StridedSlicelstm_254/Shape_1:output:0'lstm_254/strided_slice_1/stack:output:0)lstm_254/strided_slice_1/stack_1:output:0)lstm_254/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_254/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_254/TensorArrayV2TensorListReserve-lstm_254/TensorArrayV2/element_shape:output:0!lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_254/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_254/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_254/transpose:y:0Glstm_254/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_254/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_254/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_254/strided_slice_2StridedSlicelstm_254/transpose:y:0'lstm_254/strided_slice_2/stack:output:0)lstm_254/strided_slice_2/stack_1:output:0)lstm_254/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_254/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp4lstm_254_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_254/lstm_cell_68/MatMulMatMul!lstm_254/strided_slice_2:output:03lstm_254/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_254/lstm_cell_68/MatMul_1MatMullstm_254/zeros:output:05lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_254/lstm_cell_68/addAddV2&lstm_254/lstm_cell_68/MatMul:product:0(lstm_254/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp5lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_254/lstm_cell_68/BiasAddBiasAddlstm_254/lstm_cell_68/add:z:04lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_254/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_254/lstm_cell_68/splitSplit.lstm_254/lstm_cell_68/split/split_dim:output:0&lstm_254/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_254/lstm_cell_68/SigmoidSigmoid$lstm_254/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/Sigmoid_1Sigmoid$lstm_254/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/mulMul#lstm_254/lstm_cell_68/Sigmoid_1:y:0lstm_254/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_254/lstm_cell_68/ReluRelu$lstm_254/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_254/lstm_cell_68/mul_1Mul!lstm_254/lstm_cell_68/Sigmoid:y:0(lstm_254/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/add_1AddV2lstm_254/lstm_cell_68/mul:z:0lstm_254/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/Sigmoid_2Sigmoid$lstm_254/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_254/lstm_cell_68/Relu_1Relulstm_254/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_254/lstm_cell_68/mul_2Mul#lstm_254/lstm_cell_68/Sigmoid_2:y:0*lstm_254/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_254/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_254/TensorArrayV2_1TensorListReserve/lstm_254/TensorArrayV2_1/element_shape:output:0!lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_254/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_254/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_254/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_254/whileWhile$lstm_254/while/loop_counter:output:0*lstm_254/while/maximum_iterations:output:0lstm_254/time:output:0!lstm_254/TensorArrayV2_1:handle:0lstm_254/zeros:output:0lstm_254/zeros_1:output:0!lstm_254/strided_slice_1:output:0@lstm_254/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_254_lstm_cell_68_matmul_readvariableop_resource6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource5lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_254_while_body_414168*&
condR
lstm_254_while_cond_414167*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_254/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_254/TensorArrayV2Stack/TensorListStackTensorListStacklstm_254/while:output:3Blstm_254/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_254/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_254/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_254/strided_slice_3StridedSlice4lstm_254/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_254/strided_slice_3/stack:output:0)lstm_254/strided_slice_3/stack_1:output:0)lstm_254/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_254/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_254/transpose_1	Transpose4lstm_254/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_254/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_254/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_84/MatMulMatMul!lstm_254/strided_slice_3:output:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp-^lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp,^lstm_252/lstm_cell_66/MatMul/ReadVariableOp.^lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_252/while-^lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp,^lstm_253/lstm_cell_67/MatMul/ReadVariableOp.^lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp^lstm_253/while-^lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp,^lstm_254/lstm_cell_68/MatMul/ReadVariableOp.^lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_254/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp2\
,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp2Z
+lstm_252/lstm_cell_66/MatMul/ReadVariableOp+lstm_252/lstm_cell_66/MatMul/ReadVariableOp2^
-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp2 
lstm_252/whilelstm_252/while2\
,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp2Z
+lstm_253/lstm_cell_67/MatMul/ReadVariableOp+lstm_253/lstm_cell_67/MatMul/ReadVariableOp2^
-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp2 
lstm_253/whilelstm_253/while2\
,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp2Z
+lstm_254/lstm_cell_68/MatMul/ReadVariableOp+lstm_254/lstm_cell_68/MatMul/ReadVariableOp2^
-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp2 
lstm_254/whilelstm_254/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
?
ó
I__inference_sequential_84_layer_call_and_return_conditional_losses_413285
lstm_252_input"
lstm_252_413258:	"
lstm_252_413260:	d
lstm_252_413262:	"
lstm_253_413265:	dÈ"
lstm_253_413267:	2È
lstm_253_413269:	È!
lstm_254_413272:2(!
lstm_254_413274:
(
lstm_254_413276:(!
dense_84_413279:

dense_84_413281:
identity˘ dense_84/StatefulPartitionedCall˘ lstm_252/StatefulPartitionedCall˘ lstm_253/StatefulPartitionedCall˘ lstm_254/StatefulPartitionedCall
 lstm_252/StatefulPartitionedCallStatefulPartitionedCalllstm_252_inputlstm_252_413258lstm_252_413260lstm_252_413262*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_412289Ş
 lstm_253/StatefulPartitionedCallStatefulPartitionedCall)lstm_252/StatefulPartitionedCall:output:0lstm_253_413265lstm_253_413267lstm_253_413269*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412439Ĥ
 lstm_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_253/StatefulPartitionedCall:output:0lstm_254_413272lstm_254_413274lstm_254_413276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412589
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)lstm_254/StatefulPartitionedCall:output:0dense_84_413279dense_84_413281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_412607x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_84/StatefulPartitionedCall!^lstm_252/StatefulPartitionedCall!^lstm_253/StatefulPartitionedCall!^lstm_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2D
 lstm_252/StatefulPartitionedCall lstm_252/StatefulPartitionedCall2D
 lstm_253/StatefulPartitionedCall lstm_253/StatefulPartitionedCall2D
 lstm_254/StatefulPartitionedCall lstm_254/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input
˙7
Ê
while_body_412721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
ş

(sequential_84_lstm_254_while_cond_410999J
Fsequential_84_lstm_254_while_sequential_84_lstm_254_while_loop_counterP
Lsequential_84_lstm_254_while_sequential_84_lstm_254_while_maximum_iterations,
(sequential_84_lstm_254_while_placeholder.
*sequential_84_lstm_254_while_placeholder_1.
*sequential_84_lstm_254_while_placeholder_2.
*sequential_84_lstm_254_while_placeholder_3L
Hsequential_84_lstm_254_while_less_sequential_84_lstm_254_strided_slice_1b
^sequential_84_lstm_254_while_sequential_84_lstm_254_while_cond_410999___redundant_placeholder0b
^sequential_84_lstm_254_while_sequential_84_lstm_254_while_cond_410999___redundant_placeholder1b
^sequential_84_lstm_254_while_sequential_84_lstm_254_while_cond_410999___redundant_placeholder2b
^sequential_84_lstm_254_while_sequential_84_lstm_254_while_cond_410999___redundant_placeholder3)
%sequential_84_lstm_254_while_identity
?
!sequential_84/lstm_254/while/LessLess(sequential_84_lstm_254_while_placeholderHsequential_84_lstm_254_while_less_sequential_84_lstm_254_strided_slice_1*
T0*
_output_shapes
: y
%sequential_84/lstm_254/while/IdentityIdentity%sequential_84/lstm_254/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_84_lstm_254_while_identity.sequential_84/lstm_254/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ÛB
?

lstm_252_while_body_413463.
*lstm_252_while_lstm_252_while_loop_counter4
0lstm_252_while_lstm_252_while_maximum_iterations
lstm_252_while_placeholder 
lstm_252_while_placeholder_1 
lstm_252_while_placeholder_2 
lstm_252_while_placeholder_3-
)lstm_252_while_lstm_252_strided_slice_1_0i
elstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0:	Q
>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dL
=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0:	
lstm_252_while_identity
lstm_252_while_identity_1
lstm_252_while_identity_2
lstm_252_while_identity_3
lstm_252_while_identity_4
lstm_252_while_identity_5+
'lstm_252_while_lstm_252_strided_slice_1g
clstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensorM
:lstm_252_while_lstm_cell_66_matmul_readvariableop_resource:	O
<lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource:	dJ
;lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource:	˘2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp˘1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp˘3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp
@lstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_252/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0lstm_252_while_placeholderIlstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_252/while/lstm_cell_66/MatMulMatMul9lstm_252/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_252/while/lstm_cell_66/MatMul_1MatMullstm_252_while_placeholder_2;lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_252/while/lstm_cell_66/addAddV2,lstm_252/while/lstm_cell_66/MatMul:product:0.lstm_252/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_252/while/lstm_cell_66/BiasAddBiasAdd#lstm_252/while/lstm_cell_66/add:z:0:lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_252/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_252/while/lstm_cell_66/splitSplit4lstm_252/while/lstm_cell_66/split/split_dim:output:0,lstm_252/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_252/while/lstm_cell_66/SigmoidSigmoid*lstm_252/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_252/while/lstm_cell_66/Sigmoid_1Sigmoid*lstm_252/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_252/while/lstm_cell_66/mulMul)lstm_252/while/lstm_cell_66/Sigmoid_1:y:0lstm_252_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_252/while/lstm_cell_66/ReluRelu*lstm_252/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_252/while/lstm_cell_66/mul_1Mul'lstm_252/while/lstm_cell_66/Sigmoid:y:0.lstm_252/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_252/while/lstm_cell_66/add_1AddV2#lstm_252/while/lstm_cell_66/mul:z:0%lstm_252/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_252/while/lstm_cell_66/Sigmoid_2Sigmoid*lstm_252/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_252/while/lstm_cell_66/Relu_1Relu%lstm_252/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_252/while/lstm_cell_66/mul_2Mul)lstm_252/while/lstm_cell_66/Sigmoid_2:y:00lstm_252/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_252/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_252_while_placeholder_1lstm_252_while_placeholder%lstm_252/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_252/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_252/while/addAddV2lstm_252_while_placeholderlstm_252/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_252/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_252/while/add_1AddV2*lstm_252_while_lstm_252_while_loop_counterlstm_252/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_252/while/IdentityIdentitylstm_252/while/add_1:z:0^lstm_252/while/NoOp*
T0*
_output_shapes
: 
lstm_252/while/Identity_1Identity0lstm_252_while_lstm_252_while_maximum_iterations^lstm_252/while/NoOp*
T0*
_output_shapes
: t
lstm_252/while/Identity_2Identitylstm_252/while/add:z:0^lstm_252/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_252/while/Identity_3IdentityClstm_252/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_252/while/NoOp*
T0*
_output_shapes
: 
lstm_252/while/Identity_4Identity%lstm_252/while/lstm_cell_66/mul_2:z:0^lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/while/Identity_5Identity%lstm_252/while/lstm_cell_66/add_1:z:0^lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_252/while/NoOpNoOp3^lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2^lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp4^lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_252_while_identity lstm_252/while/Identity:output:0"?
lstm_252_while_identity_1"lstm_252/while/Identity_1:output:0"?
lstm_252_while_identity_2"lstm_252/while/Identity_2:output:0"?
lstm_252_while_identity_3"lstm_252/while/Identity_3:output:0"?
lstm_252_while_identity_4"lstm_252/while/Identity_4:output:0"?
lstm_252_while_identity_5"lstm_252/while/Identity_5:output:0"T
'lstm_252_while_lstm_252_strided_slice_1)lstm_252_while_lstm_252_strided_slice_1_0"|
;lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0"~
<lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0"z
:lstm_252_while_lstm_cell_66_matmul_readvariableop_resource<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0"Ì
clstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensorelstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2f
1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp2j
3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ğ
¸
)__inference_lstm_252_layer_call_fn_414269
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_411240|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ÛB
?

lstm_252_while_body_413890.
*lstm_252_while_lstm_252_while_loop_counter4
0lstm_252_while_lstm_252_while_maximum_iterations
lstm_252_while_placeholder 
lstm_252_while_placeholder_1 
lstm_252_while_placeholder_2 
lstm_252_while_placeholder_3-
)lstm_252_while_lstm_252_strided_slice_1_0i
elstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0:	Q
>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dL
=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0:	
lstm_252_while_identity
lstm_252_while_identity_1
lstm_252_while_identity_2
lstm_252_while_identity_3
lstm_252_while_identity_4
lstm_252_while_identity_5+
'lstm_252_while_lstm_252_strided_slice_1g
clstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensorM
:lstm_252_while_lstm_cell_66_matmul_readvariableop_resource:	O
<lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource:	dJ
;lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource:	˘2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp˘1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp˘3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp
@lstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_252/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0lstm_252_while_placeholderIlstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_252/while/lstm_cell_66/MatMulMatMul9lstm_252/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_252/while/lstm_cell_66/MatMul_1MatMullstm_252_while_placeholder_2;lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_252/while/lstm_cell_66/addAddV2,lstm_252/while/lstm_cell_66/MatMul:product:0.lstm_252/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_252/while/lstm_cell_66/BiasAddBiasAdd#lstm_252/while/lstm_cell_66/add:z:0:lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_252/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_252/while/lstm_cell_66/splitSplit4lstm_252/while/lstm_cell_66/split/split_dim:output:0,lstm_252/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_252/while/lstm_cell_66/SigmoidSigmoid*lstm_252/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_252/while/lstm_cell_66/Sigmoid_1Sigmoid*lstm_252/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_252/while/lstm_cell_66/mulMul)lstm_252/while/lstm_cell_66/Sigmoid_1:y:0lstm_252_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_252/while/lstm_cell_66/ReluRelu*lstm_252/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_252/while/lstm_cell_66/mul_1Mul'lstm_252/while/lstm_cell_66/Sigmoid:y:0.lstm_252/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_252/while/lstm_cell_66/add_1AddV2#lstm_252/while/lstm_cell_66/mul:z:0%lstm_252/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_252/while/lstm_cell_66/Sigmoid_2Sigmoid*lstm_252/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_252/while/lstm_cell_66/Relu_1Relu%lstm_252/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_252/while/lstm_cell_66/mul_2Mul)lstm_252/while/lstm_cell_66/Sigmoid_2:y:00lstm_252/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_252/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_252_while_placeholder_1lstm_252_while_placeholder%lstm_252/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_252/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_252/while/addAddV2lstm_252_while_placeholderlstm_252/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_252/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_252/while/add_1AddV2*lstm_252_while_lstm_252_while_loop_counterlstm_252/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_252/while/IdentityIdentitylstm_252/while/add_1:z:0^lstm_252/while/NoOp*
T0*
_output_shapes
: 
lstm_252/while/Identity_1Identity0lstm_252_while_lstm_252_while_maximum_iterations^lstm_252/while/NoOp*
T0*
_output_shapes
: t
lstm_252/while/Identity_2Identitylstm_252/while/add:z:0^lstm_252/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_252/while/Identity_3IdentityClstm_252/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_252/while/NoOp*
T0*
_output_shapes
: 
lstm_252/while/Identity_4Identity%lstm_252/while/lstm_cell_66/mul_2:z:0^lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/while/Identity_5Identity%lstm_252/while/lstm_cell_66/add_1:z:0^lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_252/while/NoOpNoOp3^lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2^lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp4^lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_252_while_identity lstm_252/while/Identity:output:0"?
lstm_252_while_identity_1"lstm_252/while/Identity_1:output:0"?
lstm_252_while_identity_2"lstm_252/while/Identity_2:output:0"?
lstm_252_while_identity_3"lstm_252/while/Identity_3:output:0"?
lstm_252_while_identity_4"lstm_252/while/Identity_4:output:0"?
lstm_252_while_identity_5"lstm_252/while/Identity_5:output:0"T
'lstm_252_while_lstm_252_strided_slice_1)lstm_252_while_lstm_252_strided_slice_1_0"|
;lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource=lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0"~
<lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource>lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0"z
:lstm_252_while_lstm_cell_66_matmul_readvariableop_resource<lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0"Ì
clstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensorelstm_252_while_tensorarrayv2read_tensorlistgetitem_lstm_252_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2f
1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp1lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp2j
3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp3lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ë
ö
-__inference_lstm_cell_67_layer_call_fn_416240

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411507o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1

µ
)__inference_lstm_254_layer_call_fn_415512
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ç	
ġ
D__inference_dense_84_layer_call_and_return_conditional_losses_416125

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
ö
³
)__inference_lstm_254_layer_call_fn_415534

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412805o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_411361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411361___redundant_placeholder04
0while_while_cond_411361___redundant_placeholder14
0while_while_cond_411361___redundant_placeholder24
0while_while_cond_411361___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_252_layer_call_and_return_conditional_losses_414731

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414647*
condR
while_cond_414646*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_415593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ġ

H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411653

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates
ÔJ

D__inference_lstm_254_layer_call_and_return_conditional_losses_415677
inputs_0=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415593*
condR
while_cond_415592*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
è
ó
-__inference_lstm_cell_68_layer_call_fn_416355

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_412003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
è
ó
-__inference_lstm_cell_68_layer_call_fn_416338

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_411857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
Ë

H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_411857

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
µ
?
while_cond_412204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412204___redundant_placeholder04
0while_while_cond_412204___redundant_placeholder14
0while_while_cond_412204___redundant_placeholder24
0while_while_cond_412204___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ġ

H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411507

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates
8
?
while_body_415406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_253_layer_call_and_return_conditional_losses_411781

inputs&
lstm_cell_67_411699:	dÈ&
lstm_cell_67_411701:	2È"
lstm_cell_67_411703:	È
identity˘$lstm_cell_67/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_67_411699lstm_cell_67_411701lstm_cell_67_411703*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411653n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_67_411699lstm_cell_67_411701lstm_cell_67_411703*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411712*
condR
while_cond_411711*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_67/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_67/StatefulPartitionedCall$lstm_cell_67/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĉ"
?
while_body_411171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_66_411195_0:	.
while_lstm_cell_66_411197_0:	d*
while_lstm_cell_66_411199_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_66_411195:	,
while_lstm_cell_66_411197:	d(
while_lstm_cell_66_411199:	˘*while/lstm_cell_66/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_411195_0while_lstm_cell_66_411197_0while_lstm_cell_66_411199_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411157Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_66_411195while_lstm_cell_66_411195_0"8
while_lstm_cell_66_411197while_lstm_cell_66_411197_0"8
while_lstm_cell_66_411199while_lstm_cell_66_411199_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
?
ó
I__inference_sequential_84_layer_call_and_return_conditional_losses_413315
lstm_252_input"
lstm_252_413288:	"
lstm_252_413290:	d
lstm_252_413292:	"
lstm_253_413295:	dÈ"
lstm_253_413297:	2È
lstm_253_413299:	È!
lstm_254_413302:2(!
lstm_254_413304:
(
lstm_254_413306:(!
dense_84_413309:

dense_84_413311:
identity˘ dense_84/StatefulPartitionedCall˘ lstm_252/StatefulPartitionedCall˘ lstm_253/StatefulPartitionedCall˘ lstm_254/StatefulPartitionedCall
 lstm_252/StatefulPartitionedCallStatefulPartitionedCalllstm_252_inputlstm_252_413288lstm_252_413290lstm_252_413292*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_413135Ş
 lstm_253/StatefulPartitionedCallStatefulPartitionedCall)lstm_252/StatefulPartitionedCall:output:0lstm_253_413295lstm_253_413297lstm_253_413299*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412970Ĥ
 lstm_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_253/StatefulPartitionedCall:output:0lstm_254_413302lstm_254_413304lstm_254_413306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412805
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)lstm_254/StatefulPartitionedCall:output:0dense_84_413309dense_84_413311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_412607x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_84/StatefulPartitionedCall!^lstm_252/StatefulPartitionedCall!^lstm_253/StatefulPartitionedCall!^lstm_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2D
 lstm_252/StatefulPartitionedCall lstm_252/StatefulPartitionedCall2D
 lstm_253/StatefulPartitionedCall lstm_253/StatefulPartitionedCall2D
 lstm_254/StatefulPartitionedCall lstm_254/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input
¤J

D__inference_lstm_253_layer_call_and_return_conditional_losses_415490

inputs>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_415406*
condR
while_cond_415405*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411303

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
À


$__inference_signature_wrapper_413350
lstm_252_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCalllstm_252_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_411090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input
à"
Ŭ
while_body_412062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_68_412086_0:2(-
while_lstm_cell_68_412088_0:
()
while_lstm_cell_68_412090_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_68_412086:2(+
while_lstm_cell_68_412088:
('
while_lstm_cell_68_412090:(˘*while/lstm_cell_68/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_412086_0while_lstm_cell_68_412088_0while_lstm_cell_68_412090_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_412003Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_412086while_lstm_cell_68_412086_0"8
while_lstm_cell_68_412088while_lstm_cell_68_412088_0"8
while_lstm_cell_68_412090while_lstm_cell_68_412090_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ë

H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_412003

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
Ŭ

H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416289

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
˙µ
Á
!__inference__wrapped_model_411090
lstm_252_inputU
Bsequential_84_lstm_252_lstm_cell_66_matmul_readvariableop_resource:	W
Dsequential_84_lstm_252_lstm_cell_66_matmul_1_readvariableop_resource:	dR
Csequential_84_lstm_252_lstm_cell_66_biasadd_readvariableop_resource:	U
Bsequential_84_lstm_253_lstm_cell_67_matmul_readvariableop_resource:	dÈW
Dsequential_84_lstm_253_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈR
Csequential_84_lstm_253_lstm_cell_67_biasadd_readvariableop_resource:	ÈT
Bsequential_84_lstm_254_lstm_cell_68_matmul_readvariableop_resource:2(V
Dsequential_84_lstm_254_lstm_cell_68_matmul_1_readvariableop_resource:
(Q
Csequential_84_lstm_254_lstm_cell_68_biasadd_readvariableop_resource:(G
5sequential_84_dense_84_matmul_readvariableop_resource:
D
6sequential_84_dense_84_biasadd_readvariableop_resource:
identity˘-sequential_84/dense_84/BiasAdd/ReadVariableOp˘,sequential_84/dense_84/MatMul/ReadVariableOp˘:sequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp˘9sequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOp˘;sequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp˘sequential_84/lstm_252/while˘:sequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp˘9sequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOp˘;sequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp˘sequential_84/lstm_253/while˘:sequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp˘9sequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOp˘;sequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp˘sequential_84/lstm_254/whileZ
sequential_84/lstm_252/ShapeShapelstm_252_input*
T0*
_output_shapes
:t
*sequential_84/lstm_252/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_84/lstm_252/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_84/lstm_252/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_84/lstm_252/strided_sliceStridedSlice%sequential_84/lstm_252/Shape:output:03sequential_84/lstm_252/strided_slice/stack:output:05sequential_84/lstm_252/strided_slice/stack_1:output:05sequential_84/lstm_252/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_84/lstm_252/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_84/lstm_252/zeros/packedPack-sequential_84/lstm_252/strided_slice:output:0.sequential_84/lstm_252/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_84/lstm_252/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_84/lstm_252/zerosFill,sequential_84/lstm_252/zeros/packed:output:0+sequential_84/lstm_252/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_84/lstm_252/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_84/lstm_252/zeros_1/packedPack-sequential_84/lstm_252/strided_slice:output:00sequential_84/lstm_252/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_84/lstm_252/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_84/lstm_252/zeros_1Fill.sequential_84/lstm_252/zeros_1/packed:output:0-sequential_84/lstm_252/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_84/lstm_252/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_84/lstm_252/transpose	Transposelstm_252_input.sequential_84/lstm_252/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_84/lstm_252/Shape_1Shape$sequential_84/lstm_252/transpose:y:0*
T0*
_output_shapes
:v
,sequential_84/lstm_252/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_252/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_252/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_84/lstm_252/strided_slice_1StridedSlice'sequential_84/lstm_252/Shape_1:output:05sequential_84/lstm_252/strided_slice_1/stack:output:07sequential_84/lstm_252/strided_slice_1/stack_1:output:07sequential_84/lstm_252/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_84/lstm_252/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_84/lstm_252/TensorArrayV2TensorListReserve;sequential_84/lstm_252/TensorArrayV2/element_shape:output:0/sequential_84/lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_84/lstm_252/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_84/lstm_252/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_84/lstm_252/transpose:y:0Usequential_84/lstm_252/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_84/lstm_252/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_252/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_252/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_84/lstm_252/strided_slice_2StridedSlice$sequential_84/lstm_252/transpose:y:05sequential_84/lstm_252/strided_slice_2/stack:output:07sequential_84/lstm_252/strided_slice_2/stack_1:output:07sequential_84/lstm_252/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpBsequential_84_lstm_252_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_84/lstm_252/lstm_cell_66/MatMulMatMul/sequential_84/lstm_252/strided_slice_2:output:0Asequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpDsequential_84_lstm_252_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_84/lstm_252/lstm_cell_66/MatMul_1MatMul%sequential_84/lstm_252/zeros:output:0Csequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_84/lstm_252/lstm_cell_66/addAddV24sequential_84/lstm_252/lstm_cell_66/MatMul:product:06sequential_84/lstm_252/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpCsequential_84_lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_84/lstm_252/lstm_cell_66/BiasAddBiasAdd+sequential_84/lstm_252/lstm_cell_66/add:z:0Bsequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_84/lstm_252/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_84/lstm_252/lstm_cell_66/splitSplit<sequential_84/lstm_252/lstm_cell_66/split/split_dim:output:04sequential_84/lstm_252/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_84/lstm_252/lstm_cell_66/SigmoidSigmoid2sequential_84/lstm_252/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_84/lstm_252/lstm_cell_66/Sigmoid_1Sigmoid2sequential_84/lstm_252/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_84/lstm_252/lstm_cell_66/mulMul1sequential_84/lstm_252/lstm_cell_66/Sigmoid_1:y:0'sequential_84/lstm_252/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_84/lstm_252/lstm_cell_66/ReluRelu2sequential_84/lstm_252/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_84/lstm_252/lstm_cell_66/mul_1Mul/sequential_84/lstm_252/lstm_cell_66/Sigmoid:y:06sequential_84/lstm_252/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_84/lstm_252/lstm_cell_66/add_1AddV2+sequential_84/lstm_252/lstm_cell_66/mul:z:0-sequential_84/lstm_252/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_84/lstm_252/lstm_cell_66/Sigmoid_2Sigmoid2sequential_84/lstm_252/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_84/lstm_252/lstm_cell_66/Relu_1Relu-sequential_84/lstm_252/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_84/lstm_252/lstm_cell_66/mul_2Mul1sequential_84/lstm_252/lstm_cell_66/Sigmoid_2:y:08sequential_84/lstm_252/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_84/lstm_252/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_84/lstm_252/TensorArrayV2_1TensorListReserve=sequential_84/lstm_252/TensorArrayV2_1/element_shape:output:0/sequential_84/lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_84/lstm_252/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_84/lstm_252/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_84/lstm_252/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_84/lstm_252/whileWhile2sequential_84/lstm_252/while/loop_counter:output:08sequential_84/lstm_252/while/maximum_iterations:output:0$sequential_84/lstm_252/time:output:0/sequential_84/lstm_252/TensorArrayV2_1:handle:0%sequential_84/lstm_252/zeros:output:0'sequential_84/lstm_252/zeros_1:output:0/sequential_84/lstm_252/strided_slice_1:output:0Nsequential_84/lstm_252/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_84_lstm_252_lstm_cell_66_matmul_readvariableop_resourceDsequential_84_lstm_252_lstm_cell_66_matmul_1_readvariableop_resourceCsequential_84_lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_84_lstm_252_while_body_410722*4
cond,R*
(sequential_84_lstm_252_while_cond_410721*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_84/lstm_252/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_84/lstm_252/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_84/lstm_252/while:output:3Psequential_84/lstm_252/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_84/lstm_252/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_84/lstm_252/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_252/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_84/lstm_252/strided_slice_3StridedSliceBsequential_84/lstm_252/TensorArrayV2Stack/TensorListStack:tensor:05sequential_84/lstm_252/strided_slice_3/stack:output:07sequential_84/lstm_252/strided_slice_3/stack_1:output:07sequential_84/lstm_252/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_84/lstm_252/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_84/lstm_252/transpose_1	TransposeBsequential_84/lstm_252/TensorArrayV2Stack/TensorListStack:tensor:00sequential_84/lstm_252/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_84/lstm_252/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_84/lstm_253/ShapeShape&sequential_84/lstm_252/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_84/lstm_253/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_84/lstm_253/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_84/lstm_253/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_84/lstm_253/strided_sliceStridedSlice%sequential_84/lstm_253/Shape:output:03sequential_84/lstm_253/strided_slice/stack:output:05sequential_84/lstm_253/strided_slice/stack_1:output:05sequential_84/lstm_253/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_84/lstm_253/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_84/lstm_253/zeros/packedPack-sequential_84/lstm_253/strided_slice:output:0.sequential_84/lstm_253/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_84/lstm_253/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_84/lstm_253/zerosFill,sequential_84/lstm_253/zeros/packed:output:0+sequential_84/lstm_253/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_84/lstm_253/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_84/lstm_253/zeros_1/packedPack-sequential_84/lstm_253/strided_slice:output:00sequential_84/lstm_253/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_84/lstm_253/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_84/lstm_253/zeros_1Fill.sequential_84/lstm_253/zeros_1/packed:output:0-sequential_84/lstm_253/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_84/lstm_253/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_84/lstm_253/transpose	Transpose&sequential_84/lstm_252/transpose_1:y:0.sequential_84/lstm_253/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_84/lstm_253/Shape_1Shape$sequential_84/lstm_253/transpose:y:0*
T0*
_output_shapes
:v
,sequential_84/lstm_253/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_253/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_253/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_84/lstm_253/strided_slice_1StridedSlice'sequential_84/lstm_253/Shape_1:output:05sequential_84/lstm_253/strided_slice_1/stack:output:07sequential_84/lstm_253/strided_slice_1/stack_1:output:07sequential_84/lstm_253/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_84/lstm_253/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_84/lstm_253/TensorArrayV2TensorListReserve;sequential_84/lstm_253/TensorArrayV2/element_shape:output:0/sequential_84/lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_84/lstm_253/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_84/lstm_253/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_84/lstm_253/transpose:y:0Usequential_84/lstm_253/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_84/lstm_253/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_253/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_253/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_84/lstm_253/strided_slice_2StridedSlice$sequential_84/lstm_253/transpose:y:05sequential_84/lstm_253/strided_slice_2/stack:output:07sequential_84/lstm_253/strided_slice_2/stack_1:output:07sequential_84/lstm_253/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOpReadVariableOpBsequential_84_lstm_253_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_84/lstm_253/lstm_cell_67/MatMulMatMul/sequential_84/lstm_253/strided_slice_2:output:0Asequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOpDsequential_84_lstm_253_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_84/lstm_253/lstm_cell_67/MatMul_1MatMul%sequential_84/lstm_253/zeros:output:0Csequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_84/lstm_253/lstm_cell_67/addAddV24sequential_84/lstm_253/lstm_cell_67/MatMul:product:06sequential_84/lstm_253/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOpCsequential_84_lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_84/lstm_253/lstm_cell_67/BiasAddBiasAdd+sequential_84/lstm_253/lstm_cell_67/add:z:0Bsequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_84/lstm_253/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_84/lstm_253/lstm_cell_67/splitSplit<sequential_84/lstm_253/lstm_cell_67/split/split_dim:output:04sequential_84/lstm_253/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_84/lstm_253/lstm_cell_67/SigmoidSigmoid2sequential_84/lstm_253/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_84/lstm_253/lstm_cell_67/Sigmoid_1Sigmoid2sequential_84/lstm_253/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_84/lstm_253/lstm_cell_67/mulMul1sequential_84/lstm_253/lstm_cell_67/Sigmoid_1:y:0'sequential_84/lstm_253/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_84/lstm_253/lstm_cell_67/ReluRelu2sequential_84/lstm_253/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_84/lstm_253/lstm_cell_67/mul_1Mul/sequential_84/lstm_253/lstm_cell_67/Sigmoid:y:06sequential_84/lstm_253/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_84/lstm_253/lstm_cell_67/add_1AddV2+sequential_84/lstm_253/lstm_cell_67/mul:z:0-sequential_84/lstm_253/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_84/lstm_253/lstm_cell_67/Sigmoid_2Sigmoid2sequential_84/lstm_253/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_84/lstm_253/lstm_cell_67/Relu_1Relu-sequential_84/lstm_253/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_84/lstm_253/lstm_cell_67/mul_2Mul1sequential_84/lstm_253/lstm_cell_67/Sigmoid_2:y:08sequential_84/lstm_253/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_84/lstm_253/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_84/lstm_253/TensorArrayV2_1TensorListReserve=sequential_84/lstm_253/TensorArrayV2_1/element_shape:output:0/sequential_84/lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_84/lstm_253/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_84/lstm_253/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_84/lstm_253/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_84/lstm_253/whileWhile2sequential_84/lstm_253/while/loop_counter:output:08sequential_84/lstm_253/while/maximum_iterations:output:0$sequential_84/lstm_253/time:output:0/sequential_84/lstm_253/TensorArrayV2_1:handle:0%sequential_84/lstm_253/zeros:output:0'sequential_84/lstm_253/zeros_1:output:0/sequential_84/lstm_253/strided_slice_1:output:0Nsequential_84/lstm_253/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_84_lstm_253_lstm_cell_67_matmul_readvariableop_resourceDsequential_84_lstm_253_lstm_cell_67_matmul_1_readvariableop_resourceCsequential_84_lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_84_lstm_253_while_body_410861*4
cond,R*
(sequential_84_lstm_253_while_cond_410860*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_84/lstm_253/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_84/lstm_253/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_84/lstm_253/while:output:3Psequential_84/lstm_253/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_84/lstm_253/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_84/lstm_253/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_253/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_84/lstm_253/strided_slice_3StridedSliceBsequential_84/lstm_253/TensorArrayV2Stack/TensorListStack:tensor:05sequential_84/lstm_253/strided_slice_3/stack:output:07sequential_84/lstm_253/strided_slice_3/stack_1:output:07sequential_84/lstm_253/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_84/lstm_253/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_84/lstm_253/transpose_1	TransposeBsequential_84/lstm_253/TensorArrayV2Stack/TensorListStack:tensor:00sequential_84/lstm_253/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_84/lstm_253/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_84/lstm_254/ShapeShape&sequential_84/lstm_253/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_84/lstm_254/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_84/lstm_254/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_84/lstm_254/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_84/lstm_254/strided_sliceStridedSlice%sequential_84/lstm_254/Shape:output:03sequential_84/lstm_254/strided_slice/stack:output:05sequential_84/lstm_254/strided_slice/stack_1:output:05sequential_84/lstm_254/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_84/lstm_254/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_84/lstm_254/zeros/packedPack-sequential_84/lstm_254/strided_slice:output:0.sequential_84/lstm_254/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_84/lstm_254/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_84/lstm_254/zerosFill,sequential_84/lstm_254/zeros/packed:output:0+sequential_84/lstm_254/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_84/lstm_254/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_84/lstm_254/zeros_1/packedPack-sequential_84/lstm_254/strided_slice:output:00sequential_84/lstm_254/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_84/lstm_254/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_84/lstm_254/zeros_1Fill.sequential_84/lstm_254/zeros_1/packed:output:0-sequential_84/lstm_254/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_84/lstm_254/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_84/lstm_254/transpose	Transpose&sequential_84/lstm_253/transpose_1:y:0.sequential_84/lstm_254/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_84/lstm_254/Shape_1Shape$sequential_84/lstm_254/transpose:y:0*
T0*
_output_shapes
:v
,sequential_84/lstm_254/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_254/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_254/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_84/lstm_254/strided_slice_1StridedSlice'sequential_84/lstm_254/Shape_1:output:05sequential_84/lstm_254/strided_slice_1/stack:output:07sequential_84/lstm_254/strided_slice_1/stack_1:output:07sequential_84/lstm_254/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_84/lstm_254/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_84/lstm_254/TensorArrayV2TensorListReserve;sequential_84/lstm_254/TensorArrayV2/element_shape:output:0/sequential_84/lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_84/lstm_254/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_84/lstm_254/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_84/lstm_254/transpose:y:0Usequential_84/lstm_254/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_84/lstm_254/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_254/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_84/lstm_254/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_84/lstm_254/strided_slice_2StridedSlice$sequential_84/lstm_254/transpose:y:05sequential_84/lstm_254/strided_slice_2/stack:output:07sequential_84/lstm_254/strided_slice_2/stack_1:output:07sequential_84/lstm_254/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpBsequential_84_lstm_254_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_84/lstm_254/lstm_cell_68/MatMulMatMul/sequential_84/lstm_254/strided_slice_2:output:0Asequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpDsequential_84_lstm_254_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_84/lstm_254/lstm_cell_68/MatMul_1MatMul%sequential_84/lstm_254/zeros:output:0Csequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_84/lstm_254/lstm_cell_68/addAddV24sequential_84/lstm_254/lstm_cell_68/MatMul:product:06sequential_84/lstm_254/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpCsequential_84_lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_84/lstm_254/lstm_cell_68/BiasAddBiasAdd+sequential_84/lstm_254/lstm_cell_68/add:z:0Bsequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_84/lstm_254/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_84/lstm_254/lstm_cell_68/splitSplit<sequential_84/lstm_254/lstm_cell_68/split/split_dim:output:04sequential_84/lstm_254/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_84/lstm_254/lstm_cell_68/SigmoidSigmoid2sequential_84/lstm_254/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_84/lstm_254/lstm_cell_68/Sigmoid_1Sigmoid2sequential_84/lstm_254/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_84/lstm_254/lstm_cell_68/mulMul1sequential_84/lstm_254/lstm_cell_68/Sigmoid_1:y:0'sequential_84/lstm_254/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_84/lstm_254/lstm_cell_68/ReluRelu2sequential_84/lstm_254/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_84/lstm_254/lstm_cell_68/mul_1Mul/sequential_84/lstm_254/lstm_cell_68/Sigmoid:y:06sequential_84/lstm_254/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_84/lstm_254/lstm_cell_68/add_1AddV2+sequential_84/lstm_254/lstm_cell_68/mul:z:0-sequential_84/lstm_254/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_84/lstm_254/lstm_cell_68/Sigmoid_2Sigmoid2sequential_84/lstm_254/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_84/lstm_254/lstm_cell_68/Relu_1Relu-sequential_84/lstm_254/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_84/lstm_254/lstm_cell_68/mul_2Mul1sequential_84/lstm_254/lstm_cell_68/Sigmoid_2:y:08sequential_84/lstm_254/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_84/lstm_254/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_84/lstm_254/TensorArrayV2_1TensorListReserve=sequential_84/lstm_254/TensorArrayV2_1/element_shape:output:0/sequential_84/lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_84/lstm_254/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_84/lstm_254/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_84/lstm_254/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_84/lstm_254/whileWhile2sequential_84/lstm_254/while/loop_counter:output:08sequential_84/lstm_254/while/maximum_iterations:output:0$sequential_84/lstm_254/time:output:0/sequential_84/lstm_254/TensorArrayV2_1:handle:0%sequential_84/lstm_254/zeros:output:0'sequential_84/lstm_254/zeros_1:output:0/sequential_84/lstm_254/strided_slice_1:output:0Nsequential_84/lstm_254/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_84_lstm_254_lstm_cell_68_matmul_readvariableop_resourceDsequential_84_lstm_254_lstm_cell_68_matmul_1_readvariableop_resourceCsequential_84_lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_84_lstm_254_while_body_411000*4
cond,R*
(sequential_84_lstm_254_while_cond_410999*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_84/lstm_254/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_84/lstm_254/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_84/lstm_254/while:output:3Psequential_84/lstm_254/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_84/lstm_254/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_84/lstm_254/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_84/lstm_254/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_84/lstm_254/strided_slice_3StridedSliceBsequential_84/lstm_254/TensorArrayV2Stack/TensorListStack:tensor:05sequential_84/lstm_254/strided_slice_3/stack:output:07sequential_84/lstm_254/strided_slice_3/stack_1:output:07sequential_84/lstm_254/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_84/lstm_254/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_84/lstm_254/transpose_1	TransposeBsequential_84/lstm_254/TensorArrayV2Stack/TensorListStack:tensor:00sequential_84/lstm_254/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_84/lstm_254/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_84/dense_84/MatMul/ReadVariableOpReadVariableOp5sequential_84_dense_84_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_84/dense_84/MatMulMatMul/sequential_84/lstm_254/strided_slice_3:output:04sequential_84/dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_84/dense_84/BiasAdd/ReadVariableOpReadVariableOp6sequential_84_dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_84/dense_84/BiasAddBiasAdd'sequential_84/dense_84/MatMul:product:05sequential_84/dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_84/dense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_84/dense_84/BiasAdd/ReadVariableOp-^sequential_84/dense_84/MatMul/ReadVariableOp;^sequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp:^sequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOp<^sequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp^sequential_84/lstm_252/while;^sequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp:^sequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOp<^sequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp^sequential_84/lstm_253/while;^sequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp:^sequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOp<^sequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp^sequential_84/lstm_254/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_84/dense_84/BiasAdd/ReadVariableOp-sequential_84/dense_84/BiasAdd/ReadVariableOp2\
,sequential_84/dense_84/MatMul/ReadVariableOp,sequential_84/dense_84/MatMul/ReadVariableOp2x
:sequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp:sequential_84/lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp2v
9sequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOp9sequential_84/lstm_252/lstm_cell_66/MatMul/ReadVariableOp2z
;sequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp;sequential_84/lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp2<
sequential_84/lstm_252/whilesequential_84/lstm_252/while2x
:sequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp:sequential_84/lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp2v
9sequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOp9sequential_84/lstm_253/lstm_cell_67/MatMul/ReadVariableOp2z
;sequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp;sequential_84/lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp2<
sequential_84/lstm_253/whilesequential_84/lstm_253/while2x
:sequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp:sequential_84/lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp2v
9sequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOp9sequential_84/lstm_254/lstm_cell_68/MatMul/ReadVariableOp2z
;sequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp;sequential_84/lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp2<
sequential_84/lstm_254/whilesequential_84/lstm_254/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input

µ
)__inference_lstm_254_layer_call_fn_415501
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_411940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_252_layer_call_and_return_conditional_losses_414445
inputs_0>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414361*
condR
while_cond_414360*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Â

)__inference_dense_84_layer_call_fn_416115

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_412607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416191

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
Ú


.__inference_sequential_84_layer_call_fn_413377

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_84_layer_call_and_return_conditional_losses_412614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ò

˘
.__inference_sequential_84_layer_call_fn_413255
lstm_252_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_252_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_84_layer_call_and_return_conditional_losses_413203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_252_input
âJ

D__inference_lstm_252_layer_call_and_return_conditional_losses_414588
inputs_0>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414504*
condR
while_cond_414503*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_415262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415262___redundant_placeholder04
0while_while_cond_415262___redundant_placeholder14
0while_while_cond_415262___redundant_placeholder24
0while_while_cond_415262___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
Ŭ

H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416223

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
8
?
while_body_412355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_412061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412061___redundant_placeholder04
0while_while_cond_412061___redundant_placeholder14
0while_while_cond_412061___redundant_placeholder24
0while_while_cond_412061___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_413050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413050___redundant_placeholder04
0while_while_cond_413050___redundant_placeholder14
0while_while_cond_413050___redundant_placeholder24
0while_while_cond_413050___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8
?
while_body_415263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_252_while_cond_413889.
*lstm_252_while_lstm_252_while_loop_counter4
0lstm_252_while_lstm_252_while_maximum_iterations
lstm_252_while_placeholder 
lstm_252_while_placeholder_1 
lstm_252_while_placeholder_2 
lstm_252_while_placeholder_30
,lstm_252_while_less_lstm_252_strided_slice_1F
Blstm_252_while_lstm_252_while_cond_413889___redundant_placeholder0F
Blstm_252_while_lstm_252_while_cond_413889___redundant_placeholder1F
Blstm_252_while_lstm_252_while_cond_413889___redundant_placeholder2F
Blstm_252_while_lstm_252_while_cond_413889___redundant_placeholder3
lstm_252_while_identity

lstm_252/while/LessLesslstm_252_while_placeholder,lstm_252_while_less_lstm_252_strided_slice_1*
T0*
_output_shapes
: ]
lstm_252/while/IdentityIdentitylstm_252/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_252_while_identity lstm_252/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
²

÷
lstm_253_while_cond_413601.
*lstm_253_while_lstm_253_while_loop_counter4
0lstm_253_while_lstm_253_while_maximum_iterations
lstm_253_while_placeholder 
lstm_253_while_placeholder_1 
lstm_253_while_placeholder_2 
lstm_253_while_placeholder_30
,lstm_253_while_less_lstm_253_strided_slice_1F
Blstm_253_while_lstm_253_while_cond_413601___redundant_placeholder0F
Blstm_253_while_lstm_253_while_cond_413601___redundant_placeholder1F
Blstm_253_while_lstm_253_while_cond_413601___redundant_placeholder2F
Blstm_253_while_lstm_253_while_cond_413601___redundant_placeholder3
lstm_253_while_identity

lstm_253/while/LessLesslstm_253_while_placeholder,lstm_253_while_less_lstm_253_strided_slice_1*
T0*
_output_shapes
: ]
lstm_253/while/IdentityIdentitylstm_253/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_253_while_identity lstm_253/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
S
³
(sequential_84_lstm_253_while_body_410861J
Fsequential_84_lstm_253_while_sequential_84_lstm_253_while_loop_counterP
Lsequential_84_lstm_253_while_sequential_84_lstm_253_while_maximum_iterations,
(sequential_84_lstm_253_while_placeholder.
*sequential_84_lstm_253_while_placeholder_1.
*sequential_84_lstm_253_while_placeholder_2.
*sequential_84_lstm_253_while_placeholder_3I
Esequential_84_lstm_253_while_sequential_84_lstm_253_strided_slice_1_0
sequential_84_lstm_253_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_253_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_84_lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈ_
Lsequential_84_lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_84_lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0:	È)
%sequential_84_lstm_253_while_identity+
'sequential_84_lstm_253_while_identity_1+
'sequential_84_lstm_253_while_identity_2+
'sequential_84_lstm_253_while_identity_3+
'sequential_84_lstm_253_while_identity_4+
'sequential_84_lstm_253_while_identity_5G
Csequential_84_lstm_253_while_sequential_84_lstm_253_strided_slice_1
sequential_84_lstm_253_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_253_tensorarrayunstack_tensorlistfromtensor[
Hsequential_84_lstm_253_while_lstm_cell_67_matmul_readvariableop_resource:	dÈ]
Jsequential_84_lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈX
Isequential_84_lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource:	È˘@sequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp˘?sequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp˘Asequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp
Nsequential_84/lstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_84/lstm_253/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_84_lstm_253_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_253_tensorarrayunstack_tensorlistfromtensor_0(sequential_84_lstm_253_while_placeholderWsequential_84/lstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOpJsequential_84_lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_84/lstm_253/while/lstm_cell_67/MatMulMatMulGsequential_84/lstm_253/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOpLsequential_84_lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_84/lstm_253/while/lstm_cell_67/MatMul_1MatMul*sequential_84_lstm_253_while_placeholder_2Isequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_84/lstm_253/while/lstm_cell_67/addAddV2:sequential_84/lstm_253/while/lstm_cell_67/MatMul:product:0<sequential_84/lstm_253/while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOpKsequential_84_lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_84/lstm_253/while/lstm_cell_67/BiasAddBiasAdd1sequential_84/lstm_253/while/lstm_cell_67/add:z:0Hsequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_84/lstm_253/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_84/lstm_253/while/lstm_cell_67/splitSplitBsequential_84/lstm_253/while/lstm_cell_67/split/split_dim:output:0:sequential_84/lstm_253/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_84/lstm_253/while/lstm_cell_67/SigmoidSigmoid8sequential_84/lstm_253/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_84/lstm_253/while/lstm_cell_67/Sigmoid_1Sigmoid8sequential_84/lstm_253/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_84/lstm_253/while/lstm_cell_67/mulMul7sequential_84/lstm_253/while/lstm_cell_67/Sigmoid_1:y:0*sequential_84_lstm_253_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_84/lstm_253/while/lstm_cell_67/ReluRelu8sequential_84/lstm_253/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_84/lstm_253/while/lstm_cell_67/mul_1Mul5sequential_84/lstm_253/while/lstm_cell_67/Sigmoid:y:0<sequential_84/lstm_253/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_84/lstm_253/while/lstm_cell_67/add_1AddV21sequential_84/lstm_253/while/lstm_cell_67/mul:z:03sequential_84/lstm_253/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_84/lstm_253/while/lstm_cell_67/Sigmoid_2Sigmoid8sequential_84/lstm_253/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_84/lstm_253/while/lstm_cell_67/Relu_1Relu3sequential_84/lstm_253/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_84/lstm_253/while/lstm_cell_67/mul_2Mul7sequential_84/lstm_253/while/lstm_cell_67/Sigmoid_2:y:0>sequential_84/lstm_253/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_84/lstm_253/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_84_lstm_253_while_placeholder_1(sequential_84_lstm_253_while_placeholder3sequential_84/lstm_253/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_84/lstm_253/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_84/lstm_253/while/addAddV2(sequential_84_lstm_253_while_placeholder+sequential_84/lstm_253/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_84/lstm_253/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_84/lstm_253/while/add_1AddV2Fsequential_84_lstm_253_while_sequential_84_lstm_253_while_loop_counter-sequential_84/lstm_253/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_84/lstm_253/while/IdentityIdentity&sequential_84/lstm_253/while/add_1:z:0"^sequential_84/lstm_253/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_84/lstm_253/while/Identity_1IdentityLsequential_84_lstm_253_while_sequential_84_lstm_253_while_maximum_iterations"^sequential_84/lstm_253/while/NoOp*
T0*
_output_shapes
: 
'sequential_84/lstm_253/while/Identity_2Identity$sequential_84/lstm_253/while/add:z:0"^sequential_84/lstm_253/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_84/lstm_253/while/Identity_3IdentityQsequential_84/lstm_253/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_84/lstm_253/while/NoOp*
T0*
_output_shapes
: ?
'sequential_84/lstm_253/while/Identity_4Identity3sequential_84/lstm_253/while/lstm_cell_67/mul_2:z:0"^sequential_84/lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_84/lstm_253/while/Identity_5Identity3sequential_84/lstm_253/while/lstm_cell_67/add_1:z:0"^sequential_84/lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_84/lstm_253/while/NoOpNoOpA^sequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp@^sequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOpB^sequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_84_lstm_253_while_identity.sequential_84/lstm_253/while/Identity:output:0"[
'sequential_84_lstm_253_while_identity_10sequential_84/lstm_253/while/Identity_1:output:0"[
'sequential_84_lstm_253_while_identity_20sequential_84/lstm_253/while/Identity_2:output:0"[
'sequential_84_lstm_253_while_identity_30sequential_84/lstm_253/while/Identity_3:output:0"[
'sequential_84_lstm_253_while_identity_40sequential_84/lstm_253/while/Identity_4:output:0"[
'sequential_84_lstm_253_while_identity_50sequential_84/lstm_253/while/Identity_5:output:0"
Isequential_84_lstm_253_while_lstm_cell_67_biasadd_readvariableop_resourceKsequential_84_lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0"
Jsequential_84_lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resourceLsequential_84_lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0"
Hsequential_84_lstm_253_while_lstm_cell_67_matmul_readvariableop_resourceJsequential_84_lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0"
Csequential_84_lstm_253_while_sequential_84_lstm_253_strided_slice_1Esequential_84_lstm_253_while_sequential_84_lstm_253_strided_slice_1_0"
sequential_84_lstm_253_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_253_tensorarrayunstack_tensorlistfromtensorsequential_84_lstm_253_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_253_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp@sequential_84/lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2
?sequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp?sequential_84/lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp2
Asequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOpAsequential_84/lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_252_layer_call_and_return_conditional_losses_411431

inputs&
lstm_cell_66_411349:	&
lstm_cell_66_411351:	d"
lstm_cell_66_411353:	
identity˘$lstm_cell_66/StatefulPartitionedCall˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_411349lstm_cell_66_411351lstm_cell_66_411353*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411303n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_411349lstm_cell_66_411351lstm_cell_66_411353*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411362*
condR
while_cond_411361*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_415736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_414504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_415119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415119___redundant_placeholder04
0while_while_cond_415119___redundant_placeholder14
0while_while_cond_415119___redundant_placeholder24
0while_while_cond_415119___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_414976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414976___redundant_placeholder04
0while_while_cond_414976___redundant_placeholder14
0while_while_cond_414976___redundant_placeholder24
0while_while_cond_414976___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_254_layer_call_and_return_conditional_losses_412589

inputs=
+lstm_cell_68_matmul_readvariableop_resource:2(?
-lstm_cell_68_matmul_1_readvariableop_resource:
(:
,lstm_cell_68_biasadd_readvariableop_resource:(
identity˘#lstm_cell_68/BiasAdd/ReadVariableOp˘"lstm_cell_68/MatMul/ReadVariableOp˘$lstm_cell_68/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412505*
condR
while_cond_412504*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_415592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415592___redundant_placeholder04
0while_while_cond_415592___redundant_placeholder14
0while_while_cond_415592___redundant_placeholder24
0while_while_cond_415592___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ó

H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416419

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
ÛB
?

lstm_253_while_body_413602.
*lstm_253_while_lstm_253_while_loop_counter4
0lstm_253_while_lstm_253_while_maximum_iterations
lstm_253_while_placeholder 
lstm_253_while_placeholder_1 
lstm_253_while_placeholder_2 
lstm_253_while_placeholder_3-
)lstm_253_while_lstm_253_strided_slice_1_0i
elstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈQ
>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
lstm_253_while_identity
lstm_253_while_identity_1
lstm_253_while_identity_2
lstm_253_while_identity_3
lstm_253_while_identity_4
lstm_253_while_identity_5+
'lstm_253_while_lstm_253_strided_slice_1g
clstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensorM
:lstm_253_while_lstm_cell_67_matmul_readvariableop_resource:	dÈO
<lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈJ
;lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource:	È˘2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp˘1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp˘3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp
@lstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_253/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0lstm_253_while_placeholderIlstm_253/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_253/while/lstm_cell_67/MatMulMatMul9lstm_253/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_253/while/lstm_cell_67/MatMul_1MatMullstm_253_while_placeholder_2;lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_253/while/lstm_cell_67/addAddV2,lstm_253/while/lstm_cell_67/MatMul:product:0.lstm_253/while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_253/while/lstm_cell_67/BiasAddBiasAdd#lstm_253/while/lstm_cell_67/add:z:0:lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_253/while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_253/while/lstm_cell_67/splitSplit4lstm_253/while/lstm_cell_67/split/split_dim:output:0,lstm_253/while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_253/while/lstm_cell_67/SigmoidSigmoid*lstm_253/while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_253/while/lstm_cell_67/Sigmoid_1Sigmoid*lstm_253/while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_253/while/lstm_cell_67/mulMul)lstm_253/while/lstm_cell_67/Sigmoid_1:y:0lstm_253_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_253/while/lstm_cell_67/ReluRelu*lstm_253/while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_253/while/lstm_cell_67/mul_1Mul'lstm_253/while/lstm_cell_67/Sigmoid:y:0.lstm_253/while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_253/while/lstm_cell_67/add_1AddV2#lstm_253/while/lstm_cell_67/mul:z:0%lstm_253/while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_253/while/lstm_cell_67/Sigmoid_2Sigmoid*lstm_253/while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_253/while/lstm_cell_67/Relu_1Relu%lstm_253/while/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_253/while/lstm_cell_67/mul_2Mul)lstm_253/while/lstm_cell_67/Sigmoid_2:y:00lstm_253/while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_253/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_253_while_placeholder_1lstm_253_while_placeholder%lstm_253/while/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_253/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_253/while/addAddV2lstm_253_while_placeholderlstm_253/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_253/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_253/while/add_1AddV2*lstm_253_while_lstm_253_while_loop_counterlstm_253/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_253/while/IdentityIdentitylstm_253/while/add_1:z:0^lstm_253/while/NoOp*
T0*
_output_shapes
: 
lstm_253/while/Identity_1Identity0lstm_253_while_lstm_253_while_maximum_iterations^lstm_253/while/NoOp*
T0*
_output_shapes
: t
lstm_253/while/Identity_2Identitylstm_253/while/add:z:0^lstm_253/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_253/while/Identity_3IdentityClstm_253/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_253/while/NoOp*
T0*
_output_shapes
: 
lstm_253/while/Identity_4Identity%lstm_253/while/lstm_cell_67/mul_2:z:0^lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/while/Identity_5Identity%lstm_253/while/lstm_cell_67/add_1:z:0^lstm_253/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_253/while/NoOpNoOp3^lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2^lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp4^lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_253_while_identity lstm_253/while/Identity:output:0"?
lstm_253_while_identity_1"lstm_253/while/Identity_1:output:0"?
lstm_253_while_identity_2"lstm_253/while/Identity_2:output:0"?
lstm_253_while_identity_3"lstm_253/while/Identity_3:output:0"?
lstm_253_while_identity_4"lstm_253/while/Identity_4:output:0"?
lstm_253_while_identity_5"lstm_253/while/Identity_5:output:0"T
'lstm_253_while_lstm_253_strided_slice_1)lstm_253_while_lstm_253_strided_slice_1_0"|
;lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource=lstm_253_while_lstm_cell_67_biasadd_readvariableop_resource_0"~
<lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource>lstm_253_while_lstm_cell_67_matmul_1_readvariableop_resource_0"z
:lstm_253_while_lstm_cell_67_matmul_readvariableop_resource<lstm_253_while_lstm_cell_67_matmul_readvariableop_resource_0"Ì
clstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensorelstm_253_while_tensorarrayv2read_tensorlistgetitem_lstm_253_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2lstm_253/while/lstm_cell_67/BiasAdd/ReadVariableOp2f
1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp1lstm_253/while/lstm_cell_67/MatMul/ReadVariableOp2j
3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp3lstm_253/while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_252_while_cond_413462.
*lstm_252_while_lstm_252_while_loop_counter4
0lstm_252_while_lstm_252_while_maximum_iterations
lstm_252_while_placeholder 
lstm_252_while_placeholder_1 
lstm_252_while_placeholder_2 
lstm_252_while_placeholder_30
,lstm_252_while_less_lstm_252_strided_slice_1F
Blstm_252_while_lstm_252_while_cond_413462___redundant_placeholder0F
Blstm_252_while_lstm_252_while_cond_413462___redundant_placeholder1F
Blstm_252_while_lstm_252_while_cond_413462___redundant_placeholder2F
Blstm_252_while_lstm_252_while_cond_413462___redundant_placeholder3
lstm_252_while_identity

lstm_252/while/LessLesslstm_252_while_placeholder,lstm_252_while_less_lstm_252_strided_slice_1*
T0*
_output_shapes
: ]
lstm_252/while/IdentityIdentitylstm_252/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_252_while_identity lstm_252/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8
?
while_body_412205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
¤J

D__inference_lstm_252_layer_call_and_return_conditional_losses_412289

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412205*
condR
while_cond_412204*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_67_layer_call_fn_416257

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411653o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
µ
?
while_cond_411170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411170___redundant_placeholder04
0while_while_cond_411170___redundant_placeholder14
0while_while_cond_411170___redundant_placeholder24
0while_while_cond_411170___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
ş

(sequential_84_lstm_252_while_cond_410721J
Fsequential_84_lstm_252_while_sequential_84_lstm_252_while_loop_counterP
Lsequential_84_lstm_252_while_sequential_84_lstm_252_while_maximum_iterations,
(sequential_84_lstm_252_while_placeholder.
*sequential_84_lstm_252_while_placeholder_1.
*sequential_84_lstm_252_while_placeholder_2.
*sequential_84_lstm_252_while_placeholder_3L
Hsequential_84_lstm_252_while_less_sequential_84_lstm_252_strided_slice_1b
^sequential_84_lstm_252_while_sequential_84_lstm_252_while_cond_410721___redundant_placeholder0b
^sequential_84_lstm_252_while_sequential_84_lstm_252_while_cond_410721___redundant_placeholder1b
^sequential_84_lstm_252_while_sequential_84_lstm_252_while_cond_410721___redundant_placeholder2b
^sequential_84_lstm_252_while_sequential_84_lstm_252_while_cond_410721___redundant_placeholder3)
%sequential_84_lstm_252_while_identity
?
!sequential_84/lstm_252/while/LessLess(sequential_84_lstm_252_while_placeholderHsequential_84_lstm_252_while_less_sequential_84_lstm_252_strided_slice_1*
T0*
_output_shapes
: y
%sequential_84/lstm_252/while/IdentityIdentity%sequential_84/lstm_252/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_84_lstm_252_while_identity.sequential_84/lstm_252/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ú


.__inference_sequential_84_layer_call_fn_413404

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_84_layer_call_and_return_conditional_losses_413203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
S
³
(sequential_84_lstm_252_while_body_410722J
Fsequential_84_lstm_252_while_sequential_84_lstm_252_while_loop_counterP
Lsequential_84_lstm_252_while_sequential_84_lstm_252_while_maximum_iterations,
(sequential_84_lstm_252_while_placeholder.
*sequential_84_lstm_252_while_placeholder_1.
*sequential_84_lstm_252_while_placeholder_2.
*sequential_84_lstm_252_while_placeholder_3I
Esequential_84_lstm_252_while_sequential_84_lstm_252_strided_slice_1_0
sequential_84_lstm_252_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_252_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_84_lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0:	_
Lsequential_84_lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dZ
Ksequential_84_lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0:	)
%sequential_84_lstm_252_while_identity+
'sequential_84_lstm_252_while_identity_1+
'sequential_84_lstm_252_while_identity_2+
'sequential_84_lstm_252_while_identity_3+
'sequential_84_lstm_252_while_identity_4+
'sequential_84_lstm_252_while_identity_5G
Csequential_84_lstm_252_while_sequential_84_lstm_252_strided_slice_1
sequential_84_lstm_252_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_252_tensorarrayunstack_tensorlistfromtensor[
Hsequential_84_lstm_252_while_lstm_cell_66_matmul_readvariableop_resource:	]
Jsequential_84_lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource:	dX
Isequential_84_lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource:	˘@sequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp˘?sequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp˘Asequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp
Nsequential_84/lstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_84/lstm_252/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_84_lstm_252_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_252_tensorarrayunstack_tensorlistfromtensor_0(sequential_84_lstm_252_while_placeholderWsequential_84/lstm_252/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpJsequential_84_lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_84/lstm_252/while/lstm_cell_66/MatMulMatMulGsequential_84/lstm_252/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpLsequential_84_lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_84/lstm_252/while/lstm_cell_66/MatMul_1MatMul*sequential_84_lstm_252_while_placeholder_2Isequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_84/lstm_252/while/lstm_cell_66/addAddV2:sequential_84/lstm_252/while/lstm_cell_66/MatMul:product:0<sequential_84/lstm_252/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpKsequential_84_lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_84/lstm_252/while/lstm_cell_66/BiasAddBiasAdd1sequential_84/lstm_252/while/lstm_cell_66/add:z:0Hsequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_84/lstm_252/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_84/lstm_252/while/lstm_cell_66/splitSplitBsequential_84/lstm_252/while/lstm_cell_66/split/split_dim:output:0:sequential_84/lstm_252/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_84/lstm_252/while/lstm_cell_66/SigmoidSigmoid8sequential_84/lstm_252/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_84/lstm_252/while/lstm_cell_66/Sigmoid_1Sigmoid8sequential_84/lstm_252/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_84/lstm_252/while/lstm_cell_66/mulMul7sequential_84/lstm_252/while/lstm_cell_66/Sigmoid_1:y:0*sequential_84_lstm_252_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_84/lstm_252/while/lstm_cell_66/ReluRelu8sequential_84/lstm_252/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_84/lstm_252/while/lstm_cell_66/mul_1Mul5sequential_84/lstm_252/while/lstm_cell_66/Sigmoid:y:0<sequential_84/lstm_252/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_84/lstm_252/while/lstm_cell_66/add_1AddV21sequential_84/lstm_252/while/lstm_cell_66/mul:z:03sequential_84/lstm_252/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_84/lstm_252/while/lstm_cell_66/Sigmoid_2Sigmoid8sequential_84/lstm_252/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_84/lstm_252/while/lstm_cell_66/Relu_1Relu3sequential_84/lstm_252/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_84/lstm_252/while/lstm_cell_66/mul_2Mul7sequential_84/lstm_252/while/lstm_cell_66/Sigmoid_2:y:0>sequential_84/lstm_252/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_84/lstm_252/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_84_lstm_252_while_placeholder_1(sequential_84_lstm_252_while_placeholder3sequential_84/lstm_252/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_84/lstm_252/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_84/lstm_252/while/addAddV2(sequential_84_lstm_252_while_placeholder+sequential_84/lstm_252/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_84/lstm_252/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_84/lstm_252/while/add_1AddV2Fsequential_84_lstm_252_while_sequential_84_lstm_252_while_loop_counter-sequential_84/lstm_252/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_84/lstm_252/while/IdentityIdentity&sequential_84/lstm_252/while/add_1:z:0"^sequential_84/lstm_252/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_84/lstm_252/while/Identity_1IdentityLsequential_84_lstm_252_while_sequential_84_lstm_252_while_maximum_iterations"^sequential_84/lstm_252/while/NoOp*
T0*
_output_shapes
: 
'sequential_84/lstm_252/while/Identity_2Identity$sequential_84/lstm_252/while/add:z:0"^sequential_84/lstm_252/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_84/lstm_252/while/Identity_3IdentityQsequential_84/lstm_252/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_84/lstm_252/while/NoOp*
T0*
_output_shapes
: ?
'sequential_84/lstm_252/while/Identity_4Identity3sequential_84/lstm_252/while/lstm_cell_66/mul_2:z:0"^sequential_84/lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_84/lstm_252/while/Identity_5Identity3sequential_84/lstm_252/while/lstm_cell_66/add_1:z:0"^sequential_84/lstm_252/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_84/lstm_252/while/NoOpNoOpA^sequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp@^sequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOpB^sequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_84_lstm_252_while_identity.sequential_84/lstm_252/while/Identity:output:0"[
'sequential_84_lstm_252_while_identity_10sequential_84/lstm_252/while/Identity_1:output:0"[
'sequential_84_lstm_252_while_identity_20sequential_84/lstm_252/while/Identity_2:output:0"[
'sequential_84_lstm_252_while_identity_30sequential_84/lstm_252/while/Identity_3:output:0"[
'sequential_84_lstm_252_while_identity_40sequential_84/lstm_252/while/Identity_4:output:0"[
'sequential_84_lstm_252_while_identity_50sequential_84/lstm_252/while/Identity_5:output:0"
Isequential_84_lstm_252_while_lstm_cell_66_biasadd_readvariableop_resourceKsequential_84_lstm_252_while_lstm_cell_66_biasadd_readvariableop_resource_0"
Jsequential_84_lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resourceLsequential_84_lstm_252_while_lstm_cell_66_matmul_1_readvariableop_resource_0"
Hsequential_84_lstm_252_while_lstm_cell_66_matmul_readvariableop_resourceJsequential_84_lstm_252_while_lstm_cell_66_matmul_readvariableop_resource_0"
Csequential_84_lstm_252_while_sequential_84_lstm_252_strided_slice_1Esequential_84_lstm_252_while_sequential_84_lstm_252_strided_slice_1_0"
sequential_84_lstm_252_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_252_tensorarrayunstack_tensorlistfromtensorsequential_84_lstm_252_while_tensorarrayv2read_tensorlistgetitem_sequential_84_lstm_252_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp@sequential_84/lstm_252/while/lstm_cell_66/BiasAdd/ReadVariableOp2
?sequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp?sequential_84/lstm_252/while/lstm_cell_66/MatMul/ReadVariableOp2
Asequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOpAsequential_84/lstm_252/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
¤J

D__inference_lstm_252_layer_call_and_return_conditional_losses_413135

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_413051*
condR
while_cond_413050*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_414789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414789___redundant_placeholder04
0while_while_cond_414789___redundant_placeholder14
0while_while_cond_414789___redundant_placeholder24
0while_while_cond_414789___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_414503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414503___redundant_placeholder04
0while_while_cond_414503___redundant_placeholder14
0while_while_cond_414503___redundant_placeholder24
0while_while_cond_414503___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
ë
ö
-__inference_lstm_cell_66_layer_call_fn_416142

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_411157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
ħ

I__inference_sequential_84_layer_call_and_return_conditional_losses_413831

inputsG
4lstm_252_lstm_cell_66_matmul_readvariableop_resource:	I
6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource:	dD
5lstm_252_lstm_cell_66_biasadd_readvariableop_resource:	G
4lstm_253_lstm_cell_67_matmul_readvariableop_resource:	dÈI
6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈD
5lstm_253_lstm_cell_67_biasadd_readvariableop_resource:	ÈF
4lstm_254_lstm_cell_68_matmul_readvariableop_resource:2(H
6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource:
(C
5lstm_254_lstm_cell_68_biasadd_readvariableop_resource:(9
'dense_84_matmul_readvariableop_resource:
6
(dense_84_biasadd_readvariableop_resource:
identity˘dense_84/BiasAdd/ReadVariableOp˘dense_84/MatMul/ReadVariableOp˘,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp˘+lstm_252/lstm_cell_66/MatMul/ReadVariableOp˘-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp˘lstm_252/while˘,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp˘+lstm_253/lstm_cell_67/MatMul/ReadVariableOp˘-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp˘lstm_253/while˘,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp˘+lstm_254/lstm_cell_68/MatMul/ReadVariableOp˘-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp˘lstm_254/whileD
lstm_252/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_252/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_252/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_252/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_252/strided_sliceStridedSlicelstm_252/Shape:output:0%lstm_252/strided_slice/stack:output:0'lstm_252/strided_slice/stack_1:output:0'lstm_252/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_252/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_252/zeros/packedPacklstm_252/strided_slice:output:0 lstm_252/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_252/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_252/zerosFilllstm_252/zeros/packed:output:0lstm_252/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_252/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_252/zeros_1/packedPacklstm_252/strided_slice:output:0"lstm_252/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_252/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_252/zeros_1Fill lstm_252/zeros_1/packed:output:0lstm_252/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_252/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_252/transpose	Transposeinputs lstm_252/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_252/Shape_1Shapelstm_252/transpose:y:0*
T0*
_output_shapes
:h
lstm_252/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_252/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_252/strided_slice_1StridedSlicelstm_252/Shape_1:output:0'lstm_252/strided_slice_1/stack:output:0)lstm_252/strided_slice_1/stack_1:output:0)lstm_252/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_252/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_252/TensorArrayV2TensorListReserve-lstm_252/TensorArrayV2/element_shape:output:0!lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_252/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_252/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_252/transpose:y:0Glstm_252/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_252/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_252/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_252/strided_slice_2StridedSlicelstm_252/transpose:y:0'lstm_252/strided_slice_2/stack:output:0)lstm_252/strided_slice_2/stack_1:output:0)lstm_252/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_252/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp4lstm_252_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_252/lstm_cell_66/MatMulMatMul!lstm_252/strided_slice_2:output:03lstm_252/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_252/lstm_cell_66/MatMul_1MatMullstm_252/zeros:output:05lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_252/lstm_cell_66/addAddV2&lstm_252/lstm_cell_66/MatMul:product:0(lstm_252/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp5lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_252/lstm_cell_66/BiasAddBiasAddlstm_252/lstm_cell_66/add:z:04lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_252/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_252/lstm_cell_66/splitSplit.lstm_252/lstm_cell_66/split/split_dim:output:0&lstm_252/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_252/lstm_cell_66/SigmoidSigmoid$lstm_252/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/Sigmoid_1Sigmoid$lstm_252/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/mulMul#lstm_252/lstm_cell_66/Sigmoid_1:y:0lstm_252/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_252/lstm_cell_66/ReluRelu$lstm_252/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_252/lstm_cell_66/mul_1Mul!lstm_252/lstm_cell_66/Sigmoid:y:0(lstm_252/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/add_1AddV2lstm_252/lstm_cell_66/mul:z:0lstm_252/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_252/lstm_cell_66/Sigmoid_2Sigmoid$lstm_252/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_252/lstm_cell_66/Relu_1Relulstm_252/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_252/lstm_cell_66/mul_2Mul#lstm_252/lstm_cell_66/Sigmoid_2:y:0*lstm_252/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_252/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_252/TensorArrayV2_1TensorListReserve/lstm_252/TensorArrayV2_1/element_shape:output:0!lstm_252/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_252/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_252/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_252/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_252/whileWhile$lstm_252/while/loop_counter:output:0*lstm_252/while/maximum_iterations:output:0lstm_252/time:output:0!lstm_252/TensorArrayV2_1:handle:0lstm_252/zeros:output:0lstm_252/zeros_1:output:0!lstm_252/strided_slice_1:output:0@lstm_252/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_252_lstm_cell_66_matmul_readvariableop_resource6lstm_252_lstm_cell_66_matmul_1_readvariableop_resource5lstm_252_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_252_while_body_413463*&
condR
lstm_252_while_cond_413462*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_252/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_252/TensorArrayV2Stack/TensorListStackTensorListStacklstm_252/while:output:3Blstm_252/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_252/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_252/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_252/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_252/strided_slice_3StridedSlice4lstm_252/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_252/strided_slice_3/stack:output:0)lstm_252/strided_slice_3/stack_1:output:0)lstm_252/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_252/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_252/transpose_1	Transpose4lstm_252/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_252/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_252/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_253/ShapeShapelstm_252/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_253/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_253/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_253/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_253/strided_sliceStridedSlicelstm_253/Shape:output:0%lstm_253/strided_slice/stack:output:0'lstm_253/strided_slice/stack_1:output:0'lstm_253/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_253/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_253/zeros/packedPacklstm_253/strided_slice:output:0 lstm_253/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_253/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_253/zerosFilllstm_253/zeros/packed:output:0lstm_253/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_253/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_253/zeros_1/packedPacklstm_253/strided_slice:output:0"lstm_253/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_253/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_253/zeros_1Fill lstm_253/zeros_1/packed:output:0lstm_253/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_253/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_253/transpose	Transposelstm_252/transpose_1:y:0 lstm_253/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_253/Shape_1Shapelstm_253/transpose:y:0*
T0*
_output_shapes
:h
lstm_253/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_253/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_253/strided_slice_1StridedSlicelstm_253/Shape_1:output:0'lstm_253/strided_slice_1/stack:output:0)lstm_253/strided_slice_1/stack_1:output:0)lstm_253/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_253/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_253/TensorArrayV2TensorListReserve-lstm_253/TensorArrayV2/element_shape:output:0!lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_253/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_253/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_253/transpose:y:0Glstm_253/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_253/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_253/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_253/strided_slice_2StridedSlicelstm_253/transpose:y:0'lstm_253/strided_slice_2/stack:output:0)lstm_253/strided_slice_2/stack_1:output:0)lstm_253/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_253/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp4lstm_253_lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_253/lstm_cell_67/MatMulMatMul!lstm_253/strided_slice_2:output:03lstm_253/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_253/lstm_cell_67/MatMul_1MatMullstm_253/zeros:output:05lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_253/lstm_cell_67/addAddV2&lstm_253/lstm_cell_67/MatMul:product:0(lstm_253/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp5lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_253/lstm_cell_67/BiasAddBiasAddlstm_253/lstm_cell_67/add:z:04lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_253/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_253/lstm_cell_67/splitSplit.lstm_253/lstm_cell_67/split/split_dim:output:0&lstm_253/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_253/lstm_cell_67/SigmoidSigmoid$lstm_253/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/Sigmoid_1Sigmoid$lstm_253/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/mulMul#lstm_253/lstm_cell_67/Sigmoid_1:y:0lstm_253/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_253/lstm_cell_67/ReluRelu$lstm_253/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_253/lstm_cell_67/mul_1Mul!lstm_253/lstm_cell_67/Sigmoid:y:0(lstm_253/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/add_1AddV2lstm_253/lstm_cell_67/mul:z:0lstm_253/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_253/lstm_cell_67/Sigmoid_2Sigmoid$lstm_253/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_253/lstm_cell_67/Relu_1Relulstm_253/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_253/lstm_cell_67/mul_2Mul#lstm_253/lstm_cell_67/Sigmoid_2:y:0*lstm_253/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_253/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_253/TensorArrayV2_1TensorListReserve/lstm_253/TensorArrayV2_1/element_shape:output:0!lstm_253/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_253/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_253/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_253/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_253/whileWhile$lstm_253/while/loop_counter:output:0*lstm_253/while/maximum_iterations:output:0lstm_253/time:output:0!lstm_253/TensorArrayV2_1:handle:0lstm_253/zeros:output:0lstm_253/zeros_1:output:0!lstm_253/strided_slice_1:output:0@lstm_253/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_253_lstm_cell_67_matmul_readvariableop_resource6lstm_253_lstm_cell_67_matmul_1_readvariableop_resource5lstm_253_lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_253_while_body_413602*&
condR
lstm_253_while_cond_413601*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_253/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_253/TensorArrayV2Stack/TensorListStackTensorListStacklstm_253/while:output:3Blstm_253/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_253/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_253/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_253/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_253/strided_slice_3StridedSlice4lstm_253/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_253/strided_slice_3/stack:output:0)lstm_253/strided_slice_3/stack_1:output:0)lstm_253/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_253/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_253/transpose_1	Transpose4lstm_253/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_253/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_253/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_254/ShapeShapelstm_253/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_254/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_254/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_254/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_254/strided_sliceStridedSlicelstm_254/Shape:output:0%lstm_254/strided_slice/stack:output:0'lstm_254/strided_slice/stack_1:output:0'lstm_254/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_254/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_254/zeros/packedPacklstm_254/strided_slice:output:0 lstm_254/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_254/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_254/zerosFilllstm_254/zeros/packed:output:0lstm_254/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_254/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_254/zeros_1/packedPacklstm_254/strided_slice:output:0"lstm_254/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_254/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_254/zeros_1Fill lstm_254/zeros_1/packed:output:0lstm_254/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_254/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_254/transpose	Transposelstm_253/transpose_1:y:0 lstm_254/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_254/Shape_1Shapelstm_254/transpose:y:0*
T0*
_output_shapes
:h
lstm_254/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_254/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_254/strided_slice_1StridedSlicelstm_254/Shape_1:output:0'lstm_254/strided_slice_1/stack:output:0)lstm_254/strided_slice_1/stack_1:output:0)lstm_254/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_254/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_254/TensorArrayV2TensorListReserve-lstm_254/TensorArrayV2/element_shape:output:0!lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_254/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_254/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_254/transpose:y:0Glstm_254/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_254/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_254/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_254/strided_slice_2StridedSlicelstm_254/transpose:y:0'lstm_254/strided_slice_2/stack:output:0)lstm_254/strided_slice_2/stack_1:output:0)lstm_254/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_254/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp4lstm_254_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_254/lstm_cell_68/MatMulMatMul!lstm_254/strided_slice_2:output:03lstm_254/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_254/lstm_cell_68/MatMul_1MatMullstm_254/zeros:output:05lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_254/lstm_cell_68/addAddV2&lstm_254/lstm_cell_68/MatMul:product:0(lstm_254/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp5lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_254/lstm_cell_68/BiasAddBiasAddlstm_254/lstm_cell_68/add:z:04lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_254/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_254/lstm_cell_68/splitSplit.lstm_254/lstm_cell_68/split/split_dim:output:0&lstm_254/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_254/lstm_cell_68/SigmoidSigmoid$lstm_254/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/Sigmoid_1Sigmoid$lstm_254/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/mulMul#lstm_254/lstm_cell_68/Sigmoid_1:y:0lstm_254/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_254/lstm_cell_68/ReluRelu$lstm_254/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_254/lstm_cell_68/mul_1Mul!lstm_254/lstm_cell_68/Sigmoid:y:0(lstm_254/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/add_1AddV2lstm_254/lstm_cell_68/mul:z:0lstm_254/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/lstm_cell_68/Sigmoid_2Sigmoid$lstm_254/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_254/lstm_cell_68/Relu_1Relulstm_254/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_254/lstm_cell_68/mul_2Mul#lstm_254/lstm_cell_68/Sigmoid_2:y:0*lstm_254/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_254/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_254/TensorArrayV2_1TensorListReserve/lstm_254/TensorArrayV2_1/element_shape:output:0!lstm_254/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_254/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_254/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_254/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_254/whileWhile$lstm_254/while/loop_counter:output:0*lstm_254/while/maximum_iterations:output:0lstm_254/time:output:0!lstm_254/TensorArrayV2_1:handle:0lstm_254/zeros:output:0lstm_254/zeros_1:output:0!lstm_254/strided_slice_1:output:0@lstm_254/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_254_lstm_cell_68_matmul_readvariableop_resource6lstm_254_lstm_cell_68_matmul_1_readvariableop_resource5lstm_254_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_254_while_body_413741*&
condR
lstm_254_while_cond_413740*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_254/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_254/TensorArrayV2Stack/TensorListStackTensorListStacklstm_254/while:output:3Blstm_254/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_254/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_254/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_254/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_254/strided_slice_3StridedSlice4lstm_254/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_254/strided_slice_3/stack:output:0)lstm_254/strided_slice_3/stack_1:output:0)lstm_254/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_254/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_254/transpose_1	Transpose4lstm_254/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_254/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_254/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_84/MatMulMatMul!lstm_254/strided_slice_3:output:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp-^lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp,^lstm_252/lstm_cell_66/MatMul/ReadVariableOp.^lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_252/while-^lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp,^lstm_253/lstm_cell_67/MatMul/ReadVariableOp.^lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp^lstm_253/while-^lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp,^lstm_254/lstm_cell_68/MatMul/ReadVariableOp.^lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_254/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp2\
,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp,lstm_252/lstm_cell_66/BiasAdd/ReadVariableOp2Z
+lstm_252/lstm_cell_66/MatMul/ReadVariableOp+lstm_252/lstm_cell_66/MatMul/ReadVariableOp2^
-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp-lstm_252/lstm_cell_66/MatMul_1/ReadVariableOp2 
lstm_252/whilelstm_252/while2\
,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp,lstm_253/lstm_cell_67/BiasAdd/ReadVariableOp2Z
+lstm_253/lstm_cell_67/MatMul/ReadVariableOp+lstm_253/lstm_cell_67/MatMul/ReadVariableOp2^
-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp-lstm_253/lstm_cell_67/MatMul_1/ReadVariableOp2 
lstm_253/whilelstm_253/while2\
,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp,lstm_254/lstm_cell_68/BiasAdd/ReadVariableOp2Z
+lstm_254/lstm_cell_68/MatMul/ReadVariableOp+lstm_254/lstm_cell_68/MatMul/ReadVariableOp2^
-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp-lstm_254/lstm_cell_68/MatMul_1/ReadVariableOp2 
lstm_254/whilelstm_254/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
âJ

D__inference_lstm_253_layer_call_and_return_conditional_losses_415061
inputs_0>
+lstm_cell_67_matmul_readvariableop_resource:	dÈ@
-lstm_cell_67_matmul_1_readvariableop_resource:	2È;
,lstm_cell_67_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_67/BiasAdd/ReadVariableOp˘"lstm_cell_67/MatMul/ReadVariableOp˘$lstm_cell_67/MatMul_1/ReadVariableOp˘while=
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙2R
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
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_67/MatMul/ReadVariableOpReadVariableOp+lstm_cell_67_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_67/MatMulMatMulstrided_slice_2:output:0*lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_67_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_67/MatMul_1MatMulzeros:output:0,lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_67/addAddV2lstm_cell_67/MatMul:product:0lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_67_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_67/BiasAddBiasAddlstm_cell_67/add:z:0+lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_67/splitSplit%lstm_cell_67/split/split_dim:output:0lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_67/SigmoidSigmoidlstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_1Sigmoidlstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_67/mulMullstm_cell_67/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_67/ReluRelulstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_1Mullstm_cell_67/Sigmoid:y:0lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_67/add_1AddV2lstm_cell_67/mul:z:0lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_67/Sigmoid_2Sigmoidlstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_67/Relu_1Relulstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_67/mul_2Mullstm_cell_67/Sigmoid_2:y:0!lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_67_matmul_readvariableop_resource-lstm_cell_67_matmul_1_readvariableop_resource,lstm_cell_67_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414977*
condR
while_cond_414976*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_67/BiasAdd/ReadVariableOp#^lstm_cell_67/MatMul/ReadVariableOp%^lstm_cell_67/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_67/BiasAdd/ReadVariableOp#lstm_cell_67/BiasAdd/ReadVariableOp2H
"lstm_cell_67/MatMul/ReadVariableOp"lstm_cell_67/MatMul/ReadVariableOp2L
$lstm_cell_67/MatMul_1/ReadVariableOp$lstm_cell_67/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
áW

__inference__traced_save_416562
file_prefix.
*savev2_dense_84_kernel_read_readvariableop,
(savev2_dense_84_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_252_lstm_cell_252_kernel_read_readvariableopF
Bsavev2_lstm_252_lstm_cell_252_recurrent_kernel_read_readvariableop:
6savev2_lstm_252_lstm_cell_252_bias_read_readvariableop<
8savev2_lstm_253_lstm_cell_253_kernel_read_readvariableopF
Bsavev2_lstm_253_lstm_cell_253_recurrent_kernel_read_readvariableop:
6savev2_lstm_253_lstm_cell_253_bias_read_readvariableop<
8savev2_lstm_254_lstm_cell_254_kernel_read_readvariableopF
Bsavev2_lstm_254_lstm_cell_254_recurrent_kernel_read_readvariableop:
6savev2_lstm_254_lstm_cell_254_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_84_kernel_m_read_readvariableop3
/savev2_adam_dense_84_bias_m_read_readvariableopC
?savev2_adam_lstm_252_lstm_cell_252_kernel_m_read_readvariableopM
Isavev2_adam_lstm_252_lstm_cell_252_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_252_lstm_cell_252_bias_m_read_readvariableopC
?savev2_adam_lstm_253_lstm_cell_253_kernel_m_read_readvariableopM
Isavev2_adam_lstm_253_lstm_cell_253_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_253_lstm_cell_253_bias_m_read_readvariableopC
?savev2_adam_lstm_254_lstm_cell_254_kernel_m_read_readvariableopM
Isavev2_adam_lstm_254_lstm_cell_254_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_254_lstm_cell_254_bias_m_read_readvariableop5
1savev2_adam_dense_84_kernel_v_read_readvariableop3
/savev2_adam_dense_84_bias_v_read_readvariableopC
?savev2_adam_lstm_252_lstm_cell_252_kernel_v_read_readvariableopM
Isavev2_adam_lstm_252_lstm_cell_252_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_252_lstm_cell_252_bias_v_read_readvariableopC
?savev2_adam_lstm_253_lstm_cell_253_kernel_v_read_readvariableopM
Isavev2_adam_lstm_253_lstm_cell_253_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_253_lstm_cell_253_bias_v_read_readvariableopC
?savev2_adam_lstm_254_lstm_cell_254_kernel_v_read_readvariableopM
Isavev2_adam_lstm_254_lstm_cell_254_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_254_lstm_cell_254_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ċ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHż
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ê
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_84_kernel_read_readvariableop(savev2_dense_84_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_252_lstm_cell_252_kernel_read_readvariableopBsavev2_lstm_252_lstm_cell_252_recurrent_kernel_read_readvariableop6savev2_lstm_252_lstm_cell_252_bias_read_readvariableop8savev2_lstm_253_lstm_cell_253_kernel_read_readvariableopBsavev2_lstm_253_lstm_cell_253_recurrent_kernel_read_readvariableop6savev2_lstm_253_lstm_cell_253_bias_read_readvariableop8savev2_lstm_254_lstm_cell_254_kernel_read_readvariableopBsavev2_lstm_254_lstm_cell_254_recurrent_kernel_read_readvariableop6savev2_lstm_254_lstm_cell_254_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_84_kernel_m_read_readvariableop/savev2_adam_dense_84_bias_m_read_readvariableop?savev2_adam_lstm_252_lstm_cell_252_kernel_m_read_readvariableopIsavev2_adam_lstm_252_lstm_cell_252_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_252_lstm_cell_252_bias_m_read_readvariableop?savev2_adam_lstm_253_lstm_cell_253_kernel_m_read_readvariableopIsavev2_adam_lstm_253_lstm_cell_253_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_253_lstm_cell_253_bias_m_read_readvariableop?savev2_adam_lstm_254_lstm_cell_254_kernel_m_read_readvariableopIsavev2_adam_lstm_254_lstm_cell_254_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_254_lstm_cell_254_bias_m_read_readvariableop1savev2_adam_dense_84_kernel_v_read_readvariableop/savev2_adam_dense_84_bias_v_read_readvariableop?savev2_adam_lstm_252_lstm_cell_252_kernel_v_read_readvariableopIsavev2_adam_lstm_252_lstm_cell_252_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_252_lstm_cell_252_bias_v_read_readvariableop?savev2_adam_lstm_253_lstm_cell_253_kernel_v_read_readvariableopIsavev2_adam_lstm_253_lstm_cell_253_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_253_lstm_cell_253_bias_v_read_readvariableop?savev2_adam_lstm_254_lstm_cell_254_kernel_v_read_readvariableopIsavev2_adam_lstm_254_lstm_cell_254_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_254_lstm_cell_254_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Ó
_input_shapesÁ
?: :
:: : : : : :	:	d::	dÈ:	2È:È:2(:
(:(: : :
::	:	d::	dÈ:	2È:È:2(:
(:(:
::	:	d::	dÈ:	2È:È:2(:
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
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

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
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

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
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dÈ:%$!

_output_shapes
:	2È:!%

_output_shapes	
:È:$& 

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
µ
?
while_cond_415405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415405___redundant_placeholder04
0while_while_cond_415405___redundant_placeholder14
0while_while_cond_415405___redundant_placeholder24
0while_while_cond_415405___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
˙7
Ê
while_body_416022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_68_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_68_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_68_matmul_readvariableop_resource:2(E
3while_lstm_cell_68_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_68_biasadd_readvariableop_resource:(˘)while/lstm_cell_68/BiasAdd/ReadVariableOp˘(while/lstm_cell_68/MatMul/ReadVariableOp˘*while/lstm_cell_68/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_254_while_cond_414167.
*lstm_254_while_lstm_254_while_loop_counter4
0lstm_254_while_lstm_254_while_maximum_iterations
lstm_254_while_placeholder 
lstm_254_while_placeholder_1 
lstm_254_while_placeholder_2 
lstm_254_while_placeholder_30
,lstm_254_while_less_lstm_254_strided_slice_1F
Blstm_254_while_lstm_254_while_cond_414167___redundant_placeholder0F
Blstm_254_while_lstm_254_while_cond_414167___redundant_placeholder1F
Blstm_254_while_lstm_254_while_cond_414167___redundant_placeholder2F
Blstm_254_while_lstm_254_while_cond_414167___redundant_placeholder3
lstm_254_while_identity

lstm_254/while/LessLesslstm_254_while_placeholder,lstm_254_while_less_lstm_254_strided_slice_1*
T0*
_output_shapes
: ]
lstm_254/while/IdentityIdentitylstm_254/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_254_while_identity lstm_254/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
8
?
while_body_415120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_411870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411870___redundant_placeholder04
0while_while_cond_411870___redundant_placeholder14
0while_while_cond_411870___redundant_placeholder24
0while_while_cond_411870___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ÎB
ê

lstm_254_while_body_413741.
*lstm_254_while_lstm_254_while_loop_counter4
0lstm_254_while_lstm_254_while_maximum_iterations
lstm_254_while_placeholder 
lstm_254_while_placeholder_1 
lstm_254_while_placeholder_2 
lstm_254_while_placeholder_3-
)lstm_254_while_lstm_254_strided_slice_1_0i
elstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0:2(P
>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0:
(K
=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0:(
lstm_254_while_identity
lstm_254_while_identity_1
lstm_254_while_identity_2
lstm_254_while_identity_3
lstm_254_while_identity_4
lstm_254_while_identity_5+
'lstm_254_while_lstm_254_strided_slice_1g
clstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensorL
:lstm_254_while_lstm_cell_68_matmul_readvariableop_resource:2(N
<lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource:
(I
;lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource:(˘2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp˘1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp˘3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp
@lstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_254/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0lstm_254_while_placeholderIlstm_254/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_254/while/lstm_cell_68/MatMulMatMul9lstm_254/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_254/while/lstm_cell_68/MatMul_1MatMullstm_254_while_placeholder_2;lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_254/while/lstm_cell_68/addAddV2,lstm_254/while/lstm_cell_68/MatMul:product:0.lstm_254/while/lstm_cell_68/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_254/while/lstm_cell_68/BiasAddBiasAdd#lstm_254/while/lstm_cell_68/add:z:0:lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_254/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_254/while/lstm_cell_68/splitSplit4lstm_254/while/lstm_cell_68/split/split_dim:output:0,lstm_254/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_254/while/lstm_cell_68/SigmoidSigmoid*lstm_254/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_254/while/lstm_cell_68/Sigmoid_1Sigmoid*lstm_254/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_254/while/lstm_cell_68/mulMul)lstm_254/while/lstm_cell_68/Sigmoid_1:y:0lstm_254_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_254/while/lstm_cell_68/ReluRelu*lstm_254/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_254/while/lstm_cell_68/mul_1Mul'lstm_254/while/lstm_cell_68/Sigmoid:y:0.lstm_254/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_254/while/lstm_cell_68/add_1AddV2#lstm_254/while/lstm_cell_68/mul:z:0%lstm_254/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_254/while/lstm_cell_68/Sigmoid_2Sigmoid*lstm_254/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_254/while/lstm_cell_68/Relu_1Relu%lstm_254/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_254/while/lstm_cell_68/mul_2Mul)lstm_254/while/lstm_cell_68/Sigmoid_2:y:00lstm_254/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_254/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_254_while_placeholder_1lstm_254_while_placeholder%lstm_254/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_254/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_254/while/addAddV2lstm_254_while_placeholderlstm_254/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_254/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_254/while/add_1AddV2*lstm_254_while_lstm_254_while_loop_counterlstm_254/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_254/while/IdentityIdentitylstm_254/while/add_1:z:0^lstm_254/while/NoOp*
T0*
_output_shapes
: 
lstm_254/while/Identity_1Identity0lstm_254_while_lstm_254_while_maximum_iterations^lstm_254/while/NoOp*
T0*
_output_shapes
: t
lstm_254/while/Identity_2Identitylstm_254/while/add:z:0^lstm_254/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_254/while/Identity_3IdentityClstm_254/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_254/while/NoOp*
T0*
_output_shapes
: 
lstm_254/while/Identity_4Identity%lstm_254/while/lstm_cell_68/mul_2:z:0^lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_254/while/Identity_5Identity%lstm_254/while/lstm_cell_68/add_1:z:0^lstm_254/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_254/while/NoOpNoOp3^lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2^lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp4^lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_254_while_identity lstm_254/while/Identity:output:0"?
lstm_254_while_identity_1"lstm_254/while/Identity_1:output:0"?
lstm_254_while_identity_2"lstm_254/while/Identity_2:output:0"?
lstm_254_while_identity_3"lstm_254/while/Identity_3:output:0"?
lstm_254_while_identity_4"lstm_254/while/Identity_4:output:0"?
lstm_254_while_identity_5"lstm_254/while/Identity_5:output:0"T
'lstm_254_while_lstm_254_strided_slice_1)lstm_254_while_lstm_254_strided_slice_1_0"|
;lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource=lstm_254_while_lstm_cell_68_biasadd_readvariableop_resource_0"~
<lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource>lstm_254_while_lstm_cell_68_matmul_1_readvariableop_resource_0"z
:lstm_254_while_lstm_cell_68_matmul_readvariableop_resource<lstm_254_while_lstm_cell_68_matmul_readvariableop_resource_0"Ì
clstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensorelstm_254_while_tensorarrayv2read_tensorlistgetitem_lstm_254_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2lstm_254/while/lstm_cell_68/BiasAdd/ReadVariableOp2f
1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp1lstm_254/while/lstm_cell_68/MatMul/ReadVariableOp2j
3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp3lstm_254/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_412354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412354___redundant_placeholder04
0while_while_cond_412354___redundant_placeholder14
0while_while_cond_412354___redundant_placeholder24
0while_while_cond_412354___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_252_layer_call_and_return_conditional_losses_414874

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	@
-lstm_cell_66_matmul_1_readvariableop_resource:	d;
,lstm_cell_66_biasadd_readvariableop_resource:	
identity˘#lstm_cell_66/BiasAdd/ReadVariableOp˘"lstm_cell_66/MatMul/ReadVariableOp˘$lstm_cell_66/MatMul_1/ReadVariableOp˘while;
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
valueB:Ñ
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
:˙˙˙˙˙˙˙˙˙dR
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
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
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
valueB:Û
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414790*
condR
while_cond_414789*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_412720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412720___redundant_placeholder04
0while_while_cond_412720___redundant_placeholder14
0while_while_cond_412720___redundant_placeholder24
0while_while_cond_412720___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_415878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_415878___redundant_placeholder04
0while_while_cond_415878___redundant_placeholder14
0while_while_cond_415878___redundant_placeholder24
0while_while_cond_415878___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ĉ"
?
while_body_411712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_67_411736_0:	dÈ.
while_lstm_cell_67_411738_0:	2È*
while_lstm_cell_67_411740_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_67_411736:	dÈ,
while_lstm_cell_67_411738:	2È(
while_lstm_cell_67_411740:	È˘*while/lstm_cell_67/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_67/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_67_411736_0while_lstm_cell_67_411738_0while_lstm_cell_67_411740_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_411653Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_67/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_67/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_67/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_67_411736while_lstm_cell_67_411736_0"8
while_lstm_cell_67_411738while_lstm_cell_67_411738_0"8
while_lstm_cell_67_411740while_lstm_cell_67_411740_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_67/StatefulPartitionedCall*while/lstm_cell_67/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 

ĥ
)__inference_lstm_252_layer_call_fn_414291

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_412289s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_414360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414360___redundant_placeholder04
0while_while_cond_414360___redundant_placeholder14
0while_while_cond_414360___redundant_placeholder24
0while_while_cond_414360___redundant_placeholder3
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
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
8
?
while_body_414647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	H
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	F
3while_lstm_cell_66_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_66_biasadd_readvariableop_resource:	˘)while/lstm_cell_66/BiasAdd/ReadVariableOp˘(while/lstm_cell_66/MatMul/ReadVariableOp˘*while/lstm_cell_66/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_414977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_67_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_67_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_67_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_67_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_67_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_67_biasadd_readvariableop_resource:	È˘)while/lstm_cell_67/BiasAdd/ReadVariableOp˘(while/lstm_cell_67/MatMul/ReadVariableOp˘*while/lstm_cell_67/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_67/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_67_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_67/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_67/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_67_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_67/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_67/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_67/addAddV2#while/lstm_cell_67/MatMul:product:0%while/lstm_cell_67/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_67/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_67_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_67/BiasAddBiasAddwhile/lstm_cell_67/add:z:01while/lstm_cell_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_67/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_67/splitSplit+while/lstm_cell_67/split/split_dim:output:0#while/lstm_cell_67/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_67/SigmoidSigmoid!while/lstm_cell_67/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_1Sigmoid!while/lstm_cell_67/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mulMul while/lstm_cell_67/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_67/ReluRelu!while/lstm_cell_67/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_1Mulwhile/lstm_cell_67/Sigmoid:y:0%while/lstm_cell_67/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/add_1AddV2while/lstm_cell_67/mul:z:0while/lstm_cell_67/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_67/Sigmoid_2Sigmoid!while/lstm_cell_67/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_67/Relu_1Reluwhile/lstm_cell_67/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_67/mul_2Mul while/lstm_cell_67/Sigmoid_2:y:0'while/lstm_cell_67/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_67/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_67/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_67/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_67/BiasAdd/ReadVariableOp)^while/lstm_cell_67/MatMul/ReadVariableOp+^while/lstm_cell_67/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_67_biasadd_readvariableop_resource4while_lstm_cell_67_biasadd_readvariableop_resource_0"l
3while_lstm_cell_67_matmul_1_readvariableop_resource5while_lstm_cell_67_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_67_matmul_readvariableop_resource3while_lstm_cell_67_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_67/BiasAdd/ReadVariableOp)while/lstm_cell_67/BiasAdd/ReadVariableOp2T
(while/lstm_cell_67/MatMul/ReadVariableOp(while/lstm_cell_67/MatMul/ReadVariableOp2X
*while/lstm_cell_67/MatMul_1/ReadVariableOp*while/lstm_cell_67/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ŭ

H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416321

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
ö
³
)__inference_lstm_254_layer_call_fn_415523

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
à"
Ŭ
while_body_411871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_68_411895_0:2(-
while_lstm_cell_68_411897_0:
()
while_lstm_cell_68_411899_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_68_411895:2(+
while_lstm_cell_68_411897:
('
while_lstm_cell_68_411899:(˘*while/lstm_cell_68/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_411895_0while_lstm_cell_68_411897_0while_lstm_cell_68_411899_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_411857Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_411895while_lstm_cell_68_411895_0"8
while_lstm_cell_68_411897while_lstm_cell_68_411897_0"8
while_lstm_cell_68_411899while_lstm_cell_68_411899_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ğ
ë
I__inference_sequential_84_layer_call_and_return_conditional_losses_412614

inputs"
lstm_252_412290:	"
lstm_252_412292:	d
lstm_252_412294:	"
lstm_253_412440:	dÈ"
lstm_253_412442:	2È
lstm_253_412444:	È!
lstm_254_412590:2(!
lstm_254_412592:
(
lstm_254_412594:(!
dense_84_412608:

dense_84_412610:
identity˘ dense_84/StatefulPartitionedCall˘ lstm_252/StatefulPartitionedCall˘ lstm_253/StatefulPartitionedCall˘ lstm_254/StatefulPartitionedCall
 lstm_252/StatefulPartitionedCallStatefulPartitionedCallinputslstm_252_412290lstm_252_412292lstm_252_412294*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_252_layer_call_and_return_conditional_losses_412289Ş
 lstm_253/StatefulPartitionedCallStatefulPartitionedCall)lstm_252/StatefulPartitionedCall:output:0lstm_253_412440lstm_253_412442lstm_253_412444*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_253_layer_call_and_return_conditional_losses_412439Ĥ
 lstm_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_253/StatefulPartitionedCall:output:0lstm_254_412590lstm_254_412592lstm_254_412594*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_254_layer_call_and_return_conditional_losses_412589
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)lstm_254/StatefulPartitionedCall:output:0dense_84_412608dense_84_412610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_412607x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_84/StatefulPartitionedCall!^lstm_252/StatefulPartitionedCall!^lstm_253/StatefulPartitionedCall!^lstm_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2D
 lstm_252/StatefulPartitionedCall lstm_252/StatefulPartitionedCall2D
 lstm_253/StatefulPartitionedCall lstm_253/StatefulPartitionedCall2D
 lstm_254/StatefulPartitionedCall lstm_254/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_252_input;
 serving_default_lstm_252_input:0˙˙˙˙˙˙˙˙˙<
dense_840
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ŭ?
Ş
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
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
â

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
§
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
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
Î
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
ĵ

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_84/kernel
:2dense_84/bias
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
°
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2lstm_252/lstm_cell_252/kernel
::8	d2'lstm_252/lstm_cell_252/recurrent_kernel
*:(2lstm_252/lstm_cell_252/bias
0:.	dÈ2lstm_253/lstm_cell_253/kernel
::8	2È2'lstm_253/lstm_cell_253/recurrent_kernel
*:(È2lstm_253/lstm_cell_253/bias
/:-2(2lstm_254/lstm_cell_254/kernel
9:7
(2'lstm_254/lstm_cell_254/recurrent_kernel
):'(2lstm_254/lstm_cell_254/bias
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
°
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
°
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
°
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
&:$
2Adam/dense_84/kernel/m
 :2Adam/dense_84/bias/m
5:3	2$Adam/lstm_252/lstm_cell_252/kernel/m
?:=	d2.Adam/lstm_252/lstm_cell_252/recurrent_kernel/m
/:-2"Adam/lstm_252/lstm_cell_252/bias/m
5:3	dÈ2$Adam/lstm_253/lstm_cell_253/kernel/m
?:=	2È2.Adam/lstm_253/lstm_cell_253/recurrent_kernel/m
/:-È2"Adam/lstm_253/lstm_cell_253/bias/m
4:22(2$Adam/lstm_254/lstm_cell_254/kernel/m
>:<
(2.Adam/lstm_254/lstm_cell_254/recurrent_kernel/m
.:,(2"Adam/lstm_254/lstm_cell_254/bias/m
&:$
2Adam/dense_84/kernel/v
 :2Adam/dense_84/bias/v
5:3	2$Adam/lstm_252/lstm_cell_252/kernel/v
?:=	d2.Adam/lstm_252/lstm_cell_252/recurrent_kernel/v
/:-2"Adam/lstm_252/lstm_cell_252/bias/v
5:3	dÈ2$Adam/lstm_253/lstm_cell_253/kernel/v
?:=	2È2.Adam/lstm_253/lstm_cell_253/recurrent_kernel/v
/:-È2"Adam/lstm_253/lstm_cell_253/bias/v
4:22(2$Adam/lstm_254/lstm_cell_254/kernel/v
>:<
(2.Adam/lstm_254/lstm_cell_254/recurrent_kernel/v
.:,(2"Adam/lstm_254/lstm_cell_254/bias/v
2
.__inference_sequential_84_layer_call_fn_412639
.__inference_sequential_84_layer_call_fn_413377
.__inference_sequential_84_layer_call_fn_413404
.__inference_sequential_84_layer_call_fn_413255À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ò2ï
I__inference_sequential_84_layer_call_and_return_conditional_losses_413831
I__inference_sequential_84_layer_call_and_return_conditional_losses_414258
I__inference_sequential_84_layer_call_and_return_conditional_losses_413285
I__inference_sequential_84_layer_call_and_return_conditional_losses_413315À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ÓB?
!__inference__wrapped_model_411090lstm_252_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
)__inference_lstm_252_layer_call_fn_414269
)__inference_lstm_252_layer_call_fn_414280
)__inference_lstm_252_layer_call_fn_414291
)__inference_lstm_252_layer_call_fn_414302Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_252_layer_call_and_return_conditional_losses_414445
D__inference_lstm_252_layer_call_and_return_conditional_losses_414588
D__inference_lstm_252_layer_call_and_return_conditional_losses_414731
D__inference_lstm_252_layer_call_and_return_conditional_losses_414874Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_253_layer_call_fn_414885
)__inference_lstm_253_layer_call_fn_414896
)__inference_lstm_253_layer_call_fn_414907
)__inference_lstm_253_layer_call_fn_414918Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_253_layer_call_and_return_conditional_losses_415061
D__inference_lstm_253_layer_call_and_return_conditional_losses_415204
D__inference_lstm_253_layer_call_and_return_conditional_losses_415347
D__inference_lstm_253_layer_call_and_return_conditional_losses_415490Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_254_layer_call_fn_415501
)__inference_lstm_254_layer_call_fn_415512
)__inference_lstm_254_layer_call_fn_415523
)__inference_lstm_254_layer_call_fn_415534Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_254_layer_call_and_return_conditional_losses_415677
D__inference_lstm_254_layer_call_and_return_conditional_losses_415820
D__inference_lstm_254_layer_call_and_return_conditional_losses_415963
D__inference_lstm_254_layer_call_and_return_conditional_losses_416106Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ó2?
)__inference_dense_84_layer_call_fn_416115˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_84_layer_call_and_return_conditional_losses_416125˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÒBÏ
$__inference_signature_wrapper_413350lstm_252_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
˘2
-__inference_lstm_cell_66_layer_call_fn_416142
-__inference_lstm_cell_66_layer_call_fn_416159?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416191
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416223?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_67_layer_call_fn_416240
-__inference_lstm_cell_67_layer_call_fn_416257?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416289
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416321?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_68_layer_call_fn_416338
-__inference_lstm_cell_68_layer_call_fn_416355?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416387
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416419?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 ¤
!__inference__wrapped_model_411090-./012345!";˘8
1˘.
,)
lstm_252_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_84"
dense_84˙˙˙˙˙˙˙˙˙¤
D__inference_dense_84_layer_call_and_return_conditional_losses_416125\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_84_layer_call_fn_416115O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_252_layer_call_and_return_conditional_losses_414445-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 Ó
D__inference_lstm_252_layer_call_and_return_conditional_losses_414588-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_252_layer_call_and_return_conditional_losses_414731q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_252_layer_call_and_return_conditional_losses_414874q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 Ş
)__inference_lstm_252_layer_call_fn_414269}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dŞ
)__inference_lstm_252_layer_call_fn_414280}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
)__inference_lstm_252_layer_call_fn_414291d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_252_layer_call_fn_414302d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_253_layer_call_and_return_conditional_losses_415061012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 Ó
D__inference_lstm_253_layer_call_and_return_conditional_losses_415204012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_253_layer_call_and_return_conditional_losses_415347q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_253_layer_call_and_return_conditional_losses_415490q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 Ş
)__inference_lstm_253_layer_call_fn_414885}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2Ş
)__inference_lstm_253_layer_call_fn_414896}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
)__inference_lstm_253_layer_call_fn_414907d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_253_layer_call_fn_414918d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_254_layer_call_and_return_conditional_losses_415677}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ċ
D__inference_lstm_254_layer_call_and_return_conditional_losses_415820}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_254_layer_call_and_return_conditional_losses_415963m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_254_layer_call_and_return_conditional_losses_416106m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 
)__inference_lstm_254_layer_call_fn_415501p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_254_layer_call_fn_415512p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_254_layer_call_fn_415523`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_254_layer_call_fn_415534`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙
Ê
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416191ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 Ê
H__inference_lstm_cell_66_layer_call_and_return_conditional_losses_416223ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 
-__inference_lstm_cell_66_layer_call_fn_416142í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙d
-__inference_lstm_cell_66_layer_call_fn_416159í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙dÊ
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416289ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 Ê
H__inference_lstm_cell_67_layer_call_and_return_conditional_losses_416321ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 
-__inference_lstm_cell_67_layer_call_fn_416240í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2
-__inference_lstm_cell_67_layer_call_fn_416257í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2Ê
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416387ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 Ê
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_416419ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 
-__inference_lstm_cell_68_layer_call_fn_416338í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙

-__inference_lstm_cell_68_layer_call_fn_416355í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙
Ĉ
I__inference_sequential_84_layer_call_and_return_conditional_losses_413285y-./012345!"C˘@
9˘6
,)
lstm_252_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_84_layer_call_and_return_conditional_losses_413315y-./012345!"C˘@
9˘6
,)
lstm_252_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_84_layer_call_and_return_conditional_losses_413831q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_84_layer_call_and_return_conditional_losses_414258q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
.__inference_sequential_84_layer_call_fn_412639l-./012345!"C˘@
9˘6
,)
lstm_252_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_84_layer_call_fn_413255l-./012345!"C˘@
9˘6
,)
lstm_252_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_84_layer_call_fn_413377d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_84_layer_call_fn_413404d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_413350-./012345!"M˘J
˘ 
CŞ@
>
lstm_252_input,)
lstm_252_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_84"
dense_84˙˙˙˙˙˙˙˙˙