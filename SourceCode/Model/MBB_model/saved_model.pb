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
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

:
*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
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
lstm_153/lstm_cell_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_153/lstm_cell_153/kernel

1lstm_153/lstm_cell_153/kernel/Read/ReadVariableOpReadVariableOplstm_153/lstm_cell_153/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_153/lstm_cell_153/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_153/lstm_cell_153/recurrent_kernel
¤
;lstm_153/lstm_cell_153/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_153/lstm_cell_153/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_153/lstm_cell_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_153/lstm_cell_153/bias

/lstm_153/lstm_cell_153/bias/Read/ReadVariableOpReadVariableOplstm_153/lstm_cell_153/bias*
_output_shapes	
:*
dtype0

lstm_154/lstm_cell_154/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_154/lstm_cell_154/kernel

1lstm_154/lstm_cell_154/kernel/Read/ReadVariableOpReadVariableOplstm_154/lstm_cell_154/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_154/lstm_cell_154/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_154/lstm_cell_154/recurrent_kernel
¤
;lstm_154/lstm_cell_154/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_154/lstm_cell_154/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_154/lstm_cell_154/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_154/lstm_cell_154/bias

/lstm_154/lstm_cell_154/bias/Read/ReadVariableOpReadVariableOplstm_154/lstm_cell_154/bias*
_output_shapes	
:È*
dtype0

lstm_155/lstm_cell_155/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_155/lstm_cell_155/kernel

1lstm_155/lstm_cell_155/kernel/Read/ReadVariableOpReadVariableOplstm_155/lstm_cell_155/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_155/lstm_cell_155/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_155/lstm_cell_155/recurrent_kernel
£
;lstm_155/lstm_cell_155/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_155/lstm_cell_155/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_155/lstm_cell_155/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_155/lstm_cell_155/bias

/lstm_155/lstm_cell_155/bias/Read/ReadVariableOpReadVariableOplstm_155/lstm_cell_155/bias*
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
Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_51/kernel/m

*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/m
y
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_153/lstm_cell_153/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_153/lstm_cell_153/kernel/m

8Adam/lstm_153/lstm_cell_153/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_153/lstm_cell_153/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_153/lstm_cell_153/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_153/lstm_cell_153/recurrent_kernel/m
²
BAdam/lstm_153/lstm_cell_153/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_153/lstm_cell_153/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_153/lstm_cell_153/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_153/lstm_cell_153/bias/m

6Adam/lstm_153/lstm_cell_153/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_153/lstm_cell_153/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_154/lstm_cell_154/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_154/lstm_cell_154/kernel/m

8Adam/lstm_154/lstm_cell_154/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_154/lstm_cell_154/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_154/lstm_cell_154/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_154/lstm_cell_154/recurrent_kernel/m
²
BAdam/lstm_154/lstm_cell_154/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_154/lstm_cell_154/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_154/lstm_cell_154/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_154/lstm_cell_154/bias/m

6Adam/lstm_154/lstm_cell_154/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_154/lstm_cell_154/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_155/lstm_cell_155/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_155/lstm_cell_155/kernel/m

8Adam/lstm_155/lstm_cell_155/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_155/lstm_cell_155/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_155/lstm_cell_155/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_155/lstm_cell_155/recurrent_kernel/m
ħ
BAdam/lstm_155/lstm_cell_155/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_155/lstm_cell_155/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_155/lstm_cell_155/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_155/lstm_cell_155/bias/m

6Adam/lstm_155/lstm_cell_155/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_155/lstm_cell_155/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_51/kernel/v

*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/v
y
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_153/lstm_cell_153/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_153/lstm_cell_153/kernel/v

8Adam/lstm_153/lstm_cell_153/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_153/lstm_cell_153/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_153/lstm_cell_153/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_153/lstm_cell_153/recurrent_kernel/v
²
BAdam/lstm_153/lstm_cell_153/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_153/lstm_cell_153/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_153/lstm_cell_153/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_153/lstm_cell_153/bias/v

6Adam/lstm_153/lstm_cell_153/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_153/lstm_cell_153/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_154/lstm_cell_154/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_154/lstm_cell_154/kernel/v

8Adam/lstm_154/lstm_cell_154/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_154/lstm_cell_154/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_154/lstm_cell_154/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_154/lstm_cell_154/recurrent_kernel/v
²
BAdam/lstm_154/lstm_cell_154/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_154/lstm_cell_154/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_154/lstm_cell_154/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_154/lstm_cell_154/bias/v

6Adam/lstm_154/lstm_cell_154/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_154/lstm_cell_154/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_155/lstm_cell_155/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_155/lstm_cell_155/kernel/v

8Adam/lstm_155/lstm_cell_155/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_155/lstm_cell_155/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_155/lstm_cell_155/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_155/lstm_cell_155/recurrent_kernel/v
ħ
BAdam/lstm_155/lstm_cell_155/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_155/lstm_cell_155/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_155/lstm_cell_155/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_155/lstm_cell_155/bias/v

6Adam/lstm_155/lstm_cell_155/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_155/lstm_cell_155/bias/v*
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
VARIABLE_VALUEdense_51/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_153/lstm_cell_153/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_153/lstm_cell_153/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_153/lstm_cell_153/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_154/lstm_cell_154/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_154/lstm_cell_154/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_154/lstm_cell_154/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_155/lstm_cell_155/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_155/lstm_cell_155/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_155/lstm_cell_155/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_153/lstm_cell_153/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_153/lstm_cell_153/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_153/lstm_cell_153/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_154/lstm_cell_154/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_154/lstm_cell_154/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_154/lstm_cell_154/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_155/lstm_cell_155/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_155/lstm_cell_155/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_155/lstm_cell_155/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_153/lstm_cell_153/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_153/lstm_cell_153/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_153/lstm_cell_153/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_154/lstm_cell_154/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_154/lstm_cell_154/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_154/lstm_cell_154/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_155/lstm_cell_155/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_155/lstm_cell_155/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_155/lstm_cell_155/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_153_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_153_inputlstm_153/lstm_cell_153/kernel'lstm_153/lstm_cell_153/recurrent_kernellstm_153/lstm_cell_153/biaslstm_154/lstm_cell_154/kernel'lstm_154/lstm_cell_154/recurrent_kernellstm_154/lstm_cell_154/biaslstm_155/lstm_cell_155/kernel'lstm_155/lstm_cell_155/recurrent_kernellstm_155/lstm_cell_155/biasdense_51/kerneldense_51/bias*
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
$__inference_signature_wrapper_250729
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_153/lstm_cell_153/kernel/Read/ReadVariableOp;lstm_153/lstm_cell_153/recurrent_kernel/Read/ReadVariableOp/lstm_153/lstm_cell_153/bias/Read/ReadVariableOp1lstm_154/lstm_cell_154/kernel/Read/ReadVariableOp;lstm_154/lstm_cell_154/recurrent_kernel/Read/ReadVariableOp/lstm_154/lstm_cell_154/bias/Read/ReadVariableOp1lstm_155/lstm_cell_155/kernel/Read/ReadVariableOp;lstm_155/lstm_cell_155/recurrent_kernel/Read/ReadVariableOp/lstm_155/lstm_cell_155/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp8Adam/lstm_153/lstm_cell_153/kernel/m/Read/ReadVariableOpBAdam/lstm_153/lstm_cell_153/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_153/lstm_cell_153/bias/m/Read/ReadVariableOp8Adam/lstm_154/lstm_cell_154/kernel/m/Read/ReadVariableOpBAdam/lstm_154/lstm_cell_154/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_154/lstm_cell_154/bias/m/Read/ReadVariableOp8Adam/lstm_155/lstm_cell_155/kernel/m/Read/ReadVariableOpBAdam/lstm_155/lstm_cell_155/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_155/lstm_cell_155/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOp8Adam/lstm_153/lstm_cell_153/kernel/v/Read/ReadVariableOpBAdam/lstm_153/lstm_cell_153/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_153/lstm_cell_153/bias/v/Read/ReadVariableOp8Adam/lstm_154/lstm_cell_154/kernel/v/Read/ReadVariableOpBAdam/lstm_154/lstm_cell_154/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_154/lstm_cell_154/bias/v/Read/ReadVariableOp8Adam/lstm_155/lstm_cell_155/kernel/v/Read/ReadVariableOpBAdam/lstm_155/lstm_cell_155/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_155/lstm_cell_155/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_253941

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_51/kerneldense_51/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_153/lstm_cell_153/kernel'lstm_153/lstm_cell_153/recurrent_kernellstm_153/lstm_cell_153/biaslstm_154/lstm_cell_154/kernel'lstm_154/lstm_cell_154/recurrent_kernellstm_154/lstm_cell_154/biaslstm_155/lstm_cell_155/kernel'lstm_155/lstm_cell_155/recurrent_kernellstm_155/lstm_cell_155/biastotalcountAdam/dense_51/kernel/mAdam/dense_51/bias/m$Adam/lstm_153/lstm_cell_153/kernel/m.Adam/lstm_153/lstm_cell_153/recurrent_kernel/m"Adam/lstm_153/lstm_cell_153/bias/m$Adam/lstm_154/lstm_cell_154/kernel/m.Adam/lstm_154/lstm_cell_154/recurrent_kernel/m"Adam/lstm_154/lstm_cell_154/bias/m$Adam/lstm_155/lstm_cell_155/kernel/m.Adam/lstm_155/lstm_cell_155/recurrent_kernel/m"Adam/lstm_155/lstm_cell_155/bias/mAdam/dense_51/kernel/vAdam/dense_51/bias/v$Adam/lstm_153/lstm_cell_153/kernel/v.Adam/lstm_153/lstm_cell_153/recurrent_kernel/v"Adam/lstm_153/lstm_cell_153/bias/v$Adam/lstm_154/lstm_cell_154/kernel/v.Adam/lstm_154/lstm_cell_154/recurrent_kernel/v"Adam/lstm_154/lstm_cell_154/bias/v$Adam/lstm_155/lstm_cell_155/kernel/v.Adam/lstm_155/lstm_cell_155/recurrent_kernel/v"Adam/lstm_155/lstm_cell_155/bias/v*4
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
"__inference__traced_restore_254071½Ó+
Ŭ

H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253602

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
ş

(sequential_51_lstm_155_while_cond_248378J
Fsequential_51_lstm_155_while_sequential_51_lstm_155_while_loop_counterP
Lsequential_51_lstm_155_while_sequential_51_lstm_155_while_maximum_iterations,
(sequential_51_lstm_155_while_placeholder.
*sequential_51_lstm_155_while_placeholder_1.
*sequential_51_lstm_155_while_placeholder_2.
*sequential_51_lstm_155_while_placeholder_3L
Hsequential_51_lstm_155_while_less_sequential_51_lstm_155_strided_slice_1b
^sequential_51_lstm_155_while_sequential_51_lstm_155_while_cond_248378___redundant_placeholder0b
^sequential_51_lstm_155_while_sequential_51_lstm_155_while_cond_248378___redundant_placeholder1b
^sequential_51_lstm_155_while_sequential_51_lstm_155_while_cond_248378___redundant_placeholder2b
^sequential_51_lstm_155_while_sequential_51_lstm_155_while_cond_248378___redundant_placeholder3)
%sequential_51_lstm_155_while_identity
?
!sequential_51/lstm_155/while/LessLess(sequential_51_lstm_155_while_placeholderHsequential_51_lstm_155_while_less_sequential_51_lstm_155_strided_slice_1*
T0*
_output_shapes
: y
%sequential_51/lstm_155/while/IdentityIdentity%sequential_51/lstm_155/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_51_lstm_155_while_identity.sequential_51/lstm_155/while/Identity:output:0*(
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
while_cond_253114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_253114___redundant_placeholder04
0while_while_cond_253114___redundant_placeholder14
0while_while_cond_253114___redundant_placeholder24
0while_while_cond_253114___redundant_placeholder3
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
while_body_249584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_249733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249733___redundant_placeholder04
0while_while_cond_249733___redundant_placeholder14
0while_while_cond_249733___redundant_placeholder24
0while_while_cond_249733___redundant_placeholder3
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
ë
ö
-__inference_lstm_cell_40_layer_call_fn_253619

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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_248886o
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
Ġ

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_248886

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
ë
ö
-__inference_lstm_cell_39_layer_call_fn_253538

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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248682o
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
Ġ

H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248682

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
²

÷
lstm_153_while_cond_250841.
*lstm_153_while_lstm_153_while_loop_counter4
0lstm_153_while_lstm_153_while_maximum_iterations
lstm_153_while_placeholder 
lstm_153_while_placeholder_1 
lstm_153_while_placeholder_2 
lstm_153_while_placeholder_30
,lstm_153_while_less_lstm_153_strided_slice_1F
Blstm_153_while_lstm_153_while_cond_250841___redundant_placeholder0F
Blstm_153_while_lstm_153_while_cond_250841___redundant_placeholder1F
Blstm_153_while_lstm_153_while_cond_250841___redundant_placeholder2F
Blstm_153_while_lstm_153_while_cond_250841___redundant_placeholder3
lstm_153_while_identity

lstm_153/while/LessLesslstm_153_while_placeholder,lstm_153_while_less_lstm_153_strided_slice_1*
T0*
_output_shapes
: ]
lstm_153/while/IdentityIdentitylstm_153/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_153_while_identity lstm_153/while/Identity:output:0*(
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
˙7
Ê
while_body_253401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_153_while_cond_251268.
*lstm_153_while_lstm_153_while_loop_counter4
0lstm_153_while_lstm_153_while_maximum_iterations
lstm_153_while_placeholder 
lstm_153_while_placeholder_1 
lstm_153_while_placeholder_2 
lstm_153_while_placeholder_30
,lstm_153_while_less_lstm_153_strided_slice_1F
Blstm_153_while_lstm_153_while_cond_251268___redundant_placeholder0F
Blstm_153_while_lstm_153_while_cond_251268___redundant_placeholder1F
Blstm_153_while_lstm_153_while_cond_251268___redundant_placeholder2F
Blstm_153_while_lstm_153_while_cond_251268___redundant_placeholder3
lstm_153_while_identity

lstm_153/while/LessLesslstm_153_while_placeholder,lstm_153_while_less_lstm_153_strided_slice_1*
T0*
_output_shapes
: ]
lstm_153/while/IdentityIdentitylstm_153/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_153_while_identity lstm_153/while/Identity:output:0*(
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
ħ

I__inference_sequential_51_layer_call_and_return_conditional_losses_251637

inputsG
4lstm_153_lstm_cell_39_matmul_readvariableop_resource:	I
6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource:	dD
5lstm_153_lstm_cell_39_biasadd_readvariableop_resource:	G
4lstm_154_lstm_cell_40_matmul_readvariableop_resource:	dÈI
6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈD
5lstm_154_lstm_cell_40_biasadd_readvariableop_resource:	ÈF
4lstm_155_lstm_cell_41_matmul_readvariableop_resource:2(H
6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource:
(C
5lstm_155_lstm_cell_41_biasadd_readvariableop_resource:(9
'dense_51_matmul_readvariableop_resource:
6
(dense_51_biasadd_readvariableop_resource:
identity˘dense_51/BiasAdd/ReadVariableOp˘dense_51/MatMul/ReadVariableOp˘,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp˘+lstm_153/lstm_cell_39/MatMul/ReadVariableOp˘-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp˘lstm_153/while˘,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp˘+lstm_154/lstm_cell_40/MatMul/ReadVariableOp˘-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp˘lstm_154/while˘,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp˘+lstm_155/lstm_cell_41/MatMul/ReadVariableOp˘-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp˘lstm_155/whileD
lstm_153/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_153/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_153/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_153/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_153/strided_sliceStridedSlicelstm_153/Shape:output:0%lstm_153/strided_slice/stack:output:0'lstm_153/strided_slice/stack_1:output:0'lstm_153/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_153/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_153/zeros/packedPacklstm_153/strided_slice:output:0 lstm_153/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_153/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_153/zerosFilllstm_153/zeros/packed:output:0lstm_153/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_153/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_153/zeros_1/packedPacklstm_153/strided_slice:output:0"lstm_153/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_153/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_153/zeros_1Fill lstm_153/zeros_1/packed:output:0lstm_153/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_153/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_153/transpose	Transposeinputs lstm_153/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_153/Shape_1Shapelstm_153/transpose:y:0*
T0*
_output_shapes
:h
lstm_153/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_153/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_153/strided_slice_1StridedSlicelstm_153/Shape_1:output:0'lstm_153/strided_slice_1/stack:output:0)lstm_153/strided_slice_1/stack_1:output:0)lstm_153/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_153/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_153/TensorArrayV2TensorListReserve-lstm_153/TensorArrayV2/element_shape:output:0!lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_153/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_153/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_153/transpose:y:0Glstm_153/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_153/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_153/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_153/strided_slice_2StridedSlicelstm_153/transpose:y:0'lstm_153/strided_slice_2/stack:output:0)lstm_153/strided_slice_2/stack_1:output:0)lstm_153/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_153/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp4lstm_153_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_153/lstm_cell_39/MatMulMatMul!lstm_153/strided_slice_2:output:03lstm_153/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_153/lstm_cell_39/MatMul_1MatMullstm_153/zeros:output:05lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_153/lstm_cell_39/addAddV2&lstm_153/lstm_cell_39/MatMul:product:0(lstm_153/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp5lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_153/lstm_cell_39/BiasAddBiasAddlstm_153/lstm_cell_39/add:z:04lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_153/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_153/lstm_cell_39/splitSplit.lstm_153/lstm_cell_39/split/split_dim:output:0&lstm_153/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_153/lstm_cell_39/SigmoidSigmoid$lstm_153/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/Sigmoid_1Sigmoid$lstm_153/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/mulMul#lstm_153/lstm_cell_39/Sigmoid_1:y:0lstm_153/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_153/lstm_cell_39/ReluRelu$lstm_153/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_153/lstm_cell_39/mul_1Mul!lstm_153/lstm_cell_39/Sigmoid:y:0(lstm_153/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/add_1AddV2lstm_153/lstm_cell_39/mul:z:0lstm_153/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/Sigmoid_2Sigmoid$lstm_153/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_153/lstm_cell_39/Relu_1Relulstm_153/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_153/lstm_cell_39/mul_2Mul#lstm_153/lstm_cell_39/Sigmoid_2:y:0*lstm_153/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_153/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_153/TensorArrayV2_1TensorListReserve/lstm_153/TensorArrayV2_1/element_shape:output:0!lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_153/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_153/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_153/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_153/whileWhile$lstm_153/while/loop_counter:output:0*lstm_153/while/maximum_iterations:output:0lstm_153/time:output:0!lstm_153/TensorArrayV2_1:handle:0lstm_153/zeros:output:0lstm_153/zeros_1:output:0!lstm_153/strided_slice_1:output:0@lstm_153/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_153_lstm_cell_39_matmul_readvariableop_resource6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource5lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
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
lstm_153_while_body_251269*&
condR
lstm_153_while_cond_251268*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_153/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_153/TensorArrayV2Stack/TensorListStackTensorListStacklstm_153/while:output:3Blstm_153/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_153/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_153/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_153/strided_slice_3StridedSlice4lstm_153/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_153/strided_slice_3/stack:output:0)lstm_153/strided_slice_3/stack_1:output:0)lstm_153/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_153/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_153/transpose_1	Transpose4lstm_153/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_153/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_153/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_154/ShapeShapelstm_153/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_154/strided_sliceStridedSlicelstm_154/Shape:output:0%lstm_154/strided_slice/stack:output:0'lstm_154/strided_slice/stack_1:output:0'lstm_154/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_154/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_154/zeros/packedPacklstm_154/strided_slice:output:0 lstm_154/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_154/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_154/zerosFilllstm_154/zeros/packed:output:0lstm_154/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_154/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_154/zeros_1/packedPacklstm_154/strided_slice:output:0"lstm_154/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_154/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_154/zeros_1Fill lstm_154/zeros_1/packed:output:0lstm_154/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_154/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_154/transpose	Transposelstm_153/transpose_1:y:0 lstm_154/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_154/Shape_1Shapelstm_154/transpose:y:0*
T0*
_output_shapes
:h
lstm_154/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_154/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_154/strided_slice_1StridedSlicelstm_154/Shape_1:output:0'lstm_154/strided_slice_1/stack:output:0)lstm_154/strided_slice_1/stack_1:output:0)lstm_154/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_154/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_154/TensorArrayV2TensorListReserve-lstm_154/TensorArrayV2/element_shape:output:0!lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_154/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_154/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_154/transpose:y:0Glstm_154/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_154/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_154/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_154/strided_slice_2StridedSlicelstm_154/transpose:y:0'lstm_154/strided_slice_2/stack:output:0)lstm_154/strided_slice_2/stack_1:output:0)lstm_154/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_154/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp4lstm_154_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_154/lstm_cell_40/MatMulMatMul!lstm_154/strided_slice_2:output:03lstm_154/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_154/lstm_cell_40/MatMul_1MatMullstm_154/zeros:output:05lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_154/lstm_cell_40/addAddV2&lstm_154/lstm_cell_40/MatMul:product:0(lstm_154/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp5lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_154/lstm_cell_40/BiasAddBiasAddlstm_154/lstm_cell_40/add:z:04lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_154/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_154/lstm_cell_40/splitSplit.lstm_154/lstm_cell_40/split/split_dim:output:0&lstm_154/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_154/lstm_cell_40/SigmoidSigmoid$lstm_154/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/Sigmoid_1Sigmoid$lstm_154/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/mulMul#lstm_154/lstm_cell_40/Sigmoid_1:y:0lstm_154/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_154/lstm_cell_40/ReluRelu$lstm_154/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_154/lstm_cell_40/mul_1Mul!lstm_154/lstm_cell_40/Sigmoid:y:0(lstm_154/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/add_1AddV2lstm_154/lstm_cell_40/mul:z:0lstm_154/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/Sigmoid_2Sigmoid$lstm_154/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_154/lstm_cell_40/Relu_1Relulstm_154/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_154/lstm_cell_40/mul_2Mul#lstm_154/lstm_cell_40/Sigmoid_2:y:0*lstm_154/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_154/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_154/TensorArrayV2_1TensorListReserve/lstm_154/TensorArrayV2_1/element_shape:output:0!lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_154/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_154/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_154/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_154/whileWhile$lstm_154/while/loop_counter:output:0*lstm_154/while/maximum_iterations:output:0lstm_154/time:output:0!lstm_154/TensorArrayV2_1:handle:0lstm_154/zeros:output:0lstm_154/zeros_1:output:0!lstm_154/strided_slice_1:output:0@lstm_154/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_154_lstm_cell_40_matmul_readvariableop_resource6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource5lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
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
lstm_154_while_body_251408*&
condR
lstm_154_while_cond_251407*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_154/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_154/TensorArrayV2Stack/TensorListStackTensorListStacklstm_154/while:output:3Blstm_154/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_154/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_154/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_154/strided_slice_3StridedSlice4lstm_154/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_154/strided_slice_3/stack:output:0)lstm_154/strided_slice_3/stack_1:output:0)lstm_154/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_154/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_154/transpose_1	Transpose4lstm_154/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_154/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_154/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_155/ShapeShapelstm_154/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_155/strided_sliceStridedSlicelstm_155/Shape:output:0%lstm_155/strided_slice/stack:output:0'lstm_155/strided_slice/stack_1:output:0'lstm_155/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_155/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_155/zeros/packedPacklstm_155/strided_slice:output:0 lstm_155/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_155/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_155/zerosFilllstm_155/zeros/packed:output:0lstm_155/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_155/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_155/zeros_1/packedPacklstm_155/strided_slice:output:0"lstm_155/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_155/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_155/zeros_1Fill lstm_155/zeros_1/packed:output:0lstm_155/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_155/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_155/transpose	Transposelstm_154/transpose_1:y:0 lstm_155/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_155/Shape_1Shapelstm_155/transpose:y:0*
T0*
_output_shapes
:h
lstm_155/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_155/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_155/strided_slice_1StridedSlicelstm_155/Shape_1:output:0'lstm_155/strided_slice_1/stack:output:0)lstm_155/strided_slice_1/stack_1:output:0)lstm_155/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_155/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_155/TensorArrayV2TensorListReserve-lstm_155/TensorArrayV2/element_shape:output:0!lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_155/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_155/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_155/transpose:y:0Glstm_155/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_155/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_155/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_155/strided_slice_2StridedSlicelstm_155/transpose:y:0'lstm_155/strided_slice_2/stack:output:0)lstm_155/strided_slice_2/stack_1:output:0)lstm_155/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_155/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp4lstm_155_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_155/lstm_cell_41/MatMulMatMul!lstm_155/strided_slice_2:output:03lstm_155/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_155/lstm_cell_41/MatMul_1MatMullstm_155/zeros:output:05lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_155/lstm_cell_41/addAddV2&lstm_155/lstm_cell_41/MatMul:product:0(lstm_155/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp5lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_155/lstm_cell_41/BiasAddBiasAddlstm_155/lstm_cell_41/add:z:04lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_155/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_155/lstm_cell_41/splitSplit.lstm_155/lstm_cell_41/split/split_dim:output:0&lstm_155/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_155/lstm_cell_41/SigmoidSigmoid$lstm_155/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/Sigmoid_1Sigmoid$lstm_155/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/mulMul#lstm_155/lstm_cell_41/Sigmoid_1:y:0lstm_155/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_155/lstm_cell_41/ReluRelu$lstm_155/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_155/lstm_cell_41/mul_1Mul!lstm_155/lstm_cell_41/Sigmoid:y:0(lstm_155/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/add_1AddV2lstm_155/lstm_cell_41/mul:z:0lstm_155/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/Sigmoid_2Sigmoid$lstm_155/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_155/lstm_cell_41/Relu_1Relulstm_155/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_155/lstm_cell_41/mul_2Mul#lstm_155/lstm_cell_41/Sigmoid_2:y:0*lstm_155/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_155/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_155/TensorArrayV2_1TensorListReserve/lstm_155/TensorArrayV2_1/element_shape:output:0!lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_155/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_155/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_155/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_155/whileWhile$lstm_155/while/loop_counter:output:0*lstm_155/while/maximum_iterations:output:0lstm_155/time:output:0!lstm_155/TensorArrayV2_1:handle:0lstm_155/zeros:output:0lstm_155/zeros_1:output:0!lstm_155/strided_slice_1:output:0@lstm_155/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_155_lstm_cell_41_matmul_readvariableop_resource6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource5lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
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
lstm_155_while_body_251547*&
condR
lstm_155_while_cond_251546*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_155/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_155/TensorArrayV2Stack/TensorListStackTensorListStacklstm_155/while:output:3Blstm_155/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_155/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_155/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_155/strided_slice_3StridedSlice4lstm_155/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_155/strided_slice_3/stack:output:0)lstm_155/strided_slice_3/stack_1:output:0)lstm_155/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_155/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_155/transpose_1	Transpose4lstm_155/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_155/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_155/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_51/MatMulMatMul!lstm_155/strided_slice_3:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_51/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp-^lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp,^lstm_153/lstm_cell_39/MatMul/ReadVariableOp.^lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp^lstm_153/while-^lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp,^lstm_154/lstm_cell_40/MatMul/ReadVariableOp.^lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_154/while-^lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp,^lstm_155/lstm_cell_41/MatMul/ReadVariableOp.^lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_155/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2\
,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp2Z
+lstm_153/lstm_cell_39/MatMul/ReadVariableOp+lstm_153/lstm_cell_39/MatMul/ReadVariableOp2^
-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp2 
lstm_153/whilelstm_153/while2\
,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp2Z
+lstm_154/lstm_cell_40/MatMul/ReadVariableOp+lstm_154/lstm_cell_40/MatMul/ReadVariableOp2^
-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp2 
lstm_154/whilelstm_154/while2\
,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp2Z
+lstm_155/lstm_cell_41/MatMul/ReadVariableOp+lstm_155/lstm_cell_41/MatMul/ReadVariableOp2^
-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp2 
lstm_155/whilelstm_155/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
J

D__inference_lstm_155_layer_call_and_return_conditional_losses_253342

inputs=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_253258*
condR
while_cond_253257*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_251882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_251882___redundant_placeholder04
0while_while_cond_251882___redundant_placeholder14
0while_while_cond_251882___redundant_placeholder24
0while_while_cond_251882___redundant_placeholder3
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
S
³
(sequential_51_lstm_153_while_body_248101J
Fsequential_51_lstm_153_while_sequential_51_lstm_153_while_loop_counterP
Lsequential_51_lstm_153_while_sequential_51_lstm_153_while_maximum_iterations,
(sequential_51_lstm_153_while_placeholder.
*sequential_51_lstm_153_while_placeholder_1.
*sequential_51_lstm_153_while_placeholder_2.
*sequential_51_lstm_153_while_placeholder_3I
Esequential_51_lstm_153_while_sequential_51_lstm_153_strided_slice_1_0
sequential_51_lstm_153_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_153_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_51_lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0:	_
Lsequential_51_lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dZ
Ksequential_51_lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0:	)
%sequential_51_lstm_153_while_identity+
'sequential_51_lstm_153_while_identity_1+
'sequential_51_lstm_153_while_identity_2+
'sequential_51_lstm_153_while_identity_3+
'sequential_51_lstm_153_while_identity_4+
'sequential_51_lstm_153_while_identity_5G
Csequential_51_lstm_153_while_sequential_51_lstm_153_strided_slice_1
sequential_51_lstm_153_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_153_tensorarrayunstack_tensorlistfromtensor[
Hsequential_51_lstm_153_while_lstm_cell_39_matmul_readvariableop_resource:	]
Jsequential_51_lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource:	dX
Isequential_51_lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource:	˘@sequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp˘?sequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp˘Asequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp
Nsequential_51/lstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_51/lstm_153/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_51_lstm_153_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_153_tensorarrayunstack_tensorlistfromtensor_0(sequential_51_lstm_153_while_placeholderWsequential_51/lstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOpJsequential_51_lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_51/lstm_153/while/lstm_cell_39/MatMulMatMulGsequential_51/lstm_153/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOpLsequential_51_lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_51/lstm_153/while/lstm_cell_39/MatMul_1MatMul*sequential_51_lstm_153_while_placeholder_2Isequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_51/lstm_153/while/lstm_cell_39/addAddV2:sequential_51/lstm_153/while/lstm_cell_39/MatMul:product:0<sequential_51/lstm_153/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOpKsequential_51_lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_51/lstm_153/while/lstm_cell_39/BiasAddBiasAdd1sequential_51/lstm_153/while/lstm_cell_39/add:z:0Hsequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_51/lstm_153/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_51/lstm_153/while/lstm_cell_39/splitSplitBsequential_51/lstm_153/while/lstm_cell_39/split/split_dim:output:0:sequential_51/lstm_153/while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_51/lstm_153/while/lstm_cell_39/SigmoidSigmoid8sequential_51/lstm_153/while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_51/lstm_153/while/lstm_cell_39/Sigmoid_1Sigmoid8sequential_51/lstm_153/while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_51/lstm_153/while/lstm_cell_39/mulMul7sequential_51/lstm_153/while/lstm_cell_39/Sigmoid_1:y:0*sequential_51_lstm_153_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_51/lstm_153/while/lstm_cell_39/ReluRelu8sequential_51/lstm_153/while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_51/lstm_153/while/lstm_cell_39/mul_1Mul5sequential_51/lstm_153/while/lstm_cell_39/Sigmoid:y:0<sequential_51/lstm_153/while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_51/lstm_153/while/lstm_cell_39/add_1AddV21sequential_51/lstm_153/while/lstm_cell_39/mul:z:03sequential_51/lstm_153/while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_51/lstm_153/while/lstm_cell_39/Sigmoid_2Sigmoid8sequential_51/lstm_153/while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_51/lstm_153/while/lstm_cell_39/Relu_1Relu3sequential_51/lstm_153/while/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_51/lstm_153/while/lstm_cell_39/mul_2Mul7sequential_51/lstm_153/while/lstm_cell_39/Sigmoid_2:y:0>sequential_51/lstm_153/while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_51/lstm_153/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_51_lstm_153_while_placeholder_1(sequential_51_lstm_153_while_placeholder3sequential_51/lstm_153/while/lstm_cell_39/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_51/lstm_153/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_51/lstm_153/while/addAddV2(sequential_51_lstm_153_while_placeholder+sequential_51/lstm_153/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_51/lstm_153/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_51/lstm_153/while/add_1AddV2Fsequential_51_lstm_153_while_sequential_51_lstm_153_while_loop_counter-sequential_51/lstm_153/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_51/lstm_153/while/IdentityIdentity&sequential_51/lstm_153/while/add_1:z:0"^sequential_51/lstm_153/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_51/lstm_153/while/Identity_1IdentityLsequential_51_lstm_153_while_sequential_51_lstm_153_while_maximum_iterations"^sequential_51/lstm_153/while/NoOp*
T0*
_output_shapes
: 
'sequential_51/lstm_153/while/Identity_2Identity$sequential_51/lstm_153/while/add:z:0"^sequential_51/lstm_153/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_51/lstm_153/while/Identity_3IdentityQsequential_51/lstm_153/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_51/lstm_153/while/NoOp*
T0*
_output_shapes
: ?
'sequential_51/lstm_153/while/Identity_4Identity3sequential_51/lstm_153/while/lstm_cell_39/mul_2:z:0"^sequential_51/lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_51/lstm_153/while/Identity_5Identity3sequential_51/lstm_153/while/lstm_cell_39/add_1:z:0"^sequential_51/lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_51/lstm_153/while/NoOpNoOpA^sequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp@^sequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOpB^sequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_51_lstm_153_while_identity.sequential_51/lstm_153/while/Identity:output:0"[
'sequential_51_lstm_153_while_identity_10sequential_51/lstm_153/while/Identity_1:output:0"[
'sequential_51_lstm_153_while_identity_20sequential_51/lstm_153/while/Identity_2:output:0"[
'sequential_51_lstm_153_while_identity_30sequential_51/lstm_153/while/Identity_3:output:0"[
'sequential_51_lstm_153_while_identity_40sequential_51/lstm_153/while/Identity_4:output:0"[
'sequential_51_lstm_153_while_identity_50sequential_51/lstm_153/while/Identity_5:output:0"
Isequential_51_lstm_153_while_lstm_cell_39_biasadd_readvariableop_resourceKsequential_51_lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0"
Jsequential_51_lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resourceLsequential_51_lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0"
Hsequential_51_lstm_153_while_lstm_cell_39_matmul_readvariableop_resourceJsequential_51_lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0"
Csequential_51_lstm_153_while_sequential_51_lstm_153_strided_slice_1Esequential_51_lstm_153_while_sequential_51_lstm_153_strided_slice_1_0"
sequential_51_lstm_153_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_153_tensorarrayunstack_tensorlistfromtensorsequential_51_lstm_153_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_153_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp@sequential_51/lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2
?sequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp?sequential_51/lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp2
Asequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOpAsequential_51/lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ç¤

"__inference__traced_restore_254071
file_prefix2
 assignvariableop_dense_51_kernel:
.
 assignvariableop_1_dense_51_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_153_lstm_cell_153_kernel:	M
:assignvariableop_8_lstm_153_lstm_cell_153_recurrent_kernel:	d=
.assignvariableop_9_lstm_153_lstm_cell_153_bias:	D
1assignvariableop_10_lstm_154_lstm_cell_154_kernel:	dÈN
;assignvariableop_11_lstm_154_lstm_cell_154_recurrent_kernel:	2È>
/assignvariableop_12_lstm_154_lstm_cell_154_bias:	ÈC
1assignvariableop_13_lstm_155_lstm_cell_155_kernel:2(M
;assignvariableop_14_lstm_155_lstm_cell_155_recurrent_kernel:
(=
/assignvariableop_15_lstm_155_lstm_cell_155_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_51_kernel_m:
6
(assignvariableop_19_adam_dense_51_bias_m:K
8assignvariableop_20_adam_lstm_153_lstm_cell_153_kernel_m:	U
Bassignvariableop_21_adam_lstm_153_lstm_cell_153_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_153_lstm_cell_153_bias_m:	K
8assignvariableop_23_adam_lstm_154_lstm_cell_154_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_154_lstm_cell_154_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_154_lstm_cell_154_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_155_lstm_cell_155_kernel_m:2(T
Bassignvariableop_27_adam_lstm_155_lstm_cell_155_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_155_lstm_cell_155_bias_m:(<
*assignvariableop_29_adam_dense_51_kernel_v:
6
(assignvariableop_30_adam_dense_51_bias_v:K
8assignvariableop_31_adam_lstm_153_lstm_cell_153_kernel_v:	U
Bassignvariableop_32_adam_lstm_153_lstm_cell_153_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_153_lstm_cell_153_bias_v:	K
8assignvariableop_34_adam_lstm_154_lstm_cell_154_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_154_lstm_cell_154_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_154_lstm_cell_154_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_155_lstm_cell_155_kernel_v:2(T
Bassignvariableop_38_adam_lstm_155_lstm_cell_155_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_155_lstm_cell_155_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_51_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_51_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_153_lstm_cell_153_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_153_lstm_cell_153_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_153_lstm_cell_153_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_154_lstm_cell_154_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_154_lstm_cell_154_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_154_lstm_cell_154_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_155_lstm_cell_155_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_155_lstm_cell_155_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_155_lstm_cell_155_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_51_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_51_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_153_lstm_cell_153_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_153_lstm_cell_153_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_153_lstm_cell_153_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_154_lstm_cell_154_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_154_lstm_cell_154_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_154_lstm_cell_154_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_155_lstm_cell_155_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_155_lstm_cell_155_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_155_lstm_cell_155_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_51_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_51_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_153_lstm_cell_153_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_153_lstm_cell_153_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_153_lstm_cell_153_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_154_lstm_cell_154_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_154_lstm_cell_154_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_154_lstm_cell_154_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_155_lstm_cell_155_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_155_lstm_cell_155_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_155_lstm_cell_155_bias_vIdentity_39:output:0"/device:CPU:0*
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
8
?
while_body_252356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
S
­
(sequential_51_lstm_155_while_body_248379J
Fsequential_51_lstm_155_while_sequential_51_lstm_155_while_loop_counterP
Lsequential_51_lstm_155_while_sequential_51_lstm_155_while_maximum_iterations,
(sequential_51_lstm_155_while_placeholder.
*sequential_51_lstm_155_while_placeholder_1.
*sequential_51_lstm_155_while_placeholder_2.
*sequential_51_lstm_155_while_placeholder_3I
Esequential_51_lstm_155_while_sequential_51_lstm_155_strided_slice_1_0
sequential_51_lstm_155_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_155_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_51_lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0:2(^
Lsequential_51_lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(Y
Ksequential_51_lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0:()
%sequential_51_lstm_155_while_identity+
'sequential_51_lstm_155_while_identity_1+
'sequential_51_lstm_155_while_identity_2+
'sequential_51_lstm_155_while_identity_3+
'sequential_51_lstm_155_while_identity_4+
'sequential_51_lstm_155_while_identity_5G
Csequential_51_lstm_155_while_sequential_51_lstm_155_strided_slice_1
sequential_51_lstm_155_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_155_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_51_lstm_155_while_lstm_cell_41_matmul_readvariableop_resource:2(\
Jsequential_51_lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource:
(W
Isequential_51_lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource:(˘@sequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp˘?sequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp˘Asequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp
Nsequential_51/lstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_51/lstm_155/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_51_lstm_155_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_155_tensorarrayunstack_tensorlistfromtensor_0(sequential_51_lstm_155_while_placeholderWsequential_51/lstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpJsequential_51_lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_51/lstm_155/while/lstm_cell_41/MatMulMatMulGsequential_51/lstm_155/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpLsequential_51_lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_51/lstm_155/while/lstm_cell_41/MatMul_1MatMul*sequential_51_lstm_155_while_placeholder_2Isequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_51/lstm_155/while/lstm_cell_41/addAddV2:sequential_51/lstm_155/while/lstm_cell_41/MatMul:product:0<sequential_51/lstm_155/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpKsequential_51_lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_51/lstm_155/while/lstm_cell_41/BiasAddBiasAdd1sequential_51/lstm_155/while/lstm_cell_41/add:z:0Hsequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_51/lstm_155/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_51/lstm_155/while/lstm_cell_41/splitSplitBsequential_51/lstm_155/while/lstm_cell_41/split/split_dim:output:0:sequential_51/lstm_155/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_51/lstm_155/while/lstm_cell_41/SigmoidSigmoid8sequential_51/lstm_155/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_51/lstm_155/while/lstm_cell_41/Sigmoid_1Sigmoid8sequential_51/lstm_155/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_51/lstm_155/while/lstm_cell_41/mulMul7sequential_51/lstm_155/while/lstm_cell_41/Sigmoid_1:y:0*sequential_51_lstm_155_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_51/lstm_155/while/lstm_cell_41/ReluRelu8sequential_51/lstm_155/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_51/lstm_155/while/lstm_cell_41/mul_1Mul5sequential_51/lstm_155/while/lstm_cell_41/Sigmoid:y:0<sequential_51/lstm_155/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_51/lstm_155/while/lstm_cell_41/add_1AddV21sequential_51/lstm_155/while/lstm_cell_41/mul:z:03sequential_51/lstm_155/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_51/lstm_155/while/lstm_cell_41/Sigmoid_2Sigmoid8sequential_51/lstm_155/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_51/lstm_155/while/lstm_cell_41/Relu_1Relu3sequential_51/lstm_155/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_51/lstm_155/while/lstm_cell_41/mul_2Mul7sequential_51/lstm_155/while/lstm_cell_41/Sigmoid_2:y:0>sequential_51/lstm_155/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_51/lstm_155/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_51_lstm_155_while_placeholder_1(sequential_51_lstm_155_while_placeholder3sequential_51/lstm_155/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_51/lstm_155/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_51/lstm_155/while/addAddV2(sequential_51_lstm_155_while_placeholder+sequential_51/lstm_155/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_51/lstm_155/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_51/lstm_155/while/add_1AddV2Fsequential_51_lstm_155_while_sequential_51_lstm_155_while_loop_counter-sequential_51/lstm_155/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_51/lstm_155/while/IdentityIdentity&sequential_51/lstm_155/while/add_1:z:0"^sequential_51/lstm_155/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_51/lstm_155/while/Identity_1IdentityLsequential_51_lstm_155_while_sequential_51_lstm_155_while_maximum_iterations"^sequential_51/lstm_155/while/NoOp*
T0*
_output_shapes
: 
'sequential_51/lstm_155/while/Identity_2Identity$sequential_51/lstm_155/while/add:z:0"^sequential_51/lstm_155/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_51/lstm_155/while/Identity_3IdentityQsequential_51/lstm_155/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_51/lstm_155/while/NoOp*
T0*
_output_shapes
: ?
'sequential_51/lstm_155/while/Identity_4Identity3sequential_51/lstm_155/while/lstm_cell_41/mul_2:z:0"^sequential_51/lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_51/lstm_155/while/Identity_5Identity3sequential_51/lstm_155/while/lstm_cell_41/add_1:z:0"^sequential_51/lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_51/lstm_155/while/NoOpNoOpA^sequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp@^sequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOpB^sequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_51_lstm_155_while_identity.sequential_51/lstm_155/while/Identity:output:0"[
'sequential_51_lstm_155_while_identity_10sequential_51/lstm_155/while/Identity_1:output:0"[
'sequential_51_lstm_155_while_identity_20sequential_51/lstm_155/while/Identity_2:output:0"[
'sequential_51_lstm_155_while_identity_30sequential_51/lstm_155/while/Identity_3:output:0"[
'sequential_51_lstm_155_while_identity_40sequential_51/lstm_155/while/Identity_4:output:0"[
'sequential_51_lstm_155_while_identity_50sequential_51/lstm_155/while/Identity_5:output:0"
Isequential_51_lstm_155_while_lstm_cell_41_biasadd_readvariableop_resourceKsequential_51_lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0"
Jsequential_51_lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resourceLsequential_51_lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0"
Hsequential_51_lstm_155_while_lstm_cell_41_matmul_readvariableop_resourceJsequential_51_lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0"
Csequential_51_lstm_155_while_sequential_51_lstm_155_strided_slice_1Esequential_51_lstm_155_while_sequential_51_lstm_155_strided_slice_1_0"
sequential_51_lstm_155_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_155_tensorarrayunstack_tensorlistfromtensorsequential_51_lstm_155_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_155_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp@sequential_51/lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2
?sequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp?sequential_51/lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp2
Asequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOpAsequential_51/lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_249993

inputs"
lstm_153_249669:	"
lstm_153_249671:	d
lstm_153_249673:	"
lstm_154_249819:	dÈ"
lstm_154_249821:	2È
lstm_154_249823:	È!
lstm_155_249969:2(!
lstm_155_249971:
(
lstm_155_249973:(!
dense_51_249987:

dense_51_249989:
identity˘ dense_51/StatefulPartitionedCall˘ lstm_153/StatefulPartitionedCall˘ lstm_154/StatefulPartitionedCall˘ lstm_155/StatefulPartitionedCall
 lstm_153/StatefulPartitionedCallStatefulPartitionedCallinputslstm_153_249669lstm_153_249671lstm_153_249673*
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_249668Ş
 lstm_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_153/StatefulPartitionedCall:output:0lstm_154_249819lstm_154_249821lstm_154_249823*
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_249818Ĥ
 lstm_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_154/StatefulPartitionedCall:output:0lstm_155_249969lstm_155_249971lstm_155_249973*
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249968
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)lstm_155/StatefulPartitionedCall:output:0dense_51_249987dense_51_249989*
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
D__inference_dense_51_layer_call_and_return_conditional_losses_249986x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_51/StatefulPartitionedCall!^lstm_153/StatefulPartitionedCall!^lstm_154/StatefulPartitionedCall!^lstm_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 lstm_153/StatefulPartitionedCall lstm_153/StatefulPartitionedCall2D
 lstm_154/StatefulPartitionedCall lstm_154/StatefulPartitionedCall2D
 lstm_155/StatefulPartitionedCall lstm_155/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_155_layer_call_and_return_conditional_losses_253056
inputs_0=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_252972*
condR
while_cond_252971*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ġ

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_249032

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
while_body_250430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_39_layer_call_fn_253521

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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248536o
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
µ
?
while_cond_250264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250264___redundant_placeholder04
0while_while_cond_250264___redundant_placeholder14
0while_while_cond_250264___redundant_placeholder24
0while_while_cond_250264___redundant_placeholder3
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
Ğ
ë
I__inference_sequential_51_layer_call_and_return_conditional_losses_250582

inputs"
lstm_153_250555:	"
lstm_153_250557:	d
lstm_153_250559:	"
lstm_154_250562:	dÈ"
lstm_154_250564:	2È
lstm_154_250566:	È!
lstm_155_250569:2(!
lstm_155_250571:
(
lstm_155_250573:(!
dense_51_250576:

dense_51_250578:
identity˘ dense_51/StatefulPartitionedCall˘ lstm_153/StatefulPartitionedCall˘ lstm_154/StatefulPartitionedCall˘ lstm_155/StatefulPartitionedCall
 lstm_153/StatefulPartitionedCallStatefulPartitionedCallinputslstm_153_250555lstm_153_250557lstm_153_250559*
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_250514Ş
 lstm_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_153/StatefulPartitionedCall:output:0lstm_154_250562lstm_154_250564lstm_154_250566*
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_250349Ĥ
 lstm_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_154/StatefulPartitionedCall:output:0lstm_155_250569lstm_155_250571lstm_155_250573*
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_250184
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)lstm_155/StatefulPartitionedCall:output:0dense_51_250576dense_51_250578*
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
D__inference_dense_51_layer_call_and_return_conditional_losses_249986x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_51/StatefulPartitionedCall!^lstm_153/StatefulPartitionedCall!^lstm_154/StatefulPartitionedCall!^lstm_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 lstm_153/StatefulPartitionedCall lstm_153/StatefulPartitionedCall2D
 lstm_154/StatefulPartitionedCall lstm_154/StatefulPartitionedCall2D
 lstm_155/StatefulPartitionedCall lstm_155/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ò

˘
.__inference_sequential_51_layer_call_fn_250634
lstm_153_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_153_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_250582o
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
_user_specified_namelstm_153_input
à"
Ŭ
while_body_249250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_41_249274_0:2(-
while_lstm_cell_41_249276_0:
()
while_lstm_cell_41_249278_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_41_249274:2(+
while_lstm_cell_41_249276:
('
while_lstm_cell_41_249278:(˘*while/lstm_cell_41/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_249274_0while_lstm_cell_41_249276_0while_lstm_cell_41_249278_0*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249236Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_41_249274while_lstm_cell_41_249274_0"8
while_lstm_cell_41_249276while_lstm_cell_41_249276_0"8
while_lstm_cell_41_249278while_lstm_cell_41_249278_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_253257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_253257___redundant_placeholder04
0while_while_cond_253257___redundant_placeholder14
0while_while_cond_253257___redundant_placeholder24
0while_while_cond_253257___redundant_placeholder3
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
?
ó
I__inference_sequential_51_layer_call_and_return_conditional_losses_250694
lstm_153_input"
lstm_153_250667:	"
lstm_153_250669:	d
lstm_153_250671:	"
lstm_154_250674:	dÈ"
lstm_154_250676:	2È
lstm_154_250678:	È!
lstm_155_250681:2(!
lstm_155_250683:
(
lstm_155_250685:(!
dense_51_250688:

dense_51_250690:
identity˘ dense_51/StatefulPartitionedCall˘ lstm_153/StatefulPartitionedCall˘ lstm_154/StatefulPartitionedCall˘ lstm_155/StatefulPartitionedCall
 lstm_153/StatefulPartitionedCallStatefulPartitionedCalllstm_153_inputlstm_153_250667lstm_153_250669lstm_153_250671*
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_250514Ş
 lstm_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_153/StatefulPartitionedCall:output:0lstm_154_250674lstm_154_250676lstm_154_250678*
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_250349Ĥ
 lstm_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_154/StatefulPartitionedCall:output:0lstm_155_250681lstm_155_250683lstm_155_250685*
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_250184
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)lstm_155/StatefulPartitionedCall:output:0dense_51_250688dense_51_250690*
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
D__inference_dense_51_layer_call_and_return_conditional_losses_249986x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_51/StatefulPartitionedCall!^lstm_153/StatefulPartitionedCall!^lstm_154/StatefulPartitionedCall!^lstm_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 lstm_153/StatefulPartitionedCall lstm_153/StatefulPartitionedCall2D
 lstm_154/StatefulPartitionedCall lstm_154/StatefulPartitionedCall2D
 lstm_155/StatefulPartitionedCall lstm_155/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_153_input
µ
?
while_cond_251739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_251739___redundant_placeholder04
0while_while_cond_251739___redundant_placeholder14
0while_while_cond_251739___redundant_placeholder24
0while_while_cond_251739___redundant_placeholder3
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

D__inference_lstm_155_layer_call_and_return_conditional_losses_249319

inputs%
lstm_cell_41_249237:2(%
lstm_cell_41_249239:
(!
lstm_cell_41_249241:(
identity˘$lstm_cell_41/StatefulPartitionedCall˘while;
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
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_249237lstm_cell_41_249239lstm_cell_41_249241*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249236n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_249237lstm_cell_41_249239lstm_cell_41_249241*
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
while_body_249250*
condR
while_cond_249249*K
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
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253570

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
Ó

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253766

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
âJ

D__inference_lstm_154_layer_call_and_return_conditional_losses_252583
inputs_0>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_252499*
condR
while_cond_252498*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ë
ö
-__inference_lstm_cell_40_layer_call_fn_253636

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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_249032o
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
¤J

D__inference_lstm_154_layer_call_and_return_conditional_losses_252726

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_252642*
condR
while_cond_252641*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253668

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
8
?
while_body_252169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ç	
ġ
D__inference_dense_51_layer_call_and_return_conditional_losses_249986

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
while_cond_252025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252025___redundant_placeholder04
0while_while_cond_252025___redundant_placeholder14
0while_while_cond_252025___redundant_placeholder24
0while_while_cond_252025___redundant_placeholder3
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
Ğ
¸
)__inference_lstm_154_layer_call_fn_252275
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_249160|
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
è
ó
-__inference_lstm_cell_41_layer_call_fn_253734

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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249382o
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_253485

inputs=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_253401*
condR
while_cond_253400*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Â

)__inference_dense_51_layer_call_fn_253494

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
D__inference_dense_51_layer_call_and_return_conditional_losses_249986o
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
²

÷
lstm_155_while_cond_251546.
*lstm_155_while_lstm_155_while_loop_counter4
0lstm_155_while_lstm_155_while_maximum_iterations
lstm_155_while_placeholder 
lstm_155_while_placeholder_1 
lstm_155_while_placeholder_2 
lstm_155_while_placeholder_30
,lstm_155_while_less_lstm_155_strided_slice_1F
Blstm_155_while_lstm_155_while_cond_251546___redundant_placeholder0F
Blstm_155_while_lstm_155_while_cond_251546___redundant_placeholder1F
Blstm_155_while_lstm_155_while_cond_251546___redundant_placeholder2F
Blstm_155_while_lstm_155_while_cond_251546___redundant_placeholder3
lstm_155_while_identity

lstm_155/while/LessLesslstm_155_while_placeholder,lstm_155_while_less_lstm_155_strided_slice_1*
T0*
_output_shapes
: ]
lstm_155/while/IdentityIdentitylstm_155/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_155_while_identity lstm_155/while/Identity:output:0*(
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
while_cond_252355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252355___redundant_placeholder04
0while_while_cond_252355___redundant_placeholder14
0while_while_cond_252355___redundant_placeholder24
0while_while_cond_252355___redundant_placeholder3
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
)__inference_lstm_154_layer_call_fn_252286

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
D__inference_lstm_154_layer_call_and_return_conditional_losses_249818s
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
˙7
Ê
while_body_250100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
˙7
Ê
while_body_249884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_41_layer_call_fn_253717

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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249236o
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
ĉ"
?
while_body_248741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_39_248765_0:	.
while_lstm_cell_39_248767_0:	d*
while_lstm_cell_39_248769_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_39_248765:	,
while_lstm_cell_39_248767:	d(
while_lstm_cell_39_248769:	˘*while/lstm_cell_39/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_39_248765_0while_lstm_cell_39_248767_0while_lstm_cell_39_248769_0*
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248682Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_39/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_39/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_39/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_39_248765while_lstm_cell_39_248765_0"8
while_lstm_cell_39_248767while_lstm_cell_39_248767_0"8
while_lstm_cell_39_248769while_lstm_cell_39_248769_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_39/StatefulPartitionedCall*while/lstm_cell_39/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

µ
)__inference_lstm_155_layer_call_fn_252891
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249510o
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
˙7
Ê
while_body_252972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_252971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252971___redundant_placeholder04
0while_while_cond_252971___redundant_placeholder14
0while_while_cond_252971___redundant_placeholder24
0while_while_cond_252971___redundant_placeholder3
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_248969

inputs&
lstm_cell_40_248887:	dÈ&
lstm_cell_40_248889:	2È"
lstm_cell_40_248891:	È
identity˘$lstm_cell_40/StatefulPartitionedCall˘while;
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
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_248887lstm_cell_40_248889lstm_cell_40_248891*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_248886n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_248887lstm_cell_40_248889lstm_cell_40_248891*
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
while_body_248900*
condR
while_cond_248899*K
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
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_249249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249249___redundant_placeholder04
0while_while_cond_249249___redundant_placeholder14
0while_while_cond_249249___redundant_placeholder24
0while_while_cond_249249___redundant_placeholder3
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
)__inference_lstm_153_layer_call_fn_251681

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
D__inference_lstm_153_layer_call_and_return_conditional_losses_250514s
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
ÎB
ê

lstm_155_while_body_251547.
*lstm_155_while_lstm_155_while_loop_counter4
0lstm_155_while_lstm_155_while_maximum_iterations
lstm_155_while_placeholder 
lstm_155_while_placeholder_1 
lstm_155_while_placeholder_2 
lstm_155_while_placeholder_3-
)lstm_155_while_lstm_155_strided_slice_1_0i
elstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0:2(P
>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(K
=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0:(
lstm_155_while_identity
lstm_155_while_identity_1
lstm_155_while_identity_2
lstm_155_while_identity_3
lstm_155_while_identity_4
lstm_155_while_identity_5+
'lstm_155_while_lstm_155_strided_slice_1g
clstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensorL
:lstm_155_while_lstm_cell_41_matmul_readvariableop_resource:2(N
<lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource:
(I
;lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource:(˘2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp˘1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp˘3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp
@lstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_155/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0lstm_155_while_placeholderIlstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_155/while/lstm_cell_41/MatMulMatMul9lstm_155/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_155/while/lstm_cell_41/MatMul_1MatMullstm_155_while_placeholder_2;lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_155/while/lstm_cell_41/addAddV2,lstm_155/while/lstm_cell_41/MatMul:product:0.lstm_155/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_155/while/lstm_cell_41/BiasAddBiasAdd#lstm_155/while/lstm_cell_41/add:z:0:lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_155/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_155/while/lstm_cell_41/splitSplit4lstm_155/while/lstm_cell_41/split/split_dim:output:0,lstm_155/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_155/while/lstm_cell_41/SigmoidSigmoid*lstm_155/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_155/while/lstm_cell_41/Sigmoid_1Sigmoid*lstm_155/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_155/while/lstm_cell_41/mulMul)lstm_155/while/lstm_cell_41/Sigmoid_1:y:0lstm_155_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_155/while/lstm_cell_41/ReluRelu*lstm_155/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_155/while/lstm_cell_41/mul_1Mul'lstm_155/while/lstm_cell_41/Sigmoid:y:0.lstm_155/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_155/while/lstm_cell_41/add_1AddV2#lstm_155/while/lstm_cell_41/mul:z:0%lstm_155/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_155/while/lstm_cell_41/Sigmoid_2Sigmoid*lstm_155/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_155/while/lstm_cell_41/Relu_1Relu%lstm_155/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_155/while/lstm_cell_41/mul_2Mul)lstm_155/while/lstm_cell_41/Sigmoid_2:y:00lstm_155/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_155/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_155_while_placeholder_1lstm_155_while_placeholder%lstm_155/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_155/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_155/while/addAddV2lstm_155_while_placeholderlstm_155/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_155/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_155/while/add_1AddV2*lstm_155_while_lstm_155_while_loop_counterlstm_155/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_155/while/IdentityIdentitylstm_155/while/add_1:z:0^lstm_155/while/NoOp*
T0*
_output_shapes
: 
lstm_155/while/Identity_1Identity0lstm_155_while_lstm_155_while_maximum_iterations^lstm_155/while/NoOp*
T0*
_output_shapes
: t
lstm_155/while/Identity_2Identitylstm_155/while/add:z:0^lstm_155/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_155/while/Identity_3IdentityClstm_155/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_155/while/NoOp*
T0*
_output_shapes
: 
lstm_155/while/Identity_4Identity%lstm_155/while/lstm_cell_41/mul_2:z:0^lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/while/Identity_5Identity%lstm_155/while/lstm_cell_41/add_1:z:0^lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_155/while/NoOpNoOp3^lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2^lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp4^lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_155_while_identity lstm_155/while/Identity:output:0"?
lstm_155_while_identity_1"lstm_155/while/Identity_1:output:0"?
lstm_155_while_identity_2"lstm_155/while/Identity_2:output:0"?
lstm_155_while_identity_3"lstm_155/while/Identity_3:output:0"?
lstm_155_while_identity_4"lstm_155/while/Identity_4:output:0"?
lstm_155_while_identity_5"lstm_155/while/Identity_5:output:0"T
'lstm_155_while_lstm_155_strided_slice_1)lstm_155_while_lstm_155_strided_slice_1_0"|
;lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0"~
<lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0"z
:lstm_155_while_lstm_cell_41_matmul_readvariableop_resource<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0"Ì
clstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensorelstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2f
1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp2j
3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_249440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249440___redundant_placeholder04
0while_while_cond_249440___redundant_placeholder14
0while_while_cond_249440___redundant_placeholder24
0while_while_cond_249440___redundant_placeholder3
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
à"
Ŭ
while_body_249441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_41_249465_0:2(-
while_lstm_cell_41_249467_0:
()
while_lstm_cell_41_249469_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_41_249465:2(+
while_lstm_cell_41_249467:
('
while_lstm_cell_41_249469:(˘*while/lstm_cell_41/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_249465_0while_lstm_cell_41_249467_0while_lstm_cell_41_249469_0*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249382Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_41_249465while_lstm_cell_41_249465_0"8
while_lstm_cell_41_249467while_lstm_cell_41_249467_0"8
while_lstm_cell_41_249469while_lstm_cell_41_249469_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_251824
inputs_0>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_251740*
condR
while_cond_251739*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ħ

I__inference_sequential_51_layer_call_and_return_conditional_losses_251210

inputsG
4lstm_153_lstm_cell_39_matmul_readvariableop_resource:	I
6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource:	dD
5lstm_153_lstm_cell_39_biasadd_readvariableop_resource:	G
4lstm_154_lstm_cell_40_matmul_readvariableop_resource:	dÈI
6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈD
5lstm_154_lstm_cell_40_biasadd_readvariableop_resource:	ÈF
4lstm_155_lstm_cell_41_matmul_readvariableop_resource:2(H
6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource:
(C
5lstm_155_lstm_cell_41_biasadd_readvariableop_resource:(9
'dense_51_matmul_readvariableop_resource:
6
(dense_51_biasadd_readvariableop_resource:
identity˘dense_51/BiasAdd/ReadVariableOp˘dense_51/MatMul/ReadVariableOp˘,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp˘+lstm_153/lstm_cell_39/MatMul/ReadVariableOp˘-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp˘lstm_153/while˘,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp˘+lstm_154/lstm_cell_40/MatMul/ReadVariableOp˘-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp˘lstm_154/while˘,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp˘+lstm_155/lstm_cell_41/MatMul/ReadVariableOp˘-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp˘lstm_155/whileD
lstm_153/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_153/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_153/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_153/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_153/strided_sliceStridedSlicelstm_153/Shape:output:0%lstm_153/strided_slice/stack:output:0'lstm_153/strided_slice/stack_1:output:0'lstm_153/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_153/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_153/zeros/packedPacklstm_153/strided_slice:output:0 lstm_153/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_153/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_153/zerosFilllstm_153/zeros/packed:output:0lstm_153/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_153/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_153/zeros_1/packedPacklstm_153/strided_slice:output:0"lstm_153/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_153/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_153/zeros_1Fill lstm_153/zeros_1/packed:output:0lstm_153/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_153/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_153/transpose	Transposeinputs lstm_153/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_153/Shape_1Shapelstm_153/transpose:y:0*
T0*
_output_shapes
:h
lstm_153/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_153/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_153/strided_slice_1StridedSlicelstm_153/Shape_1:output:0'lstm_153/strided_slice_1/stack:output:0)lstm_153/strided_slice_1/stack_1:output:0)lstm_153/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_153/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_153/TensorArrayV2TensorListReserve-lstm_153/TensorArrayV2/element_shape:output:0!lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_153/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_153/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_153/transpose:y:0Glstm_153/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_153/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_153/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_153/strided_slice_2StridedSlicelstm_153/transpose:y:0'lstm_153/strided_slice_2/stack:output:0)lstm_153/strided_slice_2/stack_1:output:0)lstm_153/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_153/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp4lstm_153_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_153/lstm_cell_39/MatMulMatMul!lstm_153/strided_slice_2:output:03lstm_153/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_153/lstm_cell_39/MatMul_1MatMullstm_153/zeros:output:05lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_153/lstm_cell_39/addAddV2&lstm_153/lstm_cell_39/MatMul:product:0(lstm_153/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp5lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_153/lstm_cell_39/BiasAddBiasAddlstm_153/lstm_cell_39/add:z:04lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_153/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_153/lstm_cell_39/splitSplit.lstm_153/lstm_cell_39/split/split_dim:output:0&lstm_153/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_153/lstm_cell_39/SigmoidSigmoid$lstm_153/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/Sigmoid_1Sigmoid$lstm_153/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/mulMul#lstm_153/lstm_cell_39/Sigmoid_1:y:0lstm_153/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_153/lstm_cell_39/ReluRelu$lstm_153/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_153/lstm_cell_39/mul_1Mul!lstm_153/lstm_cell_39/Sigmoid:y:0(lstm_153/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/add_1AddV2lstm_153/lstm_cell_39/mul:z:0lstm_153/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/lstm_cell_39/Sigmoid_2Sigmoid$lstm_153/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_153/lstm_cell_39/Relu_1Relulstm_153/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_153/lstm_cell_39/mul_2Mul#lstm_153/lstm_cell_39/Sigmoid_2:y:0*lstm_153/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_153/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_153/TensorArrayV2_1TensorListReserve/lstm_153/TensorArrayV2_1/element_shape:output:0!lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_153/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_153/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_153/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_153/whileWhile$lstm_153/while/loop_counter:output:0*lstm_153/while/maximum_iterations:output:0lstm_153/time:output:0!lstm_153/TensorArrayV2_1:handle:0lstm_153/zeros:output:0lstm_153/zeros_1:output:0!lstm_153/strided_slice_1:output:0@lstm_153/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_153_lstm_cell_39_matmul_readvariableop_resource6lstm_153_lstm_cell_39_matmul_1_readvariableop_resource5lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
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
lstm_153_while_body_250842*&
condR
lstm_153_while_cond_250841*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_153/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_153/TensorArrayV2Stack/TensorListStackTensorListStacklstm_153/while:output:3Blstm_153/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_153/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_153/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_153/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_153/strided_slice_3StridedSlice4lstm_153/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_153/strided_slice_3/stack:output:0)lstm_153/strided_slice_3/stack_1:output:0)lstm_153/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_153/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_153/transpose_1	Transpose4lstm_153/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_153/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_153/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_154/ShapeShapelstm_153/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_154/strided_sliceStridedSlicelstm_154/Shape:output:0%lstm_154/strided_slice/stack:output:0'lstm_154/strided_slice/stack_1:output:0'lstm_154/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_154/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_154/zeros/packedPacklstm_154/strided_slice:output:0 lstm_154/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_154/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_154/zerosFilllstm_154/zeros/packed:output:0lstm_154/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_154/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_154/zeros_1/packedPacklstm_154/strided_slice:output:0"lstm_154/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_154/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_154/zeros_1Fill lstm_154/zeros_1/packed:output:0lstm_154/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_154/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_154/transpose	Transposelstm_153/transpose_1:y:0 lstm_154/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_154/Shape_1Shapelstm_154/transpose:y:0*
T0*
_output_shapes
:h
lstm_154/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_154/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_154/strided_slice_1StridedSlicelstm_154/Shape_1:output:0'lstm_154/strided_slice_1/stack:output:0)lstm_154/strided_slice_1/stack_1:output:0)lstm_154/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_154/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_154/TensorArrayV2TensorListReserve-lstm_154/TensorArrayV2/element_shape:output:0!lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_154/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_154/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_154/transpose:y:0Glstm_154/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_154/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_154/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_154/strided_slice_2StridedSlicelstm_154/transpose:y:0'lstm_154/strided_slice_2/stack:output:0)lstm_154/strided_slice_2/stack_1:output:0)lstm_154/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_154/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp4lstm_154_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_154/lstm_cell_40/MatMulMatMul!lstm_154/strided_slice_2:output:03lstm_154/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_154/lstm_cell_40/MatMul_1MatMullstm_154/zeros:output:05lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_154/lstm_cell_40/addAddV2&lstm_154/lstm_cell_40/MatMul:product:0(lstm_154/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp5lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_154/lstm_cell_40/BiasAddBiasAddlstm_154/lstm_cell_40/add:z:04lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_154/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_154/lstm_cell_40/splitSplit.lstm_154/lstm_cell_40/split/split_dim:output:0&lstm_154/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_154/lstm_cell_40/SigmoidSigmoid$lstm_154/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/Sigmoid_1Sigmoid$lstm_154/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/mulMul#lstm_154/lstm_cell_40/Sigmoid_1:y:0lstm_154/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_154/lstm_cell_40/ReluRelu$lstm_154/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_154/lstm_cell_40/mul_1Mul!lstm_154/lstm_cell_40/Sigmoid:y:0(lstm_154/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/add_1AddV2lstm_154/lstm_cell_40/mul:z:0lstm_154/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/lstm_cell_40/Sigmoid_2Sigmoid$lstm_154/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_154/lstm_cell_40/Relu_1Relulstm_154/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_154/lstm_cell_40/mul_2Mul#lstm_154/lstm_cell_40/Sigmoid_2:y:0*lstm_154/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_154/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_154/TensorArrayV2_1TensorListReserve/lstm_154/TensorArrayV2_1/element_shape:output:0!lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_154/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_154/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_154/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_154/whileWhile$lstm_154/while/loop_counter:output:0*lstm_154/while/maximum_iterations:output:0lstm_154/time:output:0!lstm_154/TensorArrayV2_1:handle:0lstm_154/zeros:output:0lstm_154/zeros_1:output:0!lstm_154/strided_slice_1:output:0@lstm_154/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_154_lstm_cell_40_matmul_readvariableop_resource6lstm_154_lstm_cell_40_matmul_1_readvariableop_resource5lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
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
lstm_154_while_body_250981*&
condR
lstm_154_while_cond_250980*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_154/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_154/TensorArrayV2Stack/TensorListStackTensorListStacklstm_154/while:output:3Blstm_154/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_154/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_154/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_154/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_154/strided_slice_3StridedSlice4lstm_154/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_154/strided_slice_3/stack:output:0)lstm_154/strided_slice_3/stack_1:output:0)lstm_154/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_154/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_154/transpose_1	Transpose4lstm_154/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_154/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_154/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_155/ShapeShapelstm_154/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_155/strided_sliceStridedSlicelstm_155/Shape:output:0%lstm_155/strided_slice/stack:output:0'lstm_155/strided_slice/stack_1:output:0'lstm_155/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_155/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_155/zeros/packedPacklstm_155/strided_slice:output:0 lstm_155/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_155/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_155/zerosFilllstm_155/zeros/packed:output:0lstm_155/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_155/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_155/zeros_1/packedPacklstm_155/strided_slice:output:0"lstm_155/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_155/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_155/zeros_1Fill lstm_155/zeros_1/packed:output:0lstm_155/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_155/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_155/transpose	Transposelstm_154/transpose_1:y:0 lstm_155/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_155/Shape_1Shapelstm_155/transpose:y:0*
T0*
_output_shapes
:h
lstm_155/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_155/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_155/strided_slice_1StridedSlicelstm_155/Shape_1:output:0'lstm_155/strided_slice_1/stack:output:0)lstm_155/strided_slice_1/stack_1:output:0)lstm_155/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_155/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_155/TensorArrayV2TensorListReserve-lstm_155/TensorArrayV2/element_shape:output:0!lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_155/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_155/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_155/transpose:y:0Glstm_155/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_155/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_155/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_155/strided_slice_2StridedSlicelstm_155/transpose:y:0'lstm_155/strided_slice_2/stack:output:0)lstm_155/strided_slice_2/stack_1:output:0)lstm_155/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_155/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp4lstm_155_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_155/lstm_cell_41/MatMulMatMul!lstm_155/strided_slice_2:output:03lstm_155/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_155/lstm_cell_41/MatMul_1MatMullstm_155/zeros:output:05lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_155/lstm_cell_41/addAddV2&lstm_155/lstm_cell_41/MatMul:product:0(lstm_155/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp5lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_155/lstm_cell_41/BiasAddBiasAddlstm_155/lstm_cell_41/add:z:04lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_155/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_155/lstm_cell_41/splitSplit.lstm_155/lstm_cell_41/split/split_dim:output:0&lstm_155/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_155/lstm_cell_41/SigmoidSigmoid$lstm_155/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/Sigmoid_1Sigmoid$lstm_155/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/mulMul#lstm_155/lstm_cell_41/Sigmoid_1:y:0lstm_155/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_155/lstm_cell_41/ReluRelu$lstm_155/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_155/lstm_cell_41/mul_1Mul!lstm_155/lstm_cell_41/Sigmoid:y:0(lstm_155/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/add_1AddV2lstm_155/lstm_cell_41/mul:z:0lstm_155/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/lstm_cell_41/Sigmoid_2Sigmoid$lstm_155/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_155/lstm_cell_41/Relu_1Relulstm_155/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_155/lstm_cell_41/mul_2Mul#lstm_155/lstm_cell_41/Sigmoid_2:y:0*lstm_155/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_155/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_155/TensorArrayV2_1TensorListReserve/lstm_155/TensorArrayV2_1/element_shape:output:0!lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_155/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_155/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_155/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_155/whileWhile$lstm_155/while/loop_counter:output:0*lstm_155/while/maximum_iterations:output:0lstm_155/time:output:0!lstm_155/TensorArrayV2_1:handle:0lstm_155/zeros:output:0lstm_155/zeros_1:output:0!lstm_155/strided_slice_1:output:0@lstm_155/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_155_lstm_cell_41_matmul_readvariableop_resource6lstm_155_lstm_cell_41_matmul_1_readvariableop_resource5lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
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
lstm_155_while_body_251120*&
condR
lstm_155_while_cond_251119*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_155/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_155/TensorArrayV2Stack/TensorListStackTensorListStacklstm_155/while:output:3Blstm_155/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_155/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_155/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_155/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_155/strided_slice_3StridedSlice4lstm_155/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_155/strided_slice_3/stack:output:0)lstm_155/strided_slice_3/stack_1:output:0)lstm_155/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_155/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_155/transpose_1	Transpose4lstm_155/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_155/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_155/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_51/MatMulMatMul!lstm_155/strided_slice_3:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_51/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp-^lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp,^lstm_153/lstm_cell_39/MatMul/ReadVariableOp.^lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp^lstm_153/while-^lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp,^lstm_154/lstm_cell_40/MatMul/ReadVariableOp.^lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_154/while-^lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp,^lstm_155/lstm_cell_41/MatMul/ReadVariableOp.^lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_155/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2\
,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp,lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp2Z
+lstm_153/lstm_cell_39/MatMul/ReadVariableOp+lstm_153/lstm_cell_39/MatMul/ReadVariableOp2^
-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp-lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp2 
lstm_153/whilelstm_153/while2\
,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp,lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp2Z
+lstm_154/lstm_cell_40/MatMul/ReadVariableOp+lstm_154/lstm_cell_40/MatMul/ReadVariableOp2^
-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp-lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp2 
lstm_154/whilelstm_154/while2\
,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp,lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp2Z
+lstm_155/lstm_cell_41/MatMul/ReadVariableOp+lstm_155/lstm_cell_41/MatMul/ReadVariableOp2^
-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp-lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp2 
lstm_155/whilelstm_155/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
áW

__inference__traced_save_253941
file_prefix.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_153_lstm_cell_153_kernel_read_readvariableopF
Bsavev2_lstm_153_lstm_cell_153_recurrent_kernel_read_readvariableop:
6savev2_lstm_153_lstm_cell_153_bias_read_readvariableop<
8savev2_lstm_154_lstm_cell_154_kernel_read_readvariableopF
Bsavev2_lstm_154_lstm_cell_154_recurrent_kernel_read_readvariableop:
6savev2_lstm_154_lstm_cell_154_bias_read_readvariableop<
8savev2_lstm_155_lstm_cell_155_kernel_read_readvariableopF
Bsavev2_lstm_155_lstm_cell_155_recurrent_kernel_read_readvariableop:
6savev2_lstm_155_lstm_cell_155_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableopC
?savev2_adam_lstm_153_lstm_cell_153_kernel_m_read_readvariableopM
Isavev2_adam_lstm_153_lstm_cell_153_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_153_lstm_cell_153_bias_m_read_readvariableopC
?savev2_adam_lstm_154_lstm_cell_154_kernel_m_read_readvariableopM
Isavev2_adam_lstm_154_lstm_cell_154_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_154_lstm_cell_154_bias_m_read_readvariableopC
?savev2_adam_lstm_155_lstm_cell_155_kernel_m_read_readvariableopM
Isavev2_adam_lstm_155_lstm_cell_155_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_155_lstm_cell_155_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableopC
?savev2_adam_lstm_153_lstm_cell_153_kernel_v_read_readvariableopM
Isavev2_adam_lstm_153_lstm_cell_153_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_153_lstm_cell_153_bias_v_read_readvariableopC
?savev2_adam_lstm_154_lstm_cell_154_kernel_v_read_readvariableopM
Isavev2_adam_lstm_154_lstm_cell_154_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_154_lstm_cell_154_bias_v_read_readvariableopC
?savev2_adam_lstm_155_lstm_cell_155_kernel_v_read_readvariableopM
Isavev2_adam_lstm_155_lstm_cell_155_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_155_lstm_cell_155_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_153_lstm_cell_153_kernel_read_readvariableopBsavev2_lstm_153_lstm_cell_153_recurrent_kernel_read_readvariableop6savev2_lstm_153_lstm_cell_153_bias_read_readvariableop8savev2_lstm_154_lstm_cell_154_kernel_read_readvariableopBsavev2_lstm_154_lstm_cell_154_recurrent_kernel_read_readvariableop6savev2_lstm_154_lstm_cell_154_bias_read_readvariableop8savev2_lstm_155_lstm_cell_155_kernel_read_readvariableopBsavev2_lstm_155_lstm_cell_155_recurrent_kernel_read_readvariableop6savev2_lstm_155_lstm_cell_155_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop?savev2_adam_lstm_153_lstm_cell_153_kernel_m_read_readvariableopIsavev2_adam_lstm_153_lstm_cell_153_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_153_lstm_cell_153_bias_m_read_readvariableop?savev2_adam_lstm_154_lstm_cell_154_kernel_m_read_readvariableopIsavev2_adam_lstm_154_lstm_cell_154_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_154_lstm_cell_154_bias_m_read_readvariableop?savev2_adam_lstm_155_lstm_cell_155_kernel_m_read_readvariableopIsavev2_adam_lstm_155_lstm_cell_155_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_155_lstm_cell_155_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableop?savev2_adam_lstm_153_lstm_cell_153_kernel_v_read_readvariableopIsavev2_adam_lstm_153_lstm_cell_153_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_153_lstm_cell_153_bias_v_read_readvariableop?savev2_adam_lstm_154_lstm_cell_154_kernel_v_read_readvariableopIsavev2_adam_lstm_154_lstm_cell_154_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_154_lstm_cell_154_bias_v_read_readvariableop?savev2_adam_lstm_155_lstm_cell_155_kernel_v_read_readvariableopIsavev2_adam_lstm_155_lstm_cell_155_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_155_lstm_cell_155_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
8
?
while_body_251740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_252498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252498___redundant_placeholder04
0while_while_cond_252498___redundant_placeholder14
0while_while_cond_252498___redundant_placeholder24
0while_while_cond_252498___redundant_placeholder3
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
ĉ"
?
while_body_249091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_40_249115_0:	dÈ.
while_lstm_cell_40_249117_0:	2È*
while_lstm_cell_40_249119_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_40_249115:	dÈ,
while_lstm_cell_40_249117:	2È(
while_lstm_cell_40_249119:	È˘*while/lstm_cell_40/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_249115_0while_lstm_cell_40_249117_0while_lstm_cell_40_249119_0*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_249032Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_40_249115while_lstm_cell_40_249115_0"8
while_lstm_cell_40_249117while_lstm_cell_40_249117_0"8
while_lstm_cell_40_249119while_lstm_cell_40_249119_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_248550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_39_248574_0:	.
while_lstm_cell_39_248576_0:	d*
while_lstm_cell_39_248578_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_39_248574:	,
while_lstm_cell_39_248576:	d(
while_lstm_cell_39_248578:	˘*while/lstm_cell_39/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_39_248574_0while_lstm_cell_39_248576_0while_lstm_cell_39_248578_0*
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248536Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_39/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_39/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_39/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_39_248574while_lstm_cell_39_248574_0"8
while_lstm_cell_39_248576while_lstm_cell_39_248576_0"8
while_lstm_cell_39_248578while_lstm_cell_39_248578_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_39/StatefulPartitionedCall*while/lstm_cell_39/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_252499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_249883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249883___redundant_placeholder04
0while_while_cond_249883___redundant_placeholder14
0while_while_cond_249883___redundant_placeholder24
0while_while_cond_249883___redundant_placeholder3
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
âJ

D__inference_lstm_153_layer_call_and_return_conditional_losses_251967
inputs_0>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_251883*
condR
while_cond_251882*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ş

(sequential_51_lstm_154_while_cond_248239J
Fsequential_51_lstm_154_while_sequential_51_lstm_154_while_loop_counterP
Lsequential_51_lstm_154_while_sequential_51_lstm_154_while_maximum_iterations,
(sequential_51_lstm_154_while_placeholder.
*sequential_51_lstm_154_while_placeholder_1.
*sequential_51_lstm_154_while_placeholder_2.
*sequential_51_lstm_154_while_placeholder_3L
Hsequential_51_lstm_154_while_less_sequential_51_lstm_154_strided_slice_1b
^sequential_51_lstm_154_while_sequential_51_lstm_154_while_cond_248239___redundant_placeholder0b
^sequential_51_lstm_154_while_sequential_51_lstm_154_while_cond_248239___redundant_placeholder1b
^sequential_51_lstm_154_while_sequential_51_lstm_154_while_cond_248239___redundant_placeholder2b
^sequential_51_lstm_154_while_sequential_51_lstm_154_while_cond_248239___redundant_placeholder3)
%sequential_51_lstm_154_while_identity
?
!sequential_51/lstm_154/while/LessLess(sequential_51_lstm_154_while_placeholderHsequential_51_lstm_154_while_less_sequential_51_lstm_154_strided_slice_1*
T0*
_output_shapes
: y
%sequential_51/lstm_154/while/IdentityIdentity%sequential_51/lstm_154/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_51_lstm_154_while_identity.sequential_51/lstm_154/while/Identity:output:0*(
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
while_body_249734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_155_while_cond_251119.
*lstm_155_while_lstm_155_while_loop_counter4
0lstm_155_while_lstm_155_while_maximum_iterations
lstm_155_while_placeholder 
lstm_155_while_placeholder_1 
lstm_155_while_placeholder_2 
lstm_155_while_placeholder_30
,lstm_155_while_less_lstm_155_strided_slice_1F
Blstm_155_while_lstm_155_while_cond_251119___redundant_placeholder0F
Blstm_155_while_lstm_155_while_cond_251119___redundant_placeholder1F
Blstm_155_while_lstm_155_while_cond_251119___redundant_placeholder2F
Blstm_155_while_lstm_155_while_cond_251119___redundant_placeholder3
lstm_155_while_identity

lstm_155/while/LessLesslstm_155_while_placeholder,lstm_155_while_less_lstm_155_strided_slice_1*
T0*
_output_shapes
: ]
lstm_155/while/IdentityIdentitylstm_155/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_155_while_identity lstm_155/while/Identity:output:0*(
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
Ğ
¸
)__inference_lstm_153_layer_call_fn_251648
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_248619|
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
Ç	
ġ
D__inference_dense_51_layer_call_and_return_conditional_losses_253504

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

ĥ
)__inference_lstm_153_layer_call_fn_251670

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
D__inference_lstm_153_layer_call_and_return_conditional_losses_249668s
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
8
?
while_body_252026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

µ
)__inference_lstm_155_layer_call_fn_252880
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249319o
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
²

÷
lstm_154_while_cond_250980.
*lstm_154_while_lstm_154_while_loop_counter4
0lstm_154_while_lstm_154_while_maximum_iterations
lstm_154_while_placeholder 
lstm_154_while_placeholder_1 
lstm_154_while_placeholder_2 
lstm_154_while_placeholder_30
,lstm_154_while_less_lstm_154_strided_slice_1F
Blstm_154_while_lstm_154_while_cond_250980___redundant_placeholder0F
Blstm_154_while_lstm_154_while_cond_250980___redundant_placeholder1F
Blstm_154_while_lstm_154_while_cond_250980___redundant_placeholder2F
Blstm_154_while_lstm_154_while_cond_250980___redundant_placeholder3
lstm_154_while_identity

lstm_154/while/LessLesslstm_154_while_placeholder,lstm_154_while_less_lstm_154_strided_slice_1*
T0*
_output_shapes
: ]
lstm_154/while/IdentityIdentitylstm_154/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_154_while_identity lstm_154/while/Identity:output:0*(
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
ÛB
?

lstm_154_while_body_250981.
*lstm_154_while_lstm_154_while_loop_counter4
0lstm_154_while_lstm_154_while_maximum_iterations
lstm_154_while_placeholder 
lstm_154_while_placeholder_1 
lstm_154_while_placeholder_2 
lstm_154_while_placeholder_3-
)lstm_154_while_lstm_154_strided_slice_1_0i
elstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈQ
>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
lstm_154_while_identity
lstm_154_while_identity_1
lstm_154_while_identity_2
lstm_154_while_identity_3
lstm_154_while_identity_4
lstm_154_while_identity_5+
'lstm_154_while_lstm_154_strided_slice_1g
clstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensorM
:lstm_154_while_lstm_cell_40_matmul_readvariableop_resource:	dÈO
<lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈJ
;lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource:	È˘2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp˘1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp˘3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp
@lstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_154/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0lstm_154_while_placeholderIlstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_154/while/lstm_cell_40/MatMulMatMul9lstm_154/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_154/while/lstm_cell_40/MatMul_1MatMullstm_154_while_placeholder_2;lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_154/while/lstm_cell_40/addAddV2,lstm_154/while/lstm_cell_40/MatMul:product:0.lstm_154/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_154/while/lstm_cell_40/BiasAddBiasAdd#lstm_154/while/lstm_cell_40/add:z:0:lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_154/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_154/while/lstm_cell_40/splitSplit4lstm_154/while/lstm_cell_40/split/split_dim:output:0,lstm_154/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_154/while/lstm_cell_40/SigmoidSigmoid*lstm_154/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_154/while/lstm_cell_40/Sigmoid_1Sigmoid*lstm_154/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_154/while/lstm_cell_40/mulMul)lstm_154/while/lstm_cell_40/Sigmoid_1:y:0lstm_154_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_154/while/lstm_cell_40/ReluRelu*lstm_154/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_154/while/lstm_cell_40/mul_1Mul'lstm_154/while/lstm_cell_40/Sigmoid:y:0.lstm_154/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_154/while/lstm_cell_40/add_1AddV2#lstm_154/while/lstm_cell_40/mul:z:0%lstm_154/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_154/while/lstm_cell_40/Sigmoid_2Sigmoid*lstm_154/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_154/while/lstm_cell_40/Relu_1Relu%lstm_154/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_154/while/lstm_cell_40/mul_2Mul)lstm_154/while/lstm_cell_40/Sigmoid_2:y:00lstm_154/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_154/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_154_while_placeholder_1lstm_154_while_placeholder%lstm_154/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_154/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_154/while/addAddV2lstm_154_while_placeholderlstm_154/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_154/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_154/while/add_1AddV2*lstm_154_while_lstm_154_while_loop_counterlstm_154/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_154/while/IdentityIdentitylstm_154/while/add_1:z:0^lstm_154/while/NoOp*
T0*
_output_shapes
: 
lstm_154/while/Identity_1Identity0lstm_154_while_lstm_154_while_maximum_iterations^lstm_154/while/NoOp*
T0*
_output_shapes
: t
lstm_154/while/Identity_2Identitylstm_154/while/add:z:0^lstm_154/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_154/while/Identity_3IdentityClstm_154/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_154/while/NoOp*
T0*
_output_shapes
: 
lstm_154/while/Identity_4Identity%lstm_154/while/lstm_cell_40/mul_2:z:0^lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/while/Identity_5Identity%lstm_154/while/lstm_cell_40/add_1:z:0^lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_154/while/NoOpNoOp3^lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2^lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp4^lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_154_while_identity lstm_154/while/Identity:output:0"?
lstm_154_while_identity_1"lstm_154/while/Identity_1:output:0"?
lstm_154_while_identity_2"lstm_154/while/Identity_2:output:0"?
lstm_154_while_identity_3"lstm_154/while/Identity_3:output:0"?
lstm_154_while_identity_4"lstm_154/while/Identity_4:output:0"?
lstm_154_while_identity_5"lstm_154/while/Identity_5:output:0"T
'lstm_154_while_lstm_154_strided_slice_1)lstm_154_while_lstm_154_strided_slice_1_0"|
;lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0"~
<lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0"z
:lstm_154_while_lstm_cell_40_matmul_readvariableop_resource<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0"Ì
clstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensorelstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2f
1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp2j
3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_250184

inputs=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_250100*
condR
while_cond_250099*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_252785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253700

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
µ
?
while_cond_252641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252641___redundant_placeholder04
0while_while_cond_252641___redundant_placeholder14
0while_while_cond_252641___redundant_placeholder24
0while_while_cond_252641___redundant_placeholder3
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
Ë

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249236

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
ĉ"
?
while_body_248900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_40_248924_0:	dÈ.
while_lstm_cell_40_248926_0:	2È*
while_lstm_cell_40_248928_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_40_248924:	dÈ,
while_lstm_cell_40_248926:	2È(
while_lstm_cell_40_248928:	È˘*while/lstm_cell_40/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_248924_0while_lstm_cell_40_248926_0while_lstm_cell_40_248928_0*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_248886Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_40_248924while_lstm_cell_40_248924_0"8
while_lstm_cell_40_248926while_lstm_cell_40_248926_0"8
while_lstm_cell_40_248928while_lstm_cell_40_248928_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_250265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÛB
?

lstm_154_while_body_251408.
*lstm_154_while_lstm_154_while_loop_counter4
0lstm_154_while_lstm_154_while_maximum_iterations
lstm_154_while_placeholder 
lstm_154_while_placeholder_1 
lstm_154_while_placeholder_2 
lstm_154_while_placeholder_3-
)lstm_154_while_lstm_154_strided_slice_1_0i
elstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈQ
>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
lstm_154_while_identity
lstm_154_while_identity_1
lstm_154_while_identity_2
lstm_154_while_identity_3
lstm_154_while_identity_4
lstm_154_while_identity_5+
'lstm_154_while_lstm_154_strided_slice_1g
clstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensorM
:lstm_154_while_lstm_cell_40_matmul_readvariableop_resource:	dÈO
<lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈJ
;lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource:	È˘2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp˘1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp˘3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp
@lstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_154/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0lstm_154_while_placeholderIlstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_154/while/lstm_cell_40/MatMulMatMul9lstm_154/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_154/while/lstm_cell_40/MatMul_1MatMullstm_154_while_placeholder_2;lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_154/while/lstm_cell_40/addAddV2,lstm_154/while/lstm_cell_40/MatMul:product:0.lstm_154/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_154/while/lstm_cell_40/BiasAddBiasAdd#lstm_154/while/lstm_cell_40/add:z:0:lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_154/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_154/while/lstm_cell_40/splitSplit4lstm_154/while/lstm_cell_40/split/split_dim:output:0,lstm_154/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_154/while/lstm_cell_40/SigmoidSigmoid*lstm_154/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_154/while/lstm_cell_40/Sigmoid_1Sigmoid*lstm_154/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_154/while/lstm_cell_40/mulMul)lstm_154/while/lstm_cell_40/Sigmoid_1:y:0lstm_154_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_154/while/lstm_cell_40/ReluRelu*lstm_154/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_154/while/lstm_cell_40/mul_1Mul'lstm_154/while/lstm_cell_40/Sigmoid:y:0.lstm_154/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_154/while/lstm_cell_40/add_1AddV2#lstm_154/while/lstm_cell_40/mul:z:0%lstm_154/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_154/while/lstm_cell_40/Sigmoid_2Sigmoid*lstm_154/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_154/while/lstm_cell_40/Relu_1Relu%lstm_154/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_154/while/lstm_cell_40/mul_2Mul)lstm_154/while/lstm_cell_40/Sigmoid_2:y:00lstm_154/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_154/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_154_while_placeholder_1lstm_154_while_placeholder%lstm_154/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_154/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_154/while/addAddV2lstm_154_while_placeholderlstm_154/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_154/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_154/while/add_1AddV2*lstm_154_while_lstm_154_while_loop_counterlstm_154/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_154/while/IdentityIdentitylstm_154/while/add_1:z:0^lstm_154/while/NoOp*
T0*
_output_shapes
: 
lstm_154/while/Identity_1Identity0lstm_154_while_lstm_154_while_maximum_iterations^lstm_154/while/NoOp*
T0*
_output_shapes
: t
lstm_154/while/Identity_2Identitylstm_154/while/add:z:0^lstm_154/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_154/while/Identity_3IdentityClstm_154/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_154/while/NoOp*
T0*
_output_shapes
: 
lstm_154/while/Identity_4Identity%lstm_154/while/lstm_cell_40/mul_2:z:0^lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_154/while/Identity_5Identity%lstm_154/while/lstm_cell_40/add_1:z:0^lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_154/while/NoOpNoOp3^lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2^lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp4^lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_154_while_identity lstm_154/while/Identity:output:0"?
lstm_154_while_identity_1"lstm_154/while/Identity_1:output:0"?
lstm_154_while_identity_2"lstm_154/while/Identity_2:output:0"?
lstm_154_while_identity_3"lstm_154/while/Identity_3:output:0"?
lstm_154_while_identity_4"lstm_154/while/Identity_4:output:0"?
lstm_154_while_identity_5"lstm_154/while/Identity_5:output:0"T
'lstm_154_while_lstm_154_strided_slice_1)lstm_154_while_lstm_154_strided_slice_1_0"|
;lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource=lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0"~
<lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource>lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0"z
:lstm_154_while_lstm_cell_40_matmul_readvariableop_resource<lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0"Ì
clstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensorelstm_154_while_tensorarrayv2read_tensorlistgetitem_lstm_154_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2f
1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp1lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp2j
3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp3lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ğ
¸
)__inference_lstm_154_layer_call_fn_252264
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_248969|
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
ÎB
ê

lstm_155_while_body_251120.
*lstm_155_while_lstm_155_while_loop_counter4
0lstm_155_while_lstm_155_while_maximum_iterations
lstm_155_while_placeholder 
lstm_155_while_placeholder_1 
lstm_155_while_placeholder_2 
lstm_155_while_placeholder_3-
)lstm_155_while_lstm_155_strided_slice_1_0i
elstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0:2(P
>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(K
=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0:(
lstm_155_while_identity
lstm_155_while_identity_1
lstm_155_while_identity_2
lstm_155_while_identity_3
lstm_155_while_identity_4
lstm_155_while_identity_5+
'lstm_155_while_lstm_155_strided_slice_1g
clstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensorL
:lstm_155_while_lstm_cell_41_matmul_readvariableop_resource:2(N
<lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource:
(I
;lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource:(˘2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp˘1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp˘3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp
@lstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_155/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0lstm_155_while_placeholderIlstm_155/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_155/while/lstm_cell_41/MatMulMatMul9lstm_155/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_155/while/lstm_cell_41/MatMul_1MatMullstm_155_while_placeholder_2;lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_155/while/lstm_cell_41/addAddV2,lstm_155/while/lstm_cell_41/MatMul:product:0.lstm_155/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_155/while/lstm_cell_41/BiasAddBiasAdd#lstm_155/while/lstm_cell_41/add:z:0:lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_155/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_155/while/lstm_cell_41/splitSplit4lstm_155/while/lstm_cell_41/split/split_dim:output:0,lstm_155/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_155/while/lstm_cell_41/SigmoidSigmoid*lstm_155/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_155/while/lstm_cell_41/Sigmoid_1Sigmoid*lstm_155/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_155/while/lstm_cell_41/mulMul)lstm_155/while/lstm_cell_41/Sigmoid_1:y:0lstm_155_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_155/while/lstm_cell_41/ReluRelu*lstm_155/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_155/while/lstm_cell_41/mul_1Mul'lstm_155/while/lstm_cell_41/Sigmoid:y:0.lstm_155/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_155/while/lstm_cell_41/add_1AddV2#lstm_155/while/lstm_cell_41/mul:z:0%lstm_155/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_155/while/lstm_cell_41/Sigmoid_2Sigmoid*lstm_155/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_155/while/lstm_cell_41/Relu_1Relu%lstm_155/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_155/while/lstm_cell_41/mul_2Mul)lstm_155/while/lstm_cell_41/Sigmoid_2:y:00lstm_155/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_155/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_155_while_placeholder_1lstm_155_while_placeholder%lstm_155/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_155/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_155/while/addAddV2lstm_155_while_placeholderlstm_155/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_155/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_155/while/add_1AddV2*lstm_155_while_lstm_155_while_loop_counterlstm_155/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_155/while/IdentityIdentitylstm_155/while/add_1:z:0^lstm_155/while/NoOp*
T0*
_output_shapes
: 
lstm_155/while/Identity_1Identity0lstm_155_while_lstm_155_while_maximum_iterations^lstm_155/while/NoOp*
T0*
_output_shapes
: t
lstm_155/while/Identity_2Identitylstm_155/while/add:z:0^lstm_155/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_155/while/Identity_3IdentityClstm_155/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_155/while/NoOp*
T0*
_output_shapes
: 
lstm_155/while/Identity_4Identity%lstm_155/while/lstm_cell_41/mul_2:z:0^lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_155/while/Identity_5Identity%lstm_155/while/lstm_cell_41/add_1:z:0^lstm_155/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_155/while/NoOpNoOp3^lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2^lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp4^lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_155_while_identity lstm_155/while/Identity:output:0"?
lstm_155_while_identity_1"lstm_155/while/Identity_1:output:0"?
lstm_155_while_identity_2"lstm_155/while/Identity_2:output:0"?
lstm_155_while_identity_3"lstm_155/while/Identity_3:output:0"?
lstm_155_while_identity_4"lstm_155/while/Identity_4:output:0"?
lstm_155_while_identity_5"lstm_155/while/Identity_5:output:0"T
'lstm_155_while_lstm_155_strided_slice_1)lstm_155_while_lstm_155_strided_slice_1_0"|
;lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource=lstm_155_while_lstm_cell_41_biasadd_readvariableop_resource_0"~
<lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource>lstm_155_while_lstm_cell_41_matmul_1_readvariableop_resource_0"z
:lstm_155_while_lstm_cell_41_matmul_readvariableop_resource<lstm_155_while_lstm_cell_41_matmul_readvariableop_resource_0"Ì
clstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensorelstm_155_while_tensorarrayv2read_tensorlistgetitem_lstm_155_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2lstm_155/while/lstm_cell_41/BiasAdd/ReadVariableOp2f
1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp1lstm_155/while/lstm_cell_41/MatMul/ReadVariableOp2j
3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp3lstm_155/while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¤J

D__inference_lstm_154_layer_call_and_return_conditional_losses_252869

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_252785*
condR
while_cond_252784*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
¤J

D__inference_lstm_153_layer_call_and_return_conditional_losses_252253

inputs>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_252169*
condR
while_cond_252168*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_250429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250429___redundant_placeholder04
0while_while_cond_250429___redundant_placeholder14
0while_while_cond_250429___redundant_placeholder24
0while_while_cond_250429___redundant_placeholder3
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
˙µ
Á
!__inference__wrapped_model_248469
lstm_153_inputU
Bsequential_51_lstm_153_lstm_cell_39_matmul_readvariableop_resource:	W
Dsequential_51_lstm_153_lstm_cell_39_matmul_1_readvariableop_resource:	dR
Csequential_51_lstm_153_lstm_cell_39_biasadd_readvariableop_resource:	U
Bsequential_51_lstm_154_lstm_cell_40_matmul_readvariableop_resource:	dÈW
Dsequential_51_lstm_154_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈR
Csequential_51_lstm_154_lstm_cell_40_biasadd_readvariableop_resource:	ÈT
Bsequential_51_lstm_155_lstm_cell_41_matmul_readvariableop_resource:2(V
Dsequential_51_lstm_155_lstm_cell_41_matmul_1_readvariableop_resource:
(Q
Csequential_51_lstm_155_lstm_cell_41_biasadd_readvariableop_resource:(G
5sequential_51_dense_51_matmul_readvariableop_resource:
D
6sequential_51_dense_51_biasadd_readvariableop_resource:
identity˘-sequential_51/dense_51/BiasAdd/ReadVariableOp˘,sequential_51/dense_51/MatMul/ReadVariableOp˘:sequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp˘9sequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOp˘;sequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp˘sequential_51/lstm_153/while˘:sequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp˘9sequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOp˘;sequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp˘sequential_51/lstm_154/while˘:sequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp˘9sequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOp˘;sequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp˘sequential_51/lstm_155/whileZ
sequential_51/lstm_153/ShapeShapelstm_153_input*
T0*
_output_shapes
:t
*sequential_51/lstm_153/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_51/lstm_153/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_51/lstm_153/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_51/lstm_153/strided_sliceStridedSlice%sequential_51/lstm_153/Shape:output:03sequential_51/lstm_153/strided_slice/stack:output:05sequential_51/lstm_153/strided_slice/stack_1:output:05sequential_51/lstm_153/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_51/lstm_153/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_51/lstm_153/zeros/packedPack-sequential_51/lstm_153/strided_slice:output:0.sequential_51/lstm_153/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_51/lstm_153/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_51/lstm_153/zerosFill,sequential_51/lstm_153/zeros/packed:output:0+sequential_51/lstm_153/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_51/lstm_153/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_51/lstm_153/zeros_1/packedPack-sequential_51/lstm_153/strided_slice:output:00sequential_51/lstm_153/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_51/lstm_153/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_51/lstm_153/zeros_1Fill.sequential_51/lstm_153/zeros_1/packed:output:0-sequential_51/lstm_153/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_51/lstm_153/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_51/lstm_153/transpose	Transposelstm_153_input.sequential_51/lstm_153/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_51/lstm_153/Shape_1Shape$sequential_51/lstm_153/transpose:y:0*
T0*
_output_shapes
:v
,sequential_51/lstm_153/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_153/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_153/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_51/lstm_153/strided_slice_1StridedSlice'sequential_51/lstm_153/Shape_1:output:05sequential_51/lstm_153/strided_slice_1/stack:output:07sequential_51/lstm_153/strided_slice_1/stack_1:output:07sequential_51/lstm_153/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_51/lstm_153/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_51/lstm_153/TensorArrayV2TensorListReserve;sequential_51/lstm_153/TensorArrayV2/element_shape:output:0/sequential_51/lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_51/lstm_153/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_51/lstm_153/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_51/lstm_153/transpose:y:0Usequential_51/lstm_153/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_51/lstm_153/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_153/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_153/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_51/lstm_153/strided_slice_2StridedSlice$sequential_51/lstm_153/transpose:y:05sequential_51/lstm_153/strided_slice_2/stack:output:07sequential_51/lstm_153/strided_slice_2/stack_1:output:07sequential_51/lstm_153/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOpReadVariableOpBsequential_51_lstm_153_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_51/lstm_153/lstm_cell_39/MatMulMatMul/sequential_51/lstm_153/strided_slice_2:output:0Asequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOpDsequential_51_lstm_153_lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_51/lstm_153/lstm_cell_39/MatMul_1MatMul%sequential_51/lstm_153/zeros:output:0Csequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_51/lstm_153/lstm_cell_39/addAddV24sequential_51/lstm_153/lstm_cell_39/MatMul:product:06sequential_51/lstm_153/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOpCsequential_51_lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_51/lstm_153/lstm_cell_39/BiasAddBiasAdd+sequential_51/lstm_153/lstm_cell_39/add:z:0Bsequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_51/lstm_153/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_51/lstm_153/lstm_cell_39/splitSplit<sequential_51/lstm_153/lstm_cell_39/split/split_dim:output:04sequential_51/lstm_153/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_51/lstm_153/lstm_cell_39/SigmoidSigmoid2sequential_51/lstm_153/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_51/lstm_153/lstm_cell_39/Sigmoid_1Sigmoid2sequential_51/lstm_153/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_51/lstm_153/lstm_cell_39/mulMul1sequential_51/lstm_153/lstm_cell_39/Sigmoid_1:y:0'sequential_51/lstm_153/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_51/lstm_153/lstm_cell_39/ReluRelu2sequential_51/lstm_153/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_51/lstm_153/lstm_cell_39/mul_1Mul/sequential_51/lstm_153/lstm_cell_39/Sigmoid:y:06sequential_51/lstm_153/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_51/lstm_153/lstm_cell_39/add_1AddV2+sequential_51/lstm_153/lstm_cell_39/mul:z:0-sequential_51/lstm_153/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_51/lstm_153/lstm_cell_39/Sigmoid_2Sigmoid2sequential_51/lstm_153/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_51/lstm_153/lstm_cell_39/Relu_1Relu-sequential_51/lstm_153/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_51/lstm_153/lstm_cell_39/mul_2Mul1sequential_51/lstm_153/lstm_cell_39/Sigmoid_2:y:08sequential_51/lstm_153/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_51/lstm_153/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_51/lstm_153/TensorArrayV2_1TensorListReserve=sequential_51/lstm_153/TensorArrayV2_1/element_shape:output:0/sequential_51/lstm_153/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_51/lstm_153/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_51/lstm_153/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_51/lstm_153/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_51/lstm_153/whileWhile2sequential_51/lstm_153/while/loop_counter:output:08sequential_51/lstm_153/while/maximum_iterations:output:0$sequential_51/lstm_153/time:output:0/sequential_51/lstm_153/TensorArrayV2_1:handle:0%sequential_51/lstm_153/zeros:output:0'sequential_51/lstm_153/zeros_1:output:0/sequential_51/lstm_153/strided_slice_1:output:0Nsequential_51/lstm_153/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_51_lstm_153_lstm_cell_39_matmul_readvariableop_resourceDsequential_51_lstm_153_lstm_cell_39_matmul_1_readvariableop_resourceCsequential_51_lstm_153_lstm_cell_39_biasadd_readvariableop_resource*
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
(sequential_51_lstm_153_while_body_248101*4
cond,R*
(sequential_51_lstm_153_while_cond_248100*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_51/lstm_153/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_51/lstm_153/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_51/lstm_153/while:output:3Psequential_51/lstm_153/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_51/lstm_153/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_51/lstm_153/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_153/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_51/lstm_153/strided_slice_3StridedSliceBsequential_51/lstm_153/TensorArrayV2Stack/TensorListStack:tensor:05sequential_51/lstm_153/strided_slice_3/stack:output:07sequential_51/lstm_153/strided_slice_3/stack_1:output:07sequential_51/lstm_153/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_51/lstm_153/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_51/lstm_153/transpose_1	TransposeBsequential_51/lstm_153/TensorArrayV2Stack/TensorListStack:tensor:00sequential_51/lstm_153/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_51/lstm_153/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_51/lstm_154/ShapeShape&sequential_51/lstm_153/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_51/lstm_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_51/lstm_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_51/lstm_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_51/lstm_154/strided_sliceStridedSlice%sequential_51/lstm_154/Shape:output:03sequential_51/lstm_154/strided_slice/stack:output:05sequential_51/lstm_154/strided_slice/stack_1:output:05sequential_51/lstm_154/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_51/lstm_154/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_51/lstm_154/zeros/packedPack-sequential_51/lstm_154/strided_slice:output:0.sequential_51/lstm_154/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_51/lstm_154/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_51/lstm_154/zerosFill,sequential_51/lstm_154/zeros/packed:output:0+sequential_51/lstm_154/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_51/lstm_154/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_51/lstm_154/zeros_1/packedPack-sequential_51/lstm_154/strided_slice:output:00sequential_51/lstm_154/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_51/lstm_154/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_51/lstm_154/zeros_1Fill.sequential_51/lstm_154/zeros_1/packed:output:0-sequential_51/lstm_154/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_51/lstm_154/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_51/lstm_154/transpose	Transpose&sequential_51/lstm_153/transpose_1:y:0.sequential_51/lstm_154/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_51/lstm_154/Shape_1Shape$sequential_51/lstm_154/transpose:y:0*
T0*
_output_shapes
:v
,sequential_51/lstm_154/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_154/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_154/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_51/lstm_154/strided_slice_1StridedSlice'sequential_51/lstm_154/Shape_1:output:05sequential_51/lstm_154/strided_slice_1/stack:output:07sequential_51/lstm_154/strided_slice_1/stack_1:output:07sequential_51/lstm_154/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_51/lstm_154/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_51/lstm_154/TensorArrayV2TensorListReserve;sequential_51/lstm_154/TensorArrayV2/element_shape:output:0/sequential_51/lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_51/lstm_154/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_51/lstm_154/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_51/lstm_154/transpose:y:0Usequential_51/lstm_154/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_51/lstm_154/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_154/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_154/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_51/lstm_154/strided_slice_2StridedSlice$sequential_51/lstm_154/transpose:y:05sequential_51/lstm_154/strided_slice_2/stack:output:07sequential_51/lstm_154/strided_slice_2/stack_1:output:07sequential_51/lstm_154/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpBsequential_51_lstm_154_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_51/lstm_154/lstm_cell_40/MatMulMatMul/sequential_51/lstm_154/strided_slice_2:output:0Asequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpDsequential_51_lstm_154_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_51/lstm_154/lstm_cell_40/MatMul_1MatMul%sequential_51/lstm_154/zeros:output:0Csequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_51/lstm_154/lstm_cell_40/addAddV24sequential_51/lstm_154/lstm_cell_40/MatMul:product:06sequential_51/lstm_154/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpCsequential_51_lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_51/lstm_154/lstm_cell_40/BiasAddBiasAdd+sequential_51/lstm_154/lstm_cell_40/add:z:0Bsequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_51/lstm_154/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_51/lstm_154/lstm_cell_40/splitSplit<sequential_51/lstm_154/lstm_cell_40/split/split_dim:output:04sequential_51/lstm_154/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_51/lstm_154/lstm_cell_40/SigmoidSigmoid2sequential_51/lstm_154/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_51/lstm_154/lstm_cell_40/Sigmoid_1Sigmoid2sequential_51/lstm_154/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_51/lstm_154/lstm_cell_40/mulMul1sequential_51/lstm_154/lstm_cell_40/Sigmoid_1:y:0'sequential_51/lstm_154/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_51/lstm_154/lstm_cell_40/ReluRelu2sequential_51/lstm_154/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_51/lstm_154/lstm_cell_40/mul_1Mul/sequential_51/lstm_154/lstm_cell_40/Sigmoid:y:06sequential_51/lstm_154/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_51/lstm_154/lstm_cell_40/add_1AddV2+sequential_51/lstm_154/lstm_cell_40/mul:z:0-sequential_51/lstm_154/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_51/lstm_154/lstm_cell_40/Sigmoid_2Sigmoid2sequential_51/lstm_154/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_51/lstm_154/lstm_cell_40/Relu_1Relu-sequential_51/lstm_154/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_51/lstm_154/lstm_cell_40/mul_2Mul1sequential_51/lstm_154/lstm_cell_40/Sigmoid_2:y:08sequential_51/lstm_154/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_51/lstm_154/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_51/lstm_154/TensorArrayV2_1TensorListReserve=sequential_51/lstm_154/TensorArrayV2_1/element_shape:output:0/sequential_51/lstm_154/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_51/lstm_154/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_51/lstm_154/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_51/lstm_154/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_51/lstm_154/whileWhile2sequential_51/lstm_154/while/loop_counter:output:08sequential_51/lstm_154/while/maximum_iterations:output:0$sequential_51/lstm_154/time:output:0/sequential_51/lstm_154/TensorArrayV2_1:handle:0%sequential_51/lstm_154/zeros:output:0'sequential_51/lstm_154/zeros_1:output:0/sequential_51/lstm_154/strided_slice_1:output:0Nsequential_51/lstm_154/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_51_lstm_154_lstm_cell_40_matmul_readvariableop_resourceDsequential_51_lstm_154_lstm_cell_40_matmul_1_readvariableop_resourceCsequential_51_lstm_154_lstm_cell_40_biasadd_readvariableop_resource*
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
(sequential_51_lstm_154_while_body_248240*4
cond,R*
(sequential_51_lstm_154_while_cond_248239*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_51/lstm_154/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_51/lstm_154/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_51/lstm_154/while:output:3Psequential_51/lstm_154/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_51/lstm_154/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_51/lstm_154/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_154/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_51/lstm_154/strided_slice_3StridedSliceBsequential_51/lstm_154/TensorArrayV2Stack/TensorListStack:tensor:05sequential_51/lstm_154/strided_slice_3/stack:output:07sequential_51/lstm_154/strided_slice_3/stack_1:output:07sequential_51/lstm_154/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_51/lstm_154/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_51/lstm_154/transpose_1	TransposeBsequential_51/lstm_154/TensorArrayV2Stack/TensorListStack:tensor:00sequential_51/lstm_154/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_51/lstm_154/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_51/lstm_155/ShapeShape&sequential_51/lstm_154/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_51/lstm_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_51/lstm_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_51/lstm_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_51/lstm_155/strided_sliceStridedSlice%sequential_51/lstm_155/Shape:output:03sequential_51/lstm_155/strided_slice/stack:output:05sequential_51/lstm_155/strided_slice/stack_1:output:05sequential_51/lstm_155/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_51/lstm_155/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_51/lstm_155/zeros/packedPack-sequential_51/lstm_155/strided_slice:output:0.sequential_51/lstm_155/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_51/lstm_155/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_51/lstm_155/zerosFill,sequential_51/lstm_155/zeros/packed:output:0+sequential_51/lstm_155/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_51/lstm_155/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_51/lstm_155/zeros_1/packedPack-sequential_51/lstm_155/strided_slice:output:00sequential_51/lstm_155/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_51/lstm_155/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_51/lstm_155/zeros_1Fill.sequential_51/lstm_155/zeros_1/packed:output:0-sequential_51/lstm_155/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_51/lstm_155/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_51/lstm_155/transpose	Transpose&sequential_51/lstm_154/transpose_1:y:0.sequential_51/lstm_155/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_51/lstm_155/Shape_1Shape$sequential_51/lstm_155/transpose:y:0*
T0*
_output_shapes
:v
,sequential_51/lstm_155/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_155/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_155/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_51/lstm_155/strided_slice_1StridedSlice'sequential_51/lstm_155/Shape_1:output:05sequential_51/lstm_155/strided_slice_1/stack:output:07sequential_51/lstm_155/strided_slice_1/stack_1:output:07sequential_51/lstm_155/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_51/lstm_155/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_51/lstm_155/TensorArrayV2TensorListReserve;sequential_51/lstm_155/TensorArrayV2/element_shape:output:0/sequential_51/lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_51/lstm_155/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_51/lstm_155/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_51/lstm_155/transpose:y:0Usequential_51/lstm_155/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_51/lstm_155/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_155/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_51/lstm_155/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_51/lstm_155/strided_slice_2StridedSlice$sequential_51/lstm_155/transpose:y:05sequential_51/lstm_155/strided_slice_2/stack:output:07sequential_51/lstm_155/strided_slice_2/stack_1:output:07sequential_51/lstm_155/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpBsequential_51_lstm_155_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_51/lstm_155/lstm_cell_41/MatMulMatMul/sequential_51/lstm_155/strided_slice_2:output:0Asequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpDsequential_51_lstm_155_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_51/lstm_155/lstm_cell_41/MatMul_1MatMul%sequential_51/lstm_155/zeros:output:0Csequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_51/lstm_155/lstm_cell_41/addAddV24sequential_51/lstm_155/lstm_cell_41/MatMul:product:06sequential_51/lstm_155/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpCsequential_51_lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_51/lstm_155/lstm_cell_41/BiasAddBiasAdd+sequential_51/lstm_155/lstm_cell_41/add:z:0Bsequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_51/lstm_155/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_51/lstm_155/lstm_cell_41/splitSplit<sequential_51/lstm_155/lstm_cell_41/split/split_dim:output:04sequential_51/lstm_155/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_51/lstm_155/lstm_cell_41/SigmoidSigmoid2sequential_51/lstm_155/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_51/lstm_155/lstm_cell_41/Sigmoid_1Sigmoid2sequential_51/lstm_155/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_51/lstm_155/lstm_cell_41/mulMul1sequential_51/lstm_155/lstm_cell_41/Sigmoid_1:y:0'sequential_51/lstm_155/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_51/lstm_155/lstm_cell_41/ReluRelu2sequential_51/lstm_155/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_51/lstm_155/lstm_cell_41/mul_1Mul/sequential_51/lstm_155/lstm_cell_41/Sigmoid:y:06sequential_51/lstm_155/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_51/lstm_155/lstm_cell_41/add_1AddV2+sequential_51/lstm_155/lstm_cell_41/mul:z:0-sequential_51/lstm_155/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_51/lstm_155/lstm_cell_41/Sigmoid_2Sigmoid2sequential_51/lstm_155/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_51/lstm_155/lstm_cell_41/Relu_1Relu-sequential_51/lstm_155/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_51/lstm_155/lstm_cell_41/mul_2Mul1sequential_51/lstm_155/lstm_cell_41/Sigmoid_2:y:08sequential_51/lstm_155/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_51/lstm_155/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_51/lstm_155/TensorArrayV2_1TensorListReserve=sequential_51/lstm_155/TensorArrayV2_1/element_shape:output:0/sequential_51/lstm_155/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_51/lstm_155/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_51/lstm_155/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_51/lstm_155/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_51/lstm_155/whileWhile2sequential_51/lstm_155/while/loop_counter:output:08sequential_51/lstm_155/while/maximum_iterations:output:0$sequential_51/lstm_155/time:output:0/sequential_51/lstm_155/TensorArrayV2_1:handle:0%sequential_51/lstm_155/zeros:output:0'sequential_51/lstm_155/zeros_1:output:0/sequential_51/lstm_155/strided_slice_1:output:0Nsequential_51/lstm_155/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_51_lstm_155_lstm_cell_41_matmul_readvariableop_resourceDsequential_51_lstm_155_lstm_cell_41_matmul_1_readvariableop_resourceCsequential_51_lstm_155_lstm_cell_41_biasadd_readvariableop_resource*
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
(sequential_51_lstm_155_while_body_248379*4
cond,R*
(sequential_51_lstm_155_while_cond_248378*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_51/lstm_155/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_51/lstm_155/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_51/lstm_155/while:output:3Psequential_51/lstm_155/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_51/lstm_155/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_51/lstm_155/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_51/lstm_155/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_51/lstm_155/strided_slice_3StridedSliceBsequential_51/lstm_155/TensorArrayV2Stack/TensorListStack:tensor:05sequential_51/lstm_155/strided_slice_3/stack:output:07sequential_51/lstm_155/strided_slice_3/stack_1:output:07sequential_51/lstm_155/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_51/lstm_155/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_51/lstm_155/transpose_1	TransposeBsequential_51/lstm_155/TensorArrayV2Stack/TensorListStack:tensor:00sequential_51/lstm_155/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_51/lstm_155/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_51/dense_51/MatMul/ReadVariableOpReadVariableOp5sequential_51_dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_51/dense_51/MatMulMatMul/sequential_51/lstm_155/strided_slice_3:output:04sequential_51/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_51/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_51_dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_51/dense_51/BiasAddBiasAdd'sequential_51/dense_51/MatMul:product:05sequential_51/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_51/dense_51/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_51/dense_51/BiasAdd/ReadVariableOp-^sequential_51/dense_51/MatMul/ReadVariableOp;^sequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp:^sequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOp<^sequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp^sequential_51/lstm_153/while;^sequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp:^sequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOp<^sequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp^sequential_51/lstm_154/while;^sequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp:^sequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOp<^sequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp^sequential_51/lstm_155/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_51/dense_51/BiasAdd/ReadVariableOp-sequential_51/dense_51/BiasAdd/ReadVariableOp2\
,sequential_51/dense_51/MatMul/ReadVariableOp,sequential_51/dense_51/MatMul/ReadVariableOp2x
:sequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp:sequential_51/lstm_153/lstm_cell_39/BiasAdd/ReadVariableOp2v
9sequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOp9sequential_51/lstm_153/lstm_cell_39/MatMul/ReadVariableOp2z
;sequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp;sequential_51/lstm_153/lstm_cell_39/MatMul_1/ReadVariableOp2<
sequential_51/lstm_153/whilesequential_51/lstm_153/while2x
:sequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp:sequential_51/lstm_154/lstm_cell_40/BiasAdd/ReadVariableOp2v
9sequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOp9sequential_51/lstm_154/lstm_cell_40/MatMul/ReadVariableOp2z
;sequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp;sequential_51/lstm_154/lstm_cell_40/MatMul_1/ReadVariableOp2<
sequential_51/lstm_154/whilesequential_51/lstm_154/while2x
:sequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp:sequential_51/lstm_155/lstm_cell_41/BiasAdd/ReadVariableOp2v
9sequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOp9sequential_51/lstm_155/lstm_cell_41/MatMul/ReadVariableOp2z
;sequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp;sequential_51/lstm_155/lstm_cell_41/MatMul_1/ReadVariableOp2<
sequential_51/lstm_155/whilesequential_51/lstm_155/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_153_input
8

D__inference_lstm_153_layer_call_and_return_conditional_losses_248810

inputs&
lstm_cell_39_248728:	&
lstm_cell_39_248730:	d"
lstm_cell_39_248732:	
identity˘$lstm_cell_39/StatefulPartitionedCall˘while;
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
$lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_39_248728lstm_cell_39_248730lstm_cell_39_248732*
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248682n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_39_248728lstm_cell_39_248730lstm_cell_39_248732*
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
while_body_248741*
condR
while_cond_248740*K
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
NoOpNoOp%^lstm_cell_39/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_39/StatefulPartitionedCall$lstm_cell_39/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_252784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252784___redundant_placeholder04
0while_while_cond_252784___redundant_placeholder14
0while_while_cond_252784___redundant_placeholder24
0while_while_cond_252784___redundant_placeholder3
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
ö
³
)__inference_lstm_155_layer_call_fn_252913

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
D__inference_lstm_155_layer_call_and_return_conditional_losses_250184o
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
ÔJ

D__inference_lstm_155_layer_call_and_return_conditional_losses_253199
inputs_0=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_253115*
condR
while_cond_253114*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ÛB
?

lstm_153_while_body_250842.
*lstm_153_while_lstm_153_while_loop_counter4
0lstm_153_while_lstm_153_while_maximum_iterations
lstm_153_while_placeholder 
lstm_153_while_placeholder_1 
lstm_153_while_placeholder_2 
lstm_153_while_placeholder_3-
)lstm_153_while_lstm_153_strided_slice_1_0i
elstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0:	Q
>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dL
=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0:	
lstm_153_while_identity
lstm_153_while_identity_1
lstm_153_while_identity_2
lstm_153_while_identity_3
lstm_153_while_identity_4
lstm_153_while_identity_5+
'lstm_153_while_lstm_153_strided_slice_1g
clstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensorM
:lstm_153_while_lstm_cell_39_matmul_readvariableop_resource:	O
<lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource:	dJ
;lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource:	˘2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp˘1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp˘3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp
@lstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_153/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0lstm_153_while_placeholderIlstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_153/while/lstm_cell_39/MatMulMatMul9lstm_153/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_153/while/lstm_cell_39/MatMul_1MatMullstm_153_while_placeholder_2;lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_153/while/lstm_cell_39/addAddV2,lstm_153/while/lstm_cell_39/MatMul:product:0.lstm_153/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_153/while/lstm_cell_39/BiasAddBiasAdd#lstm_153/while/lstm_cell_39/add:z:0:lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_153/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_153/while/lstm_cell_39/splitSplit4lstm_153/while/lstm_cell_39/split/split_dim:output:0,lstm_153/while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_153/while/lstm_cell_39/SigmoidSigmoid*lstm_153/while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_153/while/lstm_cell_39/Sigmoid_1Sigmoid*lstm_153/while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_153/while/lstm_cell_39/mulMul)lstm_153/while/lstm_cell_39/Sigmoid_1:y:0lstm_153_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_153/while/lstm_cell_39/ReluRelu*lstm_153/while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_153/while/lstm_cell_39/mul_1Mul'lstm_153/while/lstm_cell_39/Sigmoid:y:0.lstm_153/while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_153/while/lstm_cell_39/add_1AddV2#lstm_153/while/lstm_cell_39/mul:z:0%lstm_153/while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_153/while/lstm_cell_39/Sigmoid_2Sigmoid*lstm_153/while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_153/while/lstm_cell_39/Relu_1Relu%lstm_153/while/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_153/while/lstm_cell_39/mul_2Mul)lstm_153/while/lstm_cell_39/Sigmoid_2:y:00lstm_153/while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_153/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_153_while_placeholder_1lstm_153_while_placeholder%lstm_153/while/lstm_cell_39/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_153/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_153/while/addAddV2lstm_153_while_placeholderlstm_153/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_153/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_153/while/add_1AddV2*lstm_153_while_lstm_153_while_loop_counterlstm_153/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_153/while/IdentityIdentitylstm_153/while/add_1:z:0^lstm_153/while/NoOp*
T0*
_output_shapes
: 
lstm_153/while/Identity_1Identity0lstm_153_while_lstm_153_while_maximum_iterations^lstm_153/while/NoOp*
T0*
_output_shapes
: t
lstm_153/while/Identity_2Identitylstm_153/while/add:z:0^lstm_153/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_153/while/Identity_3IdentityClstm_153/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_153/while/NoOp*
T0*
_output_shapes
: 
lstm_153/while/Identity_4Identity%lstm_153/while/lstm_cell_39/mul_2:z:0^lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/while/Identity_5Identity%lstm_153/while/lstm_cell_39/add_1:z:0^lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_153/while/NoOpNoOp3^lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2^lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp4^lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_153_while_identity lstm_153/while/Identity:output:0"?
lstm_153_while_identity_1"lstm_153/while/Identity_1:output:0"?
lstm_153_while_identity_2"lstm_153/while/Identity_2:output:0"?
lstm_153_while_identity_3"lstm_153/while/Identity_3:output:0"?
lstm_153_while_identity_4"lstm_153/while/Identity_4:output:0"?
lstm_153_while_identity_5"lstm_153/while/Identity_5:output:0"T
'lstm_153_while_lstm_153_strided_slice_1)lstm_153_while_lstm_153_strided_slice_1_0"|
;lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0"~
<lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0"z
:lstm_153_while_lstm_cell_39_matmul_readvariableop_resource<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0"Ì
clstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensorelstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2f
1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp2j
3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249510

inputs%
lstm_cell_41_249428:2(%
lstm_cell_41_249430:
(!
lstm_cell_41_249432:(
identity˘$lstm_cell_41/StatefulPartitionedCall˘while;
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
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_249428lstm_cell_41_249430lstm_cell_41_249432*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249382n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_249428lstm_cell_41_249430lstm_cell_41_249432*
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
while_body_249441*
condR
while_cond_249440*K
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
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_248899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248899___redundant_placeholder04
0while_while_cond_248899___redundant_placeholder14
0while_while_cond_248899___redundant_placeholder24
0while_while_cond_248899___redundant_placeholder3
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
while_body_253258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ú


.__inference_sequential_51_layer_call_fn_250783

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
I__inference_sequential_51_layer_call_and_return_conditional_losses_250582o
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
âJ

D__inference_lstm_154_layer_call_and_return_conditional_losses_252440
inputs_0>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_252356*
condR
while_cond_252355*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
?
ó
I__inference_sequential_51_layer_call_and_return_conditional_losses_250664
lstm_153_input"
lstm_153_250637:	"
lstm_153_250639:	d
lstm_153_250641:	"
lstm_154_250644:	dÈ"
lstm_154_250646:	2È
lstm_154_250648:	È!
lstm_155_250651:2(!
lstm_155_250653:
(
lstm_155_250655:(!
dense_51_250658:

dense_51_250660:
identity˘ dense_51/StatefulPartitionedCall˘ lstm_153/StatefulPartitionedCall˘ lstm_154/StatefulPartitionedCall˘ lstm_155/StatefulPartitionedCall
 lstm_153/StatefulPartitionedCallStatefulPartitionedCalllstm_153_inputlstm_153_250637lstm_153_250639lstm_153_250641*
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_249668Ş
 lstm_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_153/StatefulPartitionedCall:output:0lstm_154_250644lstm_154_250646lstm_154_250648*
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_249818Ĥ
 lstm_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_154/StatefulPartitionedCall:output:0lstm_155_250651lstm_155_250653lstm_155_250655*
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249968
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)lstm_155/StatefulPartitionedCall:output:0dense_51_250658dense_51_250660*
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
D__inference_dense_51_layer_call_and_return_conditional_losses_249986x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_51/StatefulPartitionedCall!^lstm_153/StatefulPartitionedCall!^lstm_154/StatefulPartitionedCall!^lstm_155/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 lstm_153/StatefulPartitionedCall lstm_153/StatefulPartitionedCall2D
 lstm_154/StatefulPartitionedCall lstm_154/StatefulPartitionedCall2D
 lstm_155/StatefulPartitionedCall lstm_155/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_153_input
µ
?
while_cond_253400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_253400___redundant_placeholder04
0while_while_cond_253400___redundant_placeholder14
0while_while_cond_253400___redundant_placeholder24
0while_while_cond_253400___redundant_placeholder3
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
¤J

D__inference_lstm_154_layer_call_and_return_conditional_losses_250349

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_250265*
condR
while_cond_250264*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_250099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250099___redundant_placeholder04
0while_while_cond_250099___redundant_placeholder14
0while_while_cond_250099___redundant_placeholder24
0while_while_cond_250099___redundant_placeholder3
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
)__inference_lstm_154_layer_call_fn_252297

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
D__inference_lstm_154_layer_call_and_return_conditional_losses_250349s
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
¤J

D__inference_lstm_153_layer_call_and_return_conditional_losses_250514

inputs>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_250430*
condR
while_cond_250429*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş

(sequential_51_lstm_153_while_cond_248100J
Fsequential_51_lstm_153_while_sequential_51_lstm_153_while_loop_counterP
Lsequential_51_lstm_153_while_sequential_51_lstm_153_while_maximum_iterations,
(sequential_51_lstm_153_while_placeholder.
*sequential_51_lstm_153_while_placeholder_1.
*sequential_51_lstm_153_while_placeholder_2.
*sequential_51_lstm_153_while_placeholder_3L
Hsequential_51_lstm_153_while_less_sequential_51_lstm_153_strided_slice_1b
^sequential_51_lstm_153_while_sequential_51_lstm_153_while_cond_248100___redundant_placeholder0b
^sequential_51_lstm_153_while_sequential_51_lstm_153_while_cond_248100___redundant_placeholder1b
^sequential_51_lstm_153_while_sequential_51_lstm_153_while_cond_248100___redundant_placeholder2b
^sequential_51_lstm_153_while_sequential_51_lstm_153_while_cond_248100___redundant_placeholder3)
%sequential_51_lstm_153_while_identity
?
!sequential_51/lstm_153/while/LessLess(sequential_51_lstm_153_while_placeholderHsequential_51_lstm_153_while_less_sequential_51_lstm_153_strided_slice_1*
T0*
_output_shapes
: y
%sequential_51/lstm_153/while/IdentityIdentity%sequential_51/lstm_153/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_51_lstm_153_while_identity.sequential_51/lstm_153/while/Identity:output:0*(
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
Ó

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253798

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
S
³
(sequential_51_lstm_154_while_body_248240J
Fsequential_51_lstm_154_while_sequential_51_lstm_154_while_loop_counterP
Lsequential_51_lstm_154_while_sequential_51_lstm_154_while_maximum_iterations,
(sequential_51_lstm_154_while_placeholder.
*sequential_51_lstm_154_while_placeholder_1.
*sequential_51_lstm_154_while_placeholder_2.
*sequential_51_lstm_154_while_placeholder_3I
Esequential_51_lstm_154_while_sequential_51_lstm_154_strided_slice_1_0
sequential_51_lstm_154_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_154_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_51_lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈ_
Lsequential_51_lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_51_lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0:	È)
%sequential_51_lstm_154_while_identity+
'sequential_51_lstm_154_while_identity_1+
'sequential_51_lstm_154_while_identity_2+
'sequential_51_lstm_154_while_identity_3+
'sequential_51_lstm_154_while_identity_4+
'sequential_51_lstm_154_while_identity_5G
Csequential_51_lstm_154_while_sequential_51_lstm_154_strided_slice_1
sequential_51_lstm_154_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_154_tensorarrayunstack_tensorlistfromtensor[
Hsequential_51_lstm_154_while_lstm_cell_40_matmul_readvariableop_resource:	dÈ]
Jsequential_51_lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈX
Isequential_51_lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource:	È˘@sequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp˘?sequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp˘Asequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp
Nsequential_51/lstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_51/lstm_154/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_51_lstm_154_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_154_tensorarrayunstack_tensorlistfromtensor_0(sequential_51_lstm_154_while_placeholderWsequential_51/lstm_154/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpJsequential_51_lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_51/lstm_154/while/lstm_cell_40/MatMulMatMulGsequential_51/lstm_154/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpLsequential_51_lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_51/lstm_154/while/lstm_cell_40/MatMul_1MatMul*sequential_51_lstm_154_while_placeholder_2Isequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_51/lstm_154/while/lstm_cell_40/addAddV2:sequential_51/lstm_154/while/lstm_cell_40/MatMul:product:0<sequential_51/lstm_154/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpKsequential_51_lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_51/lstm_154/while/lstm_cell_40/BiasAddBiasAdd1sequential_51/lstm_154/while/lstm_cell_40/add:z:0Hsequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_51/lstm_154/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_51/lstm_154/while/lstm_cell_40/splitSplitBsequential_51/lstm_154/while/lstm_cell_40/split/split_dim:output:0:sequential_51/lstm_154/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_51/lstm_154/while/lstm_cell_40/SigmoidSigmoid8sequential_51/lstm_154/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_51/lstm_154/while/lstm_cell_40/Sigmoid_1Sigmoid8sequential_51/lstm_154/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_51/lstm_154/while/lstm_cell_40/mulMul7sequential_51/lstm_154/while/lstm_cell_40/Sigmoid_1:y:0*sequential_51_lstm_154_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_51/lstm_154/while/lstm_cell_40/ReluRelu8sequential_51/lstm_154/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_51/lstm_154/while/lstm_cell_40/mul_1Mul5sequential_51/lstm_154/while/lstm_cell_40/Sigmoid:y:0<sequential_51/lstm_154/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_51/lstm_154/while/lstm_cell_40/add_1AddV21sequential_51/lstm_154/while/lstm_cell_40/mul:z:03sequential_51/lstm_154/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_51/lstm_154/while/lstm_cell_40/Sigmoid_2Sigmoid8sequential_51/lstm_154/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_51/lstm_154/while/lstm_cell_40/Relu_1Relu3sequential_51/lstm_154/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_51/lstm_154/while/lstm_cell_40/mul_2Mul7sequential_51/lstm_154/while/lstm_cell_40/Sigmoid_2:y:0>sequential_51/lstm_154/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_51/lstm_154/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_51_lstm_154_while_placeholder_1(sequential_51_lstm_154_while_placeholder3sequential_51/lstm_154/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_51/lstm_154/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_51/lstm_154/while/addAddV2(sequential_51_lstm_154_while_placeholder+sequential_51/lstm_154/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_51/lstm_154/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_51/lstm_154/while/add_1AddV2Fsequential_51_lstm_154_while_sequential_51_lstm_154_while_loop_counter-sequential_51/lstm_154/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_51/lstm_154/while/IdentityIdentity&sequential_51/lstm_154/while/add_1:z:0"^sequential_51/lstm_154/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_51/lstm_154/while/Identity_1IdentityLsequential_51_lstm_154_while_sequential_51_lstm_154_while_maximum_iterations"^sequential_51/lstm_154/while/NoOp*
T0*
_output_shapes
: 
'sequential_51/lstm_154/while/Identity_2Identity$sequential_51/lstm_154/while/add:z:0"^sequential_51/lstm_154/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_51/lstm_154/while/Identity_3IdentityQsequential_51/lstm_154/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_51/lstm_154/while/NoOp*
T0*
_output_shapes
: ?
'sequential_51/lstm_154/while/Identity_4Identity3sequential_51/lstm_154/while/lstm_cell_40/mul_2:z:0"^sequential_51/lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_51/lstm_154/while/Identity_5Identity3sequential_51/lstm_154/while/lstm_cell_40/add_1:z:0"^sequential_51/lstm_154/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_51/lstm_154/while/NoOpNoOpA^sequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp@^sequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOpB^sequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_51_lstm_154_while_identity.sequential_51/lstm_154/while/Identity:output:0"[
'sequential_51_lstm_154_while_identity_10sequential_51/lstm_154/while/Identity_1:output:0"[
'sequential_51_lstm_154_while_identity_20sequential_51/lstm_154/while/Identity_2:output:0"[
'sequential_51_lstm_154_while_identity_30sequential_51/lstm_154/while/Identity_3:output:0"[
'sequential_51_lstm_154_while_identity_40sequential_51/lstm_154/while/Identity_4:output:0"[
'sequential_51_lstm_154_while_identity_50sequential_51/lstm_154/while/Identity_5:output:0"
Isequential_51_lstm_154_while_lstm_cell_40_biasadd_readvariableop_resourceKsequential_51_lstm_154_while_lstm_cell_40_biasadd_readvariableop_resource_0"
Jsequential_51_lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resourceLsequential_51_lstm_154_while_lstm_cell_40_matmul_1_readvariableop_resource_0"
Hsequential_51_lstm_154_while_lstm_cell_40_matmul_readvariableop_resourceJsequential_51_lstm_154_while_lstm_cell_40_matmul_readvariableop_resource_0"
Csequential_51_lstm_154_while_sequential_51_lstm_154_strided_slice_1Esequential_51_lstm_154_while_sequential_51_lstm_154_strided_slice_1_0"
sequential_51_lstm_154_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_154_tensorarrayunstack_tensorlistfromtensorsequential_51_lstm_154_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_154_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp@sequential_51/lstm_154/while/lstm_cell_40/BiasAdd/ReadVariableOp2
?sequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp?sequential_51/lstm_154/while/lstm_cell_40/MatMul/ReadVariableOp2
Asequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOpAsequential_51/lstm_154/while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_249583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249583___redundant_placeholder04
0while_while_cond_249583___redundant_placeholder14
0while_while_cond_249583___redundant_placeholder24
0while_while_cond_249583___redundant_placeholder3
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
8

D__inference_lstm_153_layer_call_and_return_conditional_losses_248619

inputs&
lstm_cell_39_248537:	&
lstm_cell_39_248539:	d"
lstm_cell_39_248541:	
identity˘$lstm_cell_39/StatefulPartitionedCall˘while;
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
$lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_39_248537lstm_cell_39_248539lstm_cell_39_248541*
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248536n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_39_248537lstm_cell_39_248539lstm_cell_39_248541*
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
while_body_248550*
condR
while_cond_248549*K
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
NoOpNoOp%^lstm_cell_39/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_39/StatefulPartitionedCall$lstm_cell_39/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_154_layer_call_and_return_conditional_losses_249818

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	dÈ@
-lstm_cell_40_matmul_1_readvariableop_resource:	2È;
,lstm_cell_40_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_40/BiasAdd/ReadVariableOp˘"lstm_cell_40/MatMul/ReadVariableOp˘$lstm_cell_40/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_249734*
condR
while_cond_249733*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_248549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248549___redundant_placeholder04
0while_while_cond_248549___redundant_placeholder14
0while_while_cond_248549___redundant_placeholder24
0while_while_cond_248549___redundant_placeholder3
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
while_body_252642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_40_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_40_biasadd_readvariableop_resource:	È˘)while/lstm_cell_40/BiasAdd/ReadVariableOp˘(while/lstm_cell_40/MatMul/ReadVariableOp˘*while/lstm_cell_40/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_51_layer_call_fn_250018
lstm_153_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_153_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_249993o
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
_user_specified_namelstm_153_input
Ġ

H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_248536

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
¤J

D__inference_lstm_153_layer_call_and_return_conditional_losses_252110

inputs>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_252026*
condR
while_cond_252025*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_252168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_252168___redundant_placeholder04
0while_while_cond_252168___redundant_placeholder14
0while_while_cond_252168___redundant_placeholder24
0while_while_cond_252168___redundant_placeholder3
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
˙7
Ê
while_body_253115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_41_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource:2(E
3while_lstm_cell_41_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_41_biasadd_readvariableop_resource:(˘)while/lstm_cell_41/BiasAdd/ReadVariableOp˘(while/lstm_cell_41/MatMul/ReadVariableOp˘*while/lstm_cell_41/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_153_layer_call_fn_251659
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_248810|
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
ö
³
)__inference_lstm_155_layer_call_fn_252902

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
D__inference_lstm_155_layer_call_and_return_conditional_losses_249968o
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
8
?
while_body_251883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_39_matmul_readvariableop_resource_0:	H
5while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_39_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_39_matmul_readvariableop_resource:	F
3while_lstm_cell_39_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_39_biasadd_readvariableop_resource:	˘)while/lstm_cell_39/BiasAdd/ReadVariableOp˘(while/lstm_cell_39/MatMul/ReadVariableOp˘*while/lstm_cell_39/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_39/ReluRelu!while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_1Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_39/Relu_1Reluwhile/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_39/mul_2Mul while/lstm_cell_39/Sigmoid_2:y:0'while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_39/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_154_while_cond_251407.
*lstm_154_while_lstm_154_while_loop_counter4
0lstm_154_while_lstm_154_while_maximum_iterations
lstm_154_while_placeholder 
lstm_154_while_placeholder_1 
lstm_154_while_placeholder_2 
lstm_154_while_placeholder_30
,lstm_154_while_less_lstm_154_strided_slice_1F
Blstm_154_while_lstm_154_while_cond_251407___redundant_placeholder0F
Blstm_154_while_lstm_154_while_cond_251407___redundant_placeholder1F
Blstm_154_while_lstm_154_while_cond_251407___redundant_placeholder2F
Blstm_154_while_lstm_154_while_cond_251407___redundant_placeholder3
lstm_154_while_identity

lstm_154/while/LessLesslstm_154_while_placeholder,lstm_154_while_less_lstm_154_strided_slice_1*
T0*
_output_shapes
: ]
lstm_154/while/IdentityIdentitylstm_154/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_154_while_identity lstm_154/while/Identity:output:0*(
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
while_cond_249090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249090___redundant_placeholder04
0while_while_cond_249090___redundant_placeholder14
0while_while_cond_249090___redundant_placeholder24
0while_while_cond_249090___redundant_placeholder3
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
8

D__inference_lstm_154_layer_call_and_return_conditional_losses_249160

inputs&
lstm_cell_40_249078:	dÈ&
lstm_cell_40_249080:	2È"
lstm_cell_40_249082:	È
identity˘$lstm_cell_40/StatefulPartitionedCall˘while;
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
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_249078lstm_cell_40_249080lstm_cell_40_249082*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_249032n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_249078lstm_cell_40_249080lstm_cell_40_249082*
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
while_body_249091*
condR
while_cond_249090*K
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
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_248740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248740___redundant_placeholder04
0while_while_cond_248740___redundant_placeholder14
0while_while_cond_248740___redundant_placeholder24
0while_while_cond_248740___redundant_placeholder3
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
À


$__inference_signature_wrapper_250729
lstm_153_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_153_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_248469o
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
_user_specified_namelstm_153_input
Ú


.__inference_sequential_51_layer_call_fn_250756

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
I__inference_sequential_51_layer_call_and_return_conditional_losses_249993o
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
J

D__inference_lstm_155_layer_call_and_return_conditional_losses_249968

inputs=
+lstm_cell_41_matmul_readvariableop_resource:2(?
-lstm_cell_41_matmul_1_readvariableop_resource:
(:
,lstm_cell_41_biasadd_readvariableop_resource:(
identity˘#lstm_cell_41/BiasAdd/ReadVariableOp˘"lstm_cell_41/MatMul/ReadVariableOp˘$lstm_cell_41/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_249884*
condR
while_cond_249883*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_153_layer_call_and_return_conditional_losses_249668

inputs>
+lstm_cell_39_matmul_readvariableop_resource:	@
-lstm_cell_39_matmul_1_readvariableop_resource:	d;
,lstm_cell_39_biasadd_readvariableop_resource:	
identity˘#lstm_cell_39/BiasAdd/ReadVariableOp˘"lstm_cell_39/MatMul/ReadVariableOp˘$lstm_cell_39/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_39/ReluRelulstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_1Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_39/Relu_1Relulstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid_2:y:0!lstm_cell_39/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
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
while_body_249584*
condR
while_cond_249583*K
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
NoOpNoOp$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÛB
?

lstm_153_while_body_251269.
*lstm_153_while_lstm_153_while_loop_counter4
0lstm_153_while_lstm_153_while_maximum_iterations
lstm_153_while_placeholder 
lstm_153_while_placeholder_1 
lstm_153_while_placeholder_2 
lstm_153_while_placeholder_3-
)lstm_153_while_lstm_153_strided_slice_1_0i
elstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0:	Q
>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0:	dL
=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0:	
lstm_153_while_identity
lstm_153_while_identity_1
lstm_153_while_identity_2
lstm_153_while_identity_3
lstm_153_while_identity_4
lstm_153_while_identity_5+
'lstm_153_while_lstm_153_strided_slice_1g
clstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensorM
:lstm_153_while_lstm_cell_39_matmul_readvariableop_resource:	O
<lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource:	dJ
;lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource:	˘2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp˘1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp˘3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp
@lstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_153/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0lstm_153_while_placeholderIlstm_153/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_153/while/lstm_cell_39/MatMulMatMul9lstm_153/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_153/while/lstm_cell_39/MatMul_1MatMullstm_153_while_placeholder_2;lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_153/while/lstm_cell_39/addAddV2,lstm_153/while/lstm_cell_39/MatMul:product:0.lstm_153/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_153/while/lstm_cell_39/BiasAddBiasAdd#lstm_153/while/lstm_cell_39/add:z:0:lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_153/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_153/while/lstm_cell_39/splitSplit4lstm_153/while/lstm_cell_39/split/split_dim:output:0,lstm_153/while/lstm_cell_39/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_153/while/lstm_cell_39/SigmoidSigmoid*lstm_153/while/lstm_cell_39/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_153/while/lstm_cell_39/Sigmoid_1Sigmoid*lstm_153/while/lstm_cell_39/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_153/while/lstm_cell_39/mulMul)lstm_153/while/lstm_cell_39/Sigmoid_1:y:0lstm_153_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_153/while/lstm_cell_39/ReluRelu*lstm_153/while/lstm_cell_39/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_153/while/lstm_cell_39/mul_1Mul'lstm_153/while/lstm_cell_39/Sigmoid:y:0.lstm_153/while/lstm_cell_39/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_153/while/lstm_cell_39/add_1AddV2#lstm_153/while/lstm_cell_39/mul:z:0%lstm_153/while/lstm_cell_39/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_153/while/lstm_cell_39/Sigmoid_2Sigmoid*lstm_153/while/lstm_cell_39/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_153/while/lstm_cell_39/Relu_1Relu%lstm_153/while/lstm_cell_39/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_153/while/lstm_cell_39/mul_2Mul)lstm_153/while/lstm_cell_39/Sigmoid_2:y:00lstm_153/while/lstm_cell_39/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_153/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_153_while_placeholder_1lstm_153_while_placeholder%lstm_153/while/lstm_cell_39/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_153/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_153/while/addAddV2lstm_153_while_placeholderlstm_153/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_153/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_153/while/add_1AddV2*lstm_153_while_lstm_153_while_loop_counterlstm_153/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_153/while/IdentityIdentitylstm_153/while/add_1:z:0^lstm_153/while/NoOp*
T0*
_output_shapes
: 
lstm_153/while/Identity_1Identity0lstm_153_while_lstm_153_while_maximum_iterations^lstm_153/while/NoOp*
T0*
_output_shapes
: t
lstm_153/while/Identity_2Identitylstm_153/while/add:z:0^lstm_153/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_153/while/Identity_3IdentityClstm_153/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_153/while/NoOp*
T0*
_output_shapes
: 
lstm_153/while/Identity_4Identity%lstm_153/while/lstm_cell_39/mul_2:z:0^lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_153/while/Identity_5Identity%lstm_153/while/lstm_cell_39/add_1:z:0^lstm_153/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_153/while/NoOpNoOp3^lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2^lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp4^lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_153_while_identity lstm_153/while/Identity:output:0"?
lstm_153_while_identity_1"lstm_153/while/Identity_1:output:0"?
lstm_153_while_identity_2"lstm_153/while/Identity_2:output:0"?
lstm_153_while_identity_3"lstm_153/while/Identity_3:output:0"?
lstm_153_while_identity_4"lstm_153/while/Identity_4:output:0"?
lstm_153_while_identity_5"lstm_153/while/Identity_5:output:0"T
'lstm_153_while_lstm_153_strided_slice_1)lstm_153_while_lstm_153_strided_slice_1_0"|
;lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource=lstm_153_while_lstm_cell_39_biasadd_readvariableop_resource_0"~
<lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource>lstm_153_while_lstm_cell_39_matmul_1_readvariableop_resource_0"z
:lstm_153_while_lstm_cell_39_matmul_readvariableop_resource<lstm_153_while_lstm_cell_39_matmul_readvariableop_resource_0"Ì
clstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensorelstm_153_while_tensorarrayv2read_tensorlistgetitem_lstm_153_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2lstm_153/while/lstm_cell_39/BiasAdd/ReadVariableOp2f
1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp1lstm_153/while/lstm_cell_39/MatMul/ReadVariableOp2j
3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp3lstm_153/while/lstm_cell_39/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ë

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_249382

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

 
_user_specified_namestates"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_153_input;
 serving_default_lstm_153_input:0˙˙˙˙˙˙˙˙˙<
dense_510
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
2dense_51/kernel
:2dense_51/bias
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
0:.	2lstm_153/lstm_cell_153/kernel
::8	d2'lstm_153/lstm_cell_153/recurrent_kernel
*:(2lstm_153/lstm_cell_153/bias
0:.	dÈ2lstm_154/lstm_cell_154/kernel
::8	2È2'lstm_154/lstm_cell_154/recurrent_kernel
*:(È2lstm_154/lstm_cell_154/bias
/:-2(2lstm_155/lstm_cell_155/kernel
9:7
(2'lstm_155/lstm_cell_155/recurrent_kernel
):'(2lstm_155/lstm_cell_155/bias
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
2Adam/dense_51/kernel/m
 :2Adam/dense_51/bias/m
5:3	2$Adam/lstm_153/lstm_cell_153/kernel/m
?:=	d2.Adam/lstm_153/lstm_cell_153/recurrent_kernel/m
/:-2"Adam/lstm_153/lstm_cell_153/bias/m
5:3	dÈ2$Adam/lstm_154/lstm_cell_154/kernel/m
?:=	2È2.Adam/lstm_154/lstm_cell_154/recurrent_kernel/m
/:-È2"Adam/lstm_154/lstm_cell_154/bias/m
4:22(2$Adam/lstm_155/lstm_cell_155/kernel/m
>:<
(2.Adam/lstm_155/lstm_cell_155/recurrent_kernel/m
.:,(2"Adam/lstm_155/lstm_cell_155/bias/m
&:$
2Adam/dense_51/kernel/v
 :2Adam/dense_51/bias/v
5:3	2$Adam/lstm_153/lstm_cell_153/kernel/v
?:=	d2.Adam/lstm_153/lstm_cell_153/recurrent_kernel/v
/:-2"Adam/lstm_153/lstm_cell_153/bias/v
5:3	dÈ2$Adam/lstm_154/lstm_cell_154/kernel/v
?:=	2È2.Adam/lstm_154/lstm_cell_154/recurrent_kernel/v
/:-È2"Adam/lstm_154/lstm_cell_154/bias/v
4:22(2$Adam/lstm_155/lstm_cell_155/kernel/v
>:<
(2.Adam/lstm_155/lstm_cell_155/recurrent_kernel/v
.:,(2"Adam/lstm_155/lstm_cell_155/bias/v
2
.__inference_sequential_51_layer_call_fn_250018
.__inference_sequential_51_layer_call_fn_250756
.__inference_sequential_51_layer_call_fn_250783
.__inference_sequential_51_layer_call_fn_250634À
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_251210
I__inference_sequential_51_layer_call_and_return_conditional_losses_251637
I__inference_sequential_51_layer_call_and_return_conditional_losses_250664
I__inference_sequential_51_layer_call_and_return_conditional_losses_250694À
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
!__inference__wrapped_model_248469lstm_153_input"
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
)__inference_lstm_153_layer_call_fn_251648
)__inference_lstm_153_layer_call_fn_251659
)__inference_lstm_153_layer_call_fn_251670
)__inference_lstm_153_layer_call_fn_251681Ġ
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_251824
D__inference_lstm_153_layer_call_and_return_conditional_losses_251967
D__inference_lstm_153_layer_call_and_return_conditional_losses_252110
D__inference_lstm_153_layer_call_and_return_conditional_losses_252253Ġ
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
)__inference_lstm_154_layer_call_fn_252264
)__inference_lstm_154_layer_call_fn_252275
)__inference_lstm_154_layer_call_fn_252286
)__inference_lstm_154_layer_call_fn_252297Ġ
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_252440
D__inference_lstm_154_layer_call_and_return_conditional_losses_252583
D__inference_lstm_154_layer_call_and_return_conditional_losses_252726
D__inference_lstm_154_layer_call_and_return_conditional_losses_252869Ġ
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
)__inference_lstm_155_layer_call_fn_252880
)__inference_lstm_155_layer_call_fn_252891
)__inference_lstm_155_layer_call_fn_252902
)__inference_lstm_155_layer_call_fn_252913Ġ
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_253056
D__inference_lstm_155_layer_call_and_return_conditional_losses_253199
D__inference_lstm_155_layer_call_and_return_conditional_losses_253342
D__inference_lstm_155_layer_call_and_return_conditional_losses_253485Ġ
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
)__inference_dense_51_layer_call_fn_253494˘
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
D__inference_dense_51_layer_call_and_return_conditional_losses_253504˘
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
$__inference_signature_wrapper_250729lstm_153_input"
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
-__inference_lstm_cell_39_layer_call_fn_253521
-__inference_lstm_cell_39_layer_call_fn_253538?
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253570
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253602?
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
-__inference_lstm_cell_40_layer_call_fn_253619
-__inference_lstm_cell_40_layer_call_fn_253636?
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253668
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253700?
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
-__inference_lstm_cell_41_layer_call_fn_253717
-__inference_lstm_cell_41_layer_call_fn_253734?
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253766
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253798?
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
!__inference__wrapped_model_248469-./012345!";˘8
1˘.
,)
lstm_153_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_51"
dense_51˙˙˙˙˙˙˙˙˙¤
D__inference_dense_51_layer_call_and_return_conditional_losses_253504\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_51_layer_call_fn_253494O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_153_layer_call_and_return_conditional_losses_251824-./O˘L
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_251967-./O˘L
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_252110q-./?˘<
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
D__inference_lstm_153_layer_call_and_return_conditional_losses_252253q-./?˘<
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
)__inference_lstm_153_layer_call_fn_251648}-./O˘L
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
)__inference_lstm_153_layer_call_fn_251659}-./O˘L
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
)__inference_lstm_153_layer_call_fn_251670d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_153_layer_call_fn_251681d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_154_layer_call_and_return_conditional_losses_252440012O˘L
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_252583012O˘L
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_252726q012?˘<
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
D__inference_lstm_154_layer_call_and_return_conditional_losses_252869q012?˘<
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
)__inference_lstm_154_layer_call_fn_252264}012O˘L
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
)__inference_lstm_154_layer_call_fn_252275}012O˘L
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
)__inference_lstm_154_layer_call_fn_252286d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_154_layer_call_fn_252297d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_155_layer_call_and_return_conditional_losses_253056}345O˘L
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_253199}345O˘L
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_253342m345?˘<
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
D__inference_lstm_155_layer_call_and_return_conditional_losses_253485m345?˘<
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
)__inference_lstm_155_layer_call_fn_252880p345O˘L
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
)__inference_lstm_155_layer_call_fn_252891p345O˘L
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
)__inference_lstm_155_layer_call_fn_252902`345?˘<
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
)__inference_lstm_155_layer_call_fn_252913`345?˘<
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253570ŭ-./˘}
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
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_253602ŭ-./˘}
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
-__inference_lstm_cell_39_layer_call_fn_253521í-./˘}
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
-__inference_lstm_cell_39_layer_call_fn_253538í-./˘}
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253668ŭ012˘}
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_253700ŭ012˘}
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
-__inference_lstm_cell_40_layer_call_fn_253619í012˘}
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
-__inference_lstm_cell_40_layer_call_fn_253636í012˘}
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253766ŭ345˘}
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_253798ŭ345˘}
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
-__inference_lstm_cell_41_layer_call_fn_253717í345˘}
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
-__inference_lstm_cell_41_layer_call_fn_253734í345˘}
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_250664y-./012345!"C˘@
9˘6
,)
lstm_153_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_51_layer_call_and_return_conditional_losses_250694y-./012345!"C˘@
9˘6
,)
lstm_153_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_51_layer_call_and_return_conditional_losses_251210q-./012345!";˘8
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
I__inference_sequential_51_layer_call_and_return_conditional_losses_251637q-./012345!";˘8
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
.__inference_sequential_51_layer_call_fn_250018l-./012345!"C˘@
9˘6
,)
lstm_153_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_51_layer_call_fn_250634l-./012345!"C˘@
9˘6
,)
lstm_153_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_51_layer_call_fn_250756d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_51_layer_call_fn_250783d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_250729-./012345!"M˘J
˘ 
CŞ@
>
lstm_153_input,)
lstm_153_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_51"
dense_51˙˙˙˙˙˙˙˙˙