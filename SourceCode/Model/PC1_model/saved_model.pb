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
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:
*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
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
lstm_180/lstm_cell_180/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_180/lstm_cell_180/kernel

1lstm_180/lstm_cell_180/kernel/Read/ReadVariableOpReadVariableOplstm_180/lstm_cell_180/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_180/lstm_cell_180/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_180/lstm_cell_180/recurrent_kernel
¤
;lstm_180/lstm_cell_180/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_180/lstm_cell_180/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_180/lstm_cell_180/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_180/lstm_cell_180/bias

/lstm_180/lstm_cell_180/bias/Read/ReadVariableOpReadVariableOplstm_180/lstm_cell_180/bias*
_output_shapes	
:*
dtype0

lstm_181/lstm_cell_181/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_181/lstm_cell_181/kernel

1lstm_181/lstm_cell_181/kernel/Read/ReadVariableOpReadVariableOplstm_181/lstm_cell_181/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_181/lstm_cell_181/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_181/lstm_cell_181/recurrent_kernel
¤
;lstm_181/lstm_cell_181/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_181/lstm_cell_181/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_181/lstm_cell_181/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_181/lstm_cell_181/bias

/lstm_181/lstm_cell_181/bias/Read/ReadVariableOpReadVariableOplstm_181/lstm_cell_181/bias*
_output_shapes	
:È*
dtype0

lstm_182/lstm_cell_182/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_182/lstm_cell_182/kernel

1lstm_182/lstm_cell_182/kernel/Read/ReadVariableOpReadVariableOplstm_182/lstm_cell_182/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_182/lstm_cell_182/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_182/lstm_cell_182/recurrent_kernel
£
;lstm_182/lstm_cell_182/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_182/lstm_cell_182/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_182/lstm_cell_182/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_182/lstm_cell_182/bias

/lstm_182/lstm_cell_182/bias/Read/ReadVariableOpReadVariableOplstm_182/lstm_cell_182/bias*
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
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_60/kernel/m

*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_180/lstm_cell_180/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_180/lstm_cell_180/kernel/m

8Adam/lstm_180/lstm_cell_180/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_180/lstm_cell_180/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_180/lstm_cell_180/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_180/lstm_cell_180/recurrent_kernel/m
²
BAdam/lstm_180/lstm_cell_180/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_180/lstm_cell_180/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_180/lstm_cell_180/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_180/lstm_cell_180/bias/m

6Adam/lstm_180/lstm_cell_180/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_180/lstm_cell_180/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_181/lstm_cell_181/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_181/lstm_cell_181/kernel/m

8Adam/lstm_181/lstm_cell_181/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_181/lstm_cell_181/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_181/lstm_cell_181/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_181/lstm_cell_181/recurrent_kernel/m
²
BAdam/lstm_181/lstm_cell_181/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_181/lstm_cell_181/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_181/lstm_cell_181/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_181/lstm_cell_181/bias/m

6Adam/lstm_181/lstm_cell_181/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_181/lstm_cell_181/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_182/lstm_cell_182/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_182/lstm_cell_182/kernel/m

8Adam/lstm_182/lstm_cell_182/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_182/lstm_cell_182/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_182/lstm_cell_182/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_182/lstm_cell_182/recurrent_kernel/m
ħ
BAdam/lstm_182/lstm_cell_182/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_182/lstm_cell_182/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_182/lstm_cell_182/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_182/lstm_cell_182/bias/m

6Adam/lstm_182/lstm_cell_182/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_182/lstm_cell_182/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_60/kernel/v

*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_180/lstm_cell_180/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_180/lstm_cell_180/kernel/v

8Adam/lstm_180/lstm_cell_180/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_180/lstm_cell_180/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_180/lstm_cell_180/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_180/lstm_cell_180/recurrent_kernel/v
²
BAdam/lstm_180/lstm_cell_180/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_180/lstm_cell_180/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_180/lstm_cell_180/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_180/lstm_cell_180/bias/v

6Adam/lstm_180/lstm_cell_180/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_180/lstm_cell_180/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_181/lstm_cell_181/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_181/lstm_cell_181/kernel/v

8Adam/lstm_181/lstm_cell_181/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_181/lstm_cell_181/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_181/lstm_cell_181/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_181/lstm_cell_181/recurrent_kernel/v
²
BAdam/lstm_181/lstm_cell_181/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_181/lstm_cell_181/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_181/lstm_cell_181/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_181/lstm_cell_181/bias/v

6Adam/lstm_181/lstm_cell_181/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_181/lstm_cell_181/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_182/lstm_cell_182/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_182/lstm_cell_182/kernel/v

8Adam/lstm_182/lstm_cell_182/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_182/lstm_cell_182/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_182/lstm_cell_182/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_182/lstm_cell_182/recurrent_kernel/v
ħ
BAdam/lstm_182/lstm_cell_182/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_182/lstm_cell_182/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_182/lstm_cell_182/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_182/lstm_cell_182/bias/v

6Adam/lstm_182/lstm_cell_182/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_182/lstm_cell_182/bias/v*
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
VARIABLE_VALUEdense_60/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_180/lstm_cell_180/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_180/lstm_cell_180/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_180/lstm_cell_180/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_181/lstm_cell_181/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_181/lstm_cell_181/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_181/lstm_cell_181/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_182/lstm_cell_182/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_182/lstm_cell_182/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_182/lstm_cell_182/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_180/lstm_cell_180/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_180/lstm_cell_180/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_180/lstm_cell_180/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_181/lstm_cell_181/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_181/lstm_cell_181/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_181/lstm_cell_181/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_182/lstm_cell_182/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_182/lstm_cell_182/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_182/lstm_cell_182/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_180/lstm_cell_180/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_180/lstm_cell_180/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_180/lstm_cell_180/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_181/lstm_cell_181/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_181/lstm_cell_181/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_181/lstm_cell_181/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_182/lstm_cell_182/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_182/lstm_cell_182/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_182/lstm_cell_182/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_180_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_180_inputlstm_180/lstm_cell_180/kernel'lstm_180/lstm_cell_180/recurrent_kernellstm_180/lstm_cell_180/biaslstm_181/lstm_cell_181/kernel'lstm_181/lstm_cell_181/recurrent_kernellstm_181/lstm_cell_181/biaslstm_182/lstm_cell_182/kernel'lstm_182/lstm_cell_182/recurrent_kernellstm_182/lstm_cell_182/biasdense_60/kerneldense_60/bias*
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
$__inference_signature_wrapper_286981
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_180/lstm_cell_180/kernel/Read/ReadVariableOp;lstm_180/lstm_cell_180/recurrent_kernel/Read/ReadVariableOp/lstm_180/lstm_cell_180/bias/Read/ReadVariableOp1lstm_181/lstm_cell_181/kernel/Read/ReadVariableOp;lstm_181/lstm_cell_181/recurrent_kernel/Read/ReadVariableOp/lstm_181/lstm_cell_181/bias/Read/ReadVariableOp1lstm_182/lstm_cell_182/kernel/Read/ReadVariableOp;lstm_182/lstm_cell_182/recurrent_kernel/Read/ReadVariableOp/lstm_182/lstm_cell_182/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp8Adam/lstm_180/lstm_cell_180/kernel/m/Read/ReadVariableOpBAdam/lstm_180/lstm_cell_180/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_180/lstm_cell_180/bias/m/Read/ReadVariableOp8Adam/lstm_181/lstm_cell_181/kernel/m/Read/ReadVariableOpBAdam/lstm_181/lstm_cell_181/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_181/lstm_cell_181/bias/m/Read/ReadVariableOp8Adam/lstm_182/lstm_cell_182/kernel/m/Read/ReadVariableOpBAdam/lstm_182/lstm_cell_182/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_182/lstm_cell_182/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp8Adam/lstm_180/lstm_cell_180/kernel/v/Read/ReadVariableOpBAdam/lstm_180/lstm_cell_180/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_180/lstm_cell_180/bias/v/Read/ReadVariableOp8Adam/lstm_181/lstm_cell_181/kernel/v/Read/ReadVariableOpBAdam/lstm_181/lstm_cell_181/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_181/lstm_cell_181/bias/v/Read/ReadVariableOp8Adam/lstm_182/lstm_cell_182/kernel/v/Read/ReadVariableOpBAdam/lstm_182/lstm_cell_182/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_182/lstm_cell_182/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_290193

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_60/kerneldense_60/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_180/lstm_cell_180/kernel'lstm_180/lstm_cell_180/recurrent_kernellstm_180/lstm_cell_180/biaslstm_181/lstm_cell_181/kernel'lstm_181/lstm_cell_181/recurrent_kernellstm_181/lstm_cell_181/biaslstm_182/lstm_cell_182/kernel'lstm_182/lstm_cell_182/recurrent_kernellstm_182/lstm_cell_182/biastotalcountAdam/dense_60/kernel/mAdam/dense_60/bias/m$Adam/lstm_180/lstm_cell_180/kernel/m.Adam/lstm_180/lstm_cell_180/recurrent_kernel/m"Adam/lstm_180/lstm_cell_180/bias/m$Adam/lstm_181/lstm_cell_181/kernel/m.Adam/lstm_181/lstm_cell_181/recurrent_kernel/m"Adam/lstm_181/lstm_cell_181/bias/m$Adam/lstm_182/lstm_cell_182/kernel/m.Adam/lstm_182/lstm_cell_182/recurrent_kernel/m"Adam/lstm_182/lstm_cell_182/bias/mAdam/dense_60/kernel/vAdam/dense_60/bias/v$Adam/lstm_180/lstm_cell_180/kernel/v.Adam/lstm_180/lstm_cell_180/recurrent_kernel/v"Adam/lstm_180/lstm_cell_180/bias/v$Adam/lstm_181/lstm_cell_181/kernel/v.Adam/lstm_181/lstm_cell_181/recurrent_kernel/v"Adam/lstm_181/lstm_cell_181/bias/v$Adam/lstm_182/lstm_cell_182/kernel/v.Adam/lstm_182/lstm_cell_182/recurrent_kernel/v"Adam/lstm_182/lstm_cell_182/bias/v*4
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
"__inference__traced_restore_290323½Ó+
µ
?
while_cond_289509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289509___redundant_placeholder04
0while_while_cond_289509___redundant_placeholder14
0while_while_cond_289509___redundant_placeholder24
0while_while_cond_289509___redundant_placeholder3
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
J

D__inference_lstm_182_layer_call_and_return_conditional_losses_286436

inputs=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_286352*
condR
while_cond_286351*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
âJ

D__inference_lstm_181_layer_call_and_return_conditional_losses_288835
inputs_0>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_288751*
condR
while_cond_288750*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0

ĥ
)__inference_lstm_181_layer_call_fn_288549

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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286601s
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
ë
ö
-__inference_lstm_cell_46_layer_call_fn_289871

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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285138o
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
ë
ö
-__inference_lstm_cell_46_layer_call_fn_289888

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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285284o
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
˙7
Ê
while_body_289224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
À


$__inference_signature_wrapper_286981
lstm_180_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_180_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_284721o
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
_user_specified_namelstm_180_input
²

÷
lstm_180_while_cond_287520.
*lstm_180_while_lstm_180_while_loop_counter4
0lstm_180_while_lstm_180_while_maximum_iterations
lstm_180_while_placeholder 
lstm_180_while_placeholder_1 
lstm_180_while_placeholder_2 
lstm_180_while_placeholder_30
,lstm_180_while_less_lstm_180_strided_slice_1F
Blstm_180_while_lstm_180_while_cond_287520___redundant_placeholder0F
Blstm_180_while_lstm_180_while_cond_287520___redundant_placeholder1F
Blstm_180_while_lstm_180_while_cond_287520___redundant_placeholder2F
Blstm_180_while_lstm_180_while_cond_287520___redundant_placeholder3
lstm_180_while_identity

lstm_180/while/LessLesslstm_180_while_placeholder,lstm_180_while_less_lstm_180_strided_slice_1*
T0*
_output_shapes
: ]
lstm_180/while/IdentityIdentitylstm_180/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_180_while_identity lstm_180/while/Identity:output:0*(
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
while_body_286682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_181_layer_call_fn_288516
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_285221|
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
µ
?
while_cond_289366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289366___redundant_placeholder04
0while_while_cond_289366___redundant_placeholder14
0while_while_cond_289366___redundant_placeholder24
0while_while_cond_289366___redundant_placeholder3
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
8

D__inference_lstm_181_layer_call_and_return_conditional_losses_285412

inputs&
lstm_cell_46_285330:	dÈ&
lstm_cell_46_285332:	2È"
lstm_cell_46_285334:	È
identity˘$lstm_cell_46/StatefulPartitionedCall˘while;
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
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_285330lstm_cell_46_285332lstm_cell_46_285334*
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285284n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_285330lstm_cell_46_285332lstm_cell_46_285334*
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
while_body_285343*
condR
while_cond_285342*K
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
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ò

˘
.__inference_sequential_60_layer_call_fn_286270
lstm_180_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_180_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_60_layer_call_and_return_conditional_losses_286245o
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
_user_specified_namelstm_180_input
Ġ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285138

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
áW

__inference__traced_save_290193
file_prefix.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_180_lstm_cell_180_kernel_read_readvariableopF
Bsavev2_lstm_180_lstm_cell_180_recurrent_kernel_read_readvariableop:
6savev2_lstm_180_lstm_cell_180_bias_read_readvariableop<
8savev2_lstm_181_lstm_cell_181_kernel_read_readvariableopF
Bsavev2_lstm_181_lstm_cell_181_recurrent_kernel_read_readvariableop:
6savev2_lstm_181_lstm_cell_181_bias_read_readvariableop<
8savev2_lstm_182_lstm_cell_182_kernel_read_readvariableopF
Bsavev2_lstm_182_lstm_cell_182_recurrent_kernel_read_readvariableop:
6savev2_lstm_182_lstm_cell_182_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableopC
?savev2_adam_lstm_180_lstm_cell_180_kernel_m_read_readvariableopM
Isavev2_adam_lstm_180_lstm_cell_180_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_180_lstm_cell_180_bias_m_read_readvariableopC
?savev2_adam_lstm_181_lstm_cell_181_kernel_m_read_readvariableopM
Isavev2_adam_lstm_181_lstm_cell_181_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_181_lstm_cell_181_bias_m_read_readvariableopC
?savev2_adam_lstm_182_lstm_cell_182_kernel_m_read_readvariableopM
Isavev2_adam_lstm_182_lstm_cell_182_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_182_lstm_cell_182_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableopC
?savev2_adam_lstm_180_lstm_cell_180_kernel_v_read_readvariableopM
Isavev2_adam_lstm_180_lstm_cell_180_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_180_lstm_cell_180_bias_v_read_readvariableopC
?savev2_adam_lstm_181_lstm_cell_181_kernel_v_read_readvariableopM
Isavev2_adam_lstm_181_lstm_cell_181_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_181_lstm_cell_181_bias_v_read_readvariableopC
?savev2_adam_lstm_182_lstm_cell_182_kernel_v_read_readvariableopM
Isavev2_adam_lstm_182_lstm_cell_182_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_182_lstm_cell_182_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_180_lstm_cell_180_kernel_read_readvariableopBsavev2_lstm_180_lstm_cell_180_recurrent_kernel_read_readvariableop6savev2_lstm_180_lstm_cell_180_bias_read_readvariableop8savev2_lstm_181_lstm_cell_181_kernel_read_readvariableopBsavev2_lstm_181_lstm_cell_181_recurrent_kernel_read_readvariableop6savev2_lstm_181_lstm_cell_181_bias_read_readvariableop8savev2_lstm_182_lstm_cell_182_kernel_read_readvariableopBsavev2_lstm_182_lstm_cell_182_recurrent_kernel_read_readvariableop6savev2_lstm_182_lstm_cell_182_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop?savev2_adam_lstm_180_lstm_cell_180_kernel_m_read_readvariableopIsavev2_adam_lstm_180_lstm_cell_180_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_180_lstm_cell_180_bias_m_read_readvariableop?savev2_adam_lstm_181_lstm_cell_181_kernel_m_read_readvariableopIsavev2_adam_lstm_181_lstm_cell_181_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_181_lstm_cell_181_bias_m_read_readvariableop?savev2_adam_lstm_182_lstm_cell_182_kernel_m_read_readvariableopIsavev2_adam_lstm_182_lstm_cell_182_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_182_lstm_cell_182_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop?savev2_adam_lstm_180_lstm_cell_180_kernel_v_read_readvariableopIsavev2_adam_lstm_180_lstm_cell_180_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_180_lstm_cell_180_bias_v_read_readvariableop?savev2_adam_lstm_181_lstm_cell_181_kernel_v_read_readvariableopIsavev2_adam_lstm_181_lstm_cell_181_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_181_lstm_cell_181_bias_v_read_readvariableop?savev2_adam_lstm_182_lstm_cell_182_kernel_v_read_readvariableopIsavev2_adam_lstm_182_lstm_cell_182_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_182_lstm_cell_182_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¤J

D__inference_lstm_181_layer_call_and_return_conditional_losses_289121

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_289037*
condR
while_cond_289036*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

µ
)__inference_lstm_182_layer_call_fn_289143
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_285762o
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
J

D__inference_lstm_182_layer_call_and_return_conditional_losses_289737

inputs=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_289653*
condR
while_cond_289652*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_285501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285501___redundant_placeholder04
0while_while_cond_285501___redundant_placeholder14
0while_while_cond_285501___redundant_placeholder24
0while_while_cond_285501___redundant_placeholder3
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
è
ó
-__inference_lstm_cell_47_layer_call_fn_289986

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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285634o
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
J

D__inference_lstm_182_layer_call_and_return_conditional_losses_286220

inputs=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_286136*
condR
while_cond_286135*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_289036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289036___redundant_placeholder04
0while_while_cond_289036___redundant_placeholder14
0while_while_cond_289036___redundant_placeholder24
0while_while_cond_289036___redundant_placeholder3
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
while_cond_288420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288420___redundant_placeholder04
0while_while_cond_288420___redundant_placeholder14
0while_while_cond_288420___redundant_placeholder24
0while_while_cond_288420___redundant_placeholder3
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
S
­
(sequential_60_lstm_182_while_body_284631J
Fsequential_60_lstm_182_while_sequential_60_lstm_182_while_loop_counterP
Lsequential_60_lstm_182_while_sequential_60_lstm_182_while_maximum_iterations,
(sequential_60_lstm_182_while_placeholder.
*sequential_60_lstm_182_while_placeholder_1.
*sequential_60_lstm_182_while_placeholder_2.
*sequential_60_lstm_182_while_placeholder_3I
Esequential_60_lstm_182_while_sequential_60_lstm_182_strided_slice_1_0
sequential_60_lstm_182_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_182_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_60_lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0:2(^
Lsequential_60_lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(Y
Ksequential_60_lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0:()
%sequential_60_lstm_182_while_identity+
'sequential_60_lstm_182_while_identity_1+
'sequential_60_lstm_182_while_identity_2+
'sequential_60_lstm_182_while_identity_3+
'sequential_60_lstm_182_while_identity_4+
'sequential_60_lstm_182_while_identity_5G
Csequential_60_lstm_182_while_sequential_60_lstm_182_strided_slice_1
sequential_60_lstm_182_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_182_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_60_lstm_182_while_lstm_cell_47_matmul_readvariableop_resource:2(\
Jsequential_60_lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource:
(W
Isequential_60_lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource:(˘@sequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp˘?sequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp˘Asequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp
Nsequential_60/lstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_60/lstm_182/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_60_lstm_182_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_182_tensorarrayunstack_tensorlistfromtensor_0(sequential_60_lstm_182_while_placeholderWsequential_60/lstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpJsequential_60_lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_60/lstm_182/while/lstm_cell_47/MatMulMatMulGsequential_60/lstm_182/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpLsequential_60_lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_60/lstm_182/while/lstm_cell_47/MatMul_1MatMul*sequential_60_lstm_182_while_placeholder_2Isequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_60/lstm_182/while/lstm_cell_47/addAddV2:sequential_60/lstm_182/while/lstm_cell_47/MatMul:product:0<sequential_60/lstm_182/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpKsequential_60_lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_60/lstm_182/while/lstm_cell_47/BiasAddBiasAdd1sequential_60/lstm_182/while/lstm_cell_47/add:z:0Hsequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_60/lstm_182/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_60/lstm_182/while/lstm_cell_47/splitSplitBsequential_60/lstm_182/while/lstm_cell_47/split/split_dim:output:0:sequential_60/lstm_182/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_60/lstm_182/while/lstm_cell_47/SigmoidSigmoid8sequential_60/lstm_182/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_60/lstm_182/while/lstm_cell_47/Sigmoid_1Sigmoid8sequential_60/lstm_182/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_60/lstm_182/while/lstm_cell_47/mulMul7sequential_60/lstm_182/while/lstm_cell_47/Sigmoid_1:y:0*sequential_60_lstm_182_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_60/lstm_182/while/lstm_cell_47/ReluRelu8sequential_60/lstm_182/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_60/lstm_182/while/lstm_cell_47/mul_1Mul5sequential_60/lstm_182/while/lstm_cell_47/Sigmoid:y:0<sequential_60/lstm_182/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_60/lstm_182/while/lstm_cell_47/add_1AddV21sequential_60/lstm_182/while/lstm_cell_47/mul:z:03sequential_60/lstm_182/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_60/lstm_182/while/lstm_cell_47/Sigmoid_2Sigmoid8sequential_60/lstm_182/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_60/lstm_182/while/lstm_cell_47/Relu_1Relu3sequential_60/lstm_182/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_60/lstm_182/while/lstm_cell_47/mul_2Mul7sequential_60/lstm_182/while/lstm_cell_47/Sigmoid_2:y:0>sequential_60/lstm_182/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_60/lstm_182/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_60_lstm_182_while_placeholder_1(sequential_60_lstm_182_while_placeholder3sequential_60/lstm_182/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_60/lstm_182/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_60/lstm_182/while/addAddV2(sequential_60_lstm_182_while_placeholder+sequential_60/lstm_182/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_60/lstm_182/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_60/lstm_182/while/add_1AddV2Fsequential_60_lstm_182_while_sequential_60_lstm_182_while_loop_counter-sequential_60/lstm_182/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_60/lstm_182/while/IdentityIdentity&sequential_60/lstm_182/while/add_1:z:0"^sequential_60/lstm_182/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_60/lstm_182/while/Identity_1IdentityLsequential_60_lstm_182_while_sequential_60_lstm_182_while_maximum_iterations"^sequential_60/lstm_182/while/NoOp*
T0*
_output_shapes
: 
'sequential_60/lstm_182/while/Identity_2Identity$sequential_60/lstm_182/while/add:z:0"^sequential_60/lstm_182/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_60/lstm_182/while/Identity_3IdentityQsequential_60/lstm_182/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_60/lstm_182/while/NoOp*
T0*
_output_shapes
: ?
'sequential_60/lstm_182/while/Identity_4Identity3sequential_60/lstm_182/while/lstm_cell_47/mul_2:z:0"^sequential_60/lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_60/lstm_182/while/Identity_5Identity3sequential_60/lstm_182/while/lstm_cell_47/add_1:z:0"^sequential_60/lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_60/lstm_182/while/NoOpNoOpA^sequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp@^sequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOpB^sequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_60_lstm_182_while_identity.sequential_60/lstm_182/while/Identity:output:0"[
'sequential_60_lstm_182_while_identity_10sequential_60/lstm_182/while/Identity_1:output:0"[
'sequential_60_lstm_182_while_identity_20sequential_60/lstm_182/while/Identity_2:output:0"[
'sequential_60_lstm_182_while_identity_30sequential_60/lstm_182/while/Identity_3:output:0"[
'sequential_60_lstm_182_while_identity_40sequential_60/lstm_182/while/Identity_4:output:0"[
'sequential_60_lstm_182_while_identity_50sequential_60/lstm_182/while/Identity_5:output:0"
Isequential_60_lstm_182_while_lstm_cell_47_biasadd_readvariableop_resourceKsequential_60_lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0"
Jsequential_60_lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resourceLsequential_60_lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0"
Hsequential_60_lstm_182_while_lstm_cell_47_matmul_readvariableop_resourceJsequential_60_lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0"
Csequential_60_lstm_182_while_sequential_60_lstm_182_strided_slice_1Esequential_60_lstm_182_while_sequential_60_lstm_182_strided_slice_1_0"
sequential_60_lstm_182_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_182_tensorarrayunstack_tensorlistfromtensorsequential_60_lstm_182_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_182_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp@sequential_60/lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2
?sequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp?sequential_60/lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp2
Asequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOpAsequential_60/lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_285151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285151___redundant_placeholder04
0while_while_cond_285151___redundant_placeholder14
0while_while_cond_285151___redundant_placeholder24
0while_while_cond_285151___redundant_placeholder3
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

ĥ
)__inference_lstm_180_layer_call_fn_287922

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
D__inference_lstm_180_layer_call_and_return_conditional_losses_285920s
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
¤J

D__inference_lstm_181_layer_call_and_return_conditional_losses_286070

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_285986*
condR
while_cond_285985*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_286351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286351___redundant_placeholder04
0while_while_cond_286351___redundant_placeholder14
0while_while_cond_286351___redundant_placeholder24
0while_while_cond_286351___redundant_placeholder3
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

lstm_182_while_body_287372.
*lstm_182_while_lstm_182_while_loop_counter4
0lstm_182_while_lstm_182_while_maximum_iterations
lstm_182_while_placeholder 
lstm_182_while_placeholder_1 
lstm_182_while_placeholder_2 
lstm_182_while_placeholder_3-
)lstm_182_while_lstm_182_strided_slice_1_0i
elstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0:2(P
>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(K
=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0:(
lstm_182_while_identity
lstm_182_while_identity_1
lstm_182_while_identity_2
lstm_182_while_identity_3
lstm_182_while_identity_4
lstm_182_while_identity_5+
'lstm_182_while_lstm_182_strided_slice_1g
clstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensorL
:lstm_182_while_lstm_cell_47_matmul_readvariableop_resource:2(N
<lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource:
(I
;lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource:(˘2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp˘1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp˘3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp
@lstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_182/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0lstm_182_while_placeholderIlstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_182/while/lstm_cell_47/MatMulMatMul9lstm_182/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_182/while/lstm_cell_47/MatMul_1MatMullstm_182_while_placeholder_2;lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_182/while/lstm_cell_47/addAddV2,lstm_182/while/lstm_cell_47/MatMul:product:0.lstm_182/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_182/while/lstm_cell_47/BiasAddBiasAdd#lstm_182/while/lstm_cell_47/add:z:0:lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_182/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_182/while/lstm_cell_47/splitSplit4lstm_182/while/lstm_cell_47/split/split_dim:output:0,lstm_182/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_182/while/lstm_cell_47/SigmoidSigmoid*lstm_182/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_182/while/lstm_cell_47/Sigmoid_1Sigmoid*lstm_182/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_182/while/lstm_cell_47/mulMul)lstm_182/while/lstm_cell_47/Sigmoid_1:y:0lstm_182_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_182/while/lstm_cell_47/ReluRelu*lstm_182/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_182/while/lstm_cell_47/mul_1Mul'lstm_182/while/lstm_cell_47/Sigmoid:y:0.lstm_182/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_182/while/lstm_cell_47/add_1AddV2#lstm_182/while/lstm_cell_47/mul:z:0%lstm_182/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_182/while/lstm_cell_47/Sigmoid_2Sigmoid*lstm_182/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_182/while/lstm_cell_47/Relu_1Relu%lstm_182/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_182/while/lstm_cell_47/mul_2Mul)lstm_182/while/lstm_cell_47/Sigmoid_2:y:00lstm_182/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_182/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_182_while_placeholder_1lstm_182_while_placeholder%lstm_182/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_182/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_182/while/addAddV2lstm_182_while_placeholderlstm_182/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_182/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_182/while/add_1AddV2*lstm_182_while_lstm_182_while_loop_counterlstm_182/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_182/while/IdentityIdentitylstm_182/while/add_1:z:0^lstm_182/while/NoOp*
T0*
_output_shapes
: 
lstm_182/while/Identity_1Identity0lstm_182_while_lstm_182_while_maximum_iterations^lstm_182/while/NoOp*
T0*
_output_shapes
: t
lstm_182/while/Identity_2Identitylstm_182/while/add:z:0^lstm_182/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_182/while/Identity_3IdentityClstm_182/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_182/while/NoOp*
T0*
_output_shapes
: 
lstm_182/while/Identity_4Identity%lstm_182/while/lstm_cell_47/mul_2:z:0^lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/while/Identity_5Identity%lstm_182/while/lstm_cell_47/add_1:z:0^lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_182/while/NoOpNoOp3^lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2^lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp4^lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_182_while_identity lstm_182/while/Identity:output:0"?
lstm_182_while_identity_1"lstm_182/while/Identity_1:output:0"?
lstm_182_while_identity_2"lstm_182/while/Identity_2:output:0"?
lstm_182_while_identity_3"lstm_182/while/Identity_3:output:0"?
lstm_182_while_identity_4"lstm_182/while/Identity_4:output:0"?
lstm_182_while_identity_5"lstm_182/while/Identity_5:output:0"T
'lstm_182_while_lstm_182_strided_slice_1)lstm_182_while_lstm_182_strided_slice_1_0"|
;lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0"~
<lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0"z
:lstm_182_while_lstm_cell_47_matmul_readvariableop_resource<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0"Ì
clstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensorelstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2f
1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp2j
3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Â

)__inference_dense_60_layer_call_fn_289746

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
D__inference_dense_60_layer_call_and_return_conditional_losses_286238o
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289822

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
µ
?
while_cond_286516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286516___redundant_placeholder04
0while_while_cond_286516___redundant_placeholder14
0while_while_cond_286516___redundant_placeholder24
0while_while_cond_286516___redundant_placeholder3
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
Ú


.__inference_sequential_60_layer_call_fn_287008

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
I__inference_sequential_60_layer_call_and_return_conditional_losses_286245o
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
Ğ
¸
)__inference_lstm_180_layer_call_fn_287900
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_284871|
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
µ
?
while_cond_285985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285985___redundant_placeholder04
0while_while_cond_285985___redundant_placeholder14
0while_while_cond_285985___redundant_placeholder24
0while_while_cond_285985___redundant_placeholder3
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
while_cond_288277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288277___redundant_placeholder04
0while_while_cond_288277___redundant_placeholder14
0while_while_cond_288277___redundant_placeholder24
0while_while_cond_288277___redundant_placeholder3
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
²

÷
lstm_182_while_cond_287371.
*lstm_182_while_lstm_182_while_loop_counter4
0lstm_182_while_lstm_182_while_maximum_iterations
lstm_182_while_placeholder 
lstm_182_while_placeholder_1 
lstm_182_while_placeholder_2 
lstm_182_while_placeholder_30
,lstm_182_while_less_lstm_182_strided_slice_1F
Blstm_182_while_lstm_182_while_cond_287371___redundant_placeholder0F
Blstm_182_while_lstm_182_while_cond_287371___redundant_placeholder1F
Blstm_182_while_lstm_182_while_cond_287371___redundant_placeholder2F
Blstm_182_while_lstm_182_while_cond_287371___redundant_placeholder3
lstm_182_while_identity

lstm_182/while/LessLesslstm_182_while_placeholder,lstm_182_while_less_lstm_182_strided_slice_1*
T0*
_output_shapes
: ]
lstm_182/while/IdentityIdentitylstm_182/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_182_while_identity lstm_182/while/Identity:output:0*(
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
S
³
(sequential_60_lstm_180_while_body_284353J
Fsequential_60_lstm_180_while_sequential_60_lstm_180_while_loop_counterP
Lsequential_60_lstm_180_while_sequential_60_lstm_180_while_maximum_iterations,
(sequential_60_lstm_180_while_placeholder.
*sequential_60_lstm_180_while_placeholder_1.
*sequential_60_lstm_180_while_placeholder_2.
*sequential_60_lstm_180_while_placeholder_3I
Esequential_60_lstm_180_while_sequential_60_lstm_180_strided_slice_1_0
sequential_60_lstm_180_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_180_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_60_lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0:	_
Lsequential_60_lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dZ
Ksequential_60_lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0:	)
%sequential_60_lstm_180_while_identity+
'sequential_60_lstm_180_while_identity_1+
'sequential_60_lstm_180_while_identity_2+
'sequential_60_lstm_180_while_identity_3+
'sequential_60_lstm_180_while_identity_4+
'sequential_60_lstm_180_while_identity_5G
Csequential_60_lstm_180_while_sequential_60_lstm_180_strided_slice_1
sequential_60_lstm_180_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_180_tensorarrayunstack_tensorlistfromtensor[
Hsequential_60_lstm_180_while_lstm_cell_45_matmul_readvariableop_resource:	]
Jsequential_60_lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource:	dX
Isequential_60_lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource:	˘@sequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp˘?sequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp˘Asequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp
Nsequential_60/lstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_60/lstm_180/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_60_lstm_180_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_180_tensorarrayunstack_tensorlistfromtensor_0(sequential_60_lstm_180_while_placeholderWsequential_60/lstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOpJsequential_60_lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_60/lstm_180/while/lstm_cell_45/MatMulMatMulGsequential_60/lstm_180/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOpLsequential_60_lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_60/lstm_180/while/lstm_cell_45/MatMul_1MatMul*sequential_60_lstm_180_while_placeholder_2Isequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_60/lstm_180/while/lstm_cell_45/addAddV2:sequential_60/lstm_180/while/lstm_cell_45/MatMul:product:0<sequential_60/lstm_180/while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOpKsequential_60_lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_60/lstm_180/while/lstm_cell_45/BiasAddBiasAdd1sequential_60/lstm_180/while/lstm_cell_45/add:z:0Hsequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_60/lstm_180/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_60/lstm_180/while/lstm_cell_45/splitSplitBsequential_60/lstm_180/while/lstm_cell_45/split/split_dim:output:0:sequential_60/lstm_180/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_60/lstm_180/while/lstm_cell_45/SigmoidSigmoid8sequential_60/lstm_180/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_60/lstm_180/while/lstm_cell_45/Sigmoid_1Sigmoid8sequential_60/lstm_180/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_60/lstm_180/while/lstm_cell_45/mulMul7sequential_60/lstm_180/while/lstm_cell_45/Sigmoid_1:y:0*sequential_60_lstm_180_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_60/lstm_180/while/lstm_cell_45/ReluRelu8sequential_60/lstm_180/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_60/lstm_180/while/lstm_cell_45/mul_1Mul5sequential_60/lstm_180/while/lstm_cell_45/Sigmoid:y:0<sequential_60/lstm_180/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_60/lstm_180/while/lstm_cell_45/add_1AddV21sequential_60/lstm_180/while/lstm_cell_45/mul:z:03sequential_60/lstm_180/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_60/lstm_180/while/lstm_cell_45/Sigmoid_2Sigmoid8sequential_60/lstm_180/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_60/lstm_180/while/lstm_cell_45/Relu_1Relu3sequential_60/lstm_180/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_60/lstm_180/while/lstm_cell_45/mul_2Mul7sequential_60/lstm_180/while/lstm_cell_45/Sigmoid_2:y:0>sequential_60/lstm_180/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_60/lstm_180/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_60_lstm_180_while_placeholder_1(sequential_60_lstm_180_while_placeholder3sequential_60/lstm_180/while/lstm_cell_45/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_60/lstm_180/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_60/lstm_180/while/addAddV2(sequential_60_lstm_180_while_placeholder+sequential_60/lstm_180/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_60/lstm_180/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_60/lstm_180/while/add_1AddV2Fsequential_60_lstm_180_while_sequential_60_lstm_180_while_loop_counter-sequential_60/lstm_180/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_60/lstm_180/while/IdentityIdentity&sequential_60/lstm_180/while/add_1:z:0"^sequential_60/lstm_180/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_60/lstm_180/while/Identity_1IdentityLsequential_60_lstm_180_while_sequential_60_lstm_180_while_maximum_iterations"^sequential_60/lstm_180/while/NoOp*
T0*
_output_shapes
: 
'sequential_60/lstm_180/while/Identity_2Identity$sequential_60/lstm_180/while/add:z:0"^sequential_60/lstm_180/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_60/lstm_180/while/Identity_3IdentityQsequential_60/lstm_180/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_60/lstm_180/while/NoOp*
T0*
_output_shapes
: ?
'sequential_60/lstm_180/while/Identity_4Identity3sequential_60/lstm_180/while/lstm_cell_45/mul_2:z:0"^sequential_60/lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_60/lstm_180/while/Identity_5Identity3sequential_60/lstm_180/while/lstm_cell_45/add_1:z:0"^sequential_60/lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_60/lstm_180/while/NoOpNoOpA^sequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp@^sequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOpB^sequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_60_lstm_180_while_identity.sequential_60/lstm_180/while/Identity:output:0"[
'sequential_60_lstm_180_while_identity_10sequential_60/lstm_180/while/Identity_1:output:0"[
'sequential_60_lstm_180_while_identity_20sequential_60/lstm_180/while/Identity_2:output:0"[
'sequential_60_lstm_180_while_identity_30sequential_60/lstm_180/while/Identity_3:output:0"[
'sequential_60_lstm_180_while_identity_40sequential_60/lstm_180/while/Identity_4:output:0"[
'sequential_60_lstm_180_while_identity_50sequential_60/lstm_180/while/Identity_5:output:0"
Isequential_60_lstm_180_while_lstm_cell_45_biasadd_readvariableop_resourceKsequential_60_lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0"
Jsequential_60_lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resourceLsequential_60_lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0"
Hsequential_60_lstm_180_while_lstm_cell_45_matmul_readvariableop_resourceJsequential_60_lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0"
Csequential_60_lstm_180_while_sequential_60_lstm_180_strided_slice_1Esequential_60_lstm_180_while_sequential_60_lstm_180_strided_slice_1_0"
sequential_60_lstm_180_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_180_tensorarrayunstack_tensorlistfromtensorsequential_60_lstm_180_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_180_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp@sequential_60/lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2
?sequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp?sequential_60/lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp2
Asequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOpAsequential_60/lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286601

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_286517*
condR
while_cond_286516*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_288278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_285835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285835___redundant_placeholder04
0while_while_cond_285835___redundant_placeholder14
0while_while_cond_285835___redundant_placeholder24
0while_while_cond_285835___redundant_placeholder3
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
à"
Ŭ
while_body_285693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_285717_0:2(-
while_lstm_cell_47_285719_0:
()
while_lstm_cell_47_285721_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_285717:2(+
while_lstm_cell_47_285719:
('
while_lstm_cell_47_285721:(˘*while/lstm_cell_47/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_285717_0while_lstm_cell_47_285719_0while_lstm_cell_47_285721_0*
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285634Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_285717while_lstm_cell_47_285717_0"8
while_lstm_cell_47_285719while_lstm_cell_47_285719_0"8
while_lstm_cell_47_285721while_lstm_cell_47_285721_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_286517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J

D__inference_lstm_182_layer_call_and_return_conditional_losses_289594

inputs=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_289510*
condR
while_cond_289509*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_180_layer_call_and_return_conditional_losses_286766

inputs>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_286682*
condR
while_cond_286681*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ħ

I__inference_sequential_60_layer_call_and_return_conditional_losses_287462

inputsG
4lstm_180_lstm_cell_45_matmul_readvariableop_resource:	I
6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource:	dD
5lstm_180_lstm_cell_45_biasadd_readvariableop_resource:	G
4lstm_181_lstm_cell_46_matmul_readvariableop_resource:	dÈI
6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈD
5lstm_181_lstm_cell_46_biasadd_readvariableop_resource:	ÈF
4lstm_182_lstm_cell_47_matmul_readvariableop_resource:2(H
6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource:
(C
5lstm_182_lstm_cell_47_biasadd_readvariableop_resource:(9
'dense_60_matmul_readvariableop_resource:
6
(dense_60_biasadd_readvariableop_resource:
identity˘dense_60/BiasAdd/ReadVariableOp˘dense_60/MatMul/ReadVariableOp˘,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp˘+lstm_180/lstm_cell_45/MatMul/ReadVariableOp˘-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp˘lstm_180/while˘,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp˘+lstm_181/lstm_cell_46/MatMul/ReadVariableOp˘-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp˘lstm_181/while˘,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp˘+lstm_182/lstm_cell_47/MatMul/ReadVariableOp˘-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp˘lstm_182/whileD
lstm_180/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_180/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_180/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_180/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_180/strided_sliceStridedSlicelstm_180/Shape:output:0%lstm_180/strided_slice/stack:output:0'lstm_180/strided_slice/stack_1:output:0'lstm_180/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_180/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_180/zeros/packedPacklstm_180/strided_slice:output:0 lstm_180/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_180/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_180/zerosFilllstm_180/zeros/packed:output:0lstm_180/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_180/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_180/zeros_1/packedPacklstm_180/strided_slice:output:0"lstm_180/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_180/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_180/zeros_1Fill lstm_180/zeros_1/packed:output:0lstm_180/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_180/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_180/transpose	Transposeinputs lstm_180/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_180/Shape_1Shapelstm_180/transpose:y:0*
T0*
_output_shapes
:h
lstm_180/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_180/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_180/strided_slice_1StridedSlicelstm_180/Shape_1:output:0'lstm_180/strided_slice_1/stack:output:0)lstm_180/strided_slice_1/stack_1:output:0)lstm_180/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_180/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_180/TensorArrayV2TensorListReserve-lstm_180/TensorArrayV2/element_shape:output:0!lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_180/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_180/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_180/transpose:y:0Glstm_180/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_180/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_180/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_180/strided_slice_2StridedSlicelstm_180/transpose:y:0'lstm_180/strided_slice_2/stack:output:0)lstm_180/strided_slice_2/stack_1:output:0)lstm_180/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_180/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp4lstm_180_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_180/lstm_cell_45/MatMulMatMul!lstm_180/strided_slice_2:output:03lstm_180/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_180/lstm_cell_45/MatMul_1MatMullstm_180/zeros:output:05lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_180/lstm_cell_45/addAddV2&lstm_180/lstm_cell_45/MatMul:product:0(lstm_180/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp5lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_180/lstm_cell_45/BiasAddBiasAddlstm_180/lstm_cell_45/add:z:04lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_180/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_180/lstm_cell_45/splitSplit.lstm_180/lstm_cell_45/split/split_dim:output:0&lstm_180/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_180/lstm_cell_45/SigmoidSigmoid$lstm_180/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/Sigmoid_1Sigmoid$lstm_180/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/mulMul#lstm_180/lstm_cell_45/Sigmoid_1:y:0lstm_180/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_180/lstm_cell_45/ReluRelu$lstm_180/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_180/lstm_cell_45/mul_1Mul!lstm_180/lstm_cell_45/Sigmoid:y:0(lstm_180/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/add_1AddV2lstm_180/lstm_cell_45/mul:z:0lstm_180/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/Sigmoid_2Sigmoid$lstm_180/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_180/lstm_cell_45/Relu_1Relulstm_180/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_180/lstm_cell_45/mul_2Mul#lstm_180/lstm_cell_45/Sigmoid_2:y:0*lstm_180/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_180/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_180/TensorArrayV2_1TensorListReserve/lstm_180/TensorArrayV2_1/element_shape:output:0!lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_180/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_180/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_180/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_180/whileWhile$lstm_180/while/loop_counter:output:0*lstm_180/while/maximum_iterations:output:0lstm_180/time:output:0!lstm_180/TensorArrayV2_1:handle:0lstm_180/zeros:output:0lstm_180/zeros_1:output:0!lstm_180/strided_slice_1:output:0@lstm_180/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_180_lstm_cell_45_matmul_readvariableop_resource6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource5lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
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
lstm_180_while_body_287094*&
condR
lstm_180_while_cond_287093*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_180/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_180/TensorArrayV2Stack/TensorListStackTensorListStacklstm_180/while:output:3Blstm_180/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_180/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_180/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_180/strided_slice_3StridedSlice4lstm_180/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_180/strided_slice_3/stack:output:0)lstm_180/strided_slice_3/stack_1:output:0)lstm_180/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_180/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_180/transpose_1	Transpose4lstm_180/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_180/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_180/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_181/ShapeShapelstm_180/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_181/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_181/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_181/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_181/strided_sliceStridedSlicelstm_181/Shape:output:0%lstm_181/strided_slice/stack:output:0'lstm_181/strided_slice/stack_1:output:0'lstm_181/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_181/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_181/zeros/packedPacklstm_181/strided_slice:output:0 lstm_181/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_181/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_181/zerosFilllstm_181/zeros/packed:output:0lstm_181/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_181/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_181/zeros_1/packedPacklstm_181/strided_slice:output:0"lstm_181/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_181/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_181/zeros_1Fill lstm_181/zeros_1/packed:output:0lstm_181/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_181/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_181/transpose	Transposelstm_180/transpose_1:y:0 lstm_181/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_181/Shape_1Shapelstm_181/transpose:y:0*
T0*
_output_shapes
:h
lstm_181/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_181/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_181/strided_slice_1StridedSlicelstm_181/Shape_1:output:0'lstm_181/strided_slice_1/stack:output:0)lstm_181/strided_slice_1/stack_1:output:0)lstm_181/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_181/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_181/TensorArrayV2TensorListReserve-lstm_181/TensorArrayV2/element_shape:output:0!lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_181/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_181/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_181/transpose:y:0Glstm_181/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_181/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_181/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_181/strided_slice_2StridedSlicelstm_181/transpose:y:0'lstm_181/strided_slice_2/stack:output:0)lstm_181/strided_slice_2/stack_1:output:0)lstm_181/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_181/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp4lstm_181_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_181/lstm_cell_46/MatMulMatMul!lstm_181/strided_slice_2:output:03lstm_181/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_181/lstm_cell_46/MatMul_1MatMullstm_181/zeros:output:05lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_181/lstm_cell_46/addAddV2&lstm_181/lstm_cell_46/MatMul:product:0(lstm_181/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp5lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_181/lstm_cell_46/BiasAddBiasAddlstm_181/lstm_cell_46/add:z:04lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_181/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_181/lstm_cell_46/splitSplit.lstm_181/lstm_cell_46/split/split_dim:output:0&lstm_181/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_181/lstm_cell_46/SigmoidSigmoid$lstm_181/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/Sigmoid_1Sigmoid$lstm_181/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/mulMul#lstm_181/lstm_cell_46/Sigmoid_1:y:0lstm_181/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_181/lstm_cell_46/ReluRelu$lstm_181/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_181/lstm_cell_46/mul_1Mul!lstm_181/lstm_cell_46/Sigmoid:y:0(lstm_181/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/add_1AddV2lstm_181/lstm_cell_46/mul:z:0lstm_181/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/Sigmoid_2Sigmoid$lstm_181/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_181/lstm_cell_46/Relu_1Relulstm_181/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_181/lstm_cell_46/mul_2Mul#lstm_181/lstm_cell_46/Sigmoid_2:y:0*lstm_181/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_181/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_181/TensorArrayV2_1TensorListReserve/lstm_181/TensorArrayV2_1/element_shape:output:0!lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_181/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_181/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_181/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_181/whileWhile$lstm_181/while/loop_counter:output:0*lstm_181/while/maximum_iterations:output:0lstm_181/time:output:0!lstm_181/TensorArrayV2_1:handle:0lstm_181/zeros:output:0lstm_181/zeros_1:output:0!lstm_181/strided_slice_1:output:0@lstm_181/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_181_lstm_cell_46_matmul_readvariableop_resource6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource5lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
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
lstm_181_while_body_287233*&
condR
lstm_181_while_cond_287232*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_181/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_181/TensorArrayV2Stack/TensorListStackTensorListStacklstm_181/while:output:3Blstm_181/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_181/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_181/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_181/strided_slice_3StridedSlice4lstm_181/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_181/strided_slice_3/stack:output:0)lstm_181/strided_slice_3/stack_1:output:0)lstm_181/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_181/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_181/transpose_1	Transpose4lstm_181/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_181/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_181/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_182/ShapeShapelstm_181/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_182/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_182/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_182/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_182/strided_sliceStridedSlicelstm_182/Shape:output:0%lstm_182/strided_slice/stack:output:0'lstm_182/strided_slice/stack_1:output:0'lstm_182/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_182/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_182/zeros/packedPacklstm_182/strided_slice:output:0 lstm_182/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_182/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_182/zerosFilllstm_182/zeros/packed:output:0lstm_182/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_182/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_182/zeros_1/packedPacklstm_182/strided_slice:output:0"lstm_182/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_182/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_182/zeros_1Fill lstm_182/zeros_1/packed:output:0lstm_182/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_182/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_182/transpose	Transposelstm_181/transpose_1:y:0 lstm_182/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_182/Shape_1Shapelstm_182/transpose:y:0*
T0*
_output_shapes
:h
lstm_182/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_182/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_182/strided_slice_1StridedSlicelstm_182/Shape_1:output:0'lstm_182/strided_slice_1/stack:output:0)lstm_182/strided_slice_1/stack_1:output:0)lstm_182/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_182/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_182/TensorArrayV2TensorListReserve-lstm_182/TensorArrayV2/element_shape:output:0!lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_182/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_182/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_182/transpose:y:0Glstm_182/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_182/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_182/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_182/strided_slice_2StridedSlicelstm_182/transpose:y:0'lstm_182/strided_slice_2/stack:output:0)lstm_182/strided_slice_2/stack_1:output:0)lstm_182/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_182/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp4lstm_182_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_182/lstm_cell_47/MatMulMatMul!lstm_182/strided_slice_2:output:03lstm_182/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_182/lstm_cell_47/MatMul_1MatMullstm_182/zeros:output:05lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_182/lstm_cell_47/addAddV2&lstm_182/lstm_cell_47/MatMul:product:0(lstm_182/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp5lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_182/lstm_cell_47/BiasAddBiasAddlstm_182/lstm_cell_47/add:z:04lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_182/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_182/lstm_cell_47/splitSplit.lstm_182/lstm_cell_47/split/split_dim:output:0&lstm_182/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_182/lstm_cell_47/SigmoidSigmoid$lstm_182/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/Sigmoid_1Sigmoid$lstm_182/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/mulMul#lstm_182/lstm_cell_47/Sigmoid_1:y:0lstm_182/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_182/lstm_cell_47/ReluRelu$lstm_182/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_182/lstm_cell_47/mul_1Mul!lstm_182/lstm_cell_47/Sigmoid:y:0(lstm_182/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/add_1AddV2lstm_182/lstm_cell_47/mul:z:0lstm_182/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/Sigmoid_2Sigmoid$lstm_182/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_182/lstm_cell_47/Relu_1Relulstm_182/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_182/lstm_cell_47/mul_2Mul#lstm_182/lstm_cell_47/Sigmoid_2:y:0*lstm_182/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_182/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_182/TensorArrayV2_1TensorListReserve/lstm_182/TensorArrayV2_1/element_shape:output:0!lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_182/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_182/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_182/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_182/whileWhile$lstm_182/while/loop_counter:output:0*lstm_182/while/maximum_iterations:output:0lstm_182/time:output:0!lstm_182/TensorArrayV2_1:handle:0lstm_182/zeros:output:0lstm_182/zeros_1:output:0!lstm_182/strided_slice_1:output:0@lstm_182/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_182_lstm_cell_47_matmul_readvariableop_resource6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource5lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
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
lstm_182_while_body_287372*&
condR
lstm_182_while_cond_287371*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_182/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_182/TensorArrayV2Stack/TensorListStackTensorListStacklstm_182/while:output:3Blstm_182/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_182/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_182/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_182/strided_slice_3StridedSlice4lstm_182/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_182/strided_slice_3/stack:output:0)lstm_182/strided_slice_3/stack_1:output:0)lstm_182/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_182/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_182/transpose_1	Transpose4lstm_182/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_182/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_182/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_60/MatMulMatMul!lstm_182/strided_slice_3:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp-^lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp,^lstm_180/lstm_cell_45/MatMul/ReadVariableOp.^lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp^lstm_180/while-^lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp,^lstm_181/lstm_cell_46/MatMul/ReadVariableOp.^lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_181/while-^lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp,^lstm_182/lstm_cell_47/MatMul/ReadVariableOp.^lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_182/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2\
,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp2Z
+lstm_180/lstm_cell_45/MatMul/ReadVariableOp+lstm_180/lstm_cell_45/MatMul/ReadVariableOp2^
-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp2 
lstm_180/whilelstm_180/while2\
,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp2Z
+lstm_181/lstm_cell_46/MatMul/ReadVariableOp+lstm_181/lstm_cell_46/MatMul/ReadVariableOp2^
-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp2 
lstm_181/whilelstm_181/while2\
,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp2Z
+lstm_182/lstm_cell_47/MatMul/ReadVariableOp+lstm_182/lstm_cell_47/MatMul/ReadVariableOp2^
-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp2 
lstm_182/whilelstm_182/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_287991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_287991___redundant_placeholder04
0while_while_cond_287991___redundant_placeholder14
0while_while_cond_287991___redundant_placeholder24
0while_while_cond_287991___redundant_placeholder3
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
ÔJ

D__inference_lstm_182_layer_call_and_return_conditional_losses_289308
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_289224*
condR
while_cond_289223*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_180_layer_call_and_return_conditional_losses_285920

inputs>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_285836*
condR
while_cond_285835*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_182_layer_call_and_return_conditional_losses_289451
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:2(?
-lstm_cell_47_matmul_1_readvariableop_resource:
(:
,lstm_cell_47_biasadd_readvariableop_resource:(
identity˘#lstm_cell_47/BiasAdd/ReadVariableOp˘"lstm_cell_47/MatMul/ReadVariableOp˘$lstm_cell_47/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
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
while_body_289367*
condR
while_cond_289366*K
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
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ĉ"
?
while_body_284802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_45_284826_0:	.
while_lstm_cell_45_284828_0:	d*
while_lstm_cell_45_284830_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_45_284826:	,
while_lstm_cell_45_284828:	d(
while_lstm_cell_45_284830:	˘*while/lstm_cell_45/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_284826_0while_lstm_cell_45_284828_0while_lstm_cell_45_284830_0*
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284788Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_45_284826while_lstm_cell_45_284826_0"8
while_lstm_cell_45_284828while_lstm_cell_45_284828_0"8
while_lstm_cell_45_284830while_lstm_cell_45_284830_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ğ
ë
I__inference_sequential_60_layer_call_and_return_conditional_losses_286834

inputs"
lstm_180_286807:	"
lstm_180_286809:	d
lstm_180_286811:	"
lstm_181_286814:	dÈ"
lstm_181_286816:	2È
lstm_181_286818:	È!
lstm_182_286821:2(!
lstm_182_286823:
(
lstm_182_286825:(!
dense_60_286828:

dense_60_286830:
identity˘ dense_60/StatefulPartitionedCall˘ lstm_180/StatefulPartitionedCall˘ lstm_181/StatefulPartitionedCall˘ lstm_182/StatefulPartitionedCall
 lstm_180/StatefulPartitionedCallStatefulPartitionedCallinputslstm_180_286807lstm_180_286809lstm_180_286811*
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_286766Ş
 lstm_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_180/StatefulPartitionedCall:output:0lstm_181_286814lstm_181_286816lstm_181_286818*
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286601Ĥ
 lstm_182/StatefulPartitionedCallStatefulPartitionedCall)lstm_181/StatefulPartitionedCall:output:0lstm_182_286821lstm_182_286823lstm_182_286825*
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286436
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)lstm_182/StatefulPartitionedCall:output:0dense_60_286828dense_60_286830*
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
D__inference_dense_60_layer_call_and_return_conditional_losses_286238x
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_60/StatefulPartitionedCall!^lstm_180/StatefulPartitionedCall!^lstm_181/StatefulPartitionedCall!^lstm_182/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 lstm_180/StatefulPartitionedCall lstm_180/StatefulPartitionedCall2D
 lstm_181/StatefulPartitionedCall lstm_181/StatefulPartitionedCall2D
 lstm_182/StatefulPartitionedCall lstm_182/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_181_layer_call_and_return_conditional_losses_288978

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_288894*
condR
while_cond_288893*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_45_layer_call_fn_289790

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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284934o
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
Ğ
¸
)__inference_lstm_181_layer_call_fn_288527
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_285412|
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
Ŭ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289952

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
ĉ"
?
while_body_285152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_46_285176_0:	dÈ.
while_lstm_cell_46_285178_0:	2È*
while_lstm_cell_46_285180_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_46_285176:	dÈ,
while_lstm_cell_46_285178:	2È(
while_lstm_cell_46_285180:	È˘*while/lstm_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_285176_0while_lstm_cell_46_285178_0while_lstm_cell_46_285180_0*
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285138Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_285176while_lstm_cell_46_285176_0"8
while_lstm_cell_46_285178while_lstm_cell_46_285178_0"8
while_lstm_cell_46_285180while_lstm_cell_46_285180_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ş

(sequential_60_lstm_181_while_cond_284491J
Fsequential_60_lstm_181_while_sequential_60_lstm_181_while_loop_counterP
Lsequential_60_lstm_181_while_sequential_60_lstm_181_while_maximum_iterations,
(sequential_60_lstm_181_while_placeholder.
*sequential_60_lstm_181_while_placeholder_1.
*sequential_60_lstm_181_while_placeholder_2.
*sequential_60_lstm_181_while_placeholder_3L
Hsequential_60_lstm_181_while_less_sequential_60_lstm_181_strided_slice_1b
^sequential_60_lstm_181_while_sequential_60_lstm_181_while_cond_284491___redundant_placeholder0b
^sequential_60_lstm_181_while_sequential_60_lstm_181_while_cond_284491___redundant_placeholder1b
^sequential_60_lstm_181_while_sequential_60_lstm_181_while_cond_284491___redundant_placeholder2b
^sequential_60_lstm_181_while_sequential_60_lstm_181_while_cond_284491___redundant_placeholder3)
%sequential_60_lstm_181_while_identity
?
!sequential_60/lstm_181/while/LessLess(sequential_60_lstm_181_while_placeholderHsequential_60_lstm_181_while_less_sequential_60_lstm_181_strided_slice_1*
T0*
_output_shapes
: y
%sequential_60/lstm_181/while/IdentityIdentity%sequential_60/lstm_181/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_60_lstm_181_while_identity.sequential_60/lstm_181/while/Identity:output:0*(
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
while_body_288751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_285221

inputs&
lstm_cell_46_285139:	dÈ&
lstm_cell_46_285141:	2È"
lstm_cell_46_285143:	È
identity˘$lstm_cell_46/StatefulPartitionedCall˘while;
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
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_285139lstm_cell_46_285141lstm_cell_46_285143*
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285138n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_285139lstm_cell_46_285141lstm_cell_46_285143*
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
while_body_285152*
condR
while_cond_285151*K
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
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ë

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285488

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
8

D__inference_lstm_180_layer_call_and_return_conditional_losses_284871

inputs&
lstm_cell_45_284789:	&
lstm_cell_45_284791:	d"
lstm_cell_45_284793:	
identity˘$lstm_cell_45/StatefulPartitionedCall˘while;
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
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_284789lstm_cell_45_284791lstm_cell_45_284793*
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284788n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_284789lstm_cell_45_284791lstm_cell_45_284793*
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
while_body_284802*
condR
while_cond_284801*K
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
NoOpNoOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_180_layer_call_fn_287933

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
D__inference_lstm_180_layer_call_and_return_conditional_losses_286766s
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
while_cond_286135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286135___redundant_placeholder04
0while_while_cond_286135___redundant_placeholder14
0while_while_cond_286135___redundant_placeholder24
0while_while_cond_286135___redundant_placeholder3
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
Ŭ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289920

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
ş

(sequential_60_lstm_180_while_cond_284352J
Fsequential_60_lstm_180_while_sequential_60_lstm_180_while_loop_counterP
Lsequential_60_lstm_180_while_sequential_60_lstm_180_while_maximum_iterations,
(sequential_60_lstm_180_while_placeholder.
*sequential_60_lstm_180_while_placeholder_1.
*sequential_60_lstm_180_while_placeholder_2.
*sequential_60_lstm_180_while_placeholder_3L
Hsequential_60_lstm_180_while_less_sequential_60_lstm_180_strided_slice_1b
^sequential_60_lstm_180_while_sequential_60_lstm_180_while_cond_284352___redundant_placeholder0b
^sequential_60_lstm_180_while_sequential_60_lstm_180_while_cond_284352___redundant_placeholder1b
^sequential_60_lstm_180_while_sequential_60_lstm_180_while_cond_284352___redundant_placeholder2b
^sequential_60_lstm_180_while_sequential_60_lstm_180_while_cond_284352___redundant_placeholder3)
%sequential_60_lstm_180_while_identity
?
!sequential_60/lstm_180/while/LessLess(sequential_60_lstm_180_while_placeholderHsequential_60_lstm_180_while_less_sequential_60_lstm_180_strided_slice_1*
T0*
_output_shapes
: y
%sequential_60/lstm_180/while/IdentityIdentity%sequential_60/lstm_180/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_60_lstm_180_while_identity.sequential_60/lstm_180/while/Identity:output:0*(
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288505

inputs>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_288421*
condR
while_cond_288420*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_180_layer_call_and_return_conditional_losses_285062

inputs&
lstm_cell_45_284980:	&
lstm_cell_45_284982:	d"
lstm_cell_45_284984:	
identity˘$lstm_cell_45/StatefulPartitionedCall˘while;
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
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_284980lstm_cell_45_284982lstm_cell_45_284984*
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284934n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_284980lstm_cell_45_284982lstm_cell_45_284984*
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
while_body_284993*
condR
while_cond_284992*K
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
NoOpNoOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_289510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
ó
I__inference_sequential_60_layer_call_and_return_conditional_losses_286916
lstm_180_input"
lstm_180_286889:	"
lstm_180_286891:	d
lstm_180_286893:	"
lstm_181_286896:	dÈ"
lstm_181_286898:	2È
lstm_181_286900:	È!
lstm_182_286903:2(!
lstm_182_286905:
(
lstm_182_286907:(!
dense_60_286910:

dense_60_286912:
identity˘ dense_60/StatefulPartitionedCall˘ lstm_180/StatefulPartitionedCall˘ lstm_181/StatefulPartitionedCall˘ lstm_182/StatefulPartitionedCall
 lstm_180/StatefulPartitionedCallStatefulPartitionedCalllstm_180_inputlstm_180_286889lstm_180_286891lstm_180_286893*
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_285920Ş
 lstm_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_180/StatefulPartitionedCall:output:0lstm_181_286896lstm_181_286898lstm_181_286900*
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286070Ĥ
 lstm_182/StatefulPartitionedCallStatefulPartitionedCall)lstm_181/StatefulPartitionedCall:output:0lstm_182_286903lstm_182_286905lstm_182_286907*
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286220
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)lstm_182/StatefulPartitionedCall:output:0dense_60_286910dense_60_286912*
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
D__inference_dense_60_layer_call_and_return_conditional_losses_286238x
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_60/StatefulPartitionedCall!^lstm_180/StatefulPartitionedCall!^lstm_181/StatefulPartitionedCall!^lstm_182/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 lstm_180/StatefulPartitionedCall lstm_180/StatefulPartitionedCall2D
 lstm_181/StatefulPartitionedCall lstm_181/StatefulPartitionedCall2D
 lstm_182/StatefulPartitionedCall lstm_182/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_180_input
ÛB
?

lstm_180_while_body_287521.
*lstm_180_while_lstm_180_while_loop_counter4
0lstm_180_while_lstm_180_while_maximum_iterations
lstm_180_while_placeholder 
lstm_180_while_placeholder_1 
lstm_180_while_placeholder_2 
lstm_180_while_placeholder_3-
)lstm_180_while_lstm_180_strided_slice_1_0i
elstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0:	Q
>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dL
=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0:	
lstm_180_while_identity
lstm_180_while_identity_1
lstm_180_while_identity_2
lstm_180_while_identity_3
lstm_180_while_identity_4
lstm_180_while_identity_5+
'lstm_180_while_lstm_180_strided_slice_1g
clstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensorM
:lstm_180_while_lstm_cell_45_matmul_readvariableop_resource:	O
<lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource:	dJ
;lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource:	˘2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp˘1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp˘3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp
@lstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_180/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0lstm_180_while_placeholderIlstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_180/while/lstm_cell_45/MatMulMatMul9lstm_180/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_180/while/lstm_cell_45/MatMul_1MatMullstm_180_while_placeholder_2;lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_180/while/lstm_cell_45/addAddV2,lstm_180/while/lstm_cell_45/MatMul:product:0.lstm_180/while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_180/while/lstm_cell_45/BiasAddBiasAdd#lstm_180/while/lstm_cell_45/add:z:0:lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_180/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_180/while/lstm_cell_45/splitSplit4lstm_180/while/lstm_cell_45/split/split_dim:output:0,lstm_180/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_180/while/lstm_cell_45/SigmoidSigmoid*lstm_180/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_180/while/lstm_cell_45/Sigmoid_1Sigmoid*lstm_180/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_180/while/lstm_cell_45/mulMul)lstm_180/while/lstm_cell_45/Sigmoid_1:y:0lstm_180_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_180/while/lstm_cell_45/ReluRelu*lstm_180/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_180/while/lstm_cell_45/mul_1Mul'lstm_180/while/lstm_cell_45/Sigmoid:y:0.lstm_180/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_180/while/lstm_cell_45/add_1AddV2#lstm_180/while/lstm_cell_45/mul:z:0%lstm_180/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_180/while/lstm_cell_45/Sigmoid_2Sigmoid*lstm_180/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_180/while/lstm_cell_45/Relu_1Relu%lstm_180/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_180/while/lstm_cell_45/mul_2Mul)lstm_180/while/lstm_cell_45/Sigmoid_2:y:00lstm_180/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_180/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_180_while_placeholder_1lstm_180_while_placeholder%lstm_180/while/lstm_cell_45/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_180/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_180/while/addAddV2lstm_180_while_placeholderlstm_180/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_180/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_180/while/add_1AddV2*lstm_180_while_lstm_180_while_loop_counterlstm_180/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_180/while/IdentityIdentitylstm_180/while/add_1:z:0^lstm_180/while/NoOp*
T0*
_output_shapes
: 
lstm_180/while/Identity_1Identity0lstm_180_while_lstm_180_while_maximum_iterations^lstm_180/while/NoOp*
T0*
_output_shapes
: t
lstm_180/while/Identity_2Identitylstm_180/while/add:z:0^lstm_180/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_180/while/Identity_3IdentityClstm_180/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_180/while/NoOp*
T0*
_output_shapes
: 
lstm_180/while/Identity_4Identity%lstm_180/while/lstm_cell_45/mul_2:z:0^lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/while/Identity_5Identity%lstm_180/while/lstm_cell_45/add_1:z:0^lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_180/while/NoOpNoOp3^lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2^lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp4^lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_180_while_identity lstm_180/while/Identity:output:0"?
lstm_180_while_identity_1"lstm_180/while/Identity_1:output:0"?
lstm_180_while_identity_2"lstm_180/while/Identity_2:output:0"?
lstm_180_while_identity_3"lstm_180/while/Identity_3:output:0"?
lstm_180_while_identity_4"lstm_180/while/Identity_4:output:0"?
lstm_180_while_identity_5"lstm_180/while/Identity_5:output:0"T
'lstm_180_while_lstm_180_strided_slice_1)lstm_180_while_lstm_180_strided_slice_1_0"|
;lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0"~
<lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0"z
:lstm_180_while_lstm_cell_45_matmul_readvariableop_resource<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0"Ì
clstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensorelstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2f
1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp2j
3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_288894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
âJ

D__inference_lstm_180_layer_call_and_return_conditional_losses_288219
inputs_0>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_288135*
condR
while_cond_288134*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
˙7
Ê
while_body_286136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288076
inputs_0>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_287992*
condR
while_cond_287991*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_181_layer_call_and_return_conditional_losses_288692
inputs_0>
+lstm_cell_46_matmul_readvariableop_resource:	dÈ@
-lstm_cell_46_matmul_1_readvariableop_resource:	2È;
,lstm_cell_46_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_46/BiasAdd/ReadVariableOp˘"lstm_cell_46/MatMul/ReadVariableOp˘$lstm_cell_46/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
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
while_body_288608*
condR
while_cond_288607*K
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
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ÛB
?

lstm_181_while_body_287233.
*lstm_181_while_lstm_181_while_loop_counter4
0lstm_181_while_lstm_181_while_maximum_iterations
lstm_181_while_placeholder 
lstm_181_while_placeholder_1 
lstm_181_while_placeholder_2 
lstm_181_while_placeholder_3-
)lstm_181_while_lstm_181_strided_slice_1_0i
elstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈQ
>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
lstm_181_while_identity
lstm_181_while_identity_1
lstm_181_while_identity_2
lstm_181_while_identity_3
lstm_181_while_identity_4
lstm_181_while_identity_5+
'lstm_181_while_lstm_181_strided_slice_1g
clstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensorM
:lstm_181_while_lstm_cell_46_matmul_readvariableop_resource:	dÈO
<lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈJ
;lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource:	È˘2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp˘1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp˘3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp
@lstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_181/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0lstm_181_while_placeholderIlstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_181/while/lstm_cell_46/MatMulMatMul9lstm_181/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_181/while/lstm_cell_46/MatMul_1MatMullstm_181_while_placeholder_2;lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_181/while/lstm_cell_46/addAddV2,lstm_181/while/lstm_cell_46/MatMul:product:0.lstm_181/while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_181/while/lstm_cell_46/BiasAddBiasAdd#lstm_181/while/lstm_cell_46/add:z:0:lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_181/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_181/while/lstm_cell_46/splitSplit4lstm_181/while/lstm_cell_46/split/split_dim:output:0,lstm_181/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_181/while/lstm_cell_46/SigmoidSigmoid*lstm_181/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_181/while/lstm_cell_46/Sigmoid_1Sigmoid*lstm_181/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_181/while/lstm_cell_46/mulMul)lstm_181/while/lstm_cell_46/Sigmoid_1:y:0lstm_181_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_181/while/lstm_cell_46/ReluRelu*lstm_181/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_181/while/lstm_cell_46/mul_1Mul'lstm_181/while/lstm_cell_46/Sigmoid:y:0.lstm_181/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_181/while/lstm_cell_46/add_1AddV2#lstm_181/while/lstm_cell_46/mul:z:0%lstm_181/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_181/while/lstm_cell_46/Sigmoid_2Sigmoid*lstm_181/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_181/while/lstm_cell_46/Relu_1Relu%lstm_181/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_181/while/lstm_cell_46/mul_2Mul)lstm_181/while/lstm_cell_46/Sigmoid_2:y:00lstm_181/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_181/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_181_while_placeholder_1lstm_181_while_placeholder%lstm_181/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_181/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_181/while/addAddV2lstm_181_while_placeholderlstm_181/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_181/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_181/while/add_1AddV2*lstm_181_while_lstm_181_while_loop_counterlstm_181/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_181/while/IdentityIdentitylstm_181/while/add_1:z:0^lstm_181/while/NoOp*
T0*
_output_shapes
: 
lstm_181/while/Identity_1Identity0lstm_181_while_lstm_181_while_maximum_iterations^lstm_181/while/NoOp*
T0*
_output_shapes
: t
lstm_181/while/Identity_2Identitylstm_181/while/add:z:0^lstm_181/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_181/while/Identity_3IdentityClstm_181/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_181/while/NoOp*
T0*
_output_shapes
: 
lstm_181/while/Identity_4Identity%lstm_181/while/lstm_cell_46/mul_2:z:0^lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/while/Identity_5Identity%lstm_181/while/lstm_cell_46/add_1:z:0^lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_181/while/NoOpNoOp3^lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2^lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp4^lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_181_while_identity lstm_181/while/Identity:output:0"?
lstm_181_while_identity_1"lstm_181/while/Identity_1:output:0"?
lstm_181_while_identity_2"lstm_181/while/Identity_2:output:0"?
lstm_181_while_identity_3"lstm_181/while/Identity_3:output:0"?
lstm_181_while_identity_4"lstm_181/while/Identity_4:output:0"?
lstm_181_while_identity_5"lstm_181/while/Identity_5:output:0"T
'lstm_181_while_lstm_181_strided_slice_1)lstm_181_while_lstm_181_strided_slice_1_0"|
;lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0"~
<lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0"z
:lstm_181_while_lstm_cell_46_matmul_readvariableop_resource<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0"Ì
clstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensorelstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2f
1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp2j
3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ó

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290018

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
µ
?
while_cond_289223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289223___redundant_placeholder04
0while_while_cond_289223___redundant_placeholder14
0while_while_cond_289223___redundant_placeholder24
0while_while_cond_289223___redundant_placeholder3
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
8
?
while_body_288421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288362

inputs>
+lstm_cell_45_matmul_readvariableop_resource:	@
-lstm_cell_45_matmul_1_readvariableop_resource:	d;
,lstm_cell_45_biasadd_readvariableop_resource:	
identity˘#lstm_cell_45/BiasAdd/ReadVariableOp˘"lstm_cell_45/MatMul/ReadVariableOp˘$lstm_cell_45/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_45/ReluRelulstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_45/Relu_1Relulstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
while_body_288278*
condR
while_cond_288277*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ç	
ġ
D__inference_dense_60_layer_call_and_return_conditional_losses_289756

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
µ
?
while_cond_286681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286681___redundant_placeholder04
0while_while_cond_286681___redundant_placeholder14
0while_while_cond_286681___redundant_placeholder24
0while_while_cond_286681___redundant_placeholder3
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
ö
³
)__inference_lstm_182_layer_call_fn_289165

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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286436o
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
while_cond_288134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288134___redundant_placeholder04
0while_while_cond_288134___redundant_placeholder14
0while_while_cond_288134___redundant_placeholder24
0while_while_cond_288134___redundant_placeholder3
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
Ŭ

H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289854

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
?
ó
I__inference_sequential_60_layer_call_and_return_conditional_losses_286946
lstm_180_input"
lstm_180_286919:	"
lstm_180_286921:	d
lstm_180_286923:	"
lstm_181_286926:	dÈ"
lstm_181_286928:	2È
lstm_181_286930:	È!
lstm_182_286933:2(!
lstm_182_286935:
(
lstm_182_286937:(!
dense_60_286940:

dense_60_286942:
identity˘ dense_60/StatefulPartitionedCall˘ lstm_180/StatefulPartitionedCall˘ lstm_181/StatefulPartitionedCall˘ lstm_182/StatefulPartitionedCall
 lstm_180/StatefulPartitionedCallStatefulPartitionedCalllstm_180_inputlstm_180_286919lstm_180_286921lstm_180_286923*
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_286766Ş
 lstm_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_180/StatefulPartitionedCall:output:0lstm_181_286926lstm_181_286928lstm_181_286930*
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286601Ĥ
 lstm_182/StatefulPartitionedCallStatefulPartitionedCall)lstm_181/StatefulPartitionedCall:output:0lstm_182_286933lstm_182_286935lstm_182_286937*
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286436
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)lstm_182/StatefulPartitionedCall:output:0dense_60_286940dense_60_286942*
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
D__inference_dense_60_layer_call_and_return_conditional_losses_286238x
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_60/StatefulPartitionedCall!^lstm_180/StatefulPartitionedCall!^lstm_181/StatefulPartitionedCall!^lstm_182/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 lstm_180/StatefulPartitionedCall lstm_180/StatefulPartitionedCall2D
 lstm_181/StatefulPartitionedCall lstm_181/StatefulPartitionedCall2D
 lstm_182/StatefulPartitionedCall lstm_182/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_180_input
µ
?
while_cond_284801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_284801___redundant_placeholder04
0while_while_cond_284801___redundant_placeholder14
0while_while_cond_284801___redundant_placeholder24
0while_while_cond_284801___redundant_placeholder3
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

lstm_181_while_body_287660.
*lstm_181_while_lstm_181_while_loop_counter4
0lstm_181_while_lstm_181_while_maximum_iterations
lstm_181_while_placeholder 
lstm_181_while_placeholder_1 
lstm_181_while_placeholder_2 
lstm_181_while_placeholder_3-
)lstm_181_while_lstm_181_strided_slice_1_0i
elstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈQ
>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
lstm_181_while_identity
lstm_181_while_identity_1
lstm_181_while_identity_2
lstm_181_while_identity_3
lstm_181_while_identity_4
lstm_181_while_identity_5+
'lstm_181_while_lstm_181_strided_slice_1g
clstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensorM
:lstm_181_while_lstm_cell_46_matmul_readvariableop_resource:	dÈO
<lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈJ
;lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource:	È˘2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp˘1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp˘3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp
@lstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_181/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0lstm_181_while_placeholderIlstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_181/while/lstm_cell_46/MatMulMatMul9lstm_181/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_181/while/lstm_cell_46/MatMul_1MatMullstm_181_while_placeholder_2;lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_181/while/lstm_cell_46/addAddV2,lstm_181/while/lstm_cell_46/MatMul:product:0.lstm_181/while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_181/while/lstm_cell_46/BiasAddBiasAdd#lstm_181/while/lstm_cell_46/add:z:0:lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_181/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_181/while/lstm_cell_46/splitSplit4lstm_181/while/lstm_cell_46/split/split_dim:output:0,lstm_181/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_181/while/lstm_cell_46/SigmoidSigmoid*lstm_181/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_181/while/lstm_cell_46/Sigmoid_1Sigmoid*lstm_181/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_181/while/lstm_cell_46/mulMul)lstm_181/while/lstm_cell_46/Sigmoid_1:y:0lstm_181_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_181/while/lstm_cell_46/ReluRelu*lstm_181/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_181/while/lstm_cell_46/mul_1Mul'lstm_181/while/lstm_cell_46/Sigmoid:y:0.lstm_181/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_181/while/lstm_cell_46/add_1AddV2#lstm_181/while/lstm_cell_46/mul:z:0%lstm_181/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_181/while/lstm_cell_46/Sigmoid_2Sigmoid*lstm_181/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_181/while/lstm_cell_46/Relu_1Relu%lstm_181/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_181/while/lstm_cell_46/mul_2Mul)lstm_181/while/lstm_cell_46/Sigmoid_2:y:00lstm_181/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_181/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_181_while_placeholder_1lstm_181_while_placeholder%lstm_181/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_181/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_181/while/addAddV2lstm_181_while_placeholderlstm_181/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_181/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_181/while/add_1AddV2*lstm_181_while_lstm_181_while_loop_counterlstm_181/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_181/while/IdentityIdentitylstm_181/while/add_1:z:0^lstm_181/while/NoOp*
T0*
_output_shapes
: 
lstm_181/while/Identity_1Identity0lstm_181_while_lstm_181_while_maximum_iterations^lstm_181/while/NoOp*
T0*
_output_shapes
: t
lstm_181/while/Identity_2Identitylstm_181/while/add:z:0^lstm_181/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_181/while/Identity_3IdentityClstm_181/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_181/while/NoOp*
T0*
_output_shapes
: 
lstm_181/while/Identity_4Identity%lstm_181/while/lstm_cell_46/mul_2:z:0^lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/while/Identity_5Identity%lstm_181/while/lstm_cell_46/add_1:z:0^lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_181/while/NoOpNoOp3^lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2^lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp4^lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_181_while_identity lstm_181/while/Identity:output:0"?
lstm_181_while_identity_1"lstm_181/while/Identity_1:output:0"?
lstm_181_while_identity_2"lstm_181/while/Identity_2:output:0"?
lstm_181_while_identity_3"lstm_181/while/Identity_3:output:0"?
lstm_181_while_identity_4"lstm_181/while/Identity_4:output:0"?
lstm_181_while_identity_5"lstm_181/while/Identity_5:output:0"T
'lstm_181_while_lstm_181_strided_slice_1)lstm_181_while_lstm_181_strided_slice_1_0"|
;lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource=lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0"~
<lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource>lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0"z
:lstm_181_while_lstm_cell_46_matmul_readvariableop_resource<lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0"Ì
clstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensorelstm_181_while_tensorarrayv2read_tensorlistgetitem_lstm_181_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2f
1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp1lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp2j
3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp3lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_288893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288893___redundant_placeholder04
0while_while_cond_288893___redundant_placeholder14
0while_while_cond_288893___redundant_placeholder24
0while_while_cond_288893___redundant_placeholder3
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
while_cond_285692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285692___redundant_placeholder04
0while_while_cond_285692___redundant_placeholder14
0while_while_cond_285692___redundant_placeholder24
0while_while_cond_285692___redundant_placeholder3
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
while_body_286352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĉ"
?
while_body_285343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_46_285367_0:	dÈ.
while_lstm_cell_46_285369_0:	2È*
while_lstm_cell_46_285371_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_46_285367:	dÈ,
while_lstm_cell_46_285369:	2È(
while_lstm_cell_46_285371:	È˘*while/lstm_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_285367_0while_lstm_cell_46_285369_0while_lstm_cell_46_285371_0*
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285284Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_285367while_lstm_cell_46_285367_0"8
while_lstm_cell_46_285369while_lstm_cell_46_285369_0"8
while_lstm_cell_46_285371while_lstm_cell_46_285371_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_284992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_284992___redundant_placeholder04
0while_while_cond_284992___redundant_placeholder14
0while_while_cond_284992___redundant_placeholder24
0while_while_cond_284992___redundant_placeholder3
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
à"
Ŭ
while_body_285502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_285526_0:2(-
while_lstm_cell_47_285528_0:
()
while_lstm_cell_47_285530_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_285526:2(+
while_lstm_cell_47_285528:
('
while_lstm_cell_47_285530:(˘*while/lstm_cell_47/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_285526_0while_lstm_cell_47_285528_0while_lstm_cell_47_285530_0*
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285488Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_285526while_lstm_cell_47_285526_0"8
while_lstm_cell_47_285528while_lstm_cell_47_285528_0"8
while_lstm_cell_47_285530while_lstm_cell_47_285530_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
è
ó
-__inference_lstm_cell_47_layer_call_fn_289969

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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285488o
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

ĥ
)__inference_lstm_181_layer_call_fn_288538

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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286070s
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
Ġ

H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284788

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
8
?
while_body_289037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ú


.__inference_sequential_60_layer_call_fn_287035

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
I__inference_sequential_60_layer_call_and_return_conditional_losses_286834o
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
(sequential_60_lstm_181_while_body_284492J
Fsequential_60_lstm_181_while_sequential_60_lstm_181_while_loop_counterP
Lsequential_60_lstm_181_while_sequential_60_lstm_181_while_maximum_iterations,
(sequential_60_lstm_181_while_placeholder.
*sequential_60_lstm_181_while_placeholder_1.
*sequential_60_lstm_181_while_placeholder_2.
*sequential_60_lstm_181_while_placeholder_3I
Esequential_60_lstm_181_while_sequential_60_lstm_181_strided_slice_1_0
sequential_60_lstm_181_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_181_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_60_lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈ_
Lsequential_60_lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_60_lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0:	È)
%sequential_60_lstm_181_while_identity+
'sequential_60_lstm_181_while_identity_1+
'sequential_60_lstm_181_while_identity_2+
'sequential_60_lstm_181_while_identity_3+
'sequential_60_lstm_181_while_identity_4+
'sequential_60_lstm_181_while_identity_5G
Csequential_60_lstm_181_while_sequential_60_lstm_181_strided_slice_1
sequential_60_lstm_181_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_181_tensorarrayunstack_tensorlistfromtensor[
Hsequential_60_lstm_181_while_lstm_cell_46_matmul_readvariableop_resource:	dÈ]
Jsequential_60_lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈX
Isequential_60_lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource:	È˘@sequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp˘?sequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp˘Asequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp
Nsequential_60/lstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_60/lstm_181/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_60_lstm_181_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_181_tensorarrayunstack_tensorlistfromtensor_0(sequential_60_lstm_181_while_placeholderWsequential_60/lstm_181/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpJsequential_60_lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_60/lstm_181/while/lstm_cell_46/MatMulMatMulGsequential_60/lstm_181/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpLsequential_60_lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_60/lstm_181/while/lstm_cell_46/MatMul_1MatMul*sequential_60_lstm_181_while_placeholder_2Isequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_60/lstm_181/while/lstm_cell_46/addAddV2:sequential_60/lstm_181/while/lstm_cell_46/MatMul:product:0<sequential_60/lstm_181/while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpKsequential_60_lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_60/lstm_181/while/lstm_cell_46/BiasAddBiasAdd1sequential_60/lstm_181/while/lstm_cell_46/add:z:0Hsequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_60/lstm_181/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_60/lstm_181/while/lstm_cell_46/splitSplitBsequential_60/lstm_181/while/lstm_cell_46/split/split_dim:output:0:sequential_60/lstm_181/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_60/lstm_181/while/lstm_cell_46/SigmoidSigmoid8sequential_60/lstm_181/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_60/lstm_181/while/lstm_cell_46/Sigmoid_1Sigmoid8sequential_60/lstm_181/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_60/lstm_181/while/lstm_cell_46/mulMul7sequential_60/lstm_181/while/lstm_cell_46/Sigmoid_1:y:0*sequential_60_lstm_181_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_60/lstm_181/while/lstm_cell_46/ReluRelu8sequential_60/lstm_181/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_60/lstm_181/while/lstm_cell_46/mul_1Mul5sequential_60/lstm_181/while/lstm_cell_46/Sigmoid:y:0<sequential_60/lstm_181/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_60/lstm_181/while/lstm_cell_46/add_1AddV21sequential_60/lstm_181/while/lstm_cell_46/mul:z:03sequential_60/lstm_181/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_60/lstm_181/while/lstm_cell_46/Sigmoid_2Sigmoid8sequential_60/lstm_181/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_60/lstm_181/while/lstm_cell_46/Relu_1Relu3sequential_60/lstm_181/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_60/lstm_181/while/lstm_cell_46/mul_2Mul7sequential_60/lstm_181/while/lstm_cell_46/Sigmoid_2:y:0>sequential_60/lstm_181/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_60/lstm_181/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_60_lstm_181_while_placeholder_1(sequential_60_lstm_181_while_placeholder3sequential_60/lstm_181/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_60/lstm_181/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_60/lstm_181/while/addAddV2(sequential_60_lstm_181_while_placeholder+sequential_60/lstm_181/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_60/lstm_181/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_60/lstm_181/while/add_1AddV2Fsequential_60_lstm_181_while_sequential_60_lstm_181_while_loop_counter-sequential_60/lstm_181/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_60/lstm_181/while/IdentityIdentity&sequential_60/lstm_181/while/add_1:z:0"^sequential_60/lstm_181/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_60/lstm_181/while/Identity_1IdentityLsequential_60_lstm_181_while_sequential_60_lstm_181_while_maximum_iterations"^sequential_60/lstm_181/while/NoOp*
T0*
_output_shapes
: 
'sequential_60/lstm_181/while/Identity_2Identity$sequential_60/lstm_181/while/add:z:0"^sequential_60/lstm_181/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_60/lstm_181/while/Identity_3IdentityQsequential_60/lstm_181/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_60/lstm_181/while/NoOp*
T0*
_output_shapes
: ?
'sequential_60/lstm_181/while/Identity_4Identity3sequential_60/lstm_181/while/lstm_cell_46/mul_2:z:0"^sequential_60/lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_60/lstm_181/while/Identity_5Identity3sequential_60/lstm_181/while/lstm_cell_46/add_1:z:0"^sequential_60/lstm_181/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_60/lstm_181/while/NoOpNoOpA^sequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp@^sequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOpB^sequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_60_lstm_181_while_identity.sequential_60/lstm_181/while/Identity:output:0"[
'sequential_60_lstm_181_while_identity_10sequential_60/lstm_181/while/Identity_1:output:0"[
'sequential_60_lstm_181_while_identity_20sequential_60/lstm_181/while/Identity_2:output:0"[
'sequential_60_lstm_181_while_identity_30sequential_60/lstm_181/while/Identity_3:output:0"[
'sequential_60_lstm_181_while_identity_40sequential_60/lstm_181/while/Identity_4:output:0"[
'sequential_60_lstm_181_while_identity_50sequential_60/lstm_181/while/Identity_5:output:0"
Isequential_60_lstm_181_while_lstm_cell_46_biasadd_readvariableop_resourceKsequential_60_lstm_181_while_lstm_cell_46_biasadd_readvariableop_resource_0"
Jsequential_60_lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resourceLsequential_60_lstm_181_while_lstm_cell_46_matmul_1_readvariableop_resource_0"
Hsequential_60_lstm_181_while_lstm_cell_46_matmul_readvariableop_resourceJsequential_60_lstm_181_while_lstm_cell_46_matmul_readvariableop_resource_0"
Csequential_60_lstm_181_while_sequential_60_lstm_181_strided_slice_1Esequential_60_lstm_181_while_sequential_60_lstm_181_strided_slice_1_0"
sequential_60_lstm_181_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_181_tensorarrayunstack_tensorlistfromtensorsequential_60_lstm_181_while_tensorarrayv2read_tensorlistgetitem_sequential_60_lstm_181_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp@sequential_60/lstm_181/while/lstm_cell_46/BiasAdd/ReadVariableOp2
?sequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp?sequential_60/lstm_181/while/lstm_cell_46/MatMul/ReadVariableOp2
Asequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOpAsequential_60/lstm_181/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ç¤

"__inference__traced_restore_290323
file_prefix2
 assignvariableop_dense_60_kernel:
.
 assignvariableop_1_dense_60_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_180_lstm_cell_180_kernel:	M
:assignvariableop_8_lstm_180_lstm_cell_180_recurrent_kernel:	d=
.assignvariableop_9_lstm_180_lstm_cell_180_bias:	D
1assignvariableop_10_lstm_181_lstm_cell_181_kernel:	dÈN
;assignvariableop_11_lstm_181_lstm_cell_181_recurrent_kernel:	2È>
/assignvariableop_12_lstm_181_lstm_cell_181_bias:	ÈC
1assignvariableop_13_lstm_182_lstm_cell_182_kernel:2(M
;assignvariableop_14_lstm_182_lstm_cell_182_recurrent_kernel:
(=
/assignvariableop_15_lstm_182_lstm_cell_182_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_60_kernel_m:
6
(assignvariableop_19_adam_dense_60_bias_m:K
8assignvariableop_20_adam_lstm_180_lstm_cell_180_kernel_m:	U
Bassignvariableop_21_adam_lstm_180_lstm_cell_180_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_180_lstm_cell_180_bias_m:	K
8assignvariableop_23_adam_lstm_181_lstm_cell_181_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_181_lstm_cell_181_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_181_lstm_cell_181_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_182_lstm_cell_182_kernel_m:2(T
Bassignvariableop_27_adam_lstm_182_lstm_cell_182_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_182_lstm_cell_182_bias_m:(<
*assignvariableop_29_adam_dense_60_kernel_v:
6
(assignvariableop_30_adam_dense_60_bias_v:K
8assignvariableop_31_adam_lstm_180_lstm_cell_180_kernel_v:	U
Bassignvariableop_32_adam_lstm_180_lstm_cell_180_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_180_lstm_cell_180_bias_v:	K
8assignvariableop_34_adam_lstm_181_lstm_cell_181_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_181_lstm_cell_181_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_181_lstm_cell_181_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_182_lstm_cell_182_kernel_v:2(T
Bassignvariableop_38_adam_lstm_182_lstm_cell_182_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_182_lstm_cell_182_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_60_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_180_lstm_cell_180_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_180_lstm_cell_180_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_180_lstm_cell_180_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_181_lstm_cell_181_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_181_lstm_cell_181_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_181_lstm_cell_181_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_182_lstm_cell_182_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_182_lstm_cell_182_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_182_lstm_cell_182_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_60_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_60_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_180_lstm_cell_180_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_180_lstm_cell_180_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_180_lstm_cell_180_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_181_lstm_cell_181_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_181_lstm_cell_181_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_181_lstm_cell_181_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_182_lstm_cell_182_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_182_lstm_cell_182_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_182_lstm_cell_182_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_60_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_60_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_180_lstm_cell_180_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_180_lstm_cell_180_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_180_lstm_cell_180_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_181_lstm_cell_181_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_181_lstm_cell_181_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_181_lstm_cell_181_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_182_lstm_cell_182_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_182_lstm_cell_182_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_182_lstm_cell_182_bias_vIdentity_39:output:0"/device:CPU:0*
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
˙7
Ê
while_body_289653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_181_while_cond_287659.
*lstm_181_while_lstm_181_while_loop_counter4
0lstm_181_while_lstm_181_while_maximum_iterations
lstm_181_while_placeholder 
lstm_181_while_placeholder_1 
lstm_181_while_placeholder_2 
lstm_181_while_placeholder_30
,lstm_181_while_less_lstm_181_strided_slice_1F
Blstm_181_while_lstm_181_while_cond_287659___redundant_placeholder0F
Blstm_181_while_lstm_181_while_cond_287659___redundant_placeholder1F
Blstm_181_while_lstm_181_while_cond_287659___redundant_placeholder2F
Blstm_181_while_lstm_181_while_cond_287659___redundant_placeholder3
lstm_181_while_identity

lstm_181/while/LessLesslstm_181_while_placeholder,lstm_181_while_less_lstm_181_strided_slice_1*
T0*
_output_shapes
: ]
lstm_181/while/IdentityIdentitylstm_181/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_181_while_identity lstm_181/while/Identity:output:0*(
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
²

÷
lstm_182_while_cond_287798.
*lstm_182_while_lstm_182_while_loop_counter4
0lstm_182_while_lstm_182_while_maximum_iterations
lstm_182_while_placeholder 
lstm_182_while_placeholder_1 
lstm_182_while_placeholder_2 
lstm_182_while_placeholder_30
,lstm_182_while_less_lstm_182_strided_slice_1F
Blstm_182_while_lstm_182_while_cond_287798___redundant_placeholder0F
Blstm_182_while_lstm_182_while_cond_287798___redundant_placeholder1F
Blstm_182_while_lstm_182_while_cond_287798___redundant_placeholder2F
Blstm_182_while_lstm_182_while_cond_287798___redundant_placeholder3
lstm_182_while_identity

lstm_182/while/LessLesslstm_182_while_placeholder,lstm_182_while_less_lstm_182_strided_slice_1*
T0*
_output_shapes
: ]
lstm_182/while/IdentityIdentitylstm_182/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_182_while_identity lstm_182/while/Identity:output:0*(
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
Ġ

H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284934

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
ò

˘
.__inference_sequential_60_layer_call_fn_286886
lstm_180_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_180_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_60_layer_call_and_return_conditional_losses_286834o
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
_user_specified_namelstm_180_input
µ
?
while_cond_289652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289652___redundant_placeholder04
0while_while_cond_289652___redundant_placeholder14
0while_while_cond_289652___redundant_placeholder24
0while_while_cond_289652___redundant_placeholder3
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
while_cond_285342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285342___redundant_placeholder04
0while_while_cond_285342___redundant_placeholder14
0while_while_cond_285342___redundant_placeholder24
0while_while_cond_285342___redundant_placeholder3
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
while_body_285836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÛB
?

lstm_180_while_body_287094.
*lstm_180_while_lstm_180_while_loop_counter4
0lstm_180_while_lstm_180_while_maximum_iterations
lstm_180_while_placeholder 
lstm_180_while_placeholder_1 
lstm_180_while_placeholder_2 
lstm_180_while_placeholder_3-
)lstm_180_while_lstm_180_strided_slice_1_0i
elstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0:	Q
>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dL
=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0:	
lstm_180_while_identity
lstm_180_while_identity_1
lstm_180_while_identity_2
lstm_180_while_identity_3
lstm_180_while_identity_4
lstm_180_while_identity_5+
'lstm_180_while_lstm_180_strided_slice_1g
clstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensorM
:lstm_180_while_lstm_cell_45_matmul_readvariableop_resource:	O
<lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource:	dJ
;lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource:	˘2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp˘1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp˘3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp
@lstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_180/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0lstm_180_while_placeholderIlstm_180/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_180/while/lstm_cell_45/MatMulMatMul9lstm_180/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_180/while/lstm_cell_45/MatMul_1MatMullstm_180_while_placeholder_2;lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_180/while/lstm_cell_45/addAddV2,lstm_180/while/lstm_cell_45/MatMul:product:0.lstm_180/while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_180/while/lstm_cell_45/BiasAddBiasAdd#lstm_180/while/lstm_cell_45/add:z:0:lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_180/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_180/while/lstm_cell_45/splitSplit4lstm_180/while/lstm_cell_45/split/split_dim:output:0,lstm_180/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_180/while/lstm_cell_45/SigmoidSigmoid*lstm_180/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_180/while/lstm_cell_45/Sigmoid_1Sigmoid*lstm_180/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_180/while/lstm_cell_45/mulMul)lstm_180/while/lstm_cell_45/Sigmoid_1:y:0lstm_180_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_180/while/lstm_cell_45/ReluRelu*lstm_180/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_180/while/lstm_cell_45/mul_1Mul'lstm_180/while/lstm_cell_45/Sigmoid:y:0.lstm_180/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_180/while/lstm_cell_45/add_1AddV2#lstm_180/while/lstm_cell_45/mul:z:0%lstm_180/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_180/while/lstm_cell_45/Sigmoid_2Sigmoid*lstm_180/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_180/while/lstm_cell_45/Relu_1Relu%lstm_180/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_180/while/lstm_cell_45/mul_2Mul)lstm_180/while/lstm_cell_45/Sigmoid_2:y:00lstm_180/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_180/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_180_while_placeholder_1lstm_180_while_placeholder%lstm_180/while/lstm_cell_45/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_180/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_180/while/addAddV2lstm_180_while_placeholderlstm_180/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_180/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_180/while/add_1AddV2*lstm_180_while_lstm_180_while_loop_counterlstm_180/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_180/while/IdentityIdentitylstm_180/while/add_1:z:0^lstm_180/while/NoOp*
T0*
_output_shapes
: 
lstm_180/while/Identity_1Identity0lstm_180_while_lstm_180_while_maximum_iterations^lstm_180/while/NoOp*
T0*
_output_shapes
: t
lstm_180/while/Identity_2Identitylstm_180/while/add:z:0^lstm_180/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_180/while/Identity_3IdentityClstm_180/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_180/while/NoOp*
T0*
_output_shapes
: 
lstm_180/while/Identity_4Identity%lstm_180/while/lstm_cell_45/mul_2:z:0^lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/while/Identity_5Identity%lstm_180/while/lstm_cell_45/add_1:z:0^lstm_180/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_180/while/NoOpNoOp3^lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2^lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp4^lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_180_while_identity lstm_180/while/Identity:output:0"?
lstm_180_while_identity_1"lstm_180/while/Identity_1:output:0"?
lstm_180_while_identity_2"lstm_180/while/Identity_2:output:0"?
lstm_180_while_identity_3"lstm_180/while/Identity_3:output:0"?
lstm_180_while_identity_4"lstm_180/while/Identity_4:output:0"?
lstm_180_while_identity_5"lstm_180/while/Identity_5:output:0"T
'lstm_180_while_lstm_180_strided_slice_1)lstm_180_while_lstm_180_strided_slice_1_0"|
;lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource=lstm_180_while_lstm_cell_45_biasadd_readvariableop_resource_0"~
<lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource>lstm_180_while_lstm_cell_45_matmul_1_readvariableop_resource_0"z
:lstm_180_while_lstm_cell_45_matmul_readvariableop_resource<lstm_180_while_lstm_cell_45_matmul_readvariableop_resource_0"Ì
clstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensorelstm_180_while_tensorarrayv2read_tensorlistgetitem_lstm_180_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2lstm_180/while/lstm_cell_45/BiasAdd/ReadVariableOp2f
1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp1lstm_180/while/lstm_cell_45/MatMul/ReadVariableOp2j
3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp3lstm_180/while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ó

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290050

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
)__inference_lstm_180_layer_call_fn_287911
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_285062|
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
ÎB
ê

lstm_182_while_body_287799.
*lstm_182_while_lstm_182_while_loop_counter4
0lstm_182_while_lstm_182_while_maximum_iterations
lstm_182_while_placeholder 
lstm_182_while_placeholder_1 
lstm_182_while_placeholder_2 
lstm_182_while_placeholder_3-
)lstm_182_while_lstm_182_strided_slice_1_0i
elstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0:2(P
>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(K
=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0:(
lstm_182_while_identity
lstm_182_while_identity_1
lstm_182_while_identity_2
lstm_182_while_identity_3
lstm_182_while_identity_4
lstm_182_while_identity_5+
'lstm_182_while_lstm_182_strided_slice_1g
clstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensorL
:lstm_182_while_lstm_cell_47_matmul_readvariableop_resource:2(N
<lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource:
(I
;lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource:(˘2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp˘1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp˘3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp
@lstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_182/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0lstm_182_while_placeholderIlstm_182/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_182/while/lstm_cell_47/MatMulMatMul9lstm_182/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_182/while/lstm_cell_47/MatMul_1MatMullstm_182_while_placeholder_2;lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_182/while/lstm_cell_47/addAddV2,lstm_182/while/lstm_cell_47/MatMul:product:0.lstm_182/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_182/while/lstm_cell_47/BiasAddBiasAdd#lstm_182/while/lstm_cell_47/add:z:0:lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_182/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_182/while/lstm_cell_47/splitSplit4lstm_182/while/lstm_cell_47/split/split_dim:output:0,lstm_182/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_182/while/lstm_cell_47/SigmoidSigmoid*lstm_182/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_182/while/lstm_cell_47/Sigmoid_1Sigmoid*lstm_182/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_182/while/lstm_cell_47/mulMul)lstm_182/while/lstm_cell_47/Sigmoid_1:y:0lstm_182_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_182/while/lstm_cell_47/ReluRelu*lstm_182/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_182/while/lstm_cell_47/mul_1Mul'lstm_182/while/lstm_cell_47/Sigmoid:y:0.lstm_182/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_182/while/lstm_cell_47/add_1AddV2#lstm_182/while/lstm_cell_47/mul:z:0%lstm_182/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_182/while/lstm_cell_47/Sigmoid_2Sigmoid*lstm_182/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_182/while/lstm_cell_47/Relu_1Relu%lstm_182/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_182/while/lstm_cell_47/mul_2Mul)lstm_182/while/lstm_cell_47/Sigmoid_2:y:00lstm_182/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_182/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_182_while_placeholder_1lstm_182_while_placeholder%lstm_182/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_182/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_182/while/addAddV2lstm_182_while_placeholderlstm_182/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_182/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_182/while/add_1AddV2*lstm_182_while_lstm_182_while_loop_counterlstm_182/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_182/while/IdentityIdentitylstm_182/while/add_1:z:0^lstm_182/while/NoOp*
T0*
_output_shapes
: 
lstm_182/while/Identity_1Identity0lstm_182_while_lstm_182_while_maximum_iterations^lstm_182/while/NoOp*
T0*
_output_shapes
: t
lstm_182/while/Identity_2Identitylstm_182/while/add:z:0^lstm_182/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_182/while/Identity_3IdentityClstm_182/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_182/while/NoOp*
T0*
_output_shapes
: 
lstm_182/while/Identity_4Identity%lstm_182/while/lstm_cell_47/mul_2:z:0^lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/while/Identity_5Identity%lstm_182/while/lstm_cell_47/add_1:z:0^lstm_182/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_182/while/NoOpNoOp3^lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2^lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp4^lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_182_while_identity lstm_182/while/Identity:output:0"?
lstm_182_while_identity_1"lstm_182/while/Identity_1:output:0"?
lstm_182_while_identity_2"lstm_182/while/Identity_2:output:0"?
lstm_182_while_identity_3"lstm_182/while/Identity_3:output:0"?
lstm_182_while_identity_4"lstm_182/while/Identity_4:output:0"?
lstm_182_while_identity_5"lstm_182/while/Identity_5:output:0"T
'lstm_182_while_lstm_182_strided_slice_1)lstm_182_while_lstm_182_strided_slice_1_0"|
;lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource=lstm_182_while_lstm_cell_47_biasadd_readvariableop_resource_0"~
<lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource>lstm_182_while_lstm_cell_47_matmul_1_readvariableop_resource_0"z
:lstm_182_while_lstm_cell_47_matmul_readvariableop_resource<lstm_182_while_lstm_cell_47_matmul_readvariableop_resource_0"Ì
clstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensorelstm_182_while_tensorarrayv2read_tensorlistgetitem_lstm_182_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2lstm_182/while/lstm_cell_47/BiasAdd/ReadVariableOp2f
1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp1lstm_182/while/lstm_cell_47/MatMul/ReadVariableOp2j
3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp3lstm_182/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_181_while_cond_287232.
*lstm_181_while_lstm_181_while_loop_counter4
0lstm_181_while_lstm_181_while_maximum_iterations
lstm_181_while_placeholder 
lstm_181_while_placeholder_1 
lstm_181_while_placeholder_2 
lstm_181_while_placeholder_30
,lstm_181_while_less_lstm_181_strided_slice_1F
Blstm_181_while_lstm_181_while_cond_287232___redundant_placeholder0F
Blstm_181_while_lstm_181_while_cond_287232___redundant_placeholder1F
Blstm_181_while_lstm_181_while_cond_287232___redundant_placeholder2F
Blstm_181_while_lstm_181_while_cond_287232___redundant_placeholder3
lstm_181_while_identity

lstm_181/while/LessLesslstm_181_while_placeholder,lstm_181_while_less_lstm_181_strided_slice_1*
T0*
_output_shapes
: ]
lstm_181/while/IdentityIdentitylstm_181/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_181_while_identity lstm_181/while/Identity:output:0*(
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
while_body_288135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_45_layer_call_fn_289773

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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284788o
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
Ğ
ë
I__inference_sequential_60_layer_call_and_return_conditional_losses_286245

inputs"
lstm_180_285921:	"
lstm_180_285923:	d
lstm_180_285925:	"
lstm_181_286071:	dÈ"
lstm_181_286073:	2È
lstm_181_286075:	È!
lstm_182_286221:2(!
lstm_182_286223:
(
lstm_182_286225:(!
dense_60_286239:

dense_60_286241:
identity˘ dense_60/StatefulPartitionedCall˘ lstm_180/StatefulPartitionedCall˘ lstm_181/StatefulPartitionedCall˘ lstm_182/StatefulPartitionedCall
 lstm_180/StatefulPartitionedCallStatefulPartitionedCallinputslstm_180_285921lstm_180_285923lstm_180_285925*
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_285920Ş
 lstm_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_180/StatefulPartitionedCall:output:0lstm_181_286071lstm_181_286073lstm_181_286075*
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_286070Ĥ
 lstm_182/StatefulPartitionedCallStatefulPartitionedCall)lstm_181/StatefulPartitionedCall:output:0lstm_182_286221lstm_182_286223lstm_182_286225*
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286220
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)lstm_182/StatefulPartitionedCall:output:0dense_60_286239dense_60_286241*
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
D__inference_dense_60_layer_call_and_return_conditional_losses_286238x
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_60/StatefulPartitionedCall!^lstm_180/StatefulPartitionedCall!^lstm_181/StatefulPartitionedCall!^lstm_182/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 lstm_180/StatefulPartitionedCall lstm_180/StatefulPartitionedCall2D
 lstm_181/StatefulPartitionedCall lstm_181/StatefulPartitionedCall2D
 lstm_182/StatefulPartitionedCall lstm_182/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_182_layer_call_and_return_conditional_losses_285571

inputs%
lstm_cell_47_285489:2(%
lstm_cell_47_285491:
(!
lstm_cell_47_285493:(
identity˘$lstm_cell_47/StatefulPartitionedCall˘while;
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
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_285489lstm_cell_47_285491lstm_cell_47_285493*
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285488n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_285489lstm_cell_47_285491lstm_cell_47_285493*
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
while_body_285502*
condR
while_cond_285501*K
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
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_285986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
˙µ
Á
!__inference__wrapped_model_284721
lstm_180_inputU
Bsequential_60_lstm_180_lstm_cell_45_matmul_readvariableop_resource:	W
Dsequential_60_lstm_180_lstm_cell_45_matmul_1_readvariableop_resource:	dR
Csequential_60_lstm_180_lstm_cell_45_biasadd_readvariableop_resource:	U
Bsequential_60_lstm_181_lstm_cell_46_matmul_readvariableop_resource:	dÈW
Dsequential_60_lstm_181_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈR
Csequential_60_lstm_181_lstm_cell_46_biasadd_readvariableop_resource:	ÈT
Bsequential_60_lstm_182_lstm_cell_47_matmul_readvariableop_resource:2(V
Dsequential_60_lstm_182_lstm_cell_47_matmul_1_readvariableop_resource:
(Q
Csequential_60_lstm_182_lstm_cell_47_biasadd_readvariableop_resource:(G
5sequential_60_dense_60_matmul_readvariableop_resource:
D
6sequential_60_dense_60_biasadd_readvariableop_resource:
identity˘-sequential_60/dense_60/BiasAdd/ReadVariableOp˘,sequential_60/dense_60/MatMul/ReadVariableOp˘:sequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp˘9sequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOp˘;sequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp˘sequential_60/lstm_180/while˘:sequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp˘9sequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOp˘;sequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp˘sequential_60/lstm_181/while˘:sequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp˘9sequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOp˘;sequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp˘sequential_60/lstm_182/whileZ
sequential_60/lstm_180/ShapeShapelstm_180_input*
T0*
_output_shapes
:t
*sequential_60/lstm_180/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_60/lstm_180/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_60/lstm_180/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_60/lstm_180/strided_sliceStridedSlice%sequential_60/lstm_180/Shape:output:03sequential_60/lstm_180/strided_slice/stack:output:05sequential_60/lstm_180/strided_slice/stack_1:output:05sequential_60/lstm_180/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_60/lstm_180/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_60/lstm_180/zeros/packedPack-sequential_60/lstm_180/strided_slice:output:0.sequential_60/lstm_180/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_60/lstm_180/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_60/lstm_180/zerosFill,sequential_60/lstm_180/zeros/packed:output:0+sequential_60/lstm_180/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_60/lstm_180/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_60/lstm_180/zeros_1/packedPack-sequential_60/lstm_180/strided_slice:output:00sequential_60/lstm_180/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_60/lstm_180/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_60/lstm_180/zeros_1Fill.sequential_60/lstm_180/zeros_1/packed:output:0-sequential_60/lstm_180/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_60/lstm_180/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_60/lstm_180/transpose	Transposelstm_180_input.sequential_60/lstm_180/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_60/lstm_180/Shape_1Shape$sequential_60/lstm_180/transpose:y:0*
T0*
_output_shapes
:v
,sequential_60/lstm_180/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_180/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_180/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_60/lstm_180/strided_slice_1StridedSlice'sequential_60/lstm_180/Shape_1:output:05sequential_60/lstm_180/strided_slice_1/stack:output:07sequential_60/lstm_180/strided_slice_1/stack_1:output:07sequential_60/lstm_180/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_60/lstm_180/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_60/lstm_180/TensorArrayV2TensorListReserve;sequential_60/lstm_180/TensorArrayV2/element_shape:output:0/sequential_60/lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_60/lstm_180/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_60/lstm_180/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_60/lstm_180/transpose:y:0Usequential_60/lstm_180/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_60/lstm_180/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_180/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_180/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_60/lstm_180/strided_slice_2StridedSlice$sequential_60/lstm_180/transpose:y:05sequential_60/lstm_180/strided_slice_2/stack:output:07sequential_60/lstm_180/strided_slice_2/stack_1:output:07sequential_60/lstm_180/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOpReadVariableOpBsequential_60_lstm_180_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_60/lstm_180/lstm_cell_45/MatMulMatMul/sequential_60/lstm_180/strided_slice_2:output:0Asequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOpDsequential_60_lstm_180_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_60/lstm_180/lstm_cell_45/MatMul_1MatMul%sequential_60/lstm_180/zeros:output:0Csequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_60/lstm_180/lstm_cell_45/addAddV24sequential_60/lstm_180/lstm_cell_45/MatMul:product:06sequential_60/lstm_180/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOpCsequential_60_lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_60/lstm_180/lstm_cell_45/BiasAddBiasAdd+sequential_60/lstm_180/lstm_cell_45/add:z:0Bsequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_60/lstm_180/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_60/lstm_180/lstm_cell_45/splitSplit<sequential_60/lstm_180/lstm_cell_45/split/split_dim:output:04sequential_60/lstm_180/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_60/lstm_180/lstm_cell_45/SigmoidSigmoid2sequential_60/lstm_180/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_60/lstm_180/lstm_cell_45/Sigmoid_1Sigmoid2sequential_60/lstm_180/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_60/lstm_180/lstm_cell_45/mulMul1sequential_60/lstm_180/lstm_cell_45/Sigmoid_1:y:0'sequential_60/lstm_180/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_60/lstm_180/lstm_cell_45/ReluRelu2sequential_60/lstm_180/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_60/lstm_180/lstm_cell_45/mul_1Mul/sequential_60/lstm_180/lstm_cell_45/Sigmoid:y:06sequential_60/lstm_180/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_60/lstm_180/lstm_cell_45/add_1AddV2+sequential_60/lstm_180/lstm_cell_45/mul:z:0-sequential_60/lstm_180/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_60/lstm_180/lstm_cell_45/Sigmoid_2Sigmoid2sequential_60/lstm_180/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_60/lstm_180/lstm_cell_45/Relu_1Relu-sequential_60/lstm_180/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_60/lstm_180/lstm_cell_45/mul_2Mul1sequential_60/lstm_180/lstm_cell_45/Sigmoid_2:y:08sequential_60/lstm_180/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_60/lstm_180/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_60/lstm_180/TensorArrayV2_1TensorListReserve=sequential_60/lstm_180/TensorArrayV2_1/element_shape:output:0/sequential_60/lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_60/lstm_180/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_60/lstm_180/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_60/lstm_180/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_60/lstm_180/whileWhile2sequential_60/lstm_180/while/loop_counter:output:08sequential_60/lstm_180/while/maximum_iterations:output:0$sequential_60/lstm_180/time:output:0/sequential_60/lstm_180/TensorArrayV2_1:handle:0%sequential_60/lstm_180/zeros:output:0'sequential_60/lstm_180/zeros_1:output:0/sequential_60/lstm_180/strided_slice_1:output:0Nsequential_60/lstm_180/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_60_lstm_180_lstm_cell_45_matmul_readvariableop_resourceDsequential_60_lstm_180_lstm_cell_45_matmul_1_readvariableop_resourceCsequential_60_lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
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
(sequential_60_lstm_180_while_body_284353*4
cond,R*
(sequential_60_lstm_180_while_cond_284352*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_60/lstm_180/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_60/lstm_180/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_60/lstm_180/while:output:3Psequential_60/lstm_180/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_60/lstm_180/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_60/lstm_180/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_180/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_60/lstm_180/strided_slice_3StridedSliceBsequential_60/lstm_180/TensorArrayV2Stack/TensorListStack:tensor:05sequential_60/lstm_180/strided_slice_3/stack:output:07sequential_60/lstm_180/strided_slice_3/stack_1:output:07sequential_60/lstm_180/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_60/lstm_180/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_60/lstm_180/transpose_1	TransposeBsequential_60/lstm_180/TensorArrayV2Stack/TensorListStack:tensor:00sequential_60/lstm_180/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_60/lstm_180/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_60/lstm_181/ShapeShape&sequential_60/lstm_180/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_60/lstm_181/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_60/lstm_181/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_60/lstm_181/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_60/lstm_181/strided_sliceStridedSlice%sequential_60/lstm_181/Shape:output:03sequential_60/lstm_181/strided_slice/stack:output:05sequential_60/lstm_181/strided_slice/stack_1:output:05sequential_60/lstm_181/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_60/lstm_181/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_60/lstm_181/zeros/packedPack-sequential_60/lstm_181/strided_slice:output:0.sequential_60/lstm_181/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_60/lstm_181/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_60/lstm_181/zerosFill,sequential_60/lstm_181/zeros/packed:output:0+sequential_60/lstm_181/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_60/lstm_181/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_60/lstm_181/zeros_1/packedPack-sequential_60/lstm_181/strided_slice:output:00sequential_60/lstm_181/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_60/lstm_181/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_60/lstm_181/zeros_1Fill.sequential_60/lstm_181/zeros_1/packed:output:0-sequential_60/lstm_181/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_60/lstm_181/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_60/lstm_181/transpose	Transpose&sequential_60/lstm_180/transpose_1:y:0.sequential_60/lstm_181/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_60/lstm_181/Shape_1Shape$sequential_60/lstm_181/transpose:y:0*
T0*
_output_shapes
:v
,sequential_60/lstm_181/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_181/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_181/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_60/lstm_181/strided_slice_1StridedSlice'sequential_60/lstm_181/Shape_1:output:05sequential_60/lstm_181/strided_slice_1/stack:output:07sequential_60/lstm_181/strided_slice_1/stack_1:output:07sequential_60/lstm_181/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_60/lstm_181/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_60/lstm_181/TensorArrayV2TensorListReserve;sequential_60/lstm_181/TensorArrayV2/element_shape:output:0/sequential_60/lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_60/lstm_181/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_60/lstm_181/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_60/lstm_181/transpose:y:0Usequential_60/lstm_181/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_60/lstm_181/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_181/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_181/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_60/lstm_181/strided_slice_2StridedSlice$sequential_60/lstm_181/transpose:y:05sequential_60/lstm_181/strided_slice_2/stack:output:07sequential_60/lstm_181/strided_slice_2/stack_1:output:07sequential_60/lstm_181/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpBsequential_60_lstm_181_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_60/lstm_181/lstm_cell_46/MatMulMatMul/sequential_60/lstm_181/strided_slice_2:output:0Asequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpDsequential_60_lstm_181_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_60/lstm_181/lstm_cell_46/MatMul_1MatMul%sequential_60/lstm_181/zeros:output:0Csequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_60/lstm_181/lstm_cell_46/addAddV24sequential_60/lstm_181/lstm_cell_46/MatMul:product:06sequential_60/lstm_181/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpCsequential_60_lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_60/lstm_181/lstm_cell_46/BiasAddBiasAdd+sequential_60/lstm_181/lstm_cell_46/add:z:0Bsequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_60/lstm_181/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_60/lstm_181/lstm_cell_46/splitSplit<sequential_60/lstm_181/lstm_cell_46/split/split_dim:output:04sequential_60/lstm_181/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_60/lstm_181/lstm_cell_46/SigmoidSigmoid2sequential_60/lstm_181/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_60/lstm_181/lstm_cell_46/Sigmoid_1Sigmoid2sequential_60/lstm_181/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_60/lstm_181/lstm_cell_46/mulMul1sequential_60/lstm_181/lstm_cell_46/Sigmoid_1:y:0'sequential_60/lstm_181/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_60/lstm_181/lstm_cell_46/ReluRelu2sequential_60/lstm_181/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_60/lstm_181/lstm_cell_46/mul_1Mul/sequential_60/lstm_181/lstm_cell_46/Sigmoid:y:06sequential_60/lstm_181/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_60/lstm_181/lstm_cell_46/add_1AddV2+sequential_60/lstm_181/lstm_cell_46/mul:z:0-sequential_60/lstm_181/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_60/lstm_181/lstm_cell_46/Sigmoid_2Sigmoid2sequential_60/lstm_181/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_60/lstm_181/lstm_cell_46/Relu_1Relu-sequential_60/lstm_181/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_60/lstm_181/lstm_cell_46/mul_2Mul1sequential_60/lstm_181/lstm_cell_46/Sigmoid_2:y:08sequential_60/lstm_181/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_60/lstm_181/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_60/lstm_181/TensorArrayV2_1TensorListReserve=sequential_60/lstm_181/TensorArrayV2_1/element_shape:output:0/sequential_60/lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_60/lstm_181/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_60/lstm_181/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_60/lstm_181/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_60/lstm_181/whileWhile2sequential_60/lstm_181/while/loop_counter:output:08sequential_60/lstm_181/while/maximum_iterations:output:0$sequential_60/lstm_181/time:output:0/sequential_60/lstm_181/TensorArrayV2_1:handle:0%sequential_60/lstm_181/zeros:output:0'sequential_60/lstm_181/zeros_1:output:0/sequential_60/lstm_181/strided_slice_1:output:0Nsequential_60/lstm_181/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_60_lstm_181_lstm_cell_46_matmul_readvariableop_resourceDsequential_60_lstm_181_lstm_cell_46_matmul_1_readvariableop_resourceCsequential_60_lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
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
(sequential_60_lstm_181_while_body_284492*4
cond,R*
(sequential_60_lstm_181_while_cond_284491*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_60/lstm_181/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_60/lstm_181/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_60/lstm_181/while:output:3Psequential_60/lstm_181/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_60/lstm_181/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_60/lstm_181/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_181/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_60/lstm_181/strided_slice_3StridedSliceBsequential_60/lstm_181/TensorArrayV2Stack/TensorListStack:tensor:05sequential_60/lstm_181/strided_slice_3/stack:output:07sequential_60/lstm_181/strided_slice_3/stack_1:output:07sequential_60/lstm_181/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_60/lstm_181/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_60/lstm_181/transpose_1	TransposeBsequential_60/lstm_181/TensorArrayV2Stack/TensorListStack:tensor:00sequential_60/lstm_181/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_60/lstm_181/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_60/lstm_182/ShapeShape&sequential_60/lstm_181/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_60/lstm_182/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_60/lstm_182/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_60/lstm_182/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_60/lstm_182/strided_sliceStridedSlice%sequential_60/lstm_182/Shape:output:03sequential_60/lstm_182/strided_slice/stack:output:05sequential_60/lstm_182/strided_slice/stack_1:output:05sequential_60/lstm_182/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_60/lstm_182/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_60/lstm_182/zeros/packedPack-sequential_60/lstm_182/strided_slice:output:0.sequential_60/lstm_182/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_60/lstm_182/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_60/lstm_182/zerosFill,sequential_60/lstm_182/zeros/packed:output:0+sequential_60/lstm_182/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_60/lstm_182/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_60/lstm_182/zeros_1/packedPack-sequential_60/lstm_182/strided_slice:output:00sequential_60/lstm_182/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_60/lstm_182/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_60/lstm_182/zeros_1Fill.sequential_60/lstm_182/zeros_1/packed:output:0-sequential_60/lstm_182/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_60/lstm_182/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_60/lstm_182/transpose	Transpose&sequential_60/lstm_181/transpose_1:y:0.sequential_60/lstm_182/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_60/lstm_182/Shape_1Shape$sequential_60/lstm_182/transpose:y:0*
T0*
_output_shapes
:v
,sequential_60/lstm_182/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_182/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_182/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_60/lstm_182/strided_slice_1StridedSlice'sequential_60/lstm_182/Shape_1:output:05sequential_60/lstm_182/strided_slice_1/stack:output:07sequential_60/lstm_182/strided_slice_1/stack_1:output:07sequential_60/lstm_182/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_60/lstm_182/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_60/lstm_182/TensorArrayV2TensorListReserve;sequential_60/lstm_182/TensorArrayV2/element_shape:output:0/sequential_60/lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_60/lstm_182/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_60/lstm_182/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_60/lstm_182/transpose:y:0Usequential_60/lstm_182/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_60/lstm_182/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_182/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_60/lstm_182/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_60/lstm_182/strided_slice_2StridedSlice$sequential_60/lstm_182/transpose:y:05sequential_60/lstm_182/strided_slice_2/stack:output:07sequential_60/lstm_182/strided_slice_2/stack_1:output:07sequential_60/lstm_182/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpBsequential_60_lstm_182_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_60/lstm_182/lstm_cell_47/MatMulMatMul/sequential_60/lstm_182/strided_slice_2:output:0Asequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpDsequential_60_lstm_182_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_60/lstm_182/lstm_cell_47/MatMul_1MatMul%sequential_60/lstm_182/zeros:output:0Csequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_60/lstm_182/lstm_cell_47/addAddV24sequential_60/lstm_182/lstm_cell_47/MatMul:product:06sequential_60/lstm_182/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpCsequential_60_lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_60/lstm_182/lstm_cell_47/BiasAddBiasAdd+sequential_60/lstm_182/lstm_cell_47/add:z:0Bsequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_60/lstm_182/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_60/lstm_182/lstm_cell_47/splitSplit<sequential_60/lstm_182/lstm_cell_47/split/split_dim:output:04sequential_60/lstm_182/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_60/lstm_182/lstm_cell_47/SigmoidSigmoid2sequential_60/lstm_182/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_60/lstm_182/lstm_cell_47/Sigmoid_1Sigmoid2sequential_60/lstm_182/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_60/lstm_182/lstm_cell_47/mulMul1sequential_60/lstm_182/lstm_cell_47/Sigmoid_1:y:0'sequential_60/lstm_182/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_60/lstm_182/lstm_cell_47/ReluRelu2sequential_60/lstm_182/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_60/lstm_182/lstm_cell_47/mul_1Mul/sequential_60/lstm_182/lstm_cell_47/Sigmoid:y:06sequential_60/lstm_182/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_60/lstm_182/lstm_cell_47/add_1AddV2+sequential_60/lstm_182/lstm_cell_47/mul:z:0-sequential_60/lstm_182/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_60/lstm_182/lstm_cell_47/Sigmoid_2Sigmoid2sequential_60/lstm_182/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_60/lstm_182/lstm_cell_47/Relu_1Relu-sequential_60/lstm_182/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_60/lstm_182/lstm_cell_47/mul_2Mul1sequential_60/lstm_182/lstm_cell_47/Sigmoid_2:y:08sequential_60/lstm_182/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_60/lstm_182/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_60/lstm_182/TensorArrayV2_1TensorListReserve=sequential_60/lstm_182/TensorArrayV2_1/element_shape:output:0/sequential_60/lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_60/lstm_182/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_60/lstm_182/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_60/lstm_182/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_60/lstm_182/whileWhile2sequential_60/lstm_182/while/loop_counter:output:08sequential_60/lstm_182/while/maximum_iterations:output:0$sequential_60/lstm_182/time:output:0/sequential_60/lstm_182/TensorArrayV2_1:handle:0%sequential_60/lstm_182/zeros:output:0'sequential_60/lstm_182/zeros_1:output:0/sequential_60/lstm_182/strided_slice_1:output:0Nsequential_60/lstm_182/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_60_lstm_182_lstm_cell_47_matmul_readvariableop_resourceDsequential_60_lstm_182_lstm_cell_47_matmul_1_readvariableop_resourceCsequential_60_lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
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
(sequential_60_lstm_182_while_body_284631*4
cond,R*
(sequential_60_lstm_182_while_cond_284630*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_60/lstm_182/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_60/lstm_182/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_60/lstm_182/while:output:3Psequential_60/lstm_182/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_60/lstm_182/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_60/lstm_182/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_60/lstm_182/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_60/lstm_182/strided_slice_3StridedSliceBsequential_60/lstm_182/TensorArrayV2Stack/TensorListStack:tensor:05sequential_60/lstm_182/strided_slice_3/stack:output:07sequential_60/lstm_182/strided_slice_3/stack_1:output:07sequential_60/lstm_182/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_60/lstm_182/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_60/lstm_182/transpose_1	TransposeBsequential_60/lstm_182/TensorArrayV2Stack/TensorListStack:tensor:00sequential_60/lstm_182/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_60/lstm_182/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_60/dense_60/MatMul/ReadVariableOpReadVariableOp5sequential_60_dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_60/dense_60/MatMulMatMul/sequential_60/lstm_182/strided_slice_3:output:04sequential_60/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_60/dense_60/BiasAdd/ReadVariableOpReadVariableOp6sequential_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_60/dense_60/BiasAddBiasAdd'sequential_60/dense_60/MatMul:product:05sequential_60/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_60/dense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_60/dense_60/BiasAdd/ReadVariableOp-^sequential_60/dense_60/MatMul/ReadVariableOp;^sequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp:^sequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOp<^sequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp^sequential_60/lstm_180/while;^sequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp:^sequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOp<^sequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp^sequential_60/lstm_181/while;^sequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp:^sequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOp<^sequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp^sequential_60/lstm_182/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_60/dense_60/BiasAdd/ReadVariableOp-sequential_60/dense_60/BiasAdd/ReadVariableOp2\
,sequential_60/dense_60/MatMul/ReadVariableOp,sequential_60/dense_60/MatMul/ReadVariableOp2x
:sequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp:sequential_60/lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp2v
9sequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOp9sequential_60/lstm_180/lstm_cell_45/MatMul/ReadVariableOp2z
;sequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp;sequential_60/lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp2<
sequential_60/lstm_180/whilesequential_60/lstm_180/while2x
:sequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp:sequential_60/lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp2v
9sequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOp9sequential_60/lstm_181/lstm_cell_46/MatMul/ReadVariableOp2z
;sequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp;sequential_60/lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp2<
sequential_60/lstm_181/whilesequential_60/lstm_181/while2x
:sequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp:sequential_60/lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp2v
9sequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOp9sequential_60/lstm_182/lstm_cell_47/MatMul/ReadVariableOp2z
;sequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp;sequential_60/lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp2<
sequential_60/lstm_182/whilesequential_60/lstm_182/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_180_input
µ
?
while_cond_288750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288750___redundant_placeholder04
0while_while_cond_288750___redundant_placeholder14
0while_while_cond_288750___redundant_placeholder24
0while_while_cond_288750___redundant_placeholder3
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
Ġ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_285284

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
while_body_287992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_45_matmul_readvariableop_resource_0:	H
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_45_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_45_matmul_readvariableop_resource:	F
3while_lstm_cell_45_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_45_biasadd_readvariableop_resource:	˘)while/lstm_cell_45/BiasAdd/ReadVariableOp˘(while/lstm_cell_45/MatMul/ReadVariableOp˘*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_45/ReluRelu!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ö
³
)__inference_lstm_182_layer_call_fn_289154

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
D__inference_lstm_182_layer_call_and_return_conditional_losses_286220o
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
Ç	
ġ
D__inference_dense_60_layer_call_and_return_conditional_losses_286238

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
µ
?
while_cond_288607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_288607___redundant_placeholder04
0while_while_cond_288607___redundant_placeholder14
0while_while_cond_288607___redundant_placeholder24
0while_while_cond_288607___redundant_placeholder3
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
while_body_288608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_46_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_46_biasadd_readvariableop_resource:	È˘)while/lstm_cell_46/BiasAdd/ReadVariableOp˘(while/lstm_cell_46/MatMul/ReadVariableOp˘*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĉ"
?
while_body_284993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_45_285017_0:	.
while_lstm_cell_45_285019_0:	d*
while_lstm_cell_45_285021_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_45_285017:	,
while_lstm_cell_45_285019:	d(
while_lstm_cell_45_285021:	˘*while/lstm_cell_45/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_285017_0while_lstm_cell_45_285019_0while_lstm_cell_45_285021_0*
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_284934Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_45_285017while_lstm_cell_45_285017_0"8
while_lstm_cell_45_285019while_lstm_cell_45_285019_0"8
while_lstm_cell_45_285021while_lstm_cell_45_285021_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

D__inference_lstm_182_layer_call_and_return_conditional_losses_285762

inputs%
lstm_cell_47_285680:2(%
lstm_cell_47_285682:
(!
lstm_cell_47_285684:(
identity˘$lstm_cell_47/StatefulPartitionedCall˘while;
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
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_285680lstm_cell_47_285682lstm_cell_47_285684*
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285634n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_285680lstm_cell_47_285682lstm_cell_47_285684*
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
while_body_285693*
condR
while_cond_285692*K
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
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs

µ
)__inference_lstm_182_layer_call_fn_289132
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_285571o
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
ħ

I__inference_sequential_60_layer_call_and_return_conditional_losses_287889

inputsG
4lstm_180_lstm_cell_45_matmul_readvariableop_resource:	I
6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource:	dD
5lstm_180_lstm_cell_45_biasadd_readvariableop_resource:	G
4lstm_181_lstm_cell_46_matmul_readvariableop_resource:	dÈI
6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource:	2ÈD
5lstm_181_lstm_cell_46_biasadd_readvariableop_resource:	ÈF
4lstm_182_lstm_cell_47_matmul_readvariableop_resource:2(H
6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource:
(C
5lstm_182_lstm_cell_47_biasadd_readvariableop_resource:(9
'dense_60_matmul_readvariableop_resource:
6
(dense_60_biasadd_readvariableop_resource:
identity˘dense_60/BiasAdd/ReadVariableOp˘dense_60/MatMul/ReadVariableOp˘,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp˘+lstm_180/lstm_cell_45/MatMul/ReadVariableOp˘-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp˘lstm_180/while˘,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp˘+lstm_181/lstm_cell_46/MatMul/ReadVariableOp˘-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp˘lstm_181/while˘,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp˘+lstm_182/lstm_cell_47/MatMul/ReadVariableOp˘-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp˘lstm_182/whileD
lstm_180/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_180/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_180/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_180/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_180/strided_sliceStridedSlicelstm_180/Shape:output:0%lstm_180/strided_slice/stack:output:0'lstm_180/strided_slice/stack_1:output:0'lstm_180/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_180/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_180/zeros/packedPacklstm_180/strided_slice:output:0 lstm_180/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_180/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_180/zerosFilllstm_180/zeros/packed:output:0lstm_180/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_180/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_180/zeros_1/packedPacklstm_180/strided_slice:output:0"lstm_180/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_180/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_180/zeros_1Fill lstm_180/zeros_1/packed:output:0lstm_180/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_180/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_180/transpose	Transposeinputs lstm_180/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_180/Shape_1Shapelstm_180/transpose:y:0*
T0*
_output_shapes
:h
lstm_180/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_180/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_180/strided_slice_1StridedSlicelstm_180/Shape_1:output:0'lstm_180/strided_slice_1/stack:output:0)lstm_180/strided_slice_1/stack_1:output:0)lstm_180/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_180/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_180/TensorArrayV2TensorListReserve-lstm_180/TensorArrayV2/element_shape:output:0!lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_180/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_180/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_180/transpose:y:0Glstm_180/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_180/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_180/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_180/strided_slice_2StridedSlicelstm_180/transpose:y:0'lstm_180/strided_slice_2/stack:output:0)lstm_180/strided_slice_2/stack_1:output:0)lstm_180/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_180/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp4lstm_180_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_180/lstm_cell_45/MatMulMatMul!lstm_180/strided_slice_2:output:03lstm_180/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_180/lstm_cell_45/MatMul_1MatMullstm_180/zeros:output:05lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_180/lstm_cell_45/addAddV2&lstm_180/lstm_cell_45/MatMul:product:0(lstm_180/lstm_cell_45/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp5lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_180/lstm_cell_45/BiasAddBiasAddlstm_180/lstm_cell_45/add:z:04lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_180/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_180/lstm_cell_45/splitSplit.lstm_180/lstm_cell_45/split/split_dim:output:0&lstm_180/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_180/lstm_cell_45/SigmoidSigmoid$lstm_180/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/Sigmoid_1Sigmoid$lstm_180/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/mulMul#lstm_180/lstm_cell_45/Sigmoid_1:y:0lstm_180/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_180/lstm_cell_45/ReluRelu$lstm_180/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_180/lstm_cell_45/mul_1Mul!lstm_180/lstm_cell_45/Sigmoid:y:0(lstm_180/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/add_1AddV2lstm_180/lstm_cell_45/mul:z:0lstm_180/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_180/lstm_cell_45/Sigmoid_2Sigmoid$lstm_180/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_180/lstm_cell_45/Relu_1Relulstm_180/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_180/lstm_cell_45/mul_2Mul#lstm_180/lstm_cell_45/Sigmoid_2:y:0*lstm_180/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_180/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_180/TensorArrayV2_1TensorListReserve/lstm_180/TensorArrayV2_1/element_shape:output:0!lstm_180/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_180/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_180/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_180/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_180/whileWhile$lstm_180/while/loop_counter:output:0*lstm_180/while/maximum_iterations:output:0lstm_180/time:output:0!lstm_180/TensorArrayV2_1:handle:0lstm_180/zeros:output:0lstm_180/zeros_1:output:0!lstm_180/strided_slice_1:output:0@lstm_180/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_180_lstm_cell_45_matmul_readvariableop_resource6lstm_180_lstm_cell_45_matmul_1_readvariableop_resource5lstm_180_lstm_cell_45_biasadd_readvariableop_resource*
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
lstm_180_while_body_287521*&
condR
lstm_180_while_cond_287520*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_180/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_180/TensorArrayV2Stack/TensorListStackTensorListStacklstm_180/while:output:3Blstm_180/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_180/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_180/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_180/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_180/strided_slice_3StridedSlice4lstm_180/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_180/strided_slice_3/stack:output:0)lstm_180/strided_slice_3/stack_1:output:0)lstm_180/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_180/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_180/transpose_1	Transpose4lstm_180/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_180/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_180/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_181/ShapeShapelstm_180/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_181/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_181/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_181/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_181/strided_sliceStridedSlicelstm_181/Shape:output:0%lstm_181/strided_slice/stack:output:0'lstm_181/strided_slice/stack_1:output:0'lstm_181/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_181/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_181/zeros/packedPacklstm_181/strided_slice:output:0 lstm_181/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_181/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_181/zerosFilllstm_181/zeros/packed:output:0lstm_181/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_181/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_181/zeros_1/packedPacklstm_181/strided_slice:output:0"lstm_181/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_181/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_181/zeros_1Fill lstm_181/zeros_1/packed:output:0lstm_181/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_181/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_181/transpose	Transposelstm_180/transpose_1:y:0 lstm_181/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_181/Shape_1Shapelstm_181/transpose:y:0*
T0*
_output_shapes
:h
lstm_181/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_181/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_181/strided_slice_1StridedSlicelstm_181/Shape_1:output:0'lstm_181/strided_slice_1/stack:output:0)lstm_181/strided_slice_1/stack_1:output:0)lstm_181/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_181/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_181/TensorArrayV2TensorListReserve-lstm_181/TensorArrayV2/element_shape:output:0!lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_181/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_181/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_181/transpose:y:0Glstm_181/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_181/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_181/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_181/strided_slice_2StridedSlicelstm_181/transpose:y:0'lstm_181/strided_slice_2/stack:output:0)lstm_181/strided_slice_2/stack_1:output:0)lstm_181/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_181/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp4lstm_181_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_181/lstm_cell_46/MatMulMatMul!lstm_181/strided_slice_2:output:03lstm_181/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_181/lstm_cell_46/MatMul_1MatMullstm_181/zeros:output:05lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_181/lstm_cell_46/addAddV2&lstm_181/lstm_cell_46/MatMul:product:0(lstm_181/lstm_cell_46/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp5lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_181/lstm_cell_46/BiasAddBiasAddlstm_181/lstm_cell_46/add:z:04lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_181/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_181/lstm_cell_46/splitSplit.lstm_181/lstm_cell_46/split/split_dim:output:0&lstm_181/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_181/lstm_cell_46/SigmoidSigmoid$lstm_181/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/Sigmoid_1Sigmoid$lstm_181/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/mulMul#lstm_181/lstm_cell_46/Sigmoid_1:y:0lstm_181/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_181/lstm_cell_46/ReluRelu$lstm_181/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_181/lstm_cell_46/mul_1Mul!lstm_181/lstm_cell_46/Sigmoid:y:0(lstm_181/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/add_1AddV2lstm_181/lstm_cell_46/mul:z:0lstm_181/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_181/lstm_cell_46/Sigmoid_2Sigmoid$lstm_181/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_181/lstm_cell_46/Relu_1Relulstm_181/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_181/lstm_cell_46/mul_2Mul#lstm_181/lstm_cell_46/Sigmoid_2:y:0*lstm_181/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_181/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_181/TensorArrayV2_1TensorListReserve/lstm_181/TensorArrayV2_1/element_shape:output:0!lstm_181/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_181/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_181/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_181/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_181/whileWhile$lstm_181/while/loop_counter:output:0*lstm_181/while/maximum_iterations:output:0lstm_181/time:output:0!lstm_181/TensorArrayV2_1:handle:0lstm_181/zeros:output:0lstm_181/zeros_1:output:0!lstm_181/strided_slice_1:output:0@lstm_181/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_181_lstm_cell_46_matmul_readvariableop_resource6lstm_181_lstm_cell_46_matmul_1_readvariableop_resource5lstm_181_lstm_cell_46_biasadd_readvariableop_resource*
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
lstm_181_while_body_287660*&
condR
lstm_181_while_cond_287659*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_181/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_181/TensorArrayV2Stack/TensorListStackTensorListStacklstm_181/while:output:3Blstm_181/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_181/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_181/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_181/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_181/strided_slice_3StridedSlice4lstm_181/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_181/strided_slice_3/stack:output:0)lstm_181/strided_slice_3/stack_1:output:0)lstm_181/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_181/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_181/transpose_1	Transpose4lstm_181/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_181/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_181/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_182/ShapeShapelstm_181/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_182/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_182/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_182/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_182/strided_sliceStridedSlicelstm_182/Shape:output:0%lstm_182/strided_slice/stack:output:0'lstm_182/strided_slice/stack_1:output:0'lstm_182/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_182/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_182/zeros/packedPacklstm_182/strided_slice:output:0 lstm_182/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_182/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_182/zerosFilllstm_182/zeros/packed:output:0lstm_182/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_182/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_182/zeros_1/packedPacklstm_182/strided_slice:output:0"lstm_182/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_182/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_182/zeros_1Fill lstm_182/zeros_1/packed:output:0lstm_182/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_182/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_182/transpose	Transposelstm_181/transpose_1:y:0 lstm_182/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_182/Shape_1Shapelstm_182/transpose:y:0*
T0*
_output_shapes
:h
lstm_182/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_182/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_182/strided_slice_1StridedSlicelstm_182/Shape_1:output:0'lstm_182/strided_slice_1/stack:output:0)lstm_182/strided_slice_1/stack_1:output:0)lstm_182/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_182/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_182/TensorArrayV2TensorListReserve-lstm_182/TensorArrayV2/element_shape:output:0!lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_182/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_182/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_182/transpose:y:0Glstm_182/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_182/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_182/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_182/strided_slice_2StridedSlicelstm_182/transpose:y:0'lstm_182/strided_slice_2/stack:output:0)lstm_182/strided_slice_2/stack_1:output:0)lstm_182/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_182/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp4lstm_182_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_182/lstm_cell_47/MatMulMatMul!lstm_182/strided_slice_2:output:03lstm_182/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_182/lstm_cell_47/MatMul_1MatMullstm_182/zeros:output:05lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_182/lstm_cell_47/addAddV2&lstm_182/lstm_cell_47/MatMul:product:0(lstm_182/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp5lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_182/lstm_cell_47/BiasAddBiasAddlstm_182/lstm_cell_47/add:z:04lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_182/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_182/lstm_cell_47/splitSplit.lstm_182/lstm_cell_47/split/split_dim:output:0&lstm_182/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_182/lstm_cell_47/SigmoidSigmoid$lstm_182/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/Sigmoid_1Sigmoid$lstm_182/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/mulMul#lstm_182/lstm_cell_47/Sigmoid_1:y:0lstm_182/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_182/lstm_cell_47/ReluRelu$lstm_182/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_182/lstm_cell_47/mul_1Mul!lstm_182/lstm_cell_47/Sigmoid:y:0(lstm_182/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/add_1AddV2lstm_182/lstm_cell_47/mul:z:0lstm_182/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_182/lstm_cell_47/Sigmoid_2Sigmoid$lstm_182/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_182/lstm_cell_47/Relu_1Relulstm_182/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_182/lstm_cell_47/mul_2Mul#lstm_182/lstm_cell_47/Sigmoid_2:y:0*lstm_182/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_182/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_182/TensorArrayV2_1TensorListReserve/lstm_182/TensorArrayV2_1/element_shape:output:0!lstm_182/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_182/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_182/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_182/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_182/whileWhile$lstm_182/while/loop_counter:output:0*lstm_182/while/maximum_iterations:output:0lstm_182/time:output:0!lstm_182/TensorArrayV2_1:handle:0lstm_182/zeros:output:0lstm_182/zeros_1:output:0!lstm_182/strided_slice_1:output:0@lstm_182/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_182_lstm_cell_47_matmul_readvariableop_resource6lstm_182_lstm_cell_47_matmul_1_readvariableop_resource5lstm_182_lstm_cell_47_biasadd_readvariableop_resource*
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
lstm_182_while_body_287799*&
condR
lstm_182_while_cond_287798*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_182/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_182/TensorArrayV2Stack/TensorListStackTensorListStacklstm_182/while:output:3Blstm_182/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_182/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_182/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_182/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_182/strided_slice_3StridedSlice4lstm_182/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_182/strided_slice_3/stack:output:0)lstm_182/strided_slice_3/stack_1:output:0)lstm_182/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_182/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_182/transpose_1	Transpose4lstm_182/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_182/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_182/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_60/MatMulMatMul!lstm_182/strided_slice_3:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_60/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp-^lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp,^lstm_180/lstm_cell_45/MatMul/ReadVariableOp.^lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp^lstm_180/while-^lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp,^lstm_181/lstm_cell_46/MatMul/ReadVariableOp.^lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_181/while-^lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp,^lstm_182/lstm_cell_47/MatMul/ReadVariableOp.^lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_182/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2\
,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp,lstm_180/lstm_cell_45/BiasAdd/ReadVariableOp2Z
+lstm_180/lstm_cell_45/MatMul/ReadVariableOp+lstm_180/lstm_cell_45/MatMul/ReadVariableOp2^
-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp-lstm_180/lstm_cell_45/MatMul_1/ReadVariableOp2 
lstm_180/whilelstm_180/while2\
,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp,lstm_181/lstm_cell_46/BiasAdd/ReadVariableOp2Z
+lstm_181/lstm_cell_46/MatMul/ReadVariableOp+lstm_181/lstm_cell_46/MatMul/ReadVariableOp2^
-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp-lstm_181/lstm_cell_46/MatMul_1/ReadVariableOp2 
lstm_181/whilelstm_181/while2\
,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp,lstm_182/lstm_cell_47/BiasAdd/ReadVariableOp2Z
+lstm_182/lstm_cell_47/MatMul/ReadVariableOp+lstm_182/lstm_cell_47/MatMul/ReadVariableOp2^
-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp-lstm_182/lstm_cell_47/MatMul_1/ReadVariableOp2 
lstm_182/whilelstm_182/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_285634

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
ş

(sequential_60_lstm_182_while_cond_284630J
Fsequential_60_lstm_182_while_sequential_60_lstm_182_while_loop_counterP
Lsequential_60_lstm_182_while_sequential_60_lstm_182_while_maximum_iterations,
(sequential_60_lstm_182_while_placeholder.
*sequential_60_lstm_182_while_placeholder_1.
*sequential_60_lstm_182_while_placeholder_2.
*sequential_60_lstm_182_while_placeholder_3L
Hsequential_60_lstm_182_while_less_sequential_60_lstm_182_strided_slice_1b
^sequential_60_lstm_182_while_sequential_60_lstm_182_while_cond_284630___redundant_placeholder0b
^sequential_60_lstm_182_while_sequential_60_lstm_182_while_cond_284630___redundant_placeholder1b
^sequential_60_lstm_182_while_sequential_60_lstm_182_while_cond_284630___redundant_placeholder2b
^sequential_60_lstm_182_while_sequential_60_lstm_182_while_cond_284630___redundant_placeholder3)
%sequential_60_lstm_182_while_identity
?
!sequential_60/lstm_182/while/LessLess(sequential_60_lstm_182_while_placeholderHsequential_60_lstm_182_while_less_sequential_60_lstm_182_strided_slice_1*
T0*
_output_shapes
: y
%sequential_60/lstm_182/while/IdentityIdentity%sequential_60/lstm_182/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_60_lstm_182_while_identity.sequential_60/lstm_182/while/Identity:output:0*(
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
while_body_289367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:2(E
3while_lstm_cell_47_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_47_biasadd_readvariableop_resource:(˘)while/lstm_cell_47/BiasAdd/ReadVariableOp˘(while/lstm_cell_47/MatMul/ReadVariableOp˘*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_180_while_cond_287093.
*lstm_180_while_lstm_180_while_loop_counter4
0lstm_180_while_lstm_180_while_maximum_iterations
lstm_180_while_placeholder 
lstm_180_while_placeholder_1 
lstm_180_while_placeholder_2 
lstm_180_while_placeholder_30
,lstm_180_while_less_lstm_180_strided_slice_1F
Blstm_180_while_lstm_180_while_cond_287093___redundant_placeholder0F
Blstm_180_while_lstm_180_while_cond_287093___redundant_placeholder1F
Blstm_180_while_lstm_180_while_cond_287093___redundant_placeholder2F
Blstm_180_while_lstm_180_while_cond_287093___redundant_placeholder3
lstm_180_while_identity

lstm_180/while/LessLesslstm_180_while_placeholder,lstm_180_while_less_lstm_180_strided_slice_1*
T0*
_output_shapes
: ]
lstm_180/while/IdentityIdentitylstm_180/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_180_while_identity lstm_180/while/Identity:output:0*(
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
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_180_input;
 serving_default_lstm_180_input:0˙˙˙˙˙˙˙˙˙<
dense_600
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
2dense_60/kernel
:2dense_60/bias
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
0:.	2lstm_180/lstm_cell_180/kernel
::8	d2'lstm_180/lstm_cell_180/recurrent_kernel
*:(2lstm_180/lstm_cell_180/bias
0:.	dÈ2lstm_181/lstm_cell_181/kernel
::8	2È2'lstm_181/lstm_cell_181/recurrent_kernel
*:(È2lstm_181/lstm_cell_181/bias
/:-2(2lstm_182/lstm_cell_182/kernel
9:7
(2'lstm_182/lstm_cell_182/recurrent_kernel
):'(2lstm_182/lstm_cell_182/bias
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
2Adam/dense_60/kernel/m
 :2Adam/dense_60/bias/m
5:3	2$Adam/lstm_180/lstm_cell_180/kernel/m
?:=	d2.Adam/lstm_180/lstm_cell_180/recurrent_kernel/m
/:-2"Adam/lstm_180/lstm_cell_180/bias/m
5:3	dÈ2$Adam/lstm_181/lstm_cell_181/kernel/m
?:=	2È2.Adam/lstm_181/lstm_cell_181/recurrent_kernel/m
/:-È2"Adam/lstm_181/lstm_cell_181/bias/m
4:22(2$Adam/lstm_182/lstm_cell_182/kernel/m
>:<
(2.Adam/lstm_182/lstm_cell_182/recurrent_kernel/m
.:,(2"Adam/lstm_182/lstm_cell_182/bias/m
&:$
2Adam/dense_60/kernel/v
 :2Adam/dense_60/bias/v
5:3	2$Adam/lstm_180/lstm_cell_180/kernel/v
?:=	d2.Adam/lstm_180/lstm_cell_180/recurrent_kernel/v
/:-2"Adam/lstm_180/lstm_cell_180/bias/v
5:3	dÈ2$Adam/lstm_181/lstm_cell_181/kernel/v
?:=	2È2.Adam/lstm_181/lstm_cell_181/recurrent_kernel/v
/:-È2"Adam/lstm_181/lstm_cell_181/bias/v
4:22(2$Adam/lstm_182/lstm_cell_182/kernel/v
>:<
(2.Adam/lstm_182/lstm_cell_182/recurrent_kernel/v
.:,(2"Adam/lstm_182/lstm_cell_182/bias/v
2
.__inference_sequential_60_layer_call_fn_286270
.__inference_sequential_60_layer_call_fn_287008
.__inference_sequential_60_layer_call_fn_287035
.__inference_sequential_60_layer_call_fn_286886À
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
I__inference_sequential_60_layer_call_and_return_conditional_losses_287462
I__inference_sequential_60_layer_call_and_return_conditional_losses_287889
I__inference_sequential_60_layer_call_and_return_conditional_losses_286916
I__inference_sequential_60_layer_call_and_return_conditional_losses_286946À
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
!__inference__wrapped_model_284721lstm_180_input"
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
)__inference_lstm_180_layer_call_fn_287900
)__inference_lstm_180_layer_call_fn_287911
)__inference_lstm_180_layer_call_fn_287922
)__inference_lstm_180_layer_call_fn_287933Ġ
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288076
D__inference_lstm_180_layer_call_and_return_conditional_losses_288219
D__inference_lstm_180_layer_call_and_return_conditional_losses_288362
D__inference_lstm_180_layer_call_and_return_conditional_losses_288505Ġ
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
)__inference_lstm_181_layer_call_fn_288516
)__inference_lstm_181_layer_call_fn_288527
)__inference_lstm_181_layer_call_fn_288538
)__inference_lstm_181_layer_call_fn_288549Ġ
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_288692
D__inference_lstm_181_layer_call_and_return_conditional_losses_288835
D__inference_lstm_181_layer_call_and_return_conditional_losses_288978
D__inference_lstm_181_layer_call_and_return_conditional_losses_289121Ġ
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
)__inference_lstm_182_layer_call_fn_289132
)__inference_lstm_182_layer_call_fn_289143
)__inference_lstm_182_layer_call_fn_289154
)__inference_lstm_182_layer_call_fn_289165Ġ
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_289308
D__inference_lstm_182_layer_call_and_return_conditional_losses_289451
D__inference_lstm_182_layer_call_and_return_conditional_losses_289594
D__inference_lstm_182_layer_call_and_return_conditional_losses_289737Ġ
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
)__inference_dense_60_layer_call_fn_289746˘
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
D__inference_dense_60_layer_call_and_return_conditional_losses_289756˘
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
$__inference_signature_wrapper_286981lstm_180_input"
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
-__inference_lstm_cell_45_layer_call_fn_289773
-__inference_lstm_cell_45_layer_call_fn_289790?
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289822
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289854?
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
-__inference_lstm_cell_46_layer_call_fn_289871
-__inference_lstm_cell_46_layer_call_fn_289888?
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289920
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289952?
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
-__inference_lstm_cell_47_layer_call_fn_289969
-__inference_lstm_cell_47_layer_call_fn_289986?
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290018
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290050?
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
!__inference__wrapped_model_284721-./012345!";˘8
1˘.
,)
lstm_180_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_60"
dense_60˙˙˙˙˙˙˙˙˙¤
D__inference_dense_60_layer_call_and_return_conditional_losses_289756\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_60_layer_call_fn_289746O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_180_layer_call_and_return_conditional_losses_288076-./O˘L
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288219-./O˘L
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288362q-./?˘<
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
D__inference_lstm_180_layer_call_and_return_conditional_losses_288505q-./?˘<
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
)__inference_lstm_180_layer_call_fn_287900}-./O˘L
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
)__inference_lstm_180_layer_call_fn_287911}-./O˘L
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
)__inference_lstm_180_layer_call_fn_287922d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_180_layer_call_fn_287933d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_181_layer_call_and_return_conditional_losses_288692012O˘L
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_288835012O˘L
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_288978q012?˘<
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
D__inference_lstm_181_layer_call_and_return_conditional_losses_289121q012?˘<
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
)__inference_lstm_181_layer_call_fn_288516}012O˘L
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
)__inference_lstm_181_layer_call_fn_288527}012O˘L
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
)__inference_lstm_181_layer_call_fn_288538d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_181_layer_call_fn_288549d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_182_layer_call_and_return_conditional_losses_289308}345O˘L
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_289451}345O˘L
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_289594m345?˘<
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
D__inference_lstm_182_layer_call_and_return_conditional_losses_289737m345?˘<
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
)__inference_lstm_182_layer_call_fn_289132p345O˘L
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
)__inference_lstm_182_layer_call_fn_289143p345O˘L
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
)__inference_lstm_182_layer_call_fn_289154`345?˘<
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
)__inference_lstm_182_layer_call_fn_289165`345?˘<
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289822ŭ-./˘}
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
H__inference_lstm_cell_45_layer_call_and_return_conditional_losses_289854ŭ-./˘}
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
-__inference_lstm_cell_45_layer_call_fn_289773í-./˘}
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
-__inference_lstm_cell_45_layer_call_fn_289790í-./˘}
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289920ŭ012˘}
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_289952ŭ012˘}
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
-__inference_lstm_cell_46_layer_call_fn_289871í012˘}
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
-__inference_lstm_cell_46_layer_call_fn_289888í012˘}
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290018ŭ345˘}
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_290050ŭ345˘}
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
-__inference_lstm_cell_47_layer_call_fn_289969í345˘}
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
-__inference_lstm_cell_47_layer_call_fn_289986í345˘}
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
I__inference_sequential_60_layer_call_and_return_conditional_losses_286916y-./012345!"C˘@
9˘6
,)
lstm_180_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_60_layer_call_and_return_conditional_losses_286946y-./012345!"C˘@
9˘6
,)
lstm_180_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_60_layer_call_and_return_conditional_losses_287462q-./012345!";˘8
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
I__inference_sequential_60_layer_call_and_return_conditional_losses_287889q-./012345!";˘8
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
.__inference_sequential_60_layer_call_fn_286270l-./012345!"C˘@
9˘6
,)
lstm_180_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_60_layer_call_fn_286886l-./012345!"C˘@
9˘6
,)
lstm_180_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_60_layer_call_fn_287008d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_60_layer_call_fn_287035d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_286981-./012345!"M˘J
˘ 
CŞ@
>
lstm_180_input,)
lstm_180_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_60"
dense_60˙˙˙˙˙˙˙˙˙