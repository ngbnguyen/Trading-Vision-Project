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
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_70/kernel
s
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes

:
*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
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
lstm_210/lstm_cell_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_210/lstm_cell_210/kernel

1lstm_210/lstm_cell_210/kernel/Read/ReadVariableOpReadVariableOplstm_210/lstm_cell_210/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_210/lstm_cell_210/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_210/lstm_cell_210/recurrent_kernel
¤
;lstm_210/lstm_cell_210/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_210/lstm_cell_210/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_210/lstm_cell_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_210/lstm_cell_210/bias

/lstm_210/lstm_cell_210/bias/Read/ReadVariableOpReadVariableOplstm_210/lstm_cell_210/bias*
_output_shapes	
:*
dtype0

lstm_211/lstm_cell_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_211/lstm_cell_211/kernel

1lstm_211/lstm_cell_211/kernel/Read/ReadVariableOpReadVariableOplstm_211/lstm_cell_211/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_211/lstm_cell_211/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_211/lstm_cell_211/recurrent_kernel
¤
;lstm_211/lstm_cell_211/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_211/lstm_cell_211/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_211/lstm_cell_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_211/lstm_cell_211/bias

/lstm_211/lstm_cell_211/bias/Read/ReadVariableOpReadVariableOplstm_211/lstm_cell_211/bias*
_output_shapes	
:È*
dtype0

lstm_212/lstm_cell_212/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_212/lstm_cell_212/kernel

1lstm_212/lstm_cell_212/kernel/Read/ReadVariableOpReadVariableOplstm_212/lstm_cell_212/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_212/lstm_cell_212/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_212/lstm_cell_212/recurrent_kernel
£
;lstm_212/lstm_cell_212/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_212/lstm_cell_212/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_212/lstm_cell_212/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_212/lstm_cell_212/bias

/lstm_212/lstm_cell_212/bias/Read/ReadVariableOpReadVariableOplstm_212/lstm_cell_212/bias*
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
Adam/dense_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_70/kernel/m

*Adam/dense_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_70/bias/m
y
(Adam/dense_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_210/lstm_cell_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_210/lstm_cell_210/kernel/m

8Adam/lstm_210/lstm_cell_210/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_210/lstm_cell_210/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_210/lstm_cell_210/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_210/lstm_cell_210/recurrent_kernel/m
²
BAdam/lstm_210/lstm_cell_210/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_210/lstm_cell_210/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_210/lstm_cell_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_210/lstm_cell_210/bias/m

6Adam/lstm_210/lstm_cell_210/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_210/lstm_cell_210/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_211/lstm_cell_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_211/lstm_cell_211/kernel/m

8Adam/lstm_211/lstm_cell_211/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_211/lstm_cell_211/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_211/lstm_cell_211/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_211/lstm_cell_211/recurrent_kernel/m
²
BAdam/lstm_211/lstm_cell_211/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_211/lstm_cell_211/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_211/lstm_cell_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_211/lstm_cell_211/bias/m

6Adam/lstm_211/lstm_cell_211/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_211/lstm_cell_211/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_212/lstm_cell_212/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_212/lstm_cell_212/kernel/m

8Adam/lstm_212/lstm_cell_212/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_212/lstm_cell_212/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_212/lstm_cell_212/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_212/lstm_cell_212/recurrent_kernel/m
ħ
BAdam/lstm_212/lstm_cell_212/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_212/lstm_cell_212/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_212/lstm_cell_212/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_212/lstm_cell_212/bias/m

6Adam/lstm_212/lstm_cell_212/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_212/lstm_cell_212/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_70/kernel/v

*Adam/dense_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_70/bias/v
y
(Adam/dense_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_210/lstm_cell_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_210/lstm_cell_210/kernel/v

8Adam/lstm_210/lstm_cell_210/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_210/lstm_cell_210/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_210/lstm_cell_210/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_210/lstm_cell_210/recurrent_kernel/v
²
BAdam/lstm_210/lstm_cell_210/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_210/lstm_cell_210/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_210/lstm_cell_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_210/lstm_cell_210/bias/v

6Adam/lstm_210/lstm_cell_210/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_210/lstm_cell_210/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_211/lstm_cell_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_211/lstm_cell_211/kernel/v

8Adam/lstm_211/lstm_cell_211/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_211/lstm_cell_211/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_211/lstm_cell_211/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_211/lstm_cell_211/recurrent_kernel/v
²
BAdam/lstm_211/lstm_cell_211/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_211/lstm_cell_211/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_211/lstm_cell_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_211/lstm_cell_211/bias/v

6Adam/lstm_211/lstm_cell_211/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_211/lstm_cell_211/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_212/lstm_cell_212/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_212/lstm_cell_212/kernel/v

8Adam/lstm_212/lstm_cell_212/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_212/lstm_cell_212/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_212/lstm_cell_212/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_212/lstm_cell_212/recurrent_kernel/v
ħ
BAdam/lstm_212/lstm_cell_212/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_212/lstm_cell_212/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_212/lstm_cell_212/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_212/lstm_cell_212/bias/v

6Adam/lstm_212/lstm_cell_212/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_212/lstm_cell_212/bias/v*
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
VARIABLE_VALUEdense_70/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_70/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_210/lstm_cell_210/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_210/lstm_cell_210/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_210/lstm_cell_210/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_211/lstm_cell_211/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_211/lstm_cell_211/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_211/lstm_cell_211/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_212/lstm_cell_212/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_212/lstm_cell_212/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_212/lstm_cell_212/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_70/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_70/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_210/lstm_cell_210/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_210/lstm_cell_210/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_210/lstm_cell_210/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_211/lstm_cell_211/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_211/lstm_cell_211/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_211/lstm_cell_211/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_212/lstm_cell_212/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_212/lstm_cell_212/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_212/lstm_cell_212/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_70/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_70/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_210/lstm_cell_210/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_210/lstm_cell_210/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_210/lstm_cell_210/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_211/lstm_cell_211/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_211/lstm_cell_211/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_211/lstm_cell_211/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_212/lstm_cell_212/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_212/lstm_cell_212/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_212/lstm_cell_212/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_210_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_210_inputlstm_210/lstm_cell_210/kernel'lstm_210/lstm_cell_210/recurrent_kernellstm_210/lstm_cell_210/biaslstm_211/lstm_cell_211/kernel'lstm_211/lstm_cell_211/recurrent_kernellstm_211/lstm_cell_211/biaslstm_212/lstm_cell_212/kernel'lstm_212/lstm_cell_212/recurrent_kernellstm_212/lstm_cell_212/biasdense_70/kerneldense_70/bias*
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
$__inference_signature_wrapper_359110
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_210/lstm_cell_210/kernel/Read/ReadVariableOp;lstm_210/lstm_cell_210/recurrent_kernel/Read/ReadVariableOp/lstm_210/lstm_cell_210/bias/Read/ReadVariableOp1lstm_211/lstm_cell_211/kernel/Read/ReadVariableOp;lstm_211/lstm_cell_211/recurrent_kernel/Read/ReadVariableOp/lstm_211/lstm_cell_211/bias/Read/ReadVariableOp1lstm_212/lstm_cell_212/kernel/Read/ReadVariableOp;lstm_212/lstm_cell_212/recurrent_kernel/Read/ReadVariableOp/lstm_212/lstm_cell_212/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_70/kernel/m/Read/ReadVariableOp(Adam/dense_70/bias/m/Read/ReadVariableOp8Adam/lstm_210/lstm_cell_210/kernel/m/Read/ReadVariableOpBAdam/lstm_210/lstm_cell_210/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_210/lstm_cell_210/bias/m/Read/ReadVariableOp8Adam/lstm_211/lstm_cell_211/kernel/m/Read/ReadVariableOpBAdam/lstm_211/lstm_cell_211/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_211/lstm_cell_211/bias/m/Read/ReadVariableOp8Adam/lstm_212/lstm_cell_212/kernel/m/Read/ReadVariableOpBAdam/lstm_212/lstm_cell_212/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_212/lstm_cell_212/bias/m/Read/ReadVariableOp*Adam/dense_70/kernel/v/Read/ReadVariableOp(Adam/dense_70/bias/v/Read/ReadVariableOp8Adam/lstm_210/lstm_cell_210/kernel/v/Read/ReadVariableOpBAdam/lstm_210/lstm_cell_210/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_210/lstm_cell_210/bias/v/Read/ReadVariableOp8Adam/lstm_211/lstm_cell_211/kernel/v/Read/ReadVariableOpBAdam/lstm_211/lstm_cell_211/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_211/lstm_cell_211/bias/v/Read/ReadVariableOp8Adam/lstm_212/lstm_cell_212/kernel/v/Read/ReadVariableOpBAdam/lstm_212/lstm_cell_212/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_212/lstm_cell_212/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_362322

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_70/kerneldense_70/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_210/lstm_cell_210/kernel'lstm_210/lstm_cell_210/recurrent_kernellstm_210/lstm_cell_210/biaslstm_211/lstm_cell_211/kernel'lstm_211/lstm_cell_211/recurrent_kernellstm_211/lstm_cell_211/biaslstm_212/lstm_cell_212/kernel'lstm_212/lstm_cell_212/recurrent_kernellstm_212/lstm_cell_212/biastotalcountAdam/dense_70/kernel/mAdam/dense_70/bias/m$Adam/lstm_210/lstm_cell_210/kernel/m.Adam/lstm_210/lstm_cell_210/recurrent_kernel/m"Adam/lstm_210/lstm_cell_210/bias/m$Adam/lstm_211/lstm_cell_211/kernel/m.Adam/lstm_211/lstm_cell_211/recurrent_kernel/m"Adam/lstm_211/lstm_cell_211/bias/m$Adam/lstm_212/lstm_cell_212/kernel/m.Adam/lstm_212/lstm_cell_212/recurrent_kernel/m"Adam/lstm_212/lstm_cell_212/bias/mAdam/dense_70/kernel/vAdam/dense_70/bias/v$Adam/lstm_210/lstm_cell_210/kernel/v.Adam/lstm_210/lstm_cell_210/recurrent_kernel/v"Adam/lstm_210/lstm_cell_210/bias/v$Adam/lstm_211/lstm_cell_211/kernel/v.Adam/lstm_211/lstm_cell_211/recurrent_kernel/v"Adam/lstm_211/lstm_cell_211/bias/v$Adam/lstm_212/lstm_cell_212/kernel/v.Adam/lstm_212/lstm_cell_212/recurrent_kernel/v"Adam/lstm_212/lstm_cell_212/bias/v*4
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
"__inference__traced_restore_362452½Ó+
¤J

D__inference_lstm_211_layer_call_and_return_conditional_losses_361250

inputs>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_361166*
condR
while_cond_361165*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_212_layer_call_and_return_conditional_losses_357891

inputs%
lstm_cell_59_357809:2(%
lstm_cell_59_357811:
(!
lstm_cell_59_357813:(
identity˘$lstm_cell_59/StatefulPartitionedCall˘while;
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
$lstm_cell_59/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_59_357809lstm_cell_59_357811lstm_cell_59_357813*
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357763n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_59_357809lstm_cell_59_357811lstm_cell_59_357813*
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
while_body_357822*
condR
while_cond_357821*K
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
NoOpNoOp%^lstm_cell_59/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_59/StatefulPartitionedCall$lstm_cell_59/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
à"
Ŭ
while_body_357822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_59_357846_0:2(-
while_lstm_cell_59_357848_0:
()
while_lstm_cell_59_357850_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_59_357846:2(+
while_lstm_cell_59_357848:
('
while_lstm_cell_59_357850:(˘*while/lstm_cell_59/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_59/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_59_357846_0while_lstm_cell_59_357848_0while_lstm_cell_59_357850_0*
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357763Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_59/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_59/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_59/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_59_357846while_lstm_cell_59_357846_0"8
while_lstm_cell_59_357848while_lstm_cell_59_357848_0"8
while_lstm_cell_59_357850while_lstm_cell_59_357850_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_59/StatefulPartitionedCall*while/lstm_cell_59/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_360879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360879___redundant_placeholder04
0while_while_cond_360879___redundant_placeholder14
0while_while_cond_360879___redundant_placeholder24
0while_while_cond_360879___redundant_placeholder3
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
while_body_356931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_57_356955_0:	.
while_lstm_cell_57_356957_0:	d*
while_lstm_cell_57_356959_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_57_356955:	,
while_lstm_cell_57_356957:	d(
while_lstm_cell_57_356959:	˘*while/lstm_cell_57/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_57/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_57_356955_0while_lstm_cell_57_356957_0while_lstm_cell_57_356959_0*
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_356917Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_57/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_57/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_57/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_57_356955while_lstm_cell_57_356955_0"8
while_lstm_cell_57_356957while_lstm_cell_57_356957_0"8
while_lstm_cell_57_356959while_lstm_cell_57_356959_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_57/StatefulPartitionedCall*while/lstm_cell_57/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_361638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361638___redundant_placeholder04
0while_while_cond_361638___redundant_placeholder14
0while_while_cond_361638___redundant_placeholder24
0while_while_cond_361638___redundant_placeholder3
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
while_body_361639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_211_layer_call_fn_360656
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_357541|
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
à"
Ŭ
while_body_357631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_59_357655_0:2(-
while_lstm_cell_59_357657_0:
()
while_lstm_cell_59_357659_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_59_357655:2(+
while_lstm_cell_59_357657:
('
while_lstm_cell_59_357659:(˘*while/lstm_cell_59/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_59/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_59_357655_0while_lstm_cell_59_357657_0while_lstm_cell_59_357659_0*
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357617Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_59/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_59/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_59/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_59_357655while_lstm_cell_59_357655_0"8
while_lstm_cell_59_357657while_lstm_cell_59_357657_0"8
while_lstm_cell_59_357659while_lstm_cell_59_357659_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_59/StatefulPartitionedCall*while/lstm_cell_59/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358895

inputs>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_358811*
condR
while_cond_358810*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
?
ó
I__inference_sequential_70_layer_call_and_return_conditional_losses_359075
lstm_210_input"
lstm_210_359048:	"
lstm_210_359050:	d
lstm_210_359052:	"
lstm_211_359055:	dÈ"
lstm_211_359057:	2È
lstm_211_359059:	È!
lstm_212_359062:2(!
lstm_212_359064:
(
lstm_212_359066:(!
dense_70_359069:

dense_70_359071:
identity˘ dense_70/StatefulPartitionedCall˘ lstm_210/StatefulPartitionedCall˘ lstm_211/StatefulPartitionedCall˘ lstm_212/StatefulPartitionedCall
 lstm_210/StatefulPartitionedCallStatefulPartitionedCalllstm_210_inputlstm_210_359048lstm_210_359050lstm_210_359052*
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358895Ş
 lstm_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_210/StatefulPartitionedCall:output:0lstm_211_359055lstm_211_359057lstm_211_359059*
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358730Ĥ
 lstm_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_211/StatefulPartitionedCall:output:0lstm_212_359062lstm_212_359064lstm_212_359066*
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358565
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)lstm_212/StatefulPartitionedCall:output:0dense_70_359069dense_70_359071*
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
D__inference_dense_70_layer_call_and_return_conditional_losses_358367x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_70/StatefulPartitionedCall!^lstm_210/StatefulPartitionedCall!^lstm_211/StatefulPartitionedCall!^lstm_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 lstm_210/StatefulPartitionedCall lstm_210/StatefulPartitionedCall2D
 lstm_211/StatefulPartitionedCall lstm_211/StatefulPartitionedCall2D
 lstm_212/StatefulPartitionedCall lstm_212/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_210_input
µ
?
while_cond_358114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358114___redundant_placeholder04
0while_while_cond_358114___redundant_placeholder14
0while_while_cond_358114___redundant_placeholder24
0while_while_cond_358114___redundant_placeholder3
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
while_cond_361781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361781___redundant_placeholder04
0while_while_cond_361781___redundant_placeholder14
0while_while_cond_361781___redundant_placeholder24
0while_while_cond_361781___redundant_placeholder3
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
À


$__inference_signature_wrapper_359110
lstm_210_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_356850o
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
_user_specified_namelstm_210_input
µ
?
while_cond_360263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360263___redundant_placeholder04
0while_while_cond_360263___redundant_placeholder14
0while_while_cond_360263___redundant_placeholder24
0while_while_cond_360263___redundant_placeholder3
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
while_cond_360406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360406___redundant_placeholder04
0while_while_cond_360406___redundant_placeholder14
0while_while_cond_360406___redundant_placeholder24
0while_while_cond_360406___redundant_placeholder3
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
while_cond_358645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358645___redundant_placeholder04
0while_while_cond_358645___redundant_placeholder14
0while_while_cond_358645___redundant_placeholder24
0while_while_cond_358645___redundant_placeholder3
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
)__inference_lstm_211_layer_call_fn_360678

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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358730s
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
ò

˘
.__inference_sequential_70_layer_call_fn_359015
lstm_210_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_358963o
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
_user_specified_namelstm_210_input
S
³
(sequential_70_lstm_210_while_body_356482J
Fsequential_70_lstm_210_while_sequential_70_lstm_210_while_loop_counterP
Lsequential_70_lstm_210_while_sequential_70_lstm_210_while_maximum_iterations,
(sequential_70_lstm_210_while_placeholder.
*sequential_70_lstm_210_while_placeholder_1.
*sequential_70_lstm_210_while_placeholder_2.
*sequential_70_lstm_210_while_placeholder_3I
Esequential_70_lstm_210_while_sequential_70_lstm_210_strided_slice_1_0
sequential_70_lstm_210_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_210_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_70_lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0:	_
Lsequential_70_lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dZ
Ksequential_70_lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0:	)
%sequential_70_lstm_210_while_identity+
'sequential_70_lstm_210_while_identity_1+
'sequential_70_lstm_210_while_identity_2+
'sequential_70_lstm_210_while_identity_3+
'sequential_70_lstm_210_while_identity_4+
'sequential_70_lstm_210_while_identity_5G
Csequential_70_lstm_210_while_sequential_70_lstm_210_strided_slice_1
sequential_70_lstm_210_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_210_tensorarrayunstack_tensorlistfromtensor[
Hsequential_70_lstm_210_while_lstm_cell_57_matmul_readvariableop_resource:	]
Jsequential_70_lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource:	dX
Isequential_70_lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource:	˘@sequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp˘?sequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp˘Asequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp
Nsequential_70/lstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_70/lstm_210/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_70_lstm_210_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_210_tensorarrayunstack_tensorlistfromtensor_0(sequential_70_lstm_210_while_placeholderWsequential_70/lstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOpJsequential_70_lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_70/lstm_210/while/lstm_cell_57/MatMulMatMulGsequential_70/lstm_210/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOpLsequential_70_lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_70/lstm_210/while/lstm_cell_57/MatMul_1MatMul*sequential_70_lstm_210_while_placeholder_2Isequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_70/lstm_210/while/lstm_cell_57/addAddV2:sequential_70/lstm_210/while/lstm_cell_57/MatMul:product:0<sequential_70/lstm_210/while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOpKsequential_70_lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_70/lstm_210/while/lstm_cell_57/BiasAddBiasAdd1sequential_70/lstm_210/while/lstm_cell_57/add:z:0Hsequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_70/lstm_210/while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_70/lstm_210/while/lstm_cell_57/splitSplitBsequential_70/lstm_210/while/lstm_cell_57/split/split_dim:output:0:sequential_70/lstm_210/while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_70/lstm_210/while/lstm_cell_57/SigmoidSigmoid8sequential_70/lstm_210/while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_70/lstm_210/while/lstm_cell_57/Sigmoid_1Sigmoid8sequential_70/lstm_210/while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_70/lstm_210/while/lstm_cell_57/mulMul7sequential_70/lstm_210/while/lstm_cell_57/Sigmoid_1:y:0*sequential_70_lstm_210_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_70/lstm_210/while/lstm_cell_57/ReluRelu8sequential_70/lstm_210/while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_70/lstm_210/while/lstm_cell_57/mul_1Mul5sequential_70/lstm_210/while/lstm_cell_57/Sigmoid:y:0<sequential_70/lstm_210/while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_70/lstm_210/while/lstm_cell_57/add_1AddV21sequential_70/lstm_210/while/lstm_cell_57/mul:z:03sequential_70/lstm_210/while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_70/lstm_210/while/lstm_cell_57/Sigmoid_2Sigmoid8sequential_70/lstm_210/while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_70/lstm_210/while/lstm_cell_57/Relu_1Relu3sequential_70/lstm_210/while/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_70/lstm_210/while/lstm_cell_57/mul_2Mul7sequential_70/lstm_210/while/lstm_cell_57/Sigmoid_2:y:0>sequential_70/lstm_210/while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_70/lstm_210/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_70_lstm_210_while_placeholder_1(sequential_70_lstm_210_while_placeholder3sequential_70/lstm_210/while/lstm_cell_57/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_70/lstm_210/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_70/lstm_210/while/addAddV2(sequential_70_lstm_210_while_placeholder+sequential_70/lstm_210/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_70/lstm_210/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_70/lstm_210/while/add_1AddV2Fsequential_70_lstm_210_while_sequential_70_lstm_210_while_loop_counter-sequential_70/lstm_210/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_70/lstm_210/while/IdentityIdentity&sequential_70/lstm_210/while/add_1:z:0"^sequential_70/lstm_210/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_70/lstm_210/while/Identity_1IdentityLsequential_70_lstm_210_while_sequential_70_lstm_210_while_maximum_iterations"^sequential_70/lstm_210/while/NoOp*
T0*
_output_shapes
: 
'sequential_70/lstm_210/while/Identity_2Identity$sequential_70/lstm_210/while/add:z:0"^sequential_70/lstm_210/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_70/lstm_210/while/Identity_3IdentityQsequential_70/lstm_210/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_70/lstm_210/while/NoOp*
T0*
_output_shapes
: ?
'sequential_70/lstm_210/while/Identity_4Identity3sequential_70/lstm_210/while/lstm_cell_57/mul_2:z:0"^sequential_70/lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_70/lstm_210/while/Identity_5Identity3sequential_70/lstm_210/while/lstm_cell_57/add_1:z:0"^sequential_70/lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_70/lstm_210/while/NoOpNoOpA^sequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp@^sequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOpB^sequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_70_lstm_210_while_identity.sequential_70/lstm_210/while/Identity:output:0"[
'sequential_70_lstm_210_while_identity_10sequential_70/lstm_210/while/Identity_1:output:0"[
'sequential_70_lstm_210_while_identity_20sequential_70/lstm_210/while/Identity_2:output:0"[
'sequential_70_lstm_210_while_identity_30sequential_70/lstm_210/while/Identity_3:output:0"[
'sequential_70_lstm_210_while_identity_40sequential_70/lstm_210/while/Identity_4:output:0"[
'sequential_70_lstm_210_while_identity_50sequential_70/lstm_210/while/Identity_5:output:0"
Isequential_70_lstm_210_while_lstm_cell_57_biasadd_readvariableop_resourceKsequential_70_lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0"
Jsequential_70_lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resourceLsequential_70_lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0"
Hsequential_70_lstm_210_while_lstm_cell_57_matmul_readvariableop_resourceJsequential_70_lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0"
Csequential_70_lstm_210_while_sequential_70_lstm_210_strided_slice_1Esequential_70_lstm_210_while_sequential_70_lstm_210_strided_slice_1_0"
sequential_70_lstm_210_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_210_tensorarrayunstack_tensorlistfromtensorsequential_70_lstm_210_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_210_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp@sequential_70/lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2
?sequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp?sequential_70/lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp2
Asequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOpAsequential_70/lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_358374

inputs"
lstm_210_358050:	"
lstm_210_358052:	d
lstm_210_358054:	"
lstm_211_358200:	dÈ"
lstm_211_358202:	2È
lstm_211_358204:	È!
lstm_212_358350:2(!
lstm_212_358352:
(
lstm_212_358354:(!
dense_70_358368:

dense_70_358370:
identity˘ dense_70/StatefulPartitionedCall˘ lstm_210/StatefulPartitionedCall˘ lstm_211/StatefulPartitionedCall˘ lstm_212/StatefulPartitionedCall
 lstm_210/StatefulPartitionedCallStatefulPartitionedCallinputslstm_210_358050lstm_210_358052lstm_210_358054*
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358049Ş
 lstm_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_210/StatefulPartitionedCall:output:0lstm_211_358200lstm_211_358202lstm_211_358204*
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358199Ĥ
 lstm_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_211/StatefulPartitionedCall:output:0lstm_212_358350lstm_212_358352lstm_212_358354*
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358349
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)lstm_212/StatefulPartitionedCall:output:0dense_70_358368dense_70_358370*
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
D__inference_dense_70_layer_call_and_return_conditional_losses_358367x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_70/StatefulPartitionedCall!^lstm_210/StatefulPartitionedCall!^lstm_211/StatefulPartitionedCall!^lstm_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 lstm_210/StatefulPartitionedCall lstm_210/StatefulPartitionedCall2D
 lstm_211/StatefulPartitionedCall lstm_211/StatefulPartitionedCall2D
 lstm_212/StatefulPartitionedCall lstm_212/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_212_while_cond_359500.
*lstm_212_while_lstm_212_while_loop_counter4
0lstm_212_while_lstm_212_while_maximum_iterations
lstm_212_while_placeholder 
lstm_212_while_placeholder_1 
lstm_212_while_placeholder_2 
lstm_212_while_placeholder_30
,lstm_212_while_less_lstm_212_strided_slice_1F
Blstm_212_while_lstm_212_while_cond_359500___redundant_placeholder0F
Blstm_212_while_lstm_212_while_cond_359500___redundant_placeholder1F
Blstm_212_while_lstm_212_while_cond_359500___redundant_placeholder2F
Blstm_212_while_lstm_212_while_cond_359500___redundant_placeholder3
lstm_212_while_identity

lstm_212/while/LessLesslstm_212_while_placeholder,lstm_212_while_less_lstm_212_strided_slice_1*
T0*
_output_shapes
: ]
lstm_212/while/IdentityIdentitylstm_212/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_212_while_identity lstm_212/while/Identity:output:0*(
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357267

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
˙7
Ê
while_body_358481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(sequential_70_lstm_212_while_cond_356759J
Fsequential_70_lstm_212_while_sequential_70_lstm_212_while_loop_counterP
Lsequential_70_lstm_212_while_sequential_70_lstm_212_while_maximum_iterations,
(sequential_70_lstm_212_while_placeholder.
*sequential_70_lstm_212_while_placeholder_1.
*sequential_70_lstm_212_while_placeholder_2.
*sequential_70_lstm_212_while_placeholder_3L
Hsequential_70_lstm_212_while_less_sequential_70_lstm_212_strided_slice_1b
^sequential_70_lstm_212_while_sequential_70_lstm_212_while_cond_356759___redundant_placeholder0b
^sequential_70_lstm_212_while_sequential_70_lstm_212_while_cond_356759___redundant_placeholder1b
^sequential_70_lstm_212_while_sequential_70_lstm_212_while_cond_356759___redundant_placeholder2b
^sequential_70_lstm_212_while_sequential_70_lstm_212_while_cond_356759___redundant_placeholder3)
%sequential_70_lstm_212_while_identity
?
!sequential_70/lstm_212/while/LessLess(sequential_70_lstm_212_while_placeholderHsequential_70_lstm_212_while_less_sequential_70_lstm_212_strided_slice_1*
T0*
_output_shapes
: y
%sequential_70/lstm_212/while/IdentityIdentity%sequential_70/lstm_212/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_70_lstm_212_while_identity.sequential_70/lstm_212/while/Identity:output:0*(
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
)__inference_lstm_210_layer_call_fn_360062

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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358895s
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
while_body_361166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ġ

H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_357063

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
ħ

I__inference_sequential_70_layer_call_and_return_conditional_losses_360018

inputsG
4lstm_210_lstm_cell_57_matmul_readvariableop_resource:	I
6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource:	dD
5lstm_210_lstm_cell_57_biasadd_readvariableop_resource:	G
4lstm_211_lstm_cell_58_matmul_readvariableop_resource:	dÈI
6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈD
5lstm_211_lstm_cell_58_biasadd_readvariableop_resource:	ÈF
4lstm_212_lstm_cell_59_matmul_readvariableop_resource:2(H
6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource:
(C
5lstm_212_lstm_cell_59_biasadd_readvariableop_resource:(9
'dense_70_matmul_readvariableop_resource:
6
(dense_70_biasadd_readvariableop_resource:
identity˘dense_70/BiasAdd/ReadVariableOp˘dense_70/MatMul/ReadVariableOp˘,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp˘+lstm_210/lstm_cell_57/MatMul/ReadVariableOp˘-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp˘lstm_210/while˘,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp˘+lstm_211/lstm_cell_58/MatMul/ReadVariableOp˘-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp˘lstm_211/while˘,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp˘+lstm_212/lstm_cell_59/MatMul/ReadVariableOp˘-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp˘lstm_212/whileD
lstm_210/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_210/strided_sliceStridedSlicelstm_210/Shape:output:0%lstm_210/strided_slice/stack:output:0'lstm_210/strided_slice/stack_1:output:0'lstm_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_210/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_210/zeros/packedPacklstm_210/strided_slice:output:0 lstm_210/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_210/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_210/zerosFilllstm_210/zeros/packed:output:0lstm_210/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_210/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_210/zeros_1/packedPacklstm_210/strided_slice:output:0"lstm_210/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_210/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_210/zeros_1Fill lstm_210/zeros_1/packed:output:0lstm_210/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_210/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_210/transpose	Transposeinputs lstm_210/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_210/Shape_1Shapelstm_210/transpose:y:0*
T0*
_output_shapes
:h
lstm_210/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_210/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_210/strided_slice_1StridedSlicelstm_210/Shape_1:output:0'lstm_210/strided_slice_1/stack:output:0)lstm_210/strided_slice_1/stack_1:output:0)lstm_210/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_210/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_210/TensorArrayV2TensorListReserve-lstm_210/TensorArrayV2/element_shape:output:0!lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_210/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_210/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_210/transpose:y:0Glstm_210/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_210/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_210/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_210/strided_slice_2StridedSlicelstm_210/transpose:y:0'lstm_210/strided_slice_2/stack:output:0)lstm_210/strided_slice_2/stack_1:output:0)lstm_210/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_210/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp4lstm_210_lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_210/lstm_cell_57/MatMulMatMul!lstm_210/strided_slice_2:output:03lstm_210/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_210/lstm_cell_57/MatMul_1MatMullstm_210/zeros:output:05lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_210/lstm_cell_57/addAddV2&lstm_210/lstm_cell_57/MatMul:product:0(lstm_210/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp5lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_210/lstm_cell_57/BiasAddBiasAddlstm_210/lstm_cell_57/add:z:04lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_210/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_210/lstm_cell_57/splitSplit.lstm_210/lstm_cell_57/split/split_dim:output:0&lstm_210/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_210/lstm_cell_57/SigmoidSigmoid$lstm_210/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/Sigmoid_1Sigmoid$lstm_210/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/mulMul#lstm_210/lstm_cell_57/Sigmoid_1:y:0lstm_210/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_210/lstm_cell_57/ReluRelu$lstm_210/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_210/lstm_cell_57/mul_1Mul!lstm_210/lstm_cell_57/Sigmoid:y:0(lstm_210/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/add_1AddV2lstm_210/lstm_cell_57/mul:z:0lstm_210/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/Sigmoid_2Sigmoid$lstm_210/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_210/lstm_cell_57/Relu_1Relulstm_210/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_210/lstm_cell_57/mul_2Mul#lstm_210/lstm_cell_57/Sigmoid_2:y:0*lstm_210/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_210/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_210/TensorArrayV2_1TensorListReserve/lstm_210/TensorArrayV2_1/element_shape:output:0!lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_210/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_210/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_210/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_210/whileWhile$lstm_210/while/loop_counter:output:0*lstm_210/while/maximum_iterations:output:0lstm_210/time:output:0!lstm_210/TensorArrayV2_1:handle:0lstm_210/zeros:output:0lstm_210/zeros_1:output:0!lstm_210/strided_slice_1:output:0@lstm_210/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_210_lstm_cell_57_matmul_readvariableop_resource6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource5lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
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
lstm_210_while_body_359650*&
condR
lstm_210_while_cond_359649*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_210/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_210/TensorArrayV2Stack/TensorListStackTensorListStacklstm_210/while:output:3Blstm_210/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_210/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_210/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_210/strided_slice_3StridedSlice4lstm_210/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_210/strided_slice_3/stack:output:0)lstm_210/strided_slice_3/stack_1:output:0)lstm_210/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_210/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_210/transpose_1	Transpose4lstm_210/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_210/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_210/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_211/ShapeShapelstm_210/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_211/strided_sliceStridedSlicelstm_211/Shape:output:0%lstm_211/strided_slice/stack:output:0'lstm_211/strided_slice/stack_1:output:0'lstm_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_211/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_211/zeros/packedPacklstm_211/strided_slice:output:0 lstm_211/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_211/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_211/zerosFilllstm_211/zeros/packed:output:0lstm_211/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_211/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_211/zeros_1/packedPacklstm_211/strided_slice:output:0"lstm_211/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_211/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_211/zeros_1Fill lstm_211/zeros_1/packed:output:0lstm_211/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_211/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_211/transpose	Transposelstm_210/transpose_1:y:0 lstm_211/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_211/Shape_1Shapelstm_211/transpose:y:0*
T0*
_output_shapes
:h
lstm_211/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_211/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_211/strided_slice_1StridedSlicelstm_211/Shape_1:output:0'lstm_211/strided_slice_1/stack:output:0)lstm_211/strided_slice_1/stack_1:output:0)lstm_211/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_211/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_211/TensorArrayV2TensorListReserve-lstm_211/TensorArrayV2/element_shape:output:0!lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_211/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_211/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_211/transpose:y:0Glstm_211/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_211/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_211/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_211/strided_slice_2StridedSlicelstm_211/transpose:y:0'lstm_211/strided_slice_2/stack:output:0)lstm_211/strided_slice_2/stack_1:output:0)lstm_211/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_211/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp4lstm_211_lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_211/lstm_cell_58/MatMulMatMul!lstm_211/strided_slice_2:output:03lstm_211/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_211/lstm_cell_58/MatMul_1MatMullstm_211/zeros:output:05lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_211/lstm_cell_58/addAddV2&lstm_211/lstm_cell_58/MatMul:product:0(lstm_211/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp5lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_211/lstm_cell_58/BiasAddBiasAddlstm_211/lstm_cell_58/add:z:04lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_211/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_211/lstm_cell_58/splitSplit.lstm_211/lstm_cell_58/split/split_dim:output:0&lstm_211/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_211/lstm_cell_58/SigmoidSigmoid$lstm_211/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/Sigmoid_1Sigmoid$lstm_211/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/mulMul#lstm_211/lstm_cell_58/Sigmoid_1:y:0lstm_211/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_211/lstm_cell_58/ReluRelu$lstm_211/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_211/lstm_cell_58/mul_1Mul!lstm_211/lstm_cell_58/Sigmoid:y:0(lstm_211/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/add_1AddV2lstm_211/lstm_cell_58/mul:z:0lstm_211/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/Sigmoid_2Sigmoid$lstm_211/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_211/lstm_cell_58/Relu_1Relulstm_211/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_211/lstm_cell_58/mul_2Mul#lstm_211/lstm_cell_58/Sigmoid_2:y:0*lstm_211/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_211/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_211/TensorArrayV2_1TensorListReserve/lstm_211/TensorArrayV2_1/element_shape:output:0!lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_211/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_211/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_211/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_211/whileWhile$lstm_211/while/loop_counter:output:0*lstm_211/while/maximum_iterations:output:0lstm_211/time:output:0!lstm_211/TensorArrayV2_1:handle:0lstm_211/zeros:output:0lstm_211/zeros_1:output:0!lstm_211/strided_slice_1:output:0@lstm_211/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_211_lstm_cell_58_matmul_readvariableop_resource6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource5lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
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
lstm_211_while_body_359789*&
condR
lstm_211_while_cond_359788*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_211/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_211/TensorArrayV2Stack/TensorListStackTensorListStacklstm_211/while:output:3Blstm_211/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_211/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_211/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_211/strided_slice_3StridedSlice4lstm_211/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_211/strided_slice_3/stack:output:0)lstm_211/strided_slice_3/stack_1:output:0)lstm_211/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_211/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_211/transpose_1	Transpose4lstm_211/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_211/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_211/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_212/ShapeShapelstm_211/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_212/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_212/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_212/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_212/strided_sliceStridedSlicelstm_212/Shape:output:0%lstm_212/strided_slice/stack:output:0'lstm_212/strided_slice/stack_1:output:0'lstm_212/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_212/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_212/zeros/packedPacklstm_212/strided_slice:output:0 lstm_212/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_212/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_212/zerosFilllstm_212/zeros/packed:output:0lstm_212/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_212/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_212/zeros_1/packedPacklstm_212/strided_slice:output:0"lstm_212/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_212/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_212/zeros_1Fill lstm_212/zeros_1/packed:output:0lstm_212/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_212/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_212/transpose	Transposelstm_211/transpose_1:y:0 lstm_212/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_212/Shape_1Shapelstm_212/transpose:y:0*
T0*
_output_shapes
:h
lstm_212/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_212/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_212/strided_slice_1StridedSlicelstm_212/Shape_1:output:0'lstm_212/strided_slice_1/stack:output:0)lstm_212/strided_slice_1/stack_1:output:0)lstm_212/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_212/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_212/TensorArrayV2TensorListReserve-lstm_212/TensorArrayV2/element_shape:output:0!lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_212/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_212/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_212/transpose:y:0Glstm_212/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_212/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_212/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_212/strided_slice_2StridedSlicelstm_212/transpose:y:0'lstm_212/strided_slice_2/stack:output:0)lstm_212/strided_slice_2/stack_1:output:0)lstm_212/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_212/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp4lstm_212_lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_212/lstm_cell_59/MatMulMatMul!lstm_212/strided_slice_2:output:03lstm_212/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_212/lstm_cell_59/MatMul_1MatMullstm_212/zeros:output:05lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_212/lstm_cell_59/addAddV2&lstm_212/lstm_cell_59/MatMul:product:0(lstm_212/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp5lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_212/lstm_cell_59/BiasAddBiasAddlstm_212/lstm_cell_59/add:z:04lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_212/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_212/lstm_cell_59/splitSplit.lstm_212/lstm_cell_59/split/split_dim:output:0&lstm_212/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_212/lstm_cell_59/SigmoidSigmoid$lstm_212/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/Sigmoid_1Sigmoid$lstm_212/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/mulMul#lstm_212/lstm_cell_59/Sigmoid_1:y:0lstm_212/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_212/lstm_cell_59/ReluRelu$lstm_212/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_212/lstm_cell_59/mul_1Mul!lstm_212/lstm_cell_59/Sigmoid:y:0(lstm_212/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/add_1AddV2lstm_212/lstm_cell_59/mul:z:0lstm_212/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/Sigmoid_2Sigmoid$lstm_212/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_212/lstm_cell_59/Relu_1Relulstm_212/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_212/lstm_cell_59/mul_2Mul#lstm_212/lstm_cell_59/Sigmoid_2:y:0*lstm_212/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_212/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_212/TensorArrayV2_1TensorListReserve/lstm_212/TensorArrayV2_1/element_shape:output:0!lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_212/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_212/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_212/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_212/whileWhile$lstm_212/while/loop_counter:output:0*lstm_212/while/maximum_iterations:output:0lstm_212/time:output:0!lstm_212/TensorArrayV2_1:handle:0lstm_212/zeros:output:0lstm_212/zeros_1:output:0!lstm_212/strided_slice_1:output:0@lstm_212/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_212_lstm_cell_59_matmul_readvariableop_resource6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource5lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
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
lstm_212_while_body_359928*&
condR
lstm_212_while_cond_359927*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_212/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_212/TensorArrayV2Stack/TensorListStackTensorListStacklstm_212/while:output:3Blstm_212/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_212/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_212/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_212/strided_slice_3StridedSlice4lstm_212/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_212/strided_slice_3/stack:output:0)lstm_212/strided_slice_3/stack_1:output:0)lstm_212/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_212/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_212/transpose_1	Transpose4lstm_212/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_212/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_212/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_70/MatMulMatMul!lstm_212/strided_slice_3:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_70/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp-^lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp,^lstm_210/lstm_cell_57/MatMul/ReadVariableOp.^lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp^lstm_210/while-^lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp,^lstm_211/lstm_cell_58/MatMul/ReadVariableOp.^lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp^lstm_211/while-^lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp,^lstm_212/lstm_cell_59/MatMul/ReadVariableOp.^lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp^lstm_212/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2\
,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp2Z
+lstm_210/lstm_cell_57/MatMul/ReadVariableOp+lstm_210/lstm_cell_57/MatMul/ReadVariableOp2^
-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp2 
lstm_210/whilelstm_210/while2\
,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp2Z
+lstm_211/lstm_cell_58/MatMul/ReadVariableOp+lstm_211/lstm_cell_58/MatMul/ReadVariableOp2^
-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp2 
lstm_211/whilelstm_211/while2\
,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp2Z
+lstm_212/lstm_cell_59/MatMul/ReadVariableOp+lstm_212/lstm_cell_59/MatMul/ReadVariableOp2^
-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp2 
lstm_212/whilelstm_212/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_210_layer_call_and_return_conditional_losses_357000

inputs&
lstm_cell_57_356918:	&
lstm_cell_57_356920:	d"
lstm_cell_57_356922:	
identity˘$lstm_cell_57/StatefulPartitionedCall˘while;
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
$lstm_cell_57/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_57_356918lstm_cell_57_356920lstm_cell_57_356922*
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_356917n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_57_356918lstm_cell_57_356920lstm_cell_57_356922*
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
while_body_356931*
condR
while_cond_356930*K
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
NoOpNoOp%^lstm_cell_57/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_57/StatefulPartitionedCall$lstm_cell_57/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ç	
ġ
D__inference_dense_70_layer_call_and_return_conditional_losses_358367

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
˙7
Ê
while_body_361353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_357630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357630___redundant_placeholder04
0while_while_cond_357630___redundant_placeholder14
0while_while_cond_357630___redundant_placeholder24
0while_while_cond_357630___redundant_placeholder3
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362147

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

µ
)__inference_lstm_212_layer_call_fn_361261
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_357700o
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
µ
?
while_cond_357121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357121___redundant_placeholder04
0while_while_cond_357121___redundant_placeholder14
0while_while_cond_357121___redundant_placeholder24
0while_while_cond_357121___redundant_placeholder3
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
âJ

D__inference_lstm_210_layer_call_and_return_conditional_losses_360348
inputs_0>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_360264*
condR
while_cond_360263*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
J

D__inference_lstm_212_layer_call_and_return_conditional_losses_358565

inputs=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_358481*
condR
while_cond_358480*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_211_layer_call_and_return_conditional_losses_361107

inputs>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_361023*
condR
while_cond_361022*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Â

)__inference_dense_70_layer_call_fn_361875

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
D__inference_dense_70_layer_call_and_return_conditional_losses_358367o
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
µ
?
while_cond_357471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357471___redundant_placeholder04
0while_while_cond_357471___redundant_placeholder14
0while_while_cond_357471___redundant_placeholder24
0while_while_cond_357471___redundant_placeholder3
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_360634

inputs>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_360550*
condR
while_cond_360549*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_361352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361352___redundant_placeholder04
0while_while_cond_361352___redundant_placeholder14
0while_while_cond_361352___redundant_placeholder24
0while_while_cond_361352___redundant_placeholder3
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_360964
inputs_0>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_360880*
condR
while_cond_360879*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
µ
?
while_cond_360736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360736___redundant_placeholder04
0while_while_cond_360736___redundant_placeholder14
0while_while_cond_360736___redundant_placeholder24
0while_while_cond_360736___redundant_placeholder3
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
Ó

H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362179

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
while_cond_360120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360120___redundant_placeholder04
0while_while_cond_360120___redundant_placeholder14
0while_while_cond_360120___redundant_placeholder24
0while_while_cond_360120___redundant_placeholder3
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361437
inputs_0=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_361353*
condR
while_cond_361352*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ĉ"
?
while_body_357472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_58_357496_0:	dÈ.
while_lstm_cell_58_357498_0:	2È*
while_lstm_cell_58_357500_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_58_357496:	dÈ,
while_lstm_cell_58_357498:	2È(
while_lstm_cell_58_357500:	È˘*while/lstm_cell_58/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_58/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_58_357496_0while_lstm_cell_58_357498_0while_lstm_cell_58_357500_0*
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357413Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_58/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_58/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_58/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_58_357496while_lstm_cell_58_357496_0"8
while_lstm_cell_58_357498while_lstm_cell_58_357498_0"8
while_lstm_cell_58_357500while_lstm_cell_58_357500_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_58/StatefulPartitionedCall*while/lstm_cell_58/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_210_layer_call_fn_360051

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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358049s
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

lstm_212_while_body_359928.
*lstm_212_while_lstm_212_while_loop_counter4
0lstm_212_while_lstm_212_while_maximum_iterations
lstm_212_while_placeholder 
lstm_212_while_placeholder_1 
lstm_212_while_placeholder_2 
lstm_212_while_placeholder_3-
)lstm_212_while_lstm_212_strided_slice_1_0i
elstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0:2(P
>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(K
=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0:(
lstm_212_while_identity
lstm_212_while_identity_1
lstm_212_while_identity_2
lstm_212_while_identity_3
lstm_212_while_identity_4
lstm_212_while_identity_5+
'lstm_212_while_lstm_212_strided_slice_1g
clstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensorL
:lstm_212_while_lstm_cell_59_matmul_readvariableop_resource:2(N
<lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource:
(I
;lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource:(˘2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp˘1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp˘3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp
@lstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_212/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0lstm_212_while_placeholderIlstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_212/while/lstm_cell_59/MatMulMatMul9lstm_212/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_212/while/lstm_cell_59/MatMul_1MatMullstm_212_while_placeholder_2;lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_212/while/lstm_cell_59/addAddV2,lstm_212/while/lstm_cell_59/MatMul:product:0.lstm_212/while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_212/while/lstm_cell_59/BiasAddBiasAdd#lstm_212/while/lstm_cell_59/add:z:0:lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_212/while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_212/while/lstm_cell_59/splitSplit4lstm_212/while/lstm_cell_59/split/split_dim:output:0,lstm_212/while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_212/while/lstm_cell_59/SigmoidSigmoid*lstm_212/while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_212/while/lstm_cell_59/Sigmoid_1Sigmoid*lstm_212/while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_212/while/lstm_cell_59/mulMul)lstm_212/while/lstm_cell_59/Sigmoid_1:y:0lstm_212_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_212/while/lstm_cell_59/ReluRelu*lstm_212/while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_212/while/lstm_cell_59/mul_1Mul'lstm_212/while/lstm_cell_59/Sigmoid:y:0.lstm_212/while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_212/while/lstm_cell_59/add_1AddV2#lstm_212/while/lstm_cell_59/mul:z:0%lstm_212/while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_212/while/lstm_cell_59/Sigmoid_2Sigmoid*lstm_212/while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_212/while/lstm_cell_59/Relu_1Relu%lstm_212/while/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_212/while/lstm_cell_59/mul_2Mul)lstm_212/while/lstm_cell_59/Sigmoid_2:y:00lstm_212/while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_212/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_212_while_placeholder_1lstm_212_while_placeholder%lstm_212/while/lstm_cell_59/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_212/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_212/while/addAddV2lstm_212_while_placeholderlstm_212/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_212/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_212/while/add_1AddV2*lstm_212_while_lstm_212_while_loop_counterlstm_212/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_212/while/IdentityIdentitylstm_212/while/add_1:z:0^lstm_212/while/NoOp*
T0*
_output_shapes
: 
lstm_212/while/Identity_1Identity0lstm_212_while_lstm_212_while_maximum_iterations^lstm_212/while/NoOp*
T0*
_output_shapes
: t
lstm_212/while/Identity_2Identitylstm_212/while/add:z:0^lstm_212/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_212/while/Identity_3IdentityClstm_212/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_212/while/NoOp*
T0*
_output_shapes
: 
lstm_212/while/Identity_4Identity%lstm_212/while/lstm_cell_59/mul_2:z:0^lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/while/Identity_5Identity%lstm_212/while/lstm_cell_59/add_1:z:0^lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_212/while/NoOpNoOp3^lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2^lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp4^lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_212_while_identity lstm_212/while/Identity:output:0"?
lstm_212_while_identity_1"lstm_212/while/Identity_1:output:0"?
lstm_212_while_identity_2"lstm_212/while/Identity_2:output:0"?
lstm_212_while_identity_3"lstm_212/while/Identity_3:output:0"?
lstm_212_while_identity_4"lstm_212/while/Identity_4:output:0"?
lstm_212_while_identity_5"lstm_212/while/Identity_5:output:0"T
'lstm_212_while_lstm_212_strided_slice_1)lstm_212_while_lstm_212_strided_slice_1_0"|
;lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0"~
<lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0"z
:lstm_212_while_lstm_cell_59_matmul_readvariableop_resource<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0"Ì
clstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensorelstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2f
1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp2j
3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_210_layer_call_fn_360040
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_357191|
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
Ŭ

H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362049

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
âJ

D__inference_lstm_210_layer_call_and_return_conditional_losses_360205
inputs_0>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_360121*
condR
while_cond_360120*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Ë

H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357763

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
˙7
Ê
while_body_358265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358730

inputs>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_358646*
condR
while_cond_358645*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_360121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_357700

inputs%
lstm_cell_59_357618:2(%
lstm_cell_59_357620:
(!
lstm_cell_59_357622:(
identity˘$lstm_cell_59/StatefulPartitionedCall˘while;
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
$lstm_cell_59/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_59_357618lstm_cell_59_357620lstm_cell_59_357622*
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357617n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_59_357618lstm_cell_59_357620lstm_cell_59_357622*
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
while_body_357631*
condR
while_cond_357630*K
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
NoOpNoOp%^lstm_cell_59/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_59/StatefulPartitionedCall$lstm_cell_59/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ğ
¸
)__inference_lstm_211_layer_call_fn_360645
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_357350|
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361951

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
ë
ö
-__inference_lstm_cell_57_layer_call_fn_361902

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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_356917o
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
while_cond_357280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357280___redundant_placeholder04
0while_while_cond_357280___redundant_placeholder14
0while_while_cond_357280___redundant_placeholder24
0while_while_cond_357280___redundant_placeholder3
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
²

÷
lstm_211_while_cond_359788.
*lstm_211_while_lstm_211_while_loop_counter4
0lstm_211_while_lstm_211_while_maximum_iterations
lstm_211_while_placeholder 
lstm_211_while_placeholder_1 
lstm_211_while_placeholder_2 
lstm_211_while_placeholder_30
,lstm_211_while_less_lstm_211_strided_slice_1F
Blstm_211_while_lstm_211_while_cond_359788___redundant_placeholder0F
Blstm_211_while_lstm_211_while_cond_359788___redundant_placeholder1F
Blstm_211_while_lstm_211_while_cond_359788___redundant_placeholder2F
Blstm_211_while_lstm_211_while_cond_359788___redundant_placeholder3
lstm_211_while_identity

lstm_211/while/LessLesslstm_211_while_placeholder,lstm_211_while_less_lstm_211_strided_slice_1*
T0*
_output_shapes
: ]
lstm_211/while/IdentityIdentitylstm_211/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_211_while_identity lstm_211/while/Identity:output:0*(
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
while_cond_361165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361165___redundant_placeholder04
0while_while_cond_361165___redundant_placeholder14
0while_while_cond_361165___redundant_placeholder24
0while_while_cond_361165___redundant_placeholder3
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357617

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
Ğ
¸
)__inference_lstm_210_layer_call_fn_360029
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_357000|
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
J

D__inference_lstm_212_layer_call_and_return_conditional_losses_358349

inputs=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_358265*
condR
while_cond_358264*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8

D__inference_lstm_211_layer_call_and_return_conditional_losses_357541

inputs&
lstm_cell_58_357459:	dÈ&
lstm_cell_58_357461:	2È"
lstm_cell_58_357463:	È
identity˘$lstm_cell_58/StatefulPartitionedCall˘while;
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
$lstm_cell_58/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_58_357459lstm_cell_58_357461lstm_cell_58_357463*
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357413n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_58_357459lstm_cell_58_357461lstm_cell_58_357463*
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
while_body_357472*
condR
while_cond_357471*K
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
NoOpNoOp%^lstm_cell_58/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_58/StatefulPartitionedCall$lstm_cell_58/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
˙7
Ê
while_body_361782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_70_layer_call_fn_359137

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
I__inference_sequential_70_layer_call_and_return_conditional_losses_358374o
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
ÔJ

D__inference_lstm_212_layer_call_and_return_conditional_losses_361580
inputs_0=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_361496*
condR
while_cond_361495*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_358810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358810___redundant_placeholder04
0while_while_cond_358810___redundant_placeholder14
0while_while_cond_358810___redundant_placeholder24
0while_while_cond_358810___redundant_placeholder3
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
while_body_358646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ë
ö
-__inference_lstm_cell_58_layer_call_fn_362000

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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357267o
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
è
ó
-__inference_lstm_cell_59_layer_call_fn_362115

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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357763o
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
8
?
while_body_360737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_210_while_cond_359649.
*lstm_210_while_lstm_210_while_loop_counter4
0lstm_210_while_lstm_210_while_maximum_iterations
lstm_210_while_placeholder 
lstm_210_while_placeholder_1 
lstm_210_while_placeholder_2 
lstm_210_while_placeholder_30
,lstm_210_while_less_lstm_210_strided_slice_1F
Blstm_210_while_lstm_210_while_cond_359649___redundant_placeholder0F
Blstm_210_while_lstm_210_while_cond_359649___redundant_placeholder1F
Blstm_210_while_lstm_210_while_cond_359649___redundant_placeholder2F
Blstm_210_while_lstm_210_while_cond_359649___redundant_placeholder3
lstm_210_while_identity

lstm_210/while/LessLesslstm_210_while_placeholder,lstm_210_while_less_lstm_210_strided_slice_1*
T0*
_output_shapes
: ]
lstm_210/while/IdentityIdentitylstm_210/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_210_while_identity lstm_210/while/Identity:output:0*(
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

lstm_210_while_body_359223.
*lstm_210_while_lstm_210_while_loop_counter4
0lstm_210_while_lstm_210_while_maximum_iterations
lstm_210_while_placeholder 
lstm_210_while_placeholder_1 
lstm_210_while_placeholder_2 
lstm_210_while_placeholder_3-
)lstm_210_while_lstm_210_strided_slice_1_0i
elstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0:	Q
>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dL
=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0:	
lstm_210_while_identity
lstm_210_while_identity_1
lstm_210_while_identity_2
lstm_210_while_identity_3
lstm_210_while_identity_4
lstm_210_while_identity_5+
'lstm_210_while_lstm_210_strided_slice_1g
clstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensorM
:lstm_210_while_lstm_cell_57_matmul_readvariableop_resource:	O
<lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource:	dJ
;lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource:	˘2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp˘1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp˘3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp
@lstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_210/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0lstm_210_while_placeholderIlstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_210/while/lstm_cell_57/MatMulMatMul9lstm_210/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_210/while/lstm_cell_57/MatMul_1MatMullstm_210_while_placeholder_2;lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_210/while/lstm_cell_57/addAddV2,lstm_210/while/lstm_cell_57/MatMul:product:0.lstm_210/while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_210/while/lstm_cell_57/BiasAddBiasAdd#lstm_210/while/lstm_cell_57/add:z:0:lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_210/while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_210/while/lstm_cell_57/splitSplit4lstm_210/while/lstm_cell_57/split/split_dim:output:0,lstm_210/while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_210/while/lstm_cell_57/SigmoidSigmoid*lstm_210/while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_210/while/lstm_cell_57/Sigmoid_1Sigmoid*lstm_210/while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_210/while/lstm_cell_57/mulMul)lstm_210/while/lstm_cell_57/Sigmoid_1:y:0lstm_210_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_210/while/lstm_cell_57/ReluRelu*lstm_210/while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_210/while/lstm_cell_57/mul_1Mul'lstm_210/while/lstm_cell_57/Sigmoid:y:0.lstm_210/while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_210/while/lstm_cell_57/add_1AddV2#lstm_210/while/lstm_cell_57/mul:z:0%lstm_210/while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_210/while/lstm_cell_57/Sigmoid_2Sigmoid*lstm_210/while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_210/while/lstm_cell_57/Relu_1Relu%lstm_210/while/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_210/while/lstm_cell_57/mul_2Mul)lstm_210/while/lstm_cell_57/Sigmoid_2:y:00lstm_210/while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_210/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_210_while_placeholder_1lstm_210_while_placeholder%lstm_210/while/lstm_cell_57/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_210/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_210/while/addAddV2lstm_210_while_placeholderlstm_210/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_210/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_210/while/add_1AddV2*lstm_210_while_lstm_210_while_loop_counterlstm_210/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_210/while/IdentityIdentitylstm_210/while/add_1:z:0^lstm_210/while/NoOp*
T0*
_output_shapes
: 
lstm_210/while/Identity_1Identity0lstm_210_while_lstm_210_while_maximum_iterations^lstm_210/while/NoOp*
T0*
_output_shapes
: t
lstm_210/while/Identity_2Identitylstm_210/while/add:z:0^lstm_210/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_210/while/Identity_3IdentityClstm_210/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_210/while/NoOp*
T0*
_output_shapes
: 
lstm_210/while/Identity_4Identity%lstm_210/while/lstm_cell_57/mul_2:z:0^lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/while/Identity_5Identity%lstm_210/while/lstm_cell_57/add_1:z:0^lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_210/while/NoOpNoOp3^lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2^lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp4^lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_210_while_identity lstm_210/while/Identity:output:0"?
lstm_210_while_identity_1"lstm_210/while/Identity_1:output:0"?
lstm_210_while_identity_2"lstm_210/while/Identity_2:output:0"?
lstm_210_while_identity_3"lstm_210/while/Identity_3:output:0"?
lstm_210_while_identity_4"lstm_210/while/Identity_4:output:0"?
lstm_210_while_identity_5"lstm_210/while/Identity_5:output:0"T
'lstm_210_while_lstm_210_strided_slice_1)lstm_210_while_lstm_210_strided_slice_1_0"|
;lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0"~
<lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0"z
:lstm_210_while_lstm_cell_57_matmul_readvariableop_resource<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0"Ì
clstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensorelstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2f
1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp2j
3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_357965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_211_while_body_359362.
*lstm_211_while_lstm_211_while_loop_counter4
0lstm_211_while_lstm_211_while_maximum_iterations
lstm_211_while_placeholder 
lstm_211_while_placeholder_1 
lstm_211_while_placeholder_2 
lstm_211_while_placeholder_3-
)lstm_211_while_lstm_211_strided_slice_1_0i
elstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈQ
>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
lstm_211_while_identity
lstm_211_while_identity_1
lstm_211_while_identity_2
lstm_211_while_identity_3
lstm_211_while_identity_4
lstm_211_while_identity_5+
'lstm_211_while_lstm_211_strided_slice_1g
clstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensorM
:lstm_211_while_lstm_cell_58_matmul_readvariableop_resource:	dÈO
<lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈJ
;lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource:	È˘2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp˘1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp˘3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp
@lstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_211/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0lstm_211_while_placeholderIlstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_211/while/lstm_cell_58/MatMulMatMul9lstm_211/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_211/while/lstm_cell_58/MatMul_1MatMullstm_211_while_placeholder_2;lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_211/while/lstm_cell_58/addAddV2,lstm_211/while/lstm_cell_58/MatMul:product:0.lstm_211/while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_211/while/lstm_cell_58/BiasAddBiasAdd#lstm_211/while/lstm_cell_58/add:z:0:lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_211/while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_211/while/lstm_cell_58/splitSplit4lstm_211/while/lstm_cell_58/split/split_dim:output:0,lstm_211/while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_211/while/lstm_cell_58/SigmoidSigmoid*lstm_211/while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_211/while/lstm_cell_58/Sigmoid_1Sigmoid*lstm_211/while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_211/while/lstm_cell_58/mulMul)lstm_211/while/lstm_cell_58/Sigmoid_1:y:0lstm_211_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_211/while/lstm_cell_58/ReluRelu*lstm_211/while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_211/while/lstm_cell_58/mul_1Mul'lstm_211/while/lstm_cell_58/Sigmoid:y:0.lstm_211/while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_211/while/lstm_cell_58/add_1AddV2#lstm_211/while/lstm_cell_58/mul:z:0%lstm_211/while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_211/while/lstm_cell_58/Sigmoid_2Sigmoid*lstm_211/while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_211/while/lstm_cell_58/Relu_1Relu%lstm_211/while/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_211/while/lstm_cell_58/mul_2Mul)lstm_211/while/lstm_cell_58/Sigmoid_2:y:00lstm_211/while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_211/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_211_while_placeholder_1lstm_211_while_placeholder%lstm_211/while/lstm_cell_58/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_211/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_211/while/addAddV2lstm_211_while_placeholderlstm_211/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_211/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_211/while/add_1AddV2*lstm_211_while_lstm_211_while_loop_counterlstm_211/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_211/while/IdentityIdentitylstm_211/while/add_1:z:0^lstm_211/while/NoOp*
T0*
_output_shapes
: 
lstm_211/while/Identity_1Identity0lstm_211_while_lstm_211_while_maximum_iterations^lstm_211/while/NoOp*
T0*
_output_shapes
: t
lstm_211/while/Identity_2Identitylstm_211/while/add:z:0^lstm_211/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_211/while/Identity_3IdentityClstm_211/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_211/while/NoOp*
T0*
_output_shapes
: 
lstm_211/while/Identity_4Identity%lstm_211/while/lstm_cell_58/mul_2:z:0^lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/while/Identity_5Identity%lstm_211/while/lstm_cell_58/add_1:z:0^lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_211/while/NoOpNoOp3^lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2^lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp4^lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_211_while_identity lstm_211/while/Identity:output:0"?
lstm_211_while_identity_1"lstm_211/while/Identity_1:output:0"?
lstm_211_while_identity_2"lstm_211/while/Identity_2:output:0"?
lstm_211_while_identity_3"lstm_211/while/Identity_3:output:0"?
lstm_211_while_identity_4"lstm_211/while/Identity_4:output:0"?
lstm_211_while_identity_5"lstm_211/while/Identity_5:output:0"T
'lstm_211_while_lstm_211_strided_slice_1)lstm_211_while_lstm_211_strided_slice_1_0"|
;lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0"~
<lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0"z
:lstm_211_while_lstm_cell_58_matmul_readvariableop_resource<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0"Ì
clstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensorelstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2f
1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp2j
3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__traced_restore_362452
file_prefix2
 assignvariableop_dense_70_kernel:
.
 assignvariableop_1_dense_70_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_210_lstm_cell_210_kernel:	M
:assignvariableop_8_lstm_210_lstm_cell_210_recurrent_kernel:	d=
.assignvariableop_9_lstm_210_lstm_cell_210_bias:	D
1assignvariableop_10_lstm_211_lstm_cell_211_kernel:	dÈN
;assignvariableop_11_lstm_211_lstm_cell_211_recurrent_kernel:	2È>
/assignvariableop_12_lstm_211_lstm_cell_211_bias:	ÈC
1assignvariableop_13_lstm_212_lstm_cell_212_kernel:2(M
;assignvariableop_14_lstm_212_lstm_cell_212_recurrent_kernel:
(=
/assignvariableop_15_lstm_212_lstm_cell_212_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_70_kernel_m:
6
(assignvariableop_19_adam_dense_70_bias_m:K
8assignvariableop_20_adam_lstm_210_lstm_cell_210_kernel_m:	U
Bassignvariableop_21_adam_lstm_210_lstm_cell_210_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_210_lstm_cell_210_bias_m:	K
8assignvariableop_23_adam_lstm_211_lstm_cell_211_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_211_lstm_cell_211_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_211_lstm_cell_211_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_212_lstm_cell_212_kernel_m:2(T
Bassignvariableop_27_adam_lstm_212_lstm_cell_212_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_212_lstm_cell_212_bias_m:(<
*assignvariableop_29_adam_dense_70_kernel_v:
6
(assignvariableop_30_adam_dense_70_bias_v:K
8assignvariableop_31_adam_lstm_210_lstm_cell_210_kernel_v:	U
Bassignvariableop_32_adam_lstm_210_lstm_cell_210_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_210_lstm_cell_210_bias_v:	K
8assignvariableop_34_adam_lstm_211_lstm_cell_211_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_211_lstm_cell_211_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_211_lstm_cell_211_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_212_lstm_cell_212_kernel_v:2(T
Bassignvariableop_38_adam_lstm_212_lstm_cell_212_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_212_lstm_cell_212_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_70_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_70_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_210_lstm_cell_210_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_210_lstm_cell_210_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_210_lstm_cell_210_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_211_lstm_cell_211_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_211_lstm_cell_211_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_211_lstm_cell_211_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_212_lstm_cell_212_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_212_lstm_cell_212_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_212_lstm_cell_212_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_70_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_70_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_210_lstm_cell_210_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_210_lstm_cell_210_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_210_lstm_cell_210_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_211_lstm_cell_211_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_211_lstm_cell_211_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_211_lstm_cell_211_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_212_lstm_cell_212_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_212_lstm_cell_212_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_212_lstm_cell_212_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_70_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_70_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_210_lstm_cell_210_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_210_lstm_cell_210_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_210_lstm_cell_210_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_211_lstm_cell_211_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_211_lstm_cell_211_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_211_lstm_cell_211_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_212_lstm_cell_212_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_212_lstm_cell_212_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_212_lstm_cell_212_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
ó
I__inference_sequential_70_layer_call_and_return_conditional_losses_359045
lstm_210_input"
lstm_210_359018:	"
lstm_210_359020:	d
lstm_210_359022:	"
lstm_211_359025:	dÈ"
lstm_211_359027:	2È
lstm_211_359029:	È!
lstm_212_359032:2(!
lstm_212_359034:
(
lstm_212_359036:(!
dense_70_359039:

dense_70_359041:
identity˘ dense_70/StatefulPartitionedCall˘ lstm_210/StatefulPartitionedCall˘ lstm_211/StatefulPartitionedCall˘ lstm_212/StatefulPartitionedCall
 lstm_210/StatefulPartitionedCallStatefulPartitionedCalllstm_210_inputlstm_210_359018lstm_210_359020lstm_210_359022*
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358049Ş
 lstm_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_210/StatefulPartitionedCall:output:0lstm_211_359025lstm_211_359027lstm_211_359029*
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358199Ĥ
 lstm_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_211/StatefulPartitionedCall:output:0lstm_212_359032lstm_212_359034lstm_212_359036*
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358349
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)lstm_212/StatefulPartitionedCall:output:0dense_70_359039dense_70_359041*
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
D__inference_dense_70_layer_call_and_return_conditional_losses_358367x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_70/StatefulPartitionedCall!^lstm_210/StatefulPartitionedCall!^lstm_211/StatefulPartitionedCall!^lstm_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 lstm_210/StatefulPartitionedCall lstm_210/StatefulPartitionedCall2D
 lstm_211/StatefulPartitionedCall lstm_211/StatefulPartitionedCall2D
 lstm_212/StatefulPartitionedCall lstm_212/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_210_input
ò

˘
.__inference_sequential_70_layer_call_fn_358399
lstm_210_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_358374o
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
_user_specified_namelstm_210_input
¤J

D__inference_lstm_210_layer_call_and_return_conditional_losses_360491

inputs>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_360407*
condR
while_cond_360406*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_361023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_358811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_358115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
áW

__inference__traced_save_362322
file_prefix.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_210_lstm_cell_210_kernel_read_readvariableopF
Bsavev2_lstm_210_lstm_cell_210_recurrent_kernel_read_readvariableop:
6savev2_lstm_210_lstm_cell_210_bias_read_readvariableop<
8savev2_lstm_211_lstm_cell_211_kernel_read_readvariableopF
Bsavev2_lstm_211_lstm_cell_211_recurrent_kernel_read_readvariableop:
6savev2_lstm_211_lstm_cell_211_bias_read_readvariableop<
8savev2_lstm_212_lstm_cell_212_kernel_read_readvariableopF
Bsavev2_lstm_212_lstm_cell_212_recurrent_kernel_read_readvariableop:
6savev2_lstm_212_lstm_cell_212_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_70_kernel_m_read_readvariableop3
/savev2_adam_dense_70_bias_m_read_readvariableopC
?savev2_adam_lstm_210_lstm_cell_210_kernel_m_read_readvariableopM
Isavev2_adam_lstm_210_lstm_cell_210_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_210_lstm_cell_210_bias_m_read_readvariableopC
?savev2_adam_lstm_211_lstm_cell_211_kernel_m_read_readvariableopM
Isavev2_adam_lstm_211_lstm_cell_211_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_211_lstm_cell_211_bias_m_read_readvariableopC
?savev2_adam_lstm_212_lstm_cell_212_kernel_m_read_readvariableopM
Isavev2_adam_lstm_212_lstm_cell_212_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_212_lstm_cell_212_bias_m_read_readvariableop5
1savev2_adam_dense_70_kernel_v_read_readvariableop3
/savev2_adam_dense_70_bias_v_read_readvariableopC
?savev2_adam_lstm_210_lstm_cell_210_kernel_v_read_readvariableopM
Isavev2_adam_lstm_210_lstm_cell_210_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_210_lstm_cell_210_bias_v_read_readvariableopC
?savev2_adam_lstm_211_lstm_cell_211_kernel_v_read_readvariableopM
Isavev2_adam_lstm_211_lstm_cell_211_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_211_lstm_cell_211_bias_v_read_readvariableopC
?savev2_adam_lstm_212_lstm_cell_212_kernel_v_read_readvariableopM
Isavev2_adam_lstm_212_lstm_cell_212_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_212_lstm_cell_212_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_210_lstm_cell_210_kernel_read_readvariableopBsavev2_lstm_210_lstm_cell_210_recurrent_kernel_read_readvariableop6savev2_lstm_210_lstm_cell_210_bias_read_readvariableop8savev2_lstm_211_lstm_cell_211_kernel_read_readvariableopBsavev2_lstm_211_lstm_cell_211_recurrent_kernel_read_readvariableop6savev2_lstm_211_lstm_cell_211_bias_read_readvariableop8savev2_lstm_212_lstm_cell_212_kernel_read_readvariableopBsavev2_lstm_212_lstm_cell_212_recurrent_kernel_read_readvariableop6savev2_lstm_212_lstm_cell_212_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_70_kernel_m_read_readvariableop/savev2_adam_dense_70_bias_m_read_readvariableop?savev2_adam_lstm_210_lstm_cell_210_kernel_m_read_readvariableopIsavev2_adam_lstm_210_lstm_cell_210_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_210_lstm_cell_210_bias_m_read_readvariableop?savev2_adam_lstm_211_lstm_cell_211_kernel_m_read_readvariableopIsavev2_adam_lstm_211_lstm_cell_211_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_211_lstm_cell_211_bias_m_read_readvariableop?savev2_adam_lstm_212_lstm_cell_212_kernel_m_read_readvariableopIsavev2_adam_lstm_212_lstm_cell_212_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_212_lstm_cell_212_bias_m_read_readvariableop1savev2_adam_dense_70_kernel_v_read_readvariableop/savev2_adam_dense_70_bias_v_read_readvariableop?savev2_adam_lstm_210_lstm_cell_210_kernel_v_read_readvariableopIsavev2_adam_lstm_210_lstm_cell_210_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_210_lstm_cell_210_bias_v_read_readvariableop?savev2_adam_lstm_211_lstm_cell_211_kernel_v_read_readvariableopIsavev2_adam_lstm_211_lstm_cell_211_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_211_lstm_cell_211_bias_v_read_readvariableop?savev2_adam_lstm_212_lstm_cell_212_kernel_v_read_readvariableopIsavev2_adam_lstm_212_lstm_cell_212_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_212_lstm_cell_212_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
²

÷
lstm_211_while_cond_359361.
*lstm_211_while_lstm_211_while_loop_counter4
0lstm_211_while_lstm_211_while_maximum_iterations
lstm_211_while_placeholder 
lstm_211_while_placeholder_1 
lstm_211_while_placeholder_2 
lstm_211_while_placeholder_30
,lstm_211_while_less_lstm_211_strided_slice_1F
Blstm_211_while_lstm_211_while_cond_359361___redundant_placeholder0F
Blstm_211_while_lstm_211_while_cond_359361___redundant_placeholder1F
Blstm_211_while_lstm_211_while_cond_359361___redundant_placeholder2F
Blstm_211_while_lstm_211_while_cond_359361___redundant_placeholder3
lstm_211_while_identity

lstm_211/while/LessLesslstm_211_while_placeholder,lstm_211_while_less_lstm_211_strided_slice_1*
T0*
_output_shapes
: ]
lstm_211/while/IdentityIdentitylstm_211/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_211_while_identity lstm_211/while/Identity:output:0*(
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
ÎB
ê

lstm_212_while_body_359501.
*lstm_212_while_lstm_212_while_loop_counter4
0lstm_212_while_lstm_212_while_maximum_iterations
lstm_212_while_placeholder 
lstm_212_while_placeholder_1 
lstm_212_while_placeholder_2 
lstm_212_while_placeholder_3-
)lstm_212_while_lstm_212_strided_slice_1_0i
elstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0:2(P
>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(K
=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0:(
lstm_212_while_identity
lstm_212_while_identity_1
lstm_212_while_identity_2
lstm_212_while_identity_3
lstm_212_while_identity_4
lstm_212_while_identity_5+
'lstm_212_while_lstm_212_strided_slice_1g
clstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensorL
:lstm_212_while_lstm_cell_59_matmul_readvariableop_resource:2(N
<lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource:
(I
;lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource:(˘2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp˘1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp˘3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp
@lstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_212/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0lstm_212_while_placeholderIlstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_212/while/lstm_cell_59/MatMulMatMul9lstm_212/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_212/while/lstm_cell_59/MatMul_1MatMullstm_212_while_placeholder_2;lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_212/while/lstm_cell_59/addAddV2,lstm_212/while/lstm_cell_59/MatMul:product:0.lstm_212/while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_212/while/lstm_cell_59/BiasAddBiasAdd#lstm_212/while/lstm_cell_59/add:z:0:lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_212/while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_212/while/lstm_cell_59/splitSplit4lstm_212/while/lstm_cell_59/split/split_dim:output:0,lstm_212/while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_212/while/lstm_cell_59/SigmoidSigmoid*lstm_212/while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_212/while/lstm_cell_59/Sigmoid_1Sigmoid*lstm_212/while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_212/while/lstm_cell_59/mulMul)lstm_212/while/lstm_cell_59/Sigmoid_1:y:0lstm_212_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_212/while/lstm_cell_59/ReluRelu*lstm_212/while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_212/while/lstm_cell_59/mul_1Mul'lstm_212/while/lstm_cell_59/Sigmoid:y:0.lstm_212/while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_212/while/lstm_cell_59/add_1AddV2#lstm_212/while/lstm_cell_59/mul:z:0%lstm_212/while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_212/while/lstm_cell_59/Sigmoid_2Sigmoid*lstm_212/while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_212/while/lstm_cell_59/Relu_1Relu%lstm_212/while/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_212/while/lstm_cell_59/mul_2Mul)lstm_212/while/lstm_cell_59/Sigmoid_2:y:00lstm_212/while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_212/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_212_while_placeholder_1lstm_212_while_placeholder%lstm_212/while/lstm_cell_59/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_212/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_212/while/addAddV2lstm_212_while_placeholderlstm_212/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_212/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_212/while/add_1AddV2*lstm_212_while_lstm_212_while_loop_counterlstm_212/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_212/while/IdentityIdentitylstm_212/while/add_1:z:0^lstm_212/while/NoOp*
T0*
_output_shapes
: 
lstm_212/while/Identity_1Identity0lstm_212_while_lstm_212_while_maximum_iterations^lstm_212/while/NoOp*
T0*
_output_shapes
: t
lstm_212/while/Identity_2Identitylstm_212/while/add:z:0^lstm_212/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_212/while/Identity_3IdentityClstm_212/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_212/while/NoOp*
T0*
_output_shapes
: 
lstm_212/while/Identity_4Identity%lstm_212/while/lstm_cell_59/mul_2:z:0^lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/while/Identity_5Identity%lstm_212/while/lstm_cell_59/add_1:z:0^lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_212/while/NoOpNoOp3^lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2^lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp4^lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_212_while_identity lstm_212/while/Identity:output:0"?
lstm_212_while_identity_1"lstm_212/while/Identity_1:output:0"?
lstm_212_while_identity_2"lstm_212/while/Identity_2:output:0"?
lstm_212_while_identity_3"lstm_212/while/Identity_3:output:0"?
lstm_212_while_identity_4"lstm_212/while/Identity_4:output:0"?
lstm_212_while_identity_5"lstm_212/while/Identity_5:output:0"T
'lstm_212_while_lstm_212_strided_slice_1)lstm_212_while_lstm_212_strided_slice_1_0"|
;lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource=lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0"~
<lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource>lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0"z
:lstm_212_while_lstm_cell_59_matmul_readvariableop_resource<lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0"Ì
clstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensorelstm_212_while_tensorarrayv2read_tensorlistgetitem_lstm_212_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2f
1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp1lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp2j
3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp3lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(sequential_70_lstm_211_while_cond_356620J
Fsequential_70_lstm_211_while_sequential_70_lstm_211_while_loop_counterP
Lsequential_70_lstm_211_while_sequential_70_lstm_211_while_maximum_iterations,
(sequential_70_lstm_211_while_placeholder.
*sequential_70_lstm_211_while_placeholder_1.
*sequential_70_lstm_211_while_placeholder_2.
*sequential_70_lstm_211_while_placeholder_3L
Hsequential_70_lstm_211_while_less_sequential_70_lstm_211_strided_slice_1b
^sequential_70_lstm_211_while_sequential_70_lstm_211_while_cond_356620___redundant_placeholder0b
^sequential_70_lstm_211_while_sequential_70_lstm_211_while_cond_356620___redundant_placeholder1b
^sequential_70_lstm_211_while_sequential_70_lstm_211_while_cond_356620___redundant_placeholder2b
^sequential_70_lstm_211_while_sequential_70_lstm_211_while_cond_356620___redundant_placeholder3)
%sequential_70_lstm_211_while_identity
?
!sequential_70/lstm_211/while/LessLess(sequential_70_lstm_211_while_placeholderHsequential_70_lstm_211_while_less_sequential_70_lstm_211_strided_slice_1*
T0*
_output_shapes
: y
%sequential_70/lstm_211/while/IdentityIdentity%sequential_70/lstm_211/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_70_lstm_211_while_identity.sequential_70/lstm_211/while/Identity:output:0*(
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358199

inputs>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_358115*
condR
while_cond_358114*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
J

D__inference_lstm_212_layer_call_and_return_conditional_losses_361723

inputs=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_361639*
condR
while_cond_361638*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362081

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

ĥ
)__inference_lstm_211_layer_call_fn_360667

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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358199s
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
ÛB
?

lstm_210_while_body_359650.
*lstm_210_while_lstm_210_while_loop_counter4
0lstm_210_while_lstm_210_while_maximum_iterations
lstm_210_while_placeholder 
lstm_210_while_placeholder_1 
lstm_210_while_placeholder_2 
lstm_210_while_placeholder_3-
)lstm_210_while_lstm_210_strided_slice_1_0i
elstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0:	Q
>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dL
=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0:	
lstm_210_while_identity
lstm_210_while_identity_1
lstm_210_while_identity_2
lstm_210_while_identity_3
lstm_210_while_identity_4
lstm_210_while_identity_5+
'lstm_210_while_lstm_210_strided_slice_1g
clstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensorM
:lstm_210_while_lstm_cell_57_matmul_readvariableop_resource:	O
<lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource:	dJ
;lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource:	˘2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp˘1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp˘3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp
@lstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_210/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0lstm_210_while_placeholderIlstm_210/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_210/while/lstm_cell_57/MatMulMatMul9lstm_210/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_210/while/lstm_cell_57/MatMul_1MatMullstm_210_while_placeholder_2;lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_210/while/lstm_cell_57/addAddV2,lstm_210/while/lstm_cell_57/MatMul:product:0.lstm_210/while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_210/while/lstm_cell_57/BiasAddBiasAdd#lstm_210/while/lstm_cell_57/add:z:0:lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_210/while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_210/while/lstm_cell_57/splitSplit4lstm_210/while/lstm_cell_57/split/split_dim:output:0,lstm_210/while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_210/while/lstm_cell_57/SigmoidSigmoid*lstm_210/while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_210/while/lstm_cell_57/Sigmoid_1Sigmoid*lstm_210/while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_210/while/lstm_cell_57/mulMul)lstm_210/while/lstm_cell_57/Sigmoid_1:y:0lstm_210_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_210/while/lstm_cell_57/ReluRelu*lstm_210/while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_210/while/lstm_cell_57/mul_1Mul'lstm_210/while/lstm_cell_57/Sigmoid:y:0.lstm_210/while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_210/while/lstm_cell_57/add_1AddV2#lstm_210/while/lstm_cell_57/mul:z:0%lstm_210/while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_210/while/lstm_cell_57/Sigmoid_2Sigmoid*lstm_210/while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_210/while/lstm_cell_57/Relu_1Relu%lstm_210/while/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_210/while/lstm_cell_57/mul_2Mul)lstm_210/while/lstm_cell_57/Sigmoid_2:y:00lstm_210/while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_210/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_210_while_placeholder_1lstm_210_while_placeholder%lstm_210/while/lstm_cell_57/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_210/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_210/while/addAddV2lstm_210_while_placeholderlstm_210/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_210/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_210/while/add_1AddV2*lstm_210_while_lstm_210_while_loop_counterlstm_210/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_210/while/IdentityIdentitylstm_210/while/add_1:z:0^lstm_210/while/NoOp*
T0*
_output_shapes
: 
lstm_210/while/Identity_1Identity0lstm_210_while_lstm_210_while_maximum_iterations^lstm_210/while/NoOp*
T0*
_output_shapes
: t
lstm_210/while/Identity_2Identitylstm_210/while/add:z:0^lstm_210/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_210/while/Identity_3IdentityClstm_210/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_210/while/NoOp*
T0*
_output_shapes
: 
lstm_210/while/Identity_4Identity%lstm_210/while/lstm_cell_57/mul_2:z:0^lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/while/Identity_5Identity%lstm_210/while/lstm_cell_57/add_1:z:0^lstm_210/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_210/while/NoOpNoOp3^lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2^lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp4^lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_210_while_identity lstm_210/while/Identity:output:0"?
lstm_210_while_identity_1"lstm_210/while/Identity_1:output:0"?
lstm_210_while_identity_2"lstm_210/while/Identity_2:output:0"?
lstm_210_while_identity_3"lstm_210/while/Identity_3:output:0"?
lstm_210_while_identity_4"lstm_210/while/Identity_4:output:0"?
lstm_210_while_identity_5"lstm_210/while/Identity_5:output:0"T
'lstm_210_while_lstm_210_strided_slice_1)lstm_210_while_lstm_210_strided_slice_1_0"|
;lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource=lstm_210_while_lstm_cell_57_biasadd_readvariableop_resource_0"~
<lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource>lstm_210_while_lstm_cell_57_matmul_1_readvariableop_resource_0"z
:lstm_210_while_lstm_cell_57_matmul_readvariableop_resource<lstm_210_while_lstm_cell_57_matmul_readvariableop_resource_0"Ì
clstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensorelstm_210_while_tensorarrayv2read_tensorlistgetitem_lstm_210_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2lstm_210/while/lstm_cell_57/BiasAdd/ReadVariableOp2f
1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp1lstm_210/while/lstm_cell_57/MatMul/ReadVariableOp2j
3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp3lstm_210/while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_212_layer_call_fn_361283

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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358349o
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
D__inference_dense_70_layer_call_and_return_conditional_losses_361885

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
while_cond_361022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361022___redundant_placeholder04
0while_while_cond_361022___redundant_placeholder14
0while_while_cond_361022___redundant_placeholder24
0while_while_cond_361022___redundant_placeholder3
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
while_cond_358480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358480___redundant_placeholder04
0while_while_cond_358480___redundant_placeholder14
0while_while_cond_358480___redundant_placeholder24
0while_while_cond_358480___redundant_placeholder3
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
Ğ
ë
I__inference_sequential_70_layer_call_and_return_conditional_losses_358963

inputs"
lstm_210_358936:	"
lstm_210_358938:	d
lstm_210_358940:	"
lstm_211_358943:	dÈ"
lstm_211_358945:	2È
lstm_211_358947:	È!
lstm_212_358950:2(!
lstm_212_358952:
(
lstm_212_358954:(!
dense_70_358957:

dense_70_358959:
identity˘ dense_70/StatefulPartitionedCall˘ lstm_210/StatefulPartitionedCall˘ lstm_211/StatefulPartitionedCall˘ lstm_212/StatefulPartitionedCall
 lstm_210/StatefulPartitionedCallStatefulPartitionedCallinputslstm_210_358936lstm_210_358938lstm_210_358940*
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358895Ş
 lstm_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_210/StatefulPartitionedCall:output:0lstm_211_358943lstm_211_358945lstm_211_358947*
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_358730Ĥ
 lstm_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_211/StatefulPartitionedCall:output:0lstm_212_358950lstm_212_358952lstm_212_358954*
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358565
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)lstm_212/StatefulPartitionedCall:output:0dense_70_358957dense_70_358959*
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
D__inference_dense_70_layer_call_and_return_conditional_losses_358367x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_70/StatefulPartitionedCall!^lstm_210/StatefulPartitionedCall!^lstm_211/StatefulPartitionedCall!^lstm_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 lstm_210/StatefulPartitionedCall lstm_210/StatefulPartitionedCall2D
 lstm_211/StatefulPartitionedCall lstm_211/StatefulPartitionedCall2D
 lstm_212/StatefulPartitionedCall lstm_212/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĉ"
?
while_body_357122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_57_357146_0:	.
while_lstm_cell_57_357148_0:	d*
while_lstm_cell_57_357150_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_57_357146:	,
while_lstm_cell_57_357148:	d(
while_lstm_cell_57_357150:	˘*while/lstm_cell_57/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_57/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_57_357146_0while_lstm_cell_57_357148_0while_lstm_cell_57_357150_0*
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_357063Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_57/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_57/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_57/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_57_357146while_lstm_cell_57_357146_0"8
while_lstm_cell_57_357148while_lstm_cell_57_357148_0"8
while_lstm_cell_57_357150while_lstm_cell_57_357150_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_57/StatefulPartitionedCall*while/lstm_cell_57/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_360264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_357281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_58_357305_0:	dÈ.
while_lstm_cell_58_357307_0:	2È*
while_lstm_cell_58_357309_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_58_357305:	dÈ,
while_lstm_cell_58_357307:	2È(
while_lstm_cell_58_357309:	È˘*while/lstm_cell_58/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_58/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_58_357305_0while_lstm_cell_58_357307_0while_lstm_cell_58_357309_0*
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357267Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_58/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_58/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_58/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_58_357305while_lstm_cell_58_357305_0"8
while_lstm_cell_58_357307while_lstm_cell_58_357307_0"8
while_lstm_cell_58_357309while_lstm_cell_58_357309_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_58/StatefulPartitionedCall*while/lstm_cell_58/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_357350

inputs&
lstm_cell_58_357268:	dÈ&
lstm_cell_58_357270:	2È"
lstm_cell_58_357272:	È
identity˘$lstm_cell_58/StatefulPartitionedCall˘while;
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
$lstm_cell_58/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_58_357268lstm_cell_58_357270lstm_cell_58_357272*
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357267n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_58_357268lstm_cell_58_357270lstm_cell_58_357272*
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
while_body_357281*
condR
while_cond_357280*K
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
NoOpNoOp%^lstm_cell_58/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_58/StatefulPartitionedCall$lstm_cell_58/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_360880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_58_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_58_biasadd_readvariableop_resource:	È˘)while/lstm_cell_58/BiasAdd/ReadVariableOp˘(while/lstm_cell_58/MatMul/ReadVariableOp˘*while/lstm_cell_58/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_58/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_58/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_58/addAddV2#while/lstm_cell_58/MatMul:product:0%while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_58/BiasAddBiasAddwhile/lstm_cell_58/add:z:01while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_58/splitSplit+while/lstm_cell_58/split/split_dim:output:0#while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_58/SigmoidSigmoid!while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_1Sigmoid!while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mulMul while/lstm_cell_58/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_58/ReluRelu!while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_1Mulwhile/lstm_cell_58/Sigmoid:y:0%while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/add_1AddV2while/lstm_cell_58/mul:z:0while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_58/Sigmoid_2Sigmoid!while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_58/Relu_1Reluwhile/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_58/mul_2Mul while/lstm_cell_58/Sigmoid_2:y:0'while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_58/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_58/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_58/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_58/BiasAdd/ReadVariableOp)^while/lstm_cell_58/MatMul/ReadVariableOp+^while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_58_biasadd_readvariableop_resource4while_lstm_cell_58_biasadd_readvariableop_resource_0"l
3while_lstm_cell_58_matmul_1_readvariableop_resource5while_lstm_cell_58_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_58_matmul_readvariableop_resource3while_lstm_cell_58_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_58/BiasAdd/ReadVariableOp)while/lstm_cell_58/BiasAdd/ReadVariableOp2T
(while/lstm_cell_58/MatMul/ReadVariableOp(while/lstm_cell_58/MatMul/ReadVariableOp2X
*while/lstm_cell_58/MatMul_1/ReadVariableOp*while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361983

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
while_cond_357821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357821___redundant_placeholder04
0while_while_cond_357821___redundant_placeholder14
0while_while_cond_357821___redundant_placeholder24
0while_while_cond_357821___redundant_placeholder3
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361866

inputs=
+lstm_cell_59_matmul_readvariableop_resource:2(?
-lstm_cell_59_matmul_1_readvariableop_resource:
(:
,lstm_cell_59_biasadd_readvariableop_resource:(
identity˘#lstm_cell_59/BiasAdd/ReadVariableOp˘"lstm_cell_59/MatMul/ReadVariableOp˘$lstm_cell_59/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_59/MatMul/ReadVariableOpReadVariableOp+lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_59/MatMulMatMulstrided_slice_2:output:0*lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_59/MatMul_1MatMulzeros:output:0,lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_59/addAddV2lstm_cell_59/MatMul:product:0lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_59/BiasAddBiasAddlstm_cell_59/add:z:0+lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_59/splitSplit%lstm_cell_59/split/split_dim:output:0lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_59/SigmoidSigmoidlstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_1Sigmoidlstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_59/mulMullstm_cell_59/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_59/ReluRelulstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_1Mullstm_cell_59/Sigmoid:y:0lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_59/add_1AddV2lstm_cell_59/mul:z:0lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_59/Sigmoid_2Sigmoidlstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_59/Relu_1Relulstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_59/mul_2Mullstm_cell_59/Sigmoid_2:y:0!lstm_cell_59/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_59_matmul_readvariableop_resource-lstm_cell_59_matmul_1_readvariableop_resource,lstm_cell_59_biasadd_readvariableop_resource*
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
while_body_361782*
condR
while_cond_361781*K
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
NoOpNoOp$^lstm_cell_59/BiasAdd/ReadVariableOp#^lstm_cell_59/MatMul/ReadVariableOp%^lstm_cell_59/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_59/BiasAdd/ReadVariableOp#lstm_cell_59/BiasAdd/ReadVariableOp2H
"lstm_cell_59/MatMul/ReadVariableOp"lstm_cell_59/MatMul/ReadVariableOp2L
$lstm_cell_59/MatMul_1/ReadVariableOp$lstm_cell_59/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_211_while_body_359789.
*lstm_211_while_lstm_211_while_loop_counter4
0lstm_211_while_lstm_211_while_maximum_iterations
lstm_211_while_placeholder 
lstm_211_while_placeholder_1 
lstm_211_while_placeholder_2 
lstm_211_while_placeholder_3-
)lstm_211_while_lstm_211_strided_slice_1_0i
elstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈQ
>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0:	È
lstm_211_while_identity
lstm_211_while_identity_1
lstm_211_while_identity_2
lstm_211_while_identity_3
lstm_211_while_identity_4
lstm_211_while_identity_5+
'lstm_211_while_lstm_211_strided_slice_1g
clstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensorM
:lstm_211_while_lstm_cell_58_matmul_readvariableop_resource:	dÈO
<lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈJ
;lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource:	È˘2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp˘1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp˘3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp
@lstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_211/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0lstm_211_while_placeholderIlstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_211/while/lstm_cell_58/MatMulMatMul9lstm_211/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_211/while/lstm_cell_58/MatMul_1MatMullstm_211_while_placeholder_2;lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_211/while/lstm_cell_58/addAddV2,lstm_211/while/lstm_cell_58/MatMul:product:0.lstm_211/while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_211/while/lstm_cell_58/BiasAddBiasAdd#lstm_211/while/lstm_cell_58/add:z:0:lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_211/while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_211/while/lstm_cell_58/splitSplit4lstm_211/while/lstm_cell_58/split/split_dim:output:0,lstm_211/while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_211/while/lstm_cell_58/SigmoidSigmoid*lstm_211/while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_211/while/lstm_cell_58/Sigmoid_1Sigmoid*lstm_211/while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_211/while/lstm_cell_58/mulMul)lstm_211/while/lstm_cell_58/Sigmoid_1:y:0lstm_211_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_211/while/lstm_cell_58/ReluRelu*lstm_211/while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_211/while/lstm_cell_58/mul_1Mul'lstm_211/while/lstm_cell_58/Sigmoid:y:0.lstm_211/while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_211/while/lstm_cell_58/add_1AddV2#lstm_211/while/lstm_cell_58/mul:z:0%lstm_211/while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_211/while/lstm_cell_58/Sigmoid_2Sigmoid*lstm_211/while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_211/while/lstm_cell_58/Relu_1Relu%lstm_211/while/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_211/while/lstm_cell_58/mul_2Mul)lstm_211/while/lstm_cell_58/Sigmoid_2:y:00lstm_211/while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_211/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_211_while_placeholder_1lstm_211_while_placeholder%lstm_211/while/lstm_cell_58/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_211/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_211/while/addAddV2lstm_211_while_placeholderlstm_211/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_211/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_211/while/add_1AddV2*lstm_211_while_lstm_211_while_loop_counterlstm_211/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_211/while/IdentityIdentitylstm_211/while/add_1:z:0^lstm_211/while/NoOp*
T0*
_output_shapes
: 
lstm_211/while/Identity_1Identity0lstm_211_while_lstm_211_while_maximum_iterations^lstm_211/while/NoOp*
T0*
_output_shapes
: t
lstm_211/while/Identity_2Identitylstm_211/while/add:z:0^lstm_211/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_211/while/Identity_3IdentityClstm_211/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_211/while/NoOp*
T0*
_output_shapes
: 
lstm_211/while/Identity_4Identity%lstm_211/while/lstm_cell_58/mul_2:z:0^lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/while/Identity_5Identity%lstm_211/while/lstm_cell_58/add_1:z:0^lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_211/while/NoOpNoOp3^lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2^lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp4^lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_211_while_identity lstm_211/while/Identity:output:0"?
lstm_211_while_identity_1"lstm_211/while/Identity_1:output:0"?
lstm_211_while_identity_2"lstm_211/while/Identity_2:output:0"?
lstm_211_while_identity_3"lstm_211/while/Identity_3:output:0"?
lstm_211_while_identity_4"lstm_211/while/Identity_4:output:0"?
lstm_211_while_identity_5"lstm_211/while/Identity_5:output:0"T
'lstm_211_while_lstm_211_strided_slice_1)lstm_211_while_lstm_211_strided_slice_1_0"|
;lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource=lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0"~
<lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource>lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0"z
:lstm_211_while_lstm_cell_58_matmul_readvariableop_resource<lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0"Ì
clstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensorelstm_211_while_tensorarrayv2read_tensorlistgetitem_lstm_211_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2f
1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp1lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp2j
3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp3lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_212_while_cond_359927.
*lstm_212_while_lstm_212_while_loop_counter4
0lstm_212_while_lstm_212_while_maximum_iterations
lstm_212_while_placeholder 
lstm_212_while_placeholder_1 
lstm_212_while_placeholder_2 
lstm_212_while_placeholder_30
,lstm_212_while_less_lstm_212_strided_slice_1F
Blstm_212_while_lstm_212_while_cond_359927___redundant_placeholder0F
Blstm_212_while_lstm_212_while_cond_359927___redundant_placeholder1F
Blstm_212_while_lstm_212_while_cond_359927___redundant_placeholder2F
Blstm_212_while_lstm_212_while_cond_359927___redundant_placeholder3
lstm_212_while_identity

lstm_212/while/LessLesslstm_212_while_placeholder,lstm_212_while_less_lstm_212_strided_slice_1*
T0*
_output_shapes
: ]
lstm_212/while/IdentityIdentitylstm_212/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_212_while_identity lstm_212/while/Identity:output:0*(
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
²

÷
lstm_210_while_cond_359222.
*lstm_210_while_lstm_210_while_loop_counter4
0lstm_210_while_lstm_210_while_maximum_iterations
lstm_210_while_placeholder 
lstm_210_while_placeholder_1 
lstm_210_while_placeholder_2 
lstm_210_while_placeholder_30
,lstm_210_while_less_lstm_210_strided_slice_1F
Blstm_210_while_lstm_210_while_cond_359222___redundant_placeholder0F
Blstm_210_while_lstm_210_while_cond_359222___redundant_placeholder1F
Blstm_210_while_lstm_210_while_cond_359222___redundant_placeholder2F
Blstm_210_while_lstm_210_while_cond_359222___redundant_placeholder3
lstm_210_while_identity

lstm_210/while/LessLesslstm_210_while_placeholder,lstm_210_while_less_lstm_210_strided_slice_1*
T0*
_output_shapes
: ]
lstm_210/while/IdentityIdentitylstm_210/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_210_while_identity lstm_210/while/Identity:output:0*(
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_357191

inputs&
lstm_cell_57_357109:	&
lstm_cell_57_357111:	d"
lstm_cell_57_357113:	
identity˘$lstm_cell_57/StatefulPartitionedCall˘while;
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
$lstm_cell_57/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_57_357109lstm_cell_57_357111lstm_cell_57_357113*
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_357063n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_57_357109lstm_cell_57_357111lstm_cell_57_357113*
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
while_body_357122*
condR
while_cond_357121*K
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
NoOpNoOp%^lstm_cell_57/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_57/StatefulPartitionedCall$lstm_cell_57/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
âJ

D__inference_lstm_211_layer_call_and_return_conditional_losses_360821
inputs_0>
+lstm_cell_58_matmul_readvariableop_resource:	dÈ@
-lstm_cell_58_matmul_1_readvariableop_resource:	2È;
,lstm_cell_58_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_58/BiasAdd/ReadVariableOp˘"lstm_cell_58/MatMul/ReadVariableOp˘$lstm_cell_58/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_58/MatMul/ReadVariableOpReadVariableOp+lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_58/MatMulMatMulstrided_slice_2:output:0*lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_58/MatMul_1MatMulzeros:output:0,lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_58/addAddV2lstm_cell_58/MatMul:product:0lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_58/BiasAddBiasAddlstm_cell_58/add:z:0+lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_58/splitSplit%lstm_cell_58/split/split_dim:output:0lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_58/SigmoidSigmoidlstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_1Sigmoidlstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_58/mulMullstm_cell_58/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_58/ReluRelulstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_1Mullstm_cell_58/Sigmoid:y:0lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_58/add_1AddV2lstm_cell_58/mul:z:0lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_58/Sigmoid_2Sigmoidlstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_58/Relu_1Relulstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_58/mul_2Mullstm_cell_58/Sigmoid_2:y:0!lstm_cell_58/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_58_matmul_readvariableop_resource-lstm_cell_58_matmul_1_readvariableop_resource,lstm_cell_58_biasadd_readvariableop_resource*
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
while_body_360737*
condR
while_cond_360736*K
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
NoOpNoOp$^lstm_cell_58/BiasAdd/ReadVariableOp#^lstm_cell_58/MatMul/ReadVariableOp%^lstm_cell_58/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_58/BiasAdd/ReadVariableOp#lstm_cell_58/BiasAdd/ReadVariableOp2H
"lstm_cell_58/MatMul/ReadVariableOp"lstm_cell_58/MatMul/ReadVariableOp2L
$lstm_cell_58/MatMul_1/ReadVariableOp$lstm_cell_58/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
S
³
(sequential_70_lstm_211_while_body_356621J
Fsequential_70_lstm_211_while_sequential_70_lstm_211_while_loop_counterP
Lsequential_70_lstm_211_while_sequential_70_lstm_211_while_maximum_iterations,
(sequential_70_lstm_211_while_placeholder.
*sequential_70_lstm_211_while_placeholder_1.
*sequential_70_lstm_211_while_placeholder_2.
*sequential_70_lstm_211_while_placeholder_3I
Esequential_70_lstm_211_while_sequential_70_lstm_211_strided_slice_1_0
sequential_70_lstm_211_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_211_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_70_lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0:	dÈ_
Lsequential_70_lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_70_lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0:	È)
%sequential_70_lstm_211_while_identity+
'sequential_70_lstm_211_while_identity_1+
'sequential_70_lstm_211_while_identity_2+
'sequential_70_lstm_211_while_identity_3+
'sequential_70_lstm_211_while_identity_4+
'sequential_70_lstm_211_while_identity_5G
Csequential_70_lstm_211_while_sequential_70_lstm_211_strided_slice_1
sequential_70_lstm_211_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_211_tensorarrayunstack_tensorlistfromtensor[
Hsequential_70_lstm_211_while_lstm_cell_58_matmul_readvariableop_resource:	dÈ]
Jsequential_70_lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈX
Isequential_70_lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource:	È˘@sequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp˘?sequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp˘Asequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp
Nsequential_70/lstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_70/lstm_211/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_70_lstm_211_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_211_tensorarrayunstack_tensorlistfromtensor_0(sequential_70_lstm_211_while_placeholderWsequential_70/lstm_211/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOpReadVariableOpJsequential_70_lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_70/lstm_211/while/lstm_cell_58/MatMulMatMulGsequential_70/lstm_211/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOpLsequential_70_lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_70/lstm_211/while/lstm_cell_58/MatMul_1MatMul*sequential_70_lstm_211_while_placeholder_2Isequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_70/lstm_211/while/lstm_cell_58/addAddV2:sequential_70/lstm_211/while/lstm_cell_58/MatMul:product:0<sequential_70/lstm_211/while/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOpKsequential_70_lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_70/lstm_211/while/lstm_cell_58/BiasAddBiasAdd1sequential_70/lstm_211/while/lstm_cell_58/add:z:0Hsequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_70/lstm_211/while/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_70/lstm_211/while/lstm_cell_58/splitSplitBsequential_70/lstm_211/while/lstm_cell_58/split/split_dim:output:0:sequential_70/lstm_211/while/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_70/lstm_211/while/lstm_cell_58/SigmoidSigmoid8sequential_70/lstm_211/while/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_70/lstm_211/while/lstm_cell_58/Sigmoid_1Sigmoid8sequential_70/lstm_211/while/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_70/lstm_211/while/lstm_cell_58/mulMul7sequential_70/lstm_211/while/lstm_cell_58/Sigmoid_1:y:0*sequential_70_lstm_211_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_70/lstm_211/while/lstm_cell_58/ReluRelu8sequential_70/lstm_211/while/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_70/lstm_211/while/lstm_cell_58/mul_1Mul5sequential_70/lstm_211/while/lstm_cell_58/Sigmoid:y:0<sequential_70/lstm_211/while/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_70/lstm_211/while/lstm_cell_58/add_1AddV21sequential_70/lstm_211/while/lstm_cell_58/mul:z:03sequential_70/lstm_211/while/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_70/lstm_211/while/lstm_cell_58/Sigmoid_2Sigmoid8sequential_70/lstm_211/while/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_70/lstm_211/while/lstm_cell_58/Relu_1Relu3sequential_70/lstm_211/while/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_70/lstm_211/while/lstm_cell_58/mul_2Mul7sequential_70/lstm_211/while/lstm_cell_58/Sigmoid_2:y:0>sequential_70/lstm_211/while/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_70/lstm_211/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_70_lstm_211_while_placeholder_1(sequential_70_lstm_211_while_placeholder3sequential_70/lstm_211/while/lstm_cell_58/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_70/lstm_211/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_70/lstm_211/while/addAddV2(sequential_70_lstm_211_while_placeholder+sequential_70/lstm_211/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_70/lstm_211/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_70/lstm_211/while/add_1AddV2Fsequential_70_lstm_211_while_sequential_70_lstm_211_while_loop_counter-sequential_70/lstm_211/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_70/lstm_211/while/IdentityIdentity&sequential_70/lstm_211/while/add_1:z:0"^sequential_70/lstm_211/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_70/lstm_211/while/Identity_1IdentityLsequential_70_lstm_211_while_sequential_70_lstm_211_while_maximum_iterations"^sequential_70/lstm_211/while/NoOp*
T0*
_output_shapes
: 
'sequential_70/lstm_211/while/Identity_2Identity$sequential_70/lstm_211/while/add:z:0"^sequential_70/lstm_211/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_70/lstm_211/while/Identity_3IdentityQsequential_70/lstm_211/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_70/lstm_211/while/NoOp*
T0*
_output_shapes
: ?
'sequential_70/lstm_211/while/Identity_4Identity3sequential_70/lstm_211/while/lstm_cell_58/mul_2:z:0"^sequential_70/lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_70/lstm_211/while/Identity_5Identity3sequential_70/lstm_211/while/lstm_cell_58/add_1:z:0"^sequential_70/lstm_211/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_70/lstm_211/while/NoOpNoOpA^sequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp@^sequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOpB^sequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_70_lstm_211_while_identity.sequential_70/lstm_211/while/Identity:output:0"[
'sequential_70_lstm_211_while_identity_10sequential_70/lstm_211/while/Identity_1:output:0"[
'sequential_70_lstm_211_while_identity_20sequential_70/lstm_211/while/Identity_2:output:0"[
'sequential_70_lstm_211_while_identity_30sequential_70/lstm_211/while/Identity_3:output:0"[
'sequential_70_lstm_211_while_identity_40sequential_70/lstm_211/while/Identity_4:output:0"[
'sequential_70_lstm_211_while_identity_50sequential_70/lstm_211/while/Identity_5:output:0"
Isequential_70_lstm_211_while_lstm_cell_58_biasadd_readvariableop_resourceKsequential_70_lstm_211_while_lstm_cell_58_biasadd_readvariableop_resource_0"
Jsequential_70_lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resourceLsequential_70_lstm_211_while_lstm_cell_58_matmul_1_readvariableop_resource_0"
Hsequential_70_lstm_211_while_lstm_cell_58_matmul_readvariableop_resourceJsequential_70_lstm_211_while_lstm_cell_58_matmul_readvariableop_resource_0"
Csequential_70_lstm_211_while_sequential_70_lstm_211_strided_slice_1Esequential_70_lstm_211_while_sequential_70_lstm_211_strided_slice_1_0"
sequential_70_lstm_211_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_211_tensorarrayunstack_tensorlistfromtensorsequential_70_lstm_211_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_211_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp@sequential_70/lstm_211/while/lstm_cell_58/BiasAdd/ReadVariableOp2
?sequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp?sequential_70/lstm_211/while/lstm_cell_58/MatMul/ReadVariableOp2
Asequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOpAsequential_70/lstm_211/while/lstm_cell_58/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
˙7
Ê
while_body_361496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_59_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_59_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_59_matmul_readvariableop_resource:2(E
3while_lstm_cell_59_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_59_biasadd_readvariableop_resource:(˘)while/lstm_cell_59/BiasAdd/ReadVariableOp˘(while/lstm_cell_59/MatMul/ReadVariableOp˘*while/lstm_cell_59/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_59/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_59/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_59/addAddV2#while/lstm_cell_59/MatMul:product:0%while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_59/BiasAddBiasAddwhile/lstm_cell_59/add:z:01while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_59/splitSplit+while/lstm_cell_59/split/split_dim:output:0#while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_59/SigmoidSigmoid!while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_1Sigmoid!while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mulMul while/lstm_cell_59/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_59/ReluRelu!while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_1Mulwhile/lstm_cell_59/Sigmoid:y:0%while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/add_1AddV2while/lstm_cell_59/mul:z:0while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_59/Sigmoid_2Sigmoid!while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_59/Relu_1Reluwhile/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_59/mul_2Mul while/lstm_cell_59/Sigmoid_2:y:0'while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_59/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_59/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_59/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_59/BiasAdd/ReadVariableOp)^while/lstm_cell_59/MatMul/ReadVariableOp+^while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_59_biasadd_readvariableop_resource4while_lstm_cell_59_biasadd_readvariableop_resource_0"l
3while_lstm_cell_59_matmul_1_readvariableop_resource5while_lstm_cell_59_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_59_matmul_readvariableop_resource3while_lstm_cell_59_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_59/BiasAdd/ReadVariableOp)while/lstm_cell_59/BiasAdd/ReadVariableOp2T
(while/lstm_cell_59/MatMul/ReadVariableOp(while/lstm_cell_59/MatMul/ReadVariableOp2X
*while/lstm_cell_59/MatMul_1/ReadVariableOp*while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(sequential_70_lstm_210_while_cond_356481J
Fsequential_70_lstm_210_while_sequential_70_lstm_210_while_loop_counterP
Lsequential_70_lstm_210_while_sequential_70_lstm_210_while_maximum_iterations,
(sequential_70_lstm_210_while_placeholder.
*sequential_70_lstm_210_while_placeholder_1.
*sequential_70_lstm_210_while_placeholder_2.
*sequential_70_lstm_210_while_placeholder_3L
Hsequential_70_lstm_210_while_less_sequential_70_lstm_210_strided_slice_1b
^sequential_70_lstm_210_while_sequential_70_lstm_210_while_cond_356481___redundant_placeholder0b
^sequential_70_lstm_210_while_sequential_70_lstm_210_while_cond_356481___redundant_placeholder1b
^sequential_70_lstm_210_while_sequential_70_lstm_210_while_cond_356481___redundant_placeholder2b
^sequential_70_lstm_210_while_sequential_70_lstm_210_while_cond_356481___redundant_placeholder3)
%sequential_70_lstm_210_while_identity
?
!sequential_70/lstm_210/while/LessLess(sequential_70_lstm_210_while_placeholderHsequential_70_lstm_210_while_less_sequential_70_lstm_210_strided_slice_1*
T0*
_output_shapes
: y
%sequential_70/lstm_210/while/IdentityIdentity%sequential_70/lstm_210/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_70_lstm_210_while_identity.sequential_70/lstm_210/while/Identity:output:0*(
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_356917

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
ħ

I__inference_sequential_70_layer_call_and_return_conditional_losses_359591

inputsG
4lstm_210_lstm_cell_57_matmul_readvariableop_resource:	I
6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource:	dD
5lstm_210_lstm_cell_57_biasadd_readvariableop_resource:	G
4lstm_211_lstm_cell_58_matmul_readvariableop_resource:	dÈI
6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈD
5lstm_211_lstm_cell_58_biasadd_readvariableop_resource:	ÈF
4lstm_212_lstm_cell_59_matmul_readvariableop_resource:2(H
6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource:
(C
5lstm_212_lstm_cell_59_biasadd_readvariableop_resource:(9
'dense_70_matmul_readvariableop_resource:
6
(dense_70_biasadd_readvariableop_resource:
identity˘dense_70/BiasAdd/ReadVariableOp˘dense_70/MatMul/ReadVariableOp˘,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp˘+lstm_210/lstm_cell_57/MatMul/ReadVariableOp˘-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp˘lstm_210/while˘,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp˘+lstm_211/lstm_cell_58/MatMul/ReadVariableOp˘-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp˘lstm_211/while˘,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp˘+lstm_212/lstm_cell_59/MatMul/ReadVariableOp˘-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp˘lstm_212/whileD
lstm_210/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_210/strided_sliceStridedSlicelstm_210/Shape:output:0%lstm_210/strided_slice/stack:output:0'lstm_210/strided_slice/stack_1:output:0'lstm_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_210/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_210/zeros/packedPacklstm_210/strided_slice:output:0 lstm_210/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_210/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_210/zerosFilllstm_210/zeros/packed:output:0lstm_210/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_210/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_210/zeros_1/packedPacklstm_210/strided_slice:output:0"lstm_210/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_210/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_210/zeros_1Fill lstm_210/zeros_1/packed:output:0lstm_210/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_210/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_210/transpose	Transposeinputs lstm_210/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_210/Shape_1Shapelstm_210/transpose:y:0*
T0*
_output_shapes
:h
lstm_210/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_210/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_210/strided_slice_1StridedSlicelstm_210/Shape_1:output:0'lstm_210/strided_slice_1/stack:output:0)lstm_210/strided_slice_1/stack_1:output:0)lstm_210/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_210/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_210/TensorArrayV2TensorListReserve-lstm_210/TensorArrayV2/element_shape:output:0!lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_210/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_210/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_210/transpose:y:0Glstm_210/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_210/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_210/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_210/strided_slice_2StridedSlicelstm_210/transpose:y:0'lstm_210/strided_slice_2/stack:output:0)lstm_210/strided_slice_2/stack_1:output:0)lstm_210/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_210/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp4lstm_210_lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_210/lstm_cell_57/MatMulMatMul!lstm_210/strided_slice_2:output:03lstm_210/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_210/lstm_cell_57/MatMul_1MatMullstm_210/zeros:output:05lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_210/lstm_cell_57/addAddV2&lstm_210/lstm_cell_57/MatMul:product:0(lstm_210/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp5lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_210/lstm_cell_57/BiasAddBiasAddlstm_210/lstm_cell_57/add:z:04lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_210/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_210/lstm_cell_57/splitSplit.lstm_210/lstm_cell_57/split/split_dim:output:0&lstm_210/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_210/lstm_cell_57/SigmoidSigmoid$lstm_210/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/Sigmoid_1Sigmoid$lstm_210/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/mulMul#lstm_210/lstm_cell_57/Sigmoid_1:y:0lstm_210/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_210/lstm_cell_57/ReluRelu$lstm_210/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_210/lstm_cell_57/mul_1Mul!lstm_210/lstm_cell_57/Sigmoid:y:0(lstm_210/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/add_1AddV2lstm_210/lstm_cell_57/mul:z:0lstm_210/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_210/lstm_cell_57/Sigmoid_2Sigmoid$lstm_210/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_210/lstm_cell_57/Relu_1Relulstm_210/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_210/lstm_cell_57/mul_2Mul#lstm_210/lstm_cell_57/Sigmoid_2:y:0*lstm_210/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_210/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_210/TensorArrayV2_1TensorListReserve/lstm_210/TensorArrayV2_1/element_shape:output:0!lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_210/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_210/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_210/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_210/whileWhile$lstm_210/while/loop_counter:output:0*lstm_210/while/maximum_iterations:output:0lstm_210/time:output:0!lstm_210/TensorArrayV2_1:handle:0lstm_210/zeros:output:0lstm_210/zeros_1:output:0!lstm_210/strided_slice_1:output:0@lstm_210/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_210_lstm_cell_57_matmul_readvariableop_resource6lstm_210_lstm_cell_57_matmul_1_readvariableop_resource5lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
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
lstm_210_while_body_359223*&
condR
lstm_210_while_cond_359222*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_210/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_210/TensorArrayV2Stack/TensorListStackTensorListStacklstm_210/while:output:3Blstm_210/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_210/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_210/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_210/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_210/strided_slice_3StridedSlice4lstm_210/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_210/strided_slice_3/stack:output:0)lstm_210/strided_slice_3/stack_1:output:0)lstm_210/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_210/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_210/transpose_1	Transpose4lstm_210/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_210/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_210/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_211/ShapeShapelstm_210/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_211/strided_sliceStridedSlicelstm_211/Shape:output:0%lstm_211/strided_slice/stack:output:0'lstm_211/strided_slice/stack_1:output:0'lstm_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_211/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_211/zeros/packedPacklstm_211/strided_slice:output:0 lstm_211/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_211/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_211/zerosFilllstm_211/zeros/packed:output:0lstm_211/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_211/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_211/zeros_1/packedPacklstm_211/strided_slice:output:0"lstm_211/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_211/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_211/zeros_1Fill lstm_211/zeros_1/packed:output:0lstm_211/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_211/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_211/transpose	Transposelstm_210/transpose_1:y:0 lstm_211/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_211/Shape_1Shapelstm_211/transpose:y:0*
T0*
_output_shapes
:h
lstm_211/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_211/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_211/strided_slice_1StridedSlicelstm_211/Shape_1:output:0'lstm_211/strided_slice_1/stack:output:0)lstm_211/strided_slice_1/stack_1:output:0)lstm_211/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_211/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_211/TensorArrayV2TensorListReserve-lstm_211/TensorArrayV2/element_shape:output:0!lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_211/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_211/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_211/transpose:y:0Glstm_211/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_211/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_211/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_211/strided_slice_2StridedSlicelstm_211/transpose:y:0'lstm_211/strided_slice_2/stack:output:0)lstm_211/strided_slice_2/stack_1:output:0)lstm_211/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_211/lstm_cell_58/MatMul/ReadVariableOpReadVariableOp4lstm_211_lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_211/lstm_cell_58/MatMulMatMul!lstm_211/strided_slice_2:output:03lstm_211/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOp6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_211/lstm_cell_58/MatMul_1MatMullstm_211/zeros:output:05lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_211/lstm_cell_58/addAddV2&lstm_211/lstm_cell_58/MatMul:product:0(lstm_211/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOp5lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_211/lstm_cell_58/BiasAddBiasAddlstm_211/lstm_cell_58/add:z:04lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_211/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_211/lstm_cell_58/splitSplit.lstm_211/lstm_cell_58/split/split_dim:output:0&lstm_211/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_211/lstm_cell_58/SigmoidSigmoid$lstm_211/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/Sigmoid_1Sigmoid$lstm_211/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/mulMul#lstm_211/lstm_cell_58/Sigmoid_1:y:0lstm_211/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_211/lstm_cell_58/ReluRelu$lstm_211/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_211/lstm_cell_58/mul_1Mul!lstm_211/lstm_cell_58/Sigmoid:y:0(lstm_211/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/add_1AddV2lstm_211/lstm_cell_58/mul:z:0lstm_211/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_211/lstm_cell_58/Sigmoid_2Sigmoid$lstm_211/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_211/lstm_cell_58/Relu_1Relulstm_211/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_211/lstm_cell_58/mul_2Mul#lstm_211/lstm_cell_58/Sigmoid_2:y:0*lstm_211/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_211/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_211/TensorArrayV2_1TensorListReserve/lstm_211/TensorArrayV2_1/element_shape:output:0!lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_211/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_211/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_211/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_211/whileWhile$lstm_211/while/loop_counter:output:0*lstm_211/while/maximum_iterations:output:0lstm_211/time:output:0!lstm_211/TensorArrayV2_1:handle:0lstm_211/zeros:output:0lstm_211/zeros_1:output:0!lstm_211/strided_slice_1:output:0@lstm_211/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_211_lstm_cell_58_matmul_readvariableop_resource6lstm_211_lstm_cell_58_matmul_1_readvariableop_resource5lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
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
lstm_211_while_body_359362*&
condR
lstm_211_while_cond_359361*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_211/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_211/TensorArrayV2Stack/TensorListStackTensorListStacklstm_211/while:output:3Blstm_211/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_211/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_211/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_211/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_211/strided_slice_3StridedSlice4lstm_211/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_211/strided_slice_3/stack:output:0)lstm_211/strided_slice_3/stack_1:output:0)lstm_211/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_211/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_211/transpose_1	Transpose4lstm_211/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_211/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_211/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_212/ShapeShapelstm_211/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_212/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_212/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_212/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_212/strided_sliceStridedSlicelstm_212/Shape:output:0%lstm_212/strided_slice/stack:output:0'lstm_212/strided_slice/stack_1:output:0'lstm_212/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_212/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_212/zeros/packedPacklstm_212/strided_slice:output:0 lstm_212/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_212/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_212/zerosFilllstm_212/zeros/packed:output:0lstm_212/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_212/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_212/zeros_1/packedPacklstm_212/strided_slice:output:0"lstm_212/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_212/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_212/zeros_1Fill lstm_212/zeros_1/packed:output:0lstm_212/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_212/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_212/transpose	Transposelstm_211/transpose_1:y:0 lstm_212/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_212/Shape_1Shapelstm_212/transpose:y:0*
T0*
_output_shapes
:h
lstm_212/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_212/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_212/strided_slice_1StridedSlicelstm_212/Shape_1:output:0'lstm_212/strided_slice_1/stack:output:0)lstm_212/strided_slice_1/stack_1:output:0)lstm_212/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_212/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_212/TensorArrayV2TensorListReserve-lstm_212/TensorArrayV2/element_shape:output:0!lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_212/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_212/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_212/transpose:y:0Glstm_212/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_212/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_212/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_212/strided_slice_2StridedSlicelstm_212/transpose:y:0'lstm_212/strided_slice_2/stack:output:0)lstm_212/strided_slice_2/stack_1:output:0)lstm_212/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_212/lstm_cell_59/MatMul/ReadVariableOpReadVariableOp4lstm_212_lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_212/lstm_cell_59/MatMulMatMul!lstm_212/strided_slice_2:output:03lstm_212/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOp6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_212/lstm_cell_59/MatMul_1MatMullstm_212/zeros:output:05lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_212/lstm_cell_59/addAddV2&lstm_212/lstm_cell_59/MatMul:product:0(lstm_212/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOp5lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_212/lstm_cell_59/BiasAddBiasAddlstm_212/lstm_cell_59/add:z:04lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_212/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_212/lstm_cell_59/splitSplit.lstm_212/lstm_cell_59/split/split_dim:output:0&lstm_212/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_212/lstm_cell_59/SigmoidSigmoid$lstm_212/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/Sigmoid_1Sigmoid$lstm_212/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/mulMul#lstm_212/lstm_cell_59/Sigmoid_1:y:0lstm_212/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_212/lstm_cell_59/ReluRelu$lstm_212/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_212/lstm_cell_59/mul_1Mul!lstm_212/lstm_cell_59/Sigmoid:y:0(lstm_212/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/add_1AddV2lstm_212/lstm_cell_59/mul:z:0lstm_212/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_212/lstm_cell_59/Sigmoid_2Sigmoid$lstm_212/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_212/lstm_cell_59/Relu_1Relulstm_212/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_212/lstm_cell_59/mul_2Mul#lstm_212/lstm_cell_59/Sigmoid_2:y:0*lstm_212/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_212/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_212/TensorArrayV2_1TensorListReserve/lstm_212/TensorArrayV2_1/element_shape:output:0!lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_212/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_212/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_212/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_212/whileWhile$lstm_212/while/loop_counter:output:0*lstm_212/while/maximum_iterations:output:0lstm_212/time:output:0!lstm_212/TensorArrayV2_1:handle:0lstm_212/zeros:output:0lstm_212/zeros_1:output:0!lstm_212/strided_slice_1:output:0@lstm_212/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_212_lstm_cell_59_matmul_readvariableop_resource6lstm_212_lstm_cell_59_matmul_1_readvariableop_resource5lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
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
lstm_212_while_body_359501*&
condR
lstm_212_while_cond_359500*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_212/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_212/TensorArrayV2Stack/TensorListStackTensorListStacklstm_212/while:output:3Blstm_212/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_212/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_212/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_212/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_212/strided_slice_3StridedSlice4lstm_212/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_212/strided_slice_3/stack:output:0)lstm_212/strided_slice_3/stack_1:output:0)lstm_212/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_212/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_212/transpose_1	Transpose4lstm_212/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_212/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_212/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_70/MatMulMatMul!lstm_212/strided_slice_3:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_70/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp-^lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp,^lstm_210/lstm_cell_57/MatMul/ReadVariableOp.^lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp^lstm_210/while-^lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp,^lstm_211/lstm_cell_58/MatMul/ReadVariableOp.^lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp^lstm_211/while-^lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp,^lstm_212/lstm_cell_59/MatMul/ReadVariableOp.^lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp^lstm_212/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2\
,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp,lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp2Z
+lstm_210/lstm_cell_57/MatMul/ReadVariableOp+lstm_210/lstm_cell_57/MatMul/ReadVariableOp2^
-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp-lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp2 
lstm_210/whilelstm_210/while2\
,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp,lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp2Z
+lstm_211/lstm_cell_58/MatMul/ReadVariableOp+lstm_211/lstm_cell_58/MatMul/ReadVariableOp2^
-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp-lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp2 
lstm_211/whilelstm_211/while2\
,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp,lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp2Z
+lstm_212/lstm_cell_59/MatMul/ReadVariableOp+lstm_212/lstm_cell_59/MatMul/ReadVariableOp2^
-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp-lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp2 
lstm_212/whilelstm_212/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
³
)__inference_lstm_212_layer_call_fn_361294

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
D__inference_lstm_212_layer_call_and_return_conditional_losses_358565o
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
ë
ö
-__inference_lstm_cell_58_layer_call_fn_362017

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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357413o
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
è
ó
-__inference_lstm_cell_59_layer_call_fn_362098

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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_357617o
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
µ
?
while_cond_358264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358264___redundant_placeholder04
0while_while_cond_358264___redundant_placeholder14
0while_while_cond_358264___redundant_placeholder24
0while_while_cond_358264___redundant_placeholder3
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_358049

inputs>
+lstm_cell_57_matmul_readvariableop_resource:	@
-lstm_cell_57_matmul_1_readvariableop_resource:	d;
,lstm_cell_57_biasadd_readvariableop_resource:	
identity˘#lstm_cell_57/BiasAdd/ReadVariableOp˘"lstm_cell_57/MatMul/ReadVariableOp˘$lstm_cell_57/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_57/MatMul/ReadVariableOpReadVariableOp+lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_57/MatMulMatMulstrided_slice_2:output:0*lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_57/MatMul_1MatMulzeros:output:0,lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_57/addAddV2lstm_cell_57/MatMul:product:0lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_57/BiasAddBiasAddlstm_cell_57/add:z:0+lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_57/splitSplit%lstm_cell_57/split/split_dim:output:0lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_57/SigmoidSigmoidlstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_1Sigmoidlstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_57/mulMullstm_cell_57/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_57/ReluRelulstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_1Mullstm_cell_57/Sigmoid:y:0lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_57/add_1AddV2lstm_cell_57/mul:z:0lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_57/Sigmoid_2Sigmoidlstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_57/Relu_1Relulstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_57/mul_2Mullstm_cell_57/Sigmoid_2:y:0!lstm_cell_57/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_57_matmul_readvariableop_resource-lstm_cell_57_matmul_1_readvariableop_resource,lstm_cell_57_biasadd_readvariableop_resource*
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
while_body_357965*
condR
while_cond_357964*K
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
NoOpNoOp$^lstm_cell_57/BiasAdd/ReadVariableOp#^lstm_cell_57/MatMul/ReadVariableOp%^lstm_cell_57/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_57/BiasAdd/ReadVariableOp#lstm_cell_57/BiasAdd/ReadVariableOp2H
"lstm_cell_57/MatMul/ReadVariableOp"lstm_cell_57/MatMul/ReadVariableOp2L
$lstm_cell_57/MatMul_1/ReadVariableOp$lstm_cell_57/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_356930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356930___redundant_placeholder04
0while_while_cond_356930___redundant_placeholder14
0while_while_cond_356930___redundant_placeholder24
0while_while_cond_356930___redundant_placeholder3
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
-__inference_lstm_cell_57_layer_call_fn_361919

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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_357063o
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
˙µ
Á
!__inference__wrapped_model_356850
lstm_210_inputU
Bsequential_70_lstm_210_lstm_cell_57_matmul_readvariableop_resource:	W
Dsequential_70_lstm_210_lstm_cell_57_matmul_1_readvariableop_resource:	dR
Csequential_70_lstm_210_lstm_cell_57_biasadd_readvariableop_resource:	U
Bsequential_70_lstm_211_lstm_cell_58_matmul_readvariableop_resource:	dÈW
Dsequential_70_lstm_211_lstm_cell_58_matmul_1_readvariableop_resource:	2ÈR
Csequential_70_lstm_211_lstm_cell_58_biasadd_readvariableop_resource:	ÈT
Bsequential_70_lstm_212_lstm_cell_59_matmul_readvariableop_resource:2(V
Dsequential_70_lstm_212_lstm_cell_59_matmul_1_readvariableop_resource:
(Q
Csequential_70_lstm_212_lstm_cell_59_biasadd_readvariableop_resource:(G
5sequential_70_dense_70_matmul_readvariableop_resource:
D
6sequential_70_dense_70_biasadd_readvariableop_resource:
identity˘-sequential_70/dense_70/BiasAdd/ReadVariableOp˘,sequential_70/dense_70/MatMul/ReadVariableOp˘:sequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp˘9sequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOp˘;sequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp˘sequential_70/lstm_210/while˘:sequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp˘9sequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOp˘;sequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp˘sequential_70/lstm_211/while˘:sequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp˘9sequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOp˘;sequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp˘sequential_70/lstm_212/whileZ
sequential_70/lstm_210/ShapeShapelstm_210_input*
T0*
_output_shapes
:t
*sequential_70/lstm_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_70/lstm_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_70/lstm_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_70/lstm_210/strided_sliceStridedSlice%sequential_70/lstm_210/Shape:output:03sequential_70/lstm_210/strided_slice/stack:output:05sequential_70/lstm_210/strided_slice/stack_1:output:05sequential_70/lstm_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_70/lstm_210/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_70/lstm_210/zeros/packedPack-sequential_70/lstm_210/strided_slice:output:0.sequential_70/lstm_210/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_70/lstm_210/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_70/lstm_210/zerosFill,sequential_70/lstm_210/zeros/packed:output:0+sequential_70/lstm_210/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_70/lstm_210/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_70/lstm_210/zeros_1/packedPack-sequential_70/lstm_210/strided_slice:output:00sequential_70/lstm_210/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_70/lstm_210/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_70/lstm_210/zeros_1Fill.sequential_70/lstm_210/zeros_1/packed:output:0-sequential_70/lstm_210/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_70/lstm_210/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_70/lstm_210/transpose	Transposelstm_210_input.sequential_70/lstm_210/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_70/lstm_210/Shape_1Shape$sequential_70/lstm_210/transpose:y:0*
T0*
_output_shapes
:v
,sequential_70/lstm_210/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_210/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_210/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_70/lstm_210/strided_slice_1StridedSlice'sequential_70/lstm_210/Shape_1:output:05sequential_70/lstm_210/strided_slice_1/stack:output:07sequential_70/lstm_210/strided_slice_1/stack_1:output:07sequential_70/lstm_210/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_70/lstm_210/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_70/lstm_210/TensorArrayV2TensorListReserve;sequential_70/lstm_210/TensorArrayV2/element_shape:output:0/sequential_70/lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_70/lstm_210/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_70/lstm_210/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_70/lstm_210/transpose:y:0Usequential_70/lstm_210/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_70/lstm_210/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_210/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_210/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_70/lstm_210/strided_slice_2StridedSlice$sequential_70/lstm_210/transpose:y:05sequential_70/lstm_210/strided_slice_2/stack:output:07sequential_70/lstm_210/strided_slice_2/stack_1:output:07sequential_70/lstm_210/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOpReadVariableOpBsequential_70_lstm_210_lstm_cell_57_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_70/lstm_210/lstm_cell_57/MatMulMatMul/sequential_70/lstm_210/strided_slice_2:output:0Asequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOpDsequential_70_lstm_210_lstm_cell_57_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_70/lstm_210/lstm_cell_57/MatMul_1MatMul%sequential_70/lstm_210/zeros:output:0Csequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_70/lstm_210/lstm_cell_57/addAddV24sequential_70/lstm_210/lstm_cell_57/MatMul:product:06sequential_70/lstm_210/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOpCsequential_70_lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_70/lstm_210/lstm_cell_57/BiasAddBiasAdd+sequential_70/lstm_210/lstm_cell_57/add:z:0Bsequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_70/lstm_210/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_70/lstm_210/lstm_cell_57/splitSplit<sequential_70/lstm_210/lstm_cell_57/split/split_dim:output:04sequential_70/lstm_210/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_70/lstm_210/lstm_cell_57/SigmoidSigmoid2sequential_70/lstm_210/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_70/lstm_210/lstm_cell_57/Sigmoid_1Sigmoid2sequential_70/lstm_210/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_70/lstm_210/lstm_cell_57/mulMul1sequential_70/lstm_210/lstm_cell_57/Sigmoid_1:y:0'sequential_70/lstm_210/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_70/lstm_210/lstm_cell_57/ReluRelu2sequential_70/lstm_210/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_70/lstm_210/lstm_cell_57/mul_1Mul/sequential_70/lstm_210/lstm_cell_57/Sigmoid:y:06sequential_70/lstm_210/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_70/lstm_210/lstm_cell_57/add_1AddV2+sequential_70/lstm_210/lstm_cell_57/mul:z:0-sequential_70/lstm_210/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_70/lstm_210/lstm_cell_57/Sigmoid_2Sigmoid2sequential_70/lstm_210/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_70/lstm_210/lstm_cell_57/Relu_1Relu-sequential_70/lstm_210/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_70/lstm_210/lstm_cell_57/mul_2Mul1sequential_70/lstm_210/lstm_cell_57/Sigmoid_2:y:08sequential_70/lstm_210/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_70/lstm_210/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_70/lstm_210/TensorArrayV2_1TensorListReserve=sequential_70/lstm_210/TensorArrayV2_1/element_shape:output:0/sequential_70/lstm_210/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_70/lstm_210/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_70/lstm_210/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_70/lstm_210/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_70/lstm_210/whileWhile2sequential_70/lstm_210/while/loop_counter:output:08sequential_70/lstm_210/while/maximum_iterations:output:0$sequential_70/lstm_210/time:output:0/sequential_70/lstm_210/TensorArrayV2_1:handle:0%sequential_70/lstm_210/zeros:output:0'sequential_70/lstm_210/zeros_1:output:0/sequential_70/lstm_210/strided_slice_1:output:0Nsequential_70/lstm_210/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_70_lstm_210_lstm_cell_57_matmul_readvariableop_resourceDsequential_70_lstm_210_lstm_cell_57_matmul_1_readvariableop_resourceCsequential_70_lstm_210_lstm_cell_57_biasadd_readvariableop_resource*
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
(sequential_70_lstm_210_while_body_356482*4
cond,R*
(sequential_70_lstm_210_while_cond_356481*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_70/lstm_210/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_70/lstm_210/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_70/lstm_210/while:output:3Psequential_70/lstm_210/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_70/lstm_210/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_70/lstm_210/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_210/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_70/lstm_210/strided_slice_3StridedSliceBsequential_70/lstm_210/TensorArrayV2Stack/TensorListStack:tensor:05sequential_70/lstm_210/strided_slice_3/stack:output:07sequential_70/lstm_210/strided_slice_3/stack_1:output:07sequential_70/lstm_210/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_70/lstm_210/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_70/lstm_210/transpose_1	TransposeBsequential_70/lstm_210/TensorArrayV2Stack/TensorListStack:tensor:00sequential_70/lstm_210/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_70/lstm_210/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_70/lstm_211/ShapeShape&sequential_70/lstm_210/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_70/lstm_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_70/lstm_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_70/lstm_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_70/lstm_211/strided_sliceStridedSlice%sequential_70/lstm_211/Shape:output:03sequential_70/lstm_211/strided_slice/stack:output:05sequential_70/lstm_211/strided_slice/stack_1:output:05sequential_70/lstm_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_70/lstm_211/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_70/lstm_211/zeros/packedPack-sequential_70/lstm_211/strided_slice:output:0.sequential_70/lstm_211/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_70/lstm_211/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_70/lstm_211/zerosFill,sequential_70/lstm_211/zeros/packed:output:0+sequential_70/lstm_211/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_70/lstm_211/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_70/lstm_211/zeros_1/packedPack-sequential_70/lstm_211/strided_slice:output:00sequential_70/lstm_211/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_70/lstm_211/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_70/lstm_211/zeros_1Fill.sequential_70/lstm_211/zeros_1/packed:output:0-sequential_70/lstm_211/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_70/lstm_211/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_70/lstm_211/transpose	Transpose&sequential_70/lstm_210/transpose_1:y:0.sequential_70/lstm_211/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_70/lstm_211/Shape_1Shape$sequential_70/lstm_211/transpose:y:0*
T0*
_output_shapes
:v
,sequential_70/lstm_211/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_211/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_211/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_70/lstm_211/strided_slice_1StridedSlice'sequential_70/lstm_211/Shape_1:output:05sequential_70/lstm_211/strided_slice_1/stack:output:07sequential_70/lstm_211/strided_slice_1/stack_1:output:07sequential_70/lstm_211/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_70/lstm_211/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_70/lstm_211/TensorArrayV2TensorListReserve;sequential_70/lstm_211/TensorArrayV2/element_shape:output:0/sequential_70/lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_70/lstm_211/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_70/lstm_211/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_70/lstm_211/transpose:y:0Usequential_70/lstm_211/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_70/lstm_211/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_211/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_211/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_70/lstm_211/strided_slice_2StridedSlice$sequential_70/lstm_211/transpose:y:05sequential_70/lstm_211/strided_slice_2/stack:output:07sequential_70/lstm_211/strided_slice_2/stack_1:output:07sequential_70/lstm_211/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOpReadVariableOpBsequential_70_lstm_211_lstm_cell_58_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_70/lstm_211/lstm_cell_58/MatMulMatMul/sequential_70/lstm_211/strided_slice_2:output:0Asequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOpReadVariableOpDsequential_70_lstm_211_lstm_cell_58_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_70/lstm_211/lstm_cell_58/MatMul_1MatMul%sequential_70/lstm_211/zeros:output:0Csequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_70/lstm_211/lstm_cell_58/addAddV24sequential_70/lstm_211/lstm_cell_58/MatMul:product:06sequential_70/lstm_211/lstm_cell_58/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOpReadVariableOpCsequential_70_lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_70/lstm_211/lstm_cell_58/BiasAddBiasAdd+sequential_70/lstm_211/lstm_cell_58/add:z:0Bsequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_70/lstm_211/lstm_cell_58/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_70/lstm_211/lstm_cell_58/splitSplit<sequential_70/lstm_211/lstm_cell_58/split/split_dim:output:04sequential_70/lstm_211/lstm_cell_58/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_70/lstm_211/lstm_cell_58/SigmoidSigmoid2sequential_70/lstm_211/lstm_cell_58/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_70/lstm_211/lstm_cell_58/Sigmoid_1Sigmoid2sequential_70/lstm_211/lstm_cell_58/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_70/lstm_211/lstm_cell_58/mulMul1sequential_70/lstm_211/lstm_cell_58/Sigmoid_1:y:0'sequential_70/lstm_211/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_70/lstm_211/lstm_cell_58/ReluRelu2sequential_70/lstm_211/lstm_cell_58/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_70/lstm_211/lstm_cell_58/mul_1Mul/sequential_70/lstm_211/lstm_cell_58/Sigmoid:y:06sequential_70/lstm_211/lstm_cell_58/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_70/lstm_211/lstm_cell_58/add_1AddV2+sequential_70/lstm_211/lstm_cell_58/mul:z:0-sequential_70/lstm_211/lstm_cell_58/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_70/lstm_211/lstm_cell_58/Sigmoid_2Sigmoid2sequential_70/lstm_211/lstm_cell_58/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_70/lstm_211/lstm_cell_58/Relu_1Relu-sequential_70/lstm_211/lstm_cell_58/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_70/lstm_211/lstm_cell_58/mul_2Mul1sequential_70/lstm_211/lstm_cell_58/Sigmoid_2:y:08sequential_70/lstm_211/lstm_cell_58/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_70/lstm_211/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_70/lstm_211/TensorArrayV2_1TensorListReserve=sequential_70/lstm_211/TensorArrayV2_1/element_shape:output:0/sequential_70/lstm_211/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_70/lstm_211/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_70/lstm_211/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_70/lstm_211/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_70/lstm_211/whileWhile2sequential_70/lstm_211/while/loop_counter:output:08sequential_70/lstm_211/while/maximum_iterations:output:0$sequential_70/lstm_211/time:output:0/sequential_70/lstm_211/TensorArrayV2_1:handle:0%sequential_70/lstm_211/zeros:output:0'sequential_70/lstm_211/zeros_1:output:0/sequential_70/lstm_211/strided_slice_1:output:0Nsequential_70/lstm_211/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_70_lstm_211_lstm_cell_58_matmul_readvariableop_resourceDsequential_70_lstm_211_lstm_cell_58_matmul_1_readvariableop_resourceCsequential_70_lstm_211_lstm_cell_58_biasadd_readvariableop_resource*
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
(sequential_70_lstm_211_while_body_356621*4
cond,R*
(sequential_70_lstm_211_while_cond_356620*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_70/lstm_211/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_70/lstm_211/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_70/lstm_211/while:output:3Psequential_70/lstm_211/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_70/lstm_211/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_70/lstm_211/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_211/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_70/lstm_211/strided_slice_3StridedSliceBsequential_70/lstm_211/TensorArrayV2Stack/TensorListStack:tensor:05sequential_70/lstm_211/strided_slice_3/stack:output:07sequential_70/lstm_211/strided_slice_3/stack_1:output:07sequential_70/lstm_211/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_70/lstm_211/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_70/lstm_211/transpose_1	TransposeBsequential_70/lstm_211/TensorArrayV2Stack/TensorListStack:tensor:00sequential_70/lstm_211/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_70/lstm_211/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_70/lstm_212/ShapeShape&sequential_70/lstm_211/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_70/lstm_212/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_70/lstm_212/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_70/lstm_212/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_70/lstm_212/strided_sliceStridedSlice%sequential_70/lstm_212/Shape:output:03sequential_70/lstm_212/strided_slice/stack:output:05sequential_70/lstm_212/strided_slice/stack_1:output:05sequential_70/lstm_212/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_70/lstm_212/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_70/lstm_212/zeros/packedPack-sequential_70/lstm_212/strided_slice:output:0.sequential_70/lstm_212/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_70/lstm_212/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_70/lstm_212/zerosFill,sequential_70/lstm_212/zeros/packed:output:0+sequential_70/lstm_212/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_70/lstm_212/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_70/lstm_212/zeros_1/packedPack-sequential_70/lstm_212/strided_slice:output:00sequential_70/lstm_212/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_70/lstm_212/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_70/lstm_212/zeros_1Fill.sequential_70/lstm_212/zeros_1/packed:output:0-sequential_70/lstm_212/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_70/lstm_212/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_70/lstm_212/transpose	Transpose&sequential_70/lstm_211/transpose_1:y:0.sequential_70/lstm_212/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_70/lstm_212/Shape_1Shape$sequential_70/lstm_212/transpose:y:0*
T0*
_output_shapes
:v
,sequential_70/lstm_212/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_212/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_212/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_70/lstm_212/strided_slice_1StridedSlice'sequential_70/lstm_212/Shape_1:output:05sequential_70/lstm_212/strided_slice_1/stack:output:07sequential_70/lstm_212/strided_slice_1/stack_1:output:07sequential_70/lstm_212/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_70/lstm_212/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_70/lstm_212/TensorArrayV2TensorListReserve;sequential_70/lstm_212/TensorArrayV2/element_shape:output:0/sequential_70/lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_70/lstm_212/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_70/lstm_212/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_70/lstm_212/transpose:y:0Usequential_70/lstm_212/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_70/lstm_212/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_212/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_70/lstm_212/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_70/lstm_212/strided_slice_2StridedSlice$sequential_70/lstm_212/transpose:y:05sequential_70/lstm_212/strided_slice_2/stack:output:07sequential_70/lstm_212/strided_slice_2/stack_1:output:07sequential_70/lstm_212/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOpReadVariableOpBsequential_70_lstm_212_lstm_cell_59_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_70/lstm_212/lstm_cell_59/MatMulMatMul/sequential_70/lstm_212/strided_slice_2:output:0Asequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOpDsequential_70_lstm_212_lstm_cell_59_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_70/lstm_212/lstm_cell_59/MatMul_1MatMul%sequential_70/lstm_212/zeros:output:0Csequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_70/lstm_212/lstm_cell_59/addAddV24sequential_70/lstm_212/lstm_cell_59/MatMul:product:06sequential_70/lstm_212/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOpCsequential_70_lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_70/lstm_212/lstm_cell_59/BiasAddBiasAdd+sequential_70/lstm_212/lstm_cell_59/add:z:0Bsequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_70/lstm_212/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_70/lstm_212/lstm_cell_59/splitSplit<sequential_70/lstm_212/lstm_cell_59/split/split_dim:output:04sequential_70/lstm_212/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_70/lstm_212/lstm_cell_59/SigmoidSigmoid2sequential_70/lstm_212/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_70/lstm_212/lstm_cell_59/Sigmoid_1Sigmoid2sequential_70/lstm_212/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_70/lstm_212/lstm_cell_59/mulMul1sequential_70/lstm_212/lstm_cell_59/Sigmoid_1:y:0'sequential_70/lstm_212/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_70/lstm_212/lstm_cell_59/ReluRelu2sequential_70/lstm_212/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_70/lstm_212/lstm_cell_59/mul_1Mul/sequential_70/lstm_212/lstm_cell_59/Sigmoid:y:06sequential_70/lstm_212/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_70/lstm_212/lstm_cell_59/add_1AddV2+sequential_70/lstm_212/lstm_cell_59/mul:z:0-sequential_70/lstm_212/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_70/lstm_212/lstm_cell_59/Sigmoid_2Sigmoid2sequential_70/lstm_212/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_70/lstm_212/lstm_cell_59/Relu_1Relu-sequential_70/lstm_212/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_70/lstm_212/lstm_cell_59/mul_2Mul1sequential_70/lstm_212/lstm_cell_59/Sigmoid_2:y:08sequential_70/lstm_212/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_70/lstm_212/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_70/lstm_212/TensorArrayV2_1TensorListReserve=sequential_70/lstm_212/TensorArrayV2_1/element_shape:output:0/sequential_70/lstm_212/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_70/lstm_212/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_70/lstm_212/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_70/lstm_212/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_70/lstm_212/whileWhile2sequential_70/lstm_212/while/loop_counter:output:08sequential_70/lstm_212/while/maximum_iterations:output:0$sequential_70/lstm_212/time:output:0/sequential_70/lstm_212/TensorArrayV2_1:handle:0%sequential_70/lstm_212/zeros:output:0'sequential_70/lstm_212/zeros_1:output:0/sequential_70/lstm_212/strided_slice_1:output:0Nsequential_70/lstm_212/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_70_lstm_212_lstm_cell_59_matmul_readvariableop_resourceDsequential_70_lstm_212_lstm_cell_59_matmul_1_readvariableop_resourceCsequential_70_lstm_212_lstm_cell_59_biasadd_readvariableop_resource*
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
(sequential_70_lstm_212_while_body_356760*4
cond,R*
(sequential_70_lstm_212_while_cond_356759*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_70/lstm_212/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_70/lstm_212/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_70/lstm_212/while:output:3Psequential_70/lstm_212/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_70/lstm_212/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_70/lstm_212/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_70/lstm_212/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_70/lstm_212/strided_slice_3StridedSliceBsequential_70/lstm_212/TensorArrayV2Stack/TensorListStack:tensor:05sequential_70/lstm_212/strided_slice_3/stack:output:07sequential_70/lstm_212/strided_slice_3/stack_1:output:07sequential_70/lstm_212/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_70/lstm_212/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_70/lstm_212/transpose_1	TransposeBsequential_70/lstm_212/TensorArrayV2Stack/TensorListStack:tensor:00sequential_70/lstm_212/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_70/lstm_212/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_70/dense_70/MatMul/ReadVariableOpReadVariableOp5sequential_70_dense_70_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_70/dense_70/MatMulMatMul/sequential_70/lstm_212/strided_slice_3:output:04sequential_70/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_70/dense_70/BiasAdd/ReadVariableOpReadVariableOp6sequential_70_dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_70/dense_70/BiasAddBiasAdd'sequential_70/dense_70/MatMul:product:05sequential_70/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_70/dense_70/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_70/dense_70/BiasAdd/ReadVariableOp-^sequential_70/dense_70/MatMul/ReadVariableOp;^sequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp:^sequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOp<^sequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp^sequential_70/lstm_210/while;^sequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp:^sequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOp<^sequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp^sequential_70/lstm_211/while;^sequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp:^sequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOp<^sequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp^sequential_70/lstm_212/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_70/dense_70/BiasAdd/ReadVariableOp-sequential_70/dense_70/BiasAdd/ReadVariableOp2\
,sequential_70/dense_70/MatMul/ReadVariableOp,sequential_70/dense_70/MatMul/ReadVariableOp2x
:sequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp:sequential_70/lstm_210/lstm_cell_57/BiasAdd/ReadVariableOp2v
9sequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOp9sequential_70/lstm_210/lstm_cell_57/MatMul/ReadVariableOp2z
;sequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp;sequential_70/lstm_210/lstm_cell_57/MatMul_1/ReadVariableOp2<
sequential_70/lstm_210/whilesequential_70/lstm_210/while2x
:sequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp:sequential_70/lstm_211/lstm_cell_58/BiasAdd/ReadVariableOp2v
9sequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOp9sequential_70/lstm_211/lstm_cell_58/MatMul/ReadVariableOp2z
;sequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp;sequential_70/lstm_211/lstm_cell_58/MatMul_1/ReadVariableOp2<
sequential_70/lstm_211/whilesequential_70/lstm_211/while2x
:sequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp:sequential_70/lstm_212/lstm_cell_59/BiasAdd/ReadVariableOp2v
9sequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOp9sequential_70/lstm_212/lstm_cell_59/MatMul/ReadVariableOp2z
;sequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp;sequential_70/lstm_212/lstm_cell_59/MatMul_1/ReadVariableOp2<
sequential_70/lstm_212/whilesequential_70/lstm_212/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_210_input
Ġ

H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_357413

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
Ú


.__inference_sequential_70_layer_call_fn_359164

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
I__inference_sequential_70_layer_call_and_return_conditional_losses_358963o
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
S
­
(sequential_70_lstm_212_while_body_356760J
Fsequential_70_lstm_212_while_sequential_70_lstm_212_while_loop_counterP
Lsequential_70_lstm_212_while_sequential_70_lstm_212_while_maximum_iterations,
(sequential_70_lstm_212_while_placeholder.
*sequential_70_lstm_212_while_placeholder_1.
*sequential_70_lstm_212_while_placeholder_2.
*sequential_70_lstm_212_while_placeholder_3I
Esequential_70_lstm_212_while_sequential_70_lstm_212_strided_slice_1_0
sequential_70_lstm_212_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_212_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_70_lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0:2(^
Lsequential_70_lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0:
(Y
Ksequential_70_lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0:()
%sequential_70_lstm_212_while_identity+
'sequential_70_lstm_212_while_identity_1+
'sequential_70_lstm_212_while_identity_2+
'sequential_70_lstm_212_while_identity_3+
'sequential_70_lstm_212_while_identity_4+
'sequential_70_lstm_212_while_identity_5G
Csequential_70_lstm_212_while_sequential_70_lstm_212_strided_slice_1
sequential_70_lstm_212_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_212_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_70_lstm_212_while_lstm_cell_59_matmul_readvariableop_resource:2(\
Jsequential_70_lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource:
(W
Isequential_70_lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource:(˘@sequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp˘?sequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp˘Asequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp
Nsequential_70/lstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_70/lstm_212/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_70_lstm_212_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_212_tensorarrayunstack_tensorlistfromtensor_0(sequential_70_lstm_212_while_placeholderWsequential_70/lstm_212/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOpReadVariableOpJsequential_70_lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_70/lstm_212/while/lstm_cell_59/MatMulMatMulGsequential_70/lstm_212/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOpReadVariableOpLsequential_70_lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_70/lstm_212/while/lstm_cell_59/MatMul_1MatMul*sequential_70_lstm_212_while_placeholder_2Isequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_70/lstm_212/while/lstm_cell_59/addAddV2:sequential_70/lstm_212/while/lstm_cell_59/MatMul:product:0<sequential_70/lstm_212/while/lstm_cell_59/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOpReadVariableOpKsequential_70_lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_70/lstm_212/while/lstm_cell_59/BiasAddBiasAdd1sequential_70/lstm_212/while/lstm_cell_59/add:z:0Hsequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_70/lstm_212/while/lstm_cell_59/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_70/lstm_212/while/lstm_cell_59/splitSplitBsequential_70/lstm_212/while/lstm_cell_59/split/split_dim:output:0:sequential_70/lstm_212/while/lstm_cell_59/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_70/lstm_212/while/lstm_cell_59/SigmoidSigmoid8sequential_70/lstm_212/while/lstm_cell_59/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_70/lstm_212/while/lstm_cell_59/Sigmoid_1Sigmoid8sequential_70/lstm_212/while/lstm_cell_59/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_70/lstm_212/while/lstm_cell_59/mulMul7sequential_70/lstm_212/while/lstm_cell_59/Sigmoid_1:y:0*sequential_70_lstm_212_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_70/lstm_212/while/lstm_cell_59/ReluRelu8sequential_70/lstm_212/while/lstm_cell_59/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_70/lstm_212/while/lstm_cell_59/mul_1Mul5sequential_70/lstm_212/while/lstm_cell_59/Sigmoid:y:0<sequential_70/lstm_212/while/lstm_cell_59/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_70/lstm_212/while/lstm_cell_59/add_1AddV21sequential_70/lstm_212/while/lstm_cell_59/mul:z:03sequential_70/lstm_212/while/lstm_cell_59/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_70/lstm_212/while/lstm_cell_59/Sigmoid_2Sigmoid8sequential_70/lstm_212/while/lstm_cell_59/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_70/lstm_212/while/lstm_cell_59/Relu_1Relu3sequential_70/lstm_212/while/lstm_cell_59/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_70/lstm_212/while/lstm_cell_59/mul_2Mul7sequential_70/lstm_212/while/lstm_cell_59/Sigmoid_2:y:0>sequential_70/lstm_212/while/lstm_cell_59/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_70/lstm_212/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_70_lstm_212_while_placeholder_1(sequential_70_lstm_212_while_placeholder3sequential_70/lstm_212/while/lstm_cell_59/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_70/lstm_212/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_70/lstm_212/while/addAddV2(sequential_70_lstm_212_while_placeholder+sequential_70/lstm_212/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_70/lstm_212/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_70/lstm_212/while/add_1AddV2Fsequential_70_lstm_212_while_sequential_70_lstm_212_while_loop_counter-sequential_70/lstm_212/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_70/lstm_212/while/IdentityIdentity&sequential_70/lstm_212/while/add_1:z:0"^sequential_70/lstm_212/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_70/lstm_212/while/Identity_1IdentityLsequential_70_lstm_212_while_sequential_70_lstm_212_while_maximum_iterations"^sequential_70/lstm_212/while/NoOp*
T0*
_output_shapes
: 
'sequential_70/lstm_212/while/Identity_2Identity$sequential_70/lstm_212/while/add:z:0"^sequential_70/lstm_212/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_70/lstm_212/while/Identity_3IdentityQsequential_70/lstm_212/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_70/lstm_212/while/NoOp*
T0*
_output_shapes
: ?
'sequential_70/lstm_212/while/Identity_4Identity3sequential_70/lstm_212/while/lstm_cell_59/mul_2:z:0"^sequential_70/lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_70/lstm_212/while/Identity_5Identity3sequential_70/lstm_212/while/lstm_cell_59/add_1:z:0"^sequential_70/lstm_212/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_70/lstm_212/while/NoOpNoOpA^sequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp@^sequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOpB^sequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_70_lstm_212_while_identity.sequential_70/lstm_212/while/Identity:output:0"[
'sequential_70_lstm_212_while_identity_10sequential_70/lstm_212/while/Identity_1:output:0"[
'sequential_70_lstm_212_while_identity_20sequential_70/lstm_212/while/Identity_2:output:0"[
'sequential_70_lstm_212_while_identity_30sequential_70/lstm_212/while/Identity_3:output:0"[
'sequential_70_lstm_212_while_identity_40sequential_70/lstm_212/while/Identity_4:output:0"[
'sequential_70_lstm_212_while_identity_50sequential_70/lstm_212/while/Identity_5:output:0"
Isequential_70_lstm_212_while_lstm_cell_59_biasadd_readvariableop_resourceKsequential_70_lstm_212_while_lstm_cell_59_biasadd_readvariableop_resource_0"
Jsequential_70_lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resourceLsequential_70_lstm_212_while_lstm_cell_59_matmul_1_readvariableop_resource_0"
Hsequential_70_lstm_212_while_lstm_cell_59_matmul_readvariableop_resourceJsequential_70_lstm_212_while_lstm_cell_59_matmul_readvariableop_resource_0"
Csequential_70_lstm_212_while_sequential_70_lstm_212_strided_slice_1Esequential_70_lstm_212_while_sequential_70_lstm_212_strided_slice_1_0"
sequential_70_lstm_212_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_212_tensorarrayunstack_tensorlistfromtensorsequential_70_lstm_212_while_tensorarrayv2read_tensorlistgetitem_sequential_70_lstm_212_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp@sequential_70/lstm_212/while/lstm_cell_59/BiasAdd/ReadVariableOp2
?sequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp?sequential_70/lstm_212/while/lstm_cell_59/MatMul/ReadVariableOp2
Asequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOpAsequential_70/lstm_212/while/lstm_cell_59/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_357964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357964___redundant_placeholder04
0while_while_cond_357964___redundant_placeholder14
0while_while_cond_357964___redundant_placeholder24
0while_while_cond_357964___redundant_placeholder3
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
while_body_360407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_212_layer_call_fn_361272
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_357891o
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
µ
?
while_cond_360549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360549___redundant_placeholder04
0while_while_cond_360549___redundant_placeholder14
0while_while_cond_360549___redundant_placeholder24
0while_while_cond_360549___redundant_placeholder3
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
while_cond_361495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_361495___redundant_placeholder04
0while_while_cond_361495___redundant_placeholder14
0while_while_cond_361495___redundant_placeholder24
0while_while_cond_361495___redundant_placeholder3
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
while_body_360550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_57_matmul_readvariableop_resource_0:	H
5while_lstm_cell_57_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_57_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_57_matmul_readvariableop_resource:	F
3while_lstm_cell_57_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_57_biasadd_readvariableop_resource:	˘)while/lstm_cell_57/BiasAdd/ReadVariableOp˘(while/lstm_cell_57/MatMul/ReadVariableOp˘*while/lstm_cell_57/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_57/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_57_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_57/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_57/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_57_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_57/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_57/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_57/addAddV2#while/lstm_cell_57/MatMul:product:0%while/lstm_cell_57/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_57/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_57_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_57/BiasAddBiasAddwhile/lstm_cell_57/add:z:01while/lstm_cell_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_57/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_57/splitSplit+while/lstm_cell_57/split/split_dim:output:0#while/lstm_cell_57/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_57/SigmoidSigmoid!while/lstm_cell_57/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_1Sigmoid!while/lstm_cell_57/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mulMul while/lstm_cell_57/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_57/ReluRelu!while/lstm_cell_57/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_1Mulwhile/lstm_cell_57/Sigmoid:y:0%while/lstm_cell_57/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/add_1AddV2while/lstm_cell_57/mul:z:0while/lstm_cell_57/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_57/Sigmoid_2Sigmoid!while/lstm_cell_57/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_57/Relu_1Reluwhile/lstm_cell_57/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_57/mul_2Mul while/lstm_cell_57/Sigmoid_2:y:0'while/lstm_cell_57/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_57/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_57/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_57/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_57/BiasAdd/ReadVariableOp)^while/lstm_cell_57/MatMul/ReadVariableOp+^while/lstm_cell_57/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_57_biasadd_readvariableop_resource4while_lstm_cell_57_biasadd_readvariableop_resource_0"l
3while_lstm_cell_57_matmul_1_readvariableop_resource5while_lstm_cell_57_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_57_matmul_readvariableop_resource3while_lstm_cell_57_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_57/BiasAdd/ReadVariableOp)while/lstm_cell_57/BiasAdd/ReadVariableOp2T
(while/lstm_cell_57/MatMul/ReadVariableOp(while/lstm_cell_57/MatMul/ReadVariableOp2X
*while/lstm_cell_57/MatMul_1/ReadVariableOp*while/lstm_cell_57/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_210_input;
 serving_default_lstm_210_input:0˙˙˙˙˙˙˙˙˙<
dense_700
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
2dense_70/kernel
:2dense_70/bias
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
0:.	2lstm_210/lstm_cell_210/kernel
::8	d2'lstm_210/lstm_cell_210/recurrent_kernel
*:(2lstm_210/lstm_cell_210/bias
0:.	dÈ2lstm_211/lstm_cell_211/kernel
::8	2È2'lstm_211/lstm_cell_211/recurrent_kernel
*:(È2lstm_211/lstm_cell_211/bias
/:-2(2lstm_212/lstm_cell_212/kernel
9:7
(2'lstm_212/lstm_cell_212/recurrent_kernel
):'(2lstm_212/lstm_cell_212/bias
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
2Adam/dense_70/kernel/m
 :2Adam/dense_70/bias/m
5:3	2$Adam/lstm_210/lstm_cell_210/kernel/m
?:=	d2.Adam/lstm_210/lstm_cell_210/recurrent_kernel/m
/:-2"Adam/lstm_210/lstm_cell_210/bias/m
5:3	dÈ2$Adam/lstm_211/lstm_cell_211/kernel/m
?:=	2È2.Adam/lstm_211/lstm_cell_211/recurrent_kernel/m
/:-È2"Adam/lstm_211/lstm_cell_211/bias/m
4:22(2$Adam/lstm_212/lstm_cell_212/kernel/m
>:<
(2.Adam/lstm_212/lstm_cell_212/recurrent_kernel/m
.:,(2"Adam/lstm_212/lstm_cell_212/bias/m
&:$
2Adam/dense_70/kernel/v
 :2Adam/dense_70/bias/v
5:3	2$Adam/lstm_210/lstm_cell_210/kernel/v
?:=	d2.Adam/lstm_210/lstm_cell_210/recurrent_kernel/v
/:-2"Adam/lstm_210/lstm_cell_210/bias/v
5:3	dÈ2$Adam/lstm_211/lstm_cell_211/kernel/v
?:=	2È2.Adam/lstm_211/lstm_cell_211/recurrent_kernel/v
/:-È2"Adam/lstm_211/lstm_cell_211/bias/v
4:22(2$Adam/lstm_212/lstm_cell_212/kernel/v
>:<
(2.Adam/lstm_212/lstm_cell_212/recurrent_kernel/v
.:,(2"Adam/lstm_212/lstm_cell_212/bias/v
2
.__inference_sequential_70_layer_call_fn_358399
.__inference_sequential_70_layer_call_fn_359137
.__inference_sequential_70_layer_call_fn_359164
.__inference_sequential_70_layer_call_fn_359015À
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_359591
I__inference_sequential_70_layer_call_and_return_conditional_losses_360018
I__inference_sequential_70_layer_call_and_return_conditional_losses_359045
I__inference_sequential_70_layer_call_and_return_conditional_losses_359075À
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
!__inference__wrapped_model_356850lstm_210_input"
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
)__inference_lstm_210_layer_call_fn_360029
)__inference_lstm_210_layer_call_fn_360040
)__inference_lstm_210_layer_call_fn_360051
)__inference_lstm_210_layer_call_fn_360062Ġ
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_360205
D__inference_lstm_210_layer_call_and_return_conditional_losses_360348
D__inference_lstm_210_layer_call_and_return_conditional_losses_360491
D__inference_lstm_210_layer_call_and_return_conditional_losses_360634Ġ
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
)__inference_lstm_211_layer_call_fn_360645
)__inference_lstm_211_layer_call_fn_360656
)__inference_lstm_211_layer_call_fn_360667
)__inference_lstm_211_layer_call_fn_360678Ġ
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_360821
D__inference_lstm_211_layer_call_and_return_conditional_losses_360964
D__inference_lstm_211_layer_call_and_return_conditional_losses_361107
D__inference_lstm_211_layer_call_and_return_conditional_losses_361250Ġ
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
)__inference_lstm_212_layer_call_fn_361261
)__inference_lstm_212_layer_call_fn_361272
)__inference_lstm_212_layer_call_fn_361283
)__inference_lstm_212_layer_call_fn_361294Ġ
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361437
D__inference_lstm_212_layer_call_and_return_conditional_losses_361580
D__inference_lstm_212_layer_call_and_return_conditional_losses_361723
D__inference_lstm_212_layer_call_and_return_conditional_losses_361866Ġ
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
)__inference_dense_70_layer_call_fn_361875˘
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
D__inference_dense_70_layer_call_and_return_conditional_losses_361885˘
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
$__inference_signature_wrapper_359110lstm_210_input"
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
-__inference_lstm_cell_57_layer_call_fn_361902
-__inference_lstm_cell_57_layer_call_fn_361919?
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361951
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361983?
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
-__inference_lstm_cell_58_layer_call_fn_362000
-__inference_lstm_cell_58_layer_call_fn_362017?
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362049
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362081?
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
-__inference_lstm_cell_59_layer_call_fn_362098
-__inference_lstm_cell_59_layer_call_fn_362115?
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362147
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362179?
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
!__inference__wrapped_model_356850-./012345!";˘8
1˘.
,)
lstm_210_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_70"
dense_70˙˙˙˙˙˙˙˙˙¤
D__inference_dense_70_layer_call_and_return_conditional_losses_361885\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_70_layer_call_fn_361875O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_210_layer_call_and_return_conditional_losses_360205-./O˘L
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_360348-./O˘L
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_360491q-./?˘<
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
D__inference_lstm_210_layer_call_and_return_conditional_losses_360634q-./?˘<
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
)__inference_lstm_210_layer_call_fn_360029}-./O˘L
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
)__inference_lstm_210_layer_call_fn_360040}-./O˘L
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
)__inference_lstm_210_layer_call_fn_360051d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_210_layer_call_fn_360062d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_211_layer_call_and_return_conditional_losses_360821012O˘L
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_360964012O˘L
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_361107q012?˘<
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
D__inference_lstm_211_layer_call_and_return_conditional_losses_361250q012?˘<
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
)__inference_lstm_211_layer_call_fn_360645}012O˘L
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
)__inference_lstm_211_layer_call_fn_360656}012O˘L
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
)__inference_lstm_211_layer_call_fn_360667d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_211_layer_call_fn_360678d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_212_layer_call_and_return_conditional_losses_361437}345O˘L
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361580}345O˘L
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361723m345?˘<
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
D__inference_lstm_212_layer_call_and_return_conditional_losses_361866m345?˘<
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
)__inference_lstm_212_layer_call_fn_361261p345O˘L
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
)__inference_lstm_212_layer_call_fn_361272p345O˘L
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
)__inference_lstm_212_layer_call_fn_361283`345?˘<
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
)__inference_lstm_212_layer_call_fn_361294`345?˘<
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361951ŭ-./˘}
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
H__inference_lstm_cell_57_layer_call_and_return_conditional_losses_361983ŭ-./˘}
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
-__inference_lstm_cell_57_layer_call_fn_361902í-./˘}
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
-__inference_lstm_cell_57_layer_call_fn_361919í-./˘}
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362049ŭ012˘}
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
H__inference_lstm_cell_58_layer_call_and_return_conditional_losses_362081ŭ012˘}
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
-__inference_lstm_cell_58_layer_call_fn_362000í012˘}
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
-__inference_lstm_cell_58_layer_call_fn_362017í012˘}
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362147ŭ345˘}
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
H__inference_lstm_cell_59_layer_call_and_return_conditional_losses_362179ŭ345˘}
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
-__inference_lstm_cell_59_layer_call_fn_362098í345˘}
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
-__inference_lstm_cell_59_layer_call_fn_362115í345˘}
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_359045y-./012345!"C˘@
9˘6
,)
lstm_210_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_70_layer_call_and_return_conditional_losses_359075y-./012345!"C˘@
9˘6
,)
lstm_210_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_70_layer_call_and_return_conditional_losses_359591q-./012345!";˘8
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
I__inference_sequential_70_layer_call_and_return_conditional_losses_360018q-./012345!";˘8
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
.__inference_sequential_70_layer_call_fn_358399l-./012345!"C˘@
9˘6
,)
lstm_210_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_70_layer_call_fn_359015l-./012345!"C˘@
9˘6
,)
lstm_210_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_70_layer_call_fn_359137d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_70_layer_call_fn_359164d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_359110-./012345!"M˘J
˘ 
CŞ@
>
lstm_210_input,)
lstm_210_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_70"
dense_70˙˙˙˙˙˙˙˙˙