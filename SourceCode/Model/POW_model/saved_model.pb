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
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_66/kernel
s
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes

:
*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
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
lstm_198/lstm_cell_198/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_198/lstm_cell_198/kernel

1lstm_198/lstm_cell_198/kernel/Read/ReadVariableOpReadVariableOplstm_198/lstm_cell_198/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_198/lstm_cell_198/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_198/lstm_cell_198/recurrent_kernel
¤
;lstm_198/lstm_cell_198/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_198/lstm_cell_198/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_198/lstm_cell_198/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_198/lstm_cell_198/bias

/lstm_198/lstm_cell_198/bias/Read/ReadVariableOpReadVariableOplstm_198/lstm_cell_198/bias*
_output_shapes	
:*
dtype0

lstm_199/lstm_cell_199/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_199/lstm_cell_199/kernel

1lstm_199/lstm_cell_199/kernel/Read/ReadVariableOpReadVariableOplstm_199/lstm_cell_199/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_199/lstm_cell_199/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_199/lstm_cell_199/recurrent_kernel
¤
;lstm_199/lstm_cell_199/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_199/lstm_cell_199/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_199/lstm_cell_199/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_199/lstm_cell_199/bias

/lstm_199/lstm_cell_199/bias/Read/ReadVariableOpReadVariableOplstm_199/lstm_cell_199/bias*
_output_shapes	
:È*
dtype0

lstm_200/lstm_cell_200/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_200/lstm_cell_200/kernel

1lstm_200/lstm_cell_200/kernel/Read/ReadVariableOpReadVariableOplstm_200/lstm_cell_200/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_200/lstm_cell_200/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_200/lstm_cell_200/recurrent_kernel
£
;lstm_200/lstm_cell_200/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_200/lstm_cell_200/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_200/lstm_cell_200/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_200/lstm_cell_200/bias

/lstm_200/lstm_cell_200/bias/Read/ReadVariableOpReadVariableOplstm_200/lstm_cell_200/bias*
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
Adam/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_66/kernel/m

*Adam/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_66/bias/m
y
(Adam/dense_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_198/lstm_cell_198/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_198/lstm_cell_198/kernel/m

8Adam/lstm_198/lstm_cell_198/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_198/lstm_cell_198/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_198/lstm_cell_198/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_198/lstm_cell_198/recurrent_kernel/m
²
BAdam/lstm_198/lstm_cell_198/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_198/lstm_cell_198/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_198/lstm_cell_198/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_198/lstm_cell_198/bias/m

6Adam/lstm_198/lstm_cell_198/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_198/lstm_cell_198/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_199/lstm_cell_199/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_199/lstm_cell_199/kernel/m

8Adam/lstm_199/lstm_cell_199/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_199/lstm_cell_199/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_199/lstm_cell_199/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_199/lstm_cell_199/recurrent_kernel/m
²
BAdam/lstm_199/lstm_cell_199/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_199/lstm_cell_199/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_199/lstm_cell_199/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_199/lstm_cell_199/bias/m

6Adam/lstm_199/lstm_cell_199/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_199/lstm_cell_199/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_200/lstm_cell_200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_200/lstm_cell_200/kernel/m

8Adam/lstm_200/lstm_cell_200/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_200/lstm_cell_200/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_200/lstm_cell_200/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_200/lstm_cell_200/recurrent_kernel/m
ħ
BAdam/lstm_200/lstm_cell_200/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_200/lstm_cell_200/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_200/lstm_cell_200/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_200/lstm_cell_200/bias/m

6Adam/lstm_200/lstm_cell_200/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_200/lstm_cell_200/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_66/kernel/v

*Adam/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_66/bias/v
y
(Adam/dense_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_198/lstm_cell_198/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_198/lstm_cell_198/kernel/v

8Adam/lstm_198/lstm_cell_198/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_198/lstm_cell_198/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_198/lstm_cell_198/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_198/lstm_cell_198/recurrent_kernel/v
²
BAdam/lstm_198/lstm_cell_198/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_198/lstm_cell_198/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_198/lstm_cell_198/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_198/lstm_cell_198/bias/v

6Adam/lstm_198/lstm_cell_198/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_198/lstm_cell_198/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_199/lstm_cell_199/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_199/lstm_cell_199/kernel/v

8Adam/lstm_199/lstm_cell_199/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_199/lstm_cell_199/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_199/lstm_cell_199/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_199/lstm_cell_199/recurrent_kernel/v
²
BAdam/lstm_199/lstm_cell_199/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_199/lstm_cell_199/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_199/lstm_cell_199/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_199/lstm_cell_199/bias/v

6Adam/lstm_199/lstm_cell_199/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_199/lstm_cell_199/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_200/lstm_cell_200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_200/lstm_cell_200/kernel/v

8Adam/lstm_200/lstm_cell_200/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_200/lstm_cell_200/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_200/lstm_cell_200/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_200/lstm_cell_200/recurrent_kernel/v
ħ
BAdam/lstm_200/lstm_cell_200/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_200/lstm_cell_200/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_200/lstm_cell_200/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_200/lstm_cell_200/bias/v

6Adam/lstm_200/lstm_cell_200/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_200/lstm_cell_200/bias/v*
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_198/lstm_cell_198/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_198/lstm_cell_198/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_198/lstm_cell_198/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_199/lstm_cell_199/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_199/lstm_cell_199/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_199/lstm_cell_199/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_200/lstm_cell_200/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_200/lstm_cell_200/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_200/lstm_cell_200/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_66/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_198/lstm_cell_198/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_198/lstm_cell_198/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_198/lstm_cell_198/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_199/lstm_cell_199/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_199/lstm_cell_199/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_199/lstm_cell_199/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_200/lstm_cell_200/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_200/lstm_cell_200/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_200/lstm_cell_200/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_198/lstm_cell_198/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_198/lstm_cell_198/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_198/lstm_cell_198/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_199/lstm_cell_199/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_199/lstm_cell_199/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_199/lstm_cell_199/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_200/lstm_cell_200/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_200/lstm_cell_200/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_200/lstm_cell_200/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_198_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_198_inputlstm_198/lstm_cell_198/kernel'lstm_198/lstm_cell_198/recurrent_kernellstm_198/lstm_cell_198/biaslstm_199/lstm_cell_199/kernel'lstm_199/lstm_cell_199/recurrent_kernellstm_199/lstm_cell_199/biaslstm_200/lstm_cell_200/kernel'lstm_200/lstm_cell_200/recurrent_kernellstm_200/lstm_cell_200/biasdense_66/kerneldense_66/bias*
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
$__inference_signature_wrapper_322927
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_198/lstm_cell_198/kernel/Read/ReadVariableOp;lstm_198/lstm_cell_198/recurrent_kernel/Read/ReadVariableOp/lstm_198/lstm_cell_198/bias/Read/ReadVariableOp1lstm_199/lstm_cell_199/kernel/Read/ReadVariableOp;lstm_199/lstm_cell_199/recurrent_kernel/Read/ReadVariableOp/lstm_199/lstm_cell_199/bias/Read/ReadVariableOp1lstm_200/lstm_cell_200/kernel/Read/ReadVariableOp;lstm_200/lstm_cell_200/recurrent_kernel/Read/ReadVariableOp/lstm_200/lstm_cell_200/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_66/kernel/m/Read/ReadVariableOp(Adam/dense_66/bias/m/Read/ReadVariableOp8Adam/lstm_198/lstm_cell_198/kernel/m/Read/ReadVariableOpBAdam/lstm_198/lstm_cell_198/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_198/lstm_cell_198/bias/m/Read/ReadVariableOp8Adam/lstm_199/lstm_cell_199/kernel/m/Read/ReadVariableOpBAdam/lstm_199/lstm_cell_199/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_199/lstm_cell_199/bias/m/Read/ReadVariableOp8Adam/lstm_200/lstm_cell_200/kernel/m/Read/ReadVariableOpBAdam/lstm_200/lstm_cell_200/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_200/lstm_cell_200/bias/m/Read/ReadVariableOp*Adam/dense_66/kernel/v/Read/ReadVariableOp(Adam/dense_66/bias/v/Read/ReadVariableOp8Adam/lstm_198/lstm_cell_198/kernel/v/Read/ReadVariableOpBAdam/lstm_198/lstm_cell_198/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_198/lstm_cell_198/bias/v/Read/ReadVariableOp8Adam/lstm_199/lstm_cell_199/kernel/v/Read/ReadVariableOpBAdam/lstm_199/lstm_cell_199/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_199/lstm_cell_199/bias/v/Read/ReadVariableOp8Adam/lstm_200/lstm_cell_200/kernel/v/Read/ReadVariableOpBAdam/lstm_200/lstm_cell_200/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_200/lstm_cell_200/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_326139

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_66/kerneldense_66/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_198/lstm_cell_198/kernel'lstm_198/lstm_cell_198/recurrent_kernellstm_198/lstm_cell_198/biaslstm_199/lstm_cell_199/kernel'lstm_199/lstm_cell_199/recurrent_kernellstm_199/lstm_cell_199/biaslstm_200/lstm_cell_200/kernel'lstm_200/lstm_cell_200/recurrent_kernellstm_200/lstm_cell_200/biastotalcountAdam/dense_66/kernel/mAdam/dense_66/bias/m$Adam/lstm_198/lstm_cell_198/kernel/m.Adam/lstm_198/lstm_cell_198/recurrent_kernel/m"Adam/lstm_198/lstm_cell_198/bias/m$Adam/lstm_199/lstm_cell_199/kernel/m.Adam/lstm_199/lstm_cell_199/recurrent_kernel/m"Adam/lstm_199/lstm_cell_199/bias/m$Adam/lstm_200/lstm_cell_200/kernel/m.Adam/lstm_200/lstm_cell_200/recurrent_kernel/m"Adam/lstm_200/lstm_cell_200/bias/mAdam/dense_66/kernel/vAdam/dense_66/bias/v$Adam/lstm_198/lstm_cell_198/kernel/v.Adam/lstm_198/lstm_cell_198/recurrent_kernel/v"Adam/lstm_198/lstm_cell_198/bias/v$Adam/lstm_199/lstm_cell_199/kernel/v.Adam/lstm_199/lstm_cell_199/recurrent_kernel/v"Adam/lstm_199/lstm_cell_199/bias/v$Adam/lstm_200/lstm_cell_200/kernel/v.Adam/lstm_200/lstm_cell_200/recurrent_kernel/v"Adam/lstm_200/lstm_cell_200/bias/v*4
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
"__inference__traced_restore_326269½Ó+
ş

(sequential_66_lstm_199_while_cond_320437J
Fsequential_66_lstm_199_while_sequential_66_lstm_199_while_loop_counterP
Lsequential_66_lstm_199_while_sequential_66_lstm_199_while_maximum_iterations,
(sequential_66_lstm_199_while_placeholder.
*sequential_66_lstm_199_while_placeholder_1.
*sequential_66_lstm_199_while_placeholder_2.
*sequential_66_lstm_199_while_placeholder_3L
Hsequential_66_lstm_199_while_less_sequential_66_lstm_199_strided_slice_1b
^sequential_66_lstm_199_while_sequential_66_lstm_199_while_cond_320437___redundant_placeholder0b
^sequential_66_lstm_199_while_sequential_66_lstm_199_while_cond_320437___redundant_placeholder1b
^sequential_66_lstm_199_while_sequential_66_lstm_199_while_cond_320437___redundant_placeholder2b
^sequential_66_lstm_199_while_sequential_66_lstm_199_while_cond_320437___redundant_placeholder3)
%sequential_66_lstm_199_while_identity
?
!sequential_66/lstm_199/while/LessLess(sequential_66_lstm_199_while_placeholderHsequential_66_lstm_199_while_less_sequential_66_lstm_199_strided_slice_1*
T0*
_output_shapes
: y
%sequential_66/lstm_199/while/IdentityIdentity%sequential_66/lstm_199/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_66_lstm_199_while_identity.sequential_66/lstm_199/while/Identity:output:0*(
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
ş

(sequential_66_lstm_200_while_cond_320576J
Fsequential_66_lstm_200_while_sequential_66_lstm_200_while_loop_counterP
Lsequential_66_lstm_200_while_sequential_66_lstm_200_while_maximum_iterations,
(sequential_66_lstm_200_while_placeholder.
*sequential_66_lstm_200_while_placeholder_1.
*sequential_66_lstm_200_while_placeholder_2.
*sequential_66_lstm_200_while_placeholder_3L
Hsequential_66_lstm_200_while_less_sequential_66_lstm_200_strided_slice_1b
^sequential_66_lstm_200_while_sequential_66_lstm_200_while_cond_320576___redundant_placeholder0b
^sequential_66_lstm_200_while_sequential_66_lstm_200_while_cond_320576___redundant_placeholder1b
^sequential_66_lstm_200_while_sequential_66_lstm_200_while_cond_320576___redundant_placeholder2b
^sequential_66_lstm_200_while_sequential_66_lstm_200_while_cond_320576___redundant_placeholder3)
%sequential_66_lstm_200_while_identity
?
!sequential_66/lstm_200/while/LessLess(sequential_66_lstm_200_while_placeholderHsequential_66_lstm_200_while_less_sequential_66_lstm_200_strided_slice_1*
T0*
_output_shapes
: y
%sequential_66/lstm_200/while/IdentityIdentity%sequential_66/lstm_200/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_66_lstm_200_while_identity.sequential_66/lstm_200/while/Identity:output:0*(
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

lstm_199_while_body_323179.
*lstm_199_while_lstm_199_while_loop_counter4
0lstm_199_while_lstm_199_while_maximum_iterations
lstm_199_while_placeholder 
lstm_199_while_placeholder_1 
lstm_199_while_placeholder_2 
lstm_199_while_placeholder_3-
)lstm_199_while_lstm_199_strided_slice_1_0i
elstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈQ
>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
lstm_199_while_identity
lstm_199_while_identity_1
lstm_199_while_identity_2
lstm_199_while_identity_3
lstm_199_while_identity_4
lstm_199_while_identity_5+
'lstm_199_while_lstm_199_strided_slice_1g
clstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensorM
:lstm_199_while_lstm_cell_52_matmul_readvariableop_resource:	dÈO
<lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈJ
;lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource:	È˘2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp˘1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp˘3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp
@lstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_199/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0lstm_199_while_placeholderIlstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_199/while/lstm_cell_52/MatMulMatMul9lstm_199/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_199/while/lstm_cell_52/MatMul_1MatMullstm_199_while_placeholder_2;lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_199/while/lstm_cell_52/addAddV2,lstm_199/while/lstm_cell_52/MatMul:product:0.lstm_199/while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_199/while/lstm_cell_52/BiasAddBiasAdd#lstm_199/while/lstm_cell_52/add:z:0:lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_199/while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_199/while/lstm_cell_52/splitSplit4lstm_199/while/lstm_cell_52/split/split_dim:output:0,lstm_199/while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_199/while/lstm_cell_52/SigmoidSigmoid*lstm_199/while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_199/while/lstm_cell_52/Sigmoid_1Sigmoid*lstm_199/while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_199/while/lstm_cell_52/mulMul)lstm_199/while/lstm_cell_52/Sigmoid_1:y:0lstm_199_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_199/while/lstm_cell_52/ReluRelu*lstm_199/while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_199/while/lstm_cell_52/mul_1Mul'lstm_199/while/lstm_cell_52/Sigmoid:y:0.lstm_199/while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_199/while/lstm_cell_52/add_1AddV2#lstm_199/while/lstm_cell_52/mul:z:0%lstm_199/while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_199/while/lstm_cell_52/Sigmoid_2Sigmoid*lstm_199/while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_199/while/lstm_cell_52/Relu_1Relu%lstm_199/while/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_199/while/lstm_cell_52/mul_2Mul)lstm_199/while/lstm_cell_52/Sigmoid_2:y:00lstm_199/while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_199/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_199_while_placeholder_1lstm_199_while_placeholder%lstm_199/while/lstm_cell_52/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_199/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_199/while/addAddV2lstm_199_while_placeholderlstm_199/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_199/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_199/while/add_1AddV2*lstm_199_while_lstm_199_while_loop_counterlstm_199/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_199/while/IdentityIdentitylstm_199/while/add_1:z:0^lstm_199/while/NoOp*
T0*
_output_shapes
: 
lstm_199/while/Identity_1Identity0lstm_199_while_lstm_199_while_maximum_iterations^lstm_199/while/NoOp*
T0*
_output_shapes
: t
lstm_199/while/Identity_2Identitylstm_199/while/add:z:0^lstm_199/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_199/while/Identity_3IdentityClstm_199/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_199/while/NoOp*
T0*
_output_shapes
: 
lstm_199/while/Identity_4Identity%lstm_199/while/lstm_cell_52/mul_2:z:0^lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/while/Identity_5Identity%lstm_199/while/lstm_cell_52/add_1:z:0^lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_199/while/NoOpNoOp3^lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2^lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp4^lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_199_while_identity lstm_199/while/Identity:output:0"?
lstm_199_while_identity_1"lstm_199/while/Identity_1:output:0"?
lstm_199_while_identity_2"lstm_199/while/Identity_2:output:0"?
lstm_199_while_identity_3"lstm_199/while/Identity_3:output:0"?
lstm_199_while_identity_4"lstm_199/while/Identity_4:output:0"?
lstm_199_while_identity_5"lstm_199/while/Identity_5:output:0"T
'lstm_199_while_lstm_199_strided_slice_1)lstm_199_while_lstm_199_strided_slice_1_0"|
;lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0"~
<lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0"z
:lstm_199_while_lstm_cell_52_matmul_readvariableop_resource<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0"Ì
clstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensorelstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2f
1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp2j
3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ğ
ë
I__inference_sequential_66_layer_call_and_return_conditional_losses_322780

inputs"
lstm_198_322753:	"
lstm_198_322755:	d
lstm_198_322757:	"
lstm_199_322760:	dÈ"
lstm_199_322762:	2È
lstm_199_322764:	È!
lstm_200_322767:2(!
lstm_200_322769:
(
lstm_200_322771:(!
dense_66_322774:

dense_66_322776:
identity˘ dense_66/StatefulPartitionedCall˘ lstm_198/StatefulPartitionedCall˘ lstm_199/StatefulPartitionedCall˘ lstm_200/StatefulPartitionedCall
 lstm_198/StatefulPartitionedCallStatefulPartitionedCallinputslstm_198_322753lstm_198_322755lstm_198_322757*
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_322712Ş
 lstm_199/StatefulPartitionedCallStatefulPartitionedCall)lstm_198/StatefulPartitionedCall:output:0lstm_199_322760lstm_199_322762lstm_199_322764*
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322547Ĥ
 lstm_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_199/StatefulPartitionedCall:output:0lstm_200_322767lstm_200_322769lstm_200_322771*
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322382
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)lstm_200/StatefulPartitionedCall:output:0dense_66_322774dense_66_322776*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_322184x
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_66/StatefulPartitionedCall!^lstm_198/StatefulPartitionedCall!^lstm_199/StatefulPartitionedCall!^lstm_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 lstm_198/StatefulPartitionedCall lstm_198/StatefulPartitionedCall2D
 lstm_199/StatefulPartitionedCall lstm_199/StatefulPartitionedCall2D
 lstm_200/StatefulPartitionedCall lstm_200/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325768

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
.__inference_sequential_66_layer_call_fn_322954

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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322191o
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
ħ

I__inference_sequential_66_layer_call_and_return_conditional_losses_323408

inputsG
4lstm_198_lstm_cell_51_matmul_readvariableop_resource:	I
6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource:	dD
5lstm_198_lstm_cell_51_biasadd_readvariableop_resource:	G
4lstm_199_lstm_cell_52_matmul_readvariableop_resource:	dÈI
6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈD
5lstm_199_lstm_cell_52_biasadd_readvariableop_resource:	ÈF
4lstm_200_lstm_cell_53_matmul_readvariableop_resource:2(H
6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource:
(C
5lstm_200_lstm_cell_53_biasadd_readvariableop_resource:(9
'dense_66_matmul_readvariableop_resource:
6
(dense_66_biasadd_readvariableop_resource:
identity˘dense_66/BiasAdd/ReadVariableOp˘dense_66/MatMul/ReadVariableOp˘,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp˘+lstm_198/lstm_cell_51/MatMul/ReadVariableOp˘-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp˘lstm_198/while˘,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp˘+lstm_199/lstm_cell_52/MatMul/ReadVariableOp˘-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp˘lstm_199/while˘,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp˘+lstm_200/lstm_cell_53/MatMul/ReadVariableOp˘-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp˘lstm_200/whileD
lstm_198/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_198/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_198/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_198/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_198/strided_sliceStridedSlicelstm_198/Shape:output:0%lstm_198/strided_slice/stack:output:0'lstm_198/strided_slice/stack_1:output:0'lstm_198/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_198/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_198/zeros/packedPacklstm_198/strided_slice:output:0 lstm_198/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_198/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_198/zerosFilllstm_198/zeros/packed:output:0lstm_198/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_198/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_198/zeros_1/packedPacklstm_198/strided_slice:output:0"lstm_198/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_198/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_198/zeros_1Fill lstm_198/zeros_1/packed:output:0lstm_198/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_198/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_198/transpose	Transposeinputs lstm_198/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_198/Shape_1Shapelstm_198/transpose:y:0*
T0*
_output_shapes
:h
lstm_198/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_198/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_198/strided_slice_1StridedSlicelstm_198/Shape_1:output:0'lstm_198/strided_slice_1/stack:output:0)lstm_198/strided_slice_1/stack_1:output:0)lstm_198/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_198/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_198/TensorArrayV2TensorListReserve-lstm_198/TensorArrayV2/element_shape:output:0!lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_198/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_198/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_198/transpose:y:0Glstm_198/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_198/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_198/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_198/strided_slice_2StridedSlicelstm_198/transpose:y:0'lstm_198/strided_slice_2/stack:output:0)lstm_198/strided_slice_2/stack_1:output:0)lstm_198/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_198/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp4lstm_198_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_198/lstm_cell_51/MatMulMatMul!lstm_198/strided_slice_2:output:03lstm_198/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_198/lstm_cell_51/MatMul_1MatMullstm_198/zeros:output:05lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_198/lstm_cell_51/addAddV2&lstm_198/lstm_cell_51/MatMul:product:0(lstm_198/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp5lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_198/lstm_cell_51/BiasAddBiasAddlstm_198/lstm_cell_51/add:z:04lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_198/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_198/lstm_cell_51/splitSplit.lstm_198/lstm_cell_51/split/split_dim:output:0&lstm_198/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_198/lstm_cell_51/SigmoidSigmoid$lstm_198/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/Sigmoid_1Sigmoid$lstm_198/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/mulMul#lstm_198/lstm_cell_51/Sigmoid_1:y:0lstm_198/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_198/lstm_cell_51/ReluRelu$lstm_198/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_198/lstm_cell_51/mul_1Mul!lstm_198/lstm_cell_51/Sigmoid:y:0(lstm_198/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/add_1AddV2lstm_198/lstm_cell_51/mul:z:0lstm_198/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/Sigmoid_2Sigmoid$lstm_198/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_198/lstm_cell_51/Relu_1Relulstm_198/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_198/lstm_cell_51/mul_2Mul#lstm_198/lstm_cell_51/Sigmoid_2:y:0*lstm_198/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_198/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_198/TensorArrayV2_1TensorListReserve/lstm_198/TensorArrayV2_1/element_shape:output:0!lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_198/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_198/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_198/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_198/whileWhile$lstm_198/while/loop_counter:output:0*lstm_198/while/maximum_iterations:output:0lstm_198/time:output:0!lstm_198/TensorArrayV2_1:handle:0lstm_198/zeros:output:0lstm_198/zeros_1:output:0!lstm_198/strided_slice_1:output:0@lstm_198/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_198_lstm_cell_51_matmul_readvariableop_resource6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource5lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
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
lstm_198_while_body_323040*&
condR
lstm_198_while_cond_323039*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_198/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_198/TensorArrayV2Stack/TensorListStackTensorListStacklstm_198/while:output:3Blstm_198/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_198/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_198/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_198/strided_slice_3StridedSlice4lstm_198/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_198/strided_slice_3/stack:output:0)lstm_198/strided_slice_3/stack_1:output:0)lstm_198/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_198/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_198/transpose_1	Transpose4lstm_198/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_198/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_198/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_199/ShapeShapelstm_198/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_199/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_199/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_199/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_199/strided_sliceStridedSlicelstm_199/Shape:output:0%lstm_199/strided_slice/stack:output:0'lstm_199/strided_slice/stack_1:output:0'lstm_199/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_199/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_199/zeros/packedPacklstm_199/strided_slice:output:0 lstm_199/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_199/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_199/zerosFilllstm_199/zeros/packed:output:0lstm_199/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_199/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_199/zeros_1/packedPacklstm_199/strided_slice:output:0"lstm_199/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_199/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_199/zeros_1Fill lstm_199/zeros_1/packed:output:0lstm_199/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_199/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_199/transpose	Transposelstm_198/transpose_1:y:0 lstm_199/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_199/Shape_1Shapelstm_199/transpose:y:0*
T0*
_output_shapes
:h
lstm_199/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_199/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_199/strided_slice_1StridedSlicelstm_199/Shape_1:output:0'lstm_199/strided_slice_1/stack:output:0)lstm_199/strided_slice_1/stack_1:output:0)lstm_199/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_199/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_199/TensorArrayV2TensorListReserve-lstm_199/TensorArrayV2/element_shape:output:0!lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_199/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_199/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_199/transpose:y:0Glstm_199/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_199/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_199/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_199/strided_slice_2StridedSlicelstm_199/transpose:y:0'lstm_199/strided_slice_2/stack:output:0)lstm_199/strided_slice_2/stack_1:output:0)lstm_199/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_199/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp4lstm_199_lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_199/lstm_cell_52/MatMulMatMul!lstm_199/strided_slice_2:output:03lstm_199/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_199/lstm_cell_52/MatMul_1MatMullstm_199/zeros:output:05lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_199/lstm_cell_52/addAddV2&lstm_199/lstm_cell_52/MatMul:product:0(lstm_199/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp5lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_199/lstm_cell_52/BiasAddBiasAddlstm_199/lstm_cell_52/add:z:04lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_199/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_199/lstm_cell_52/splitSplit.lstm_199/lstm_cell_52/split/split_dim:output:0&lstm_199/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_199/lstm_cell_52/SigmoidSigmoid$lstm_199/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/Sigmoid_1Sigmoid$lstm_199/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/mulMul#lstm_199/lstm_cell_52/Sigmoid_1:y:0lstm_199/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_199/lstm_cell_52/ReluRelu$lstm_199/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_199/lstm_cell_52/mul_1Mul!lstm_199/lstm_cell_52/Sigmoid:y:0(lstm_199/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/add_1AddV2lstm_199/lstm_cell_52/mul:z:0lstm_199/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/Sigmoid_2Sigmoid$lstm_199/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_199/lstm_cell_52/Relu_1Relulstm_199/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_199/lstm_cell_52/mul_2Mul#lstm_199/lstm_cell_52/Sigmoid_2:y:0*lstm_199/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_199/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_199/TensorArrayV2_1TensorListReserve/lstm_199/TensorArrayV2_1/element_shape:output:0!lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_199/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_199/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_199/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_199/whileWhile$lstm_199/while/loop_counter:output:0*lstm_199/while/maximum_iterations:output:0lstm_199/time:output:0!lstm_199/TensorArrayV2_1:handle:0lstm_199/zeros:output:0lstm_199/zeros_1:output:0!lstm_199/strided_slice_1:output:0@lstm_199/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_199_lstm_cell_52_matmul_readvariableop_resource6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource5lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
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
lstm_199_while_body_323179*&
condR
lstm_199_while_cond_323178*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_199/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_199/TensorArrayV2Stack/TensorListStackTensorListStacklstm_199/while:output:3Blstm_199/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_199/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_199/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_199/strided_slice_3StridedSlice4lstm_199/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_199/strided_slice_3/stack:output:0)lstm_199/strided_slice_3/stack_1:output:0)lstm_199/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_199/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_199/transpose_1	Transpose4lstm_199/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_199/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_199/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_200/ShapeShapelstm_199/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_200/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_200/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_200/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_200/strided_sliceStridedSlicelstm_200/Shape:output:0%lstm_200/strided_slice/stack:output:0'lstm_200/strided_slice/stack_1:output:0'lstm_200/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_200/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_200/zeros/packedPacklstm_200/strided_slice:output:0 lstm_200/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_200/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_200/zerosFilllstm_200/zeros/packed:output:0lstm_200/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_200/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_200/zeros_1/packedPacklstm_200/strided_slice:output:0"lstm_200/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_200/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_200/zeros_1Fill lstm_200/zeros_1/packed:output:0lstm_200/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_200/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_200/transpose	Transposelstm_199/transpose_1:y:0 lstm_200/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_200/Shape_1Shapelstm_200/transpose:y:0*
T0*
_output_shapes
:h
lstm_200/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_200/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_200/strided_slice_1StridedSlicelstm_200/Shape_1:output:0'lstm_200/strided_slice_1/stack:output:0)lstm_200/strided_slice_1/stack_1:output:0)lstm_200/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_200/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_200/TensorArrayV2TensorListReserve-lstm_200/TensorArrayV2/element_shape:output:0!lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_200/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_200/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_200/transpose:y:0Glstm_200/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_200/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_200/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_200/strided_slice_2StridedSlicelstm_200/transpose:y:0'lstm_200/strided_slice_2/stack:output:0)lstm_200/strided_slice_2/stack_1:output:0)lstm_200/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_200/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp4lstm_200_lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_200/lstm_cell_53/MatMulMatMul!lstm_200/strided_slice_2:output:03lstm_200/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_200/lstm_cell_53/MatMul_1MatMullstm_200/zeros:output:05lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_200/lstm_cell_53/addAddV2&lstm_200/lstm_cell_53/MatMul:product:0(lstm_200/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp5lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_200/lstm_cell_53/BiasAddBiasAddlstm_200/lstm_cell_53/add:z:04lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_200/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_200/lstm_cell_53/splitSplit.lstm_200/lstm_cell_53/split/split_dim:output:0&lstm_200/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_200/lstm_cell_53/SigmoidSigmoid$lstm_200/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/Sigmoid_1Sigmoid$lstm_200/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/mulMul#lstm_200/lstm_cell_53/Sigmoid_1:y:0lstm_200/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_200/lstm_cell_53/ReluRelu$lstm_200/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_200/lstm_cell_53/mul_1Mul!lstm_200/lstm_cell_53/Sigmoid:y:0(lstm_200/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/add_1AddV2lstm_200/lstm_cell_53/mul:z:0lstm_200/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/Sigmoid_2Sigmoid$lstm_200/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_200/lstm_cell_53/Relu_1Relulstm_200/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_200/lstm_cell_53/mul_2Mul#lstm_200/lstm_cell_53/Sigmoid_2:y:0*lstm_200/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_200/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_200/TensorArrayV2_1TensorListReserve/lstm_200/TensorArrayV2_1/element_shape:output:0!lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_200/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_200/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_200/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_200/whileWhile$lstm_200/while/loop_counter:output:0*lstm_200/while/maximum_iterations:output:0lstm_200/time:output:0!lstm_200/TensorArrayV2_1:handle:0lstm_200/zeros:output:0lstm_200/zeros_1:output:0!lstm_200/strided_slice_1:output:0@lstm_200/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_200_lstm_cell_53_matmul_readvariableop_resource6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource5lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
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
lstm_200_while_body_323318*&
condR
lstm_200_while_cond_323317*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_200/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_200/TensorArrayV2Stack/TensorListStackTensorListStacklstm_200/while:output:3Blstm_200/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_200/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_200/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_200/strided_slice_3StridedSlice4lstm_200/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_200/strided_slice_3/stack:output:0)lstm_200/strided_slice_3/stack_1:output:0)lstm_200/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_200/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_200/transpose_1	Transpose4lstm_200/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_200/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_200/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_66/MatMulMatMul!lstm_200/strided_slice_3:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_66/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp-^lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp,^lstm_198/lstm_cell_51/MatMul/ReadVariableOp.^lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp^lstm_198/while-^lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp,^lstm_199/lstm_cell_52/MatMul/ReadVariableOp.^lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp^lstm_199/while-^lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp,^lstm_200/lstm_cell_53/MatMul/ReadVariableOp.^lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp^lstm_200/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2\
,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp2Z
+lstm_198/lstm_cell_51/MatMul/ReadVariableOp+lstm_198/lstm_cell_51/MatMul/ReadVariableOp2^
-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp2 
lstm_198/whilelstm_198/while2\
,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp2Z
+lstm_199/lstm_cell_52/MatMul/ReadVariableOp+lstm_199/lstm_cell_52/MatMul/ReadVariableOp2^
-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp2 
lstm_199/whilelstm_199/while2\
,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp2Z
+lstm_200/lstm_cell_53/MatMul/ReadVariableOp+lstm_200/lstm_cell_53/MatMul/ReadVariableOp2^
-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp2 
lstm_200/whilelstm_200/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_321932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_200_while_cond_323744.
*lstm_200_while_lstm_200_while_loop_counter4
0lstm_200_while_lstm_200_while_maximum_iterations
lstm_200_while_placeholder 
lstm_200_while_placeholder_1 
lstm_200_while_placeholder_2 
lstm_200_while_placeholder_30
,lstm_200_while_less_lstm_200_strided_slice_1F
Blstm_200_while_lstm_200_while_cond_323744___redundant_placeholder0F
Blstm_200_while_lstm_200_while_cond_323744___redundant_placeholder1F
Blstm_200_while_lstm_200_while_cond_323744___redundant_placeholder2F
Blstm_200_while_lstm_200_while_cond_323744___redundant_placeholder3
lstm_200_while_identity

lstm_200/while/LessLesslstm_200_while_placeholder,lstm_200_while_less_lstm_200_strided_slice_1*
T0*
_output_shapes
: ]
lstm_200/while/IdentityIdentitylstm_200/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_200_while_identity lstm_200/while/Identity:output:0*(
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

D__inference_lstm_200_layer_call_and_return_conditional_losses_321708

inputs%
lstm_cell_53_321626:2(%
lstm_cell_53_321628:
(!
lstm_cell_53_321630:(
identity˘$lstm_cell_53/StatefulPartitionedCall˘while;
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
$lstm_cell_53/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_53_321626lstm_cell_53_321628lstm_cell_53_321630*
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321580n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_53_321626lstm_cell_53_321628lstm_cell_53_321630*
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
while_body_321639*
condR
while_cond_321638*K
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
NoOpNoOp%^lstm_cell_53/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_53/StatefulPartitionedCall$lstm_cell_53/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ú


.__inference_sequential_66_layer_call_fn_322981

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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322780o
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
µ
?
while_cond_325455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_325455___redundant_placeholder04
0while_while_cond_325455___redundant_placeholder14
0while_while_cond_325455___redundant_placeholder24
0while_while_cond_325455___redundant_placeholder3
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325898

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
S
³
(sequential_66_lstm_199_while_body_320438J
Fsequential_66_lstm_199_while_sequential_66_lstm_199_while_loop_counterP
Lsequential_66_lstm_199_while_sequential_66_lstm_199_while_maximum_iterations,
(sequential_66_lstm_199_while_placeholder.
*sequential_66_lstm_199_while_placeholder_1.
*sequential_66_lstm_199_while_placeholder_2.
*sequential_66_lstm_199_while_placeholder_3I
Esequential_66_lstm_199_while_sequential_66_lstm_199_strided_slice_1_0
sequential_66_lstm_199_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_199_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_66_lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈ_
Lsequential_66_lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_66_lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0:	È)
%sequential_66_lstm_199_while_identity+
'sequential_66_lstm_199_while_identity_1+
'sequential_66_lstm_199_while_identity_2+
'sequential_66_lstm_199_while_identity_3+
'sequential_66_lstm_199_while_identity_4+
'sequential_66_lstm_199_while_identity_5G
Csequential_66_lstm_199_while_sequential_66_lstm_199_strided_slice_1
sequential_66_lstm_199_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_199_tensorarrayunstack_tensorlistfromtensor[
Hsequential_66_lstm_199_while_lstm_cell_52_matmul_readvariableop_resource:	dÈ]
Jsequential_66_lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈX
Isequential_66_lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource:	È˘@sequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp˘?sequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp˘Asequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp
Nsequential_66/lstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_66/lstm_199/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_66_lstm_199_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_199_tensorarrayunstack_tensorlistfromtensor_0(sequential_66_lstm_199_while_placeholderWsequential_66/lstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOpJsequential_66_lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_66/lstm_199/while/lstm_cell_52/MatMulMatMulGsequential_66/lstm_199/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOpLsequential_66_lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_66/lstm_199/while/lstm_cell_52/MatMul_1MatMul*sequential_66_lstm_199_while_placeholder_2Isequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_66/lstm_199/while/lstm_cell_52/addAddV2:sequential_66/lstm_199/while/lstm_cell_52/MatMul:product:0<sequential_66/lstm_199/while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOpKsequential_66_lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_66/lstm_199/while/lstm_cell_52/BiasAddBiasAdd1sequential_66/lstm_199/while/lstm_cell_52/add:z:0Hsequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_66/lstm_199/while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_66/lstm_199/while/lstm_cell_52/splitSplitBsequential_66/lstm_199/while/lstm_cell_52/split/split_dim:output:0:sequential_66/lstm_199/while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_66/lstm_199/while/lstm_cell_52/SigmoidSigmoid8sequential_66/lstm_199/while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_66/lstm_199/while/lstm_cell_52/Sigmoid_1Sigmoid8sequential_66/lstm_199/while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_66/lstm_199/while/lstm_cell_52/mulMul7sequential_66/lstm_199/while/lstm_cell_52/Sigmoid_1:y:0*sequential_66_lstm_199_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_66/lstm_199/while/lstm_cell_52/ReluRelu8sequential_66/lstm_199/while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_66/lstm_199/while/lstm_cell_52/mul_1Mul5sequential_66/lstm_199/while/lstm_cell_52/Sigmoid:y:0<sequential_66/lstm_199/while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_66/lstm_199/while/lstm_cell_52/add_1AddV21sequential_66/lstm_199/while/lstm_cell_52/mul:z:03sequential_66/lstm_199/while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_66/lstm_199/while/lstm_cell_52/Sigmoid_2Sigmoid8sequential_66/lstm_199/while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_66/lstm_199/while/lstm_cell_52/Relu_1Relu3sequential_66/lstm_199/while/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_66/lstm_199/while/lstm_cell_52/mul_2Mul7sequential_66/lstm_199/while/lstm_cell_52/Sigmoid_2:y:0>sequential_66/lstm_199/while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_66/lstm_199/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_66_lstm_199_while_placeholder_1(sequential_66_lstm_199_while_placeholder3sequential_66/lstm_199/while/lstm_cell_52/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_66/lstm_199/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_66/lstm_199/while/addAddV2(sequential_66_lstm_199_while_placeholder+sequential_66/lstm_199/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_66/lstm_199/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_66/lstm_199/while/add_1AddV2Fsequential_66_lstm_199_while_sequential_66_lstm_199_while_loop_counter-sequential_66/lstm_199/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_66/lstm_199/while/IdentityIdentity&sequential_66/lstm_199/while/add_1:z:0"^sequential_66/lstm_199/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_66/lstm_199/while/Identity_1IdentityLsequential_66_lstm_199_while_sequential_66_lstm_199_while_maximum_iterations"^sequential_66/lstm_199/while/NoOp*
T0*
_output_shapes
: 
'sequential_66/lstm_199/while/Identity_2Identity$sequential_66/lstm_199/while/add:z:0"^sequential_66/lstm_199/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_66/lstm_199/while/Identity_3IdentityQsequential_66/lstm_199/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_66/lstm_199/while/NoOp*
T0*
_output_shapes
: ?
'sequential_66/lstm_199/while/Identity_4Identity3sequential_66/lstm_199/while/lstm_cell_52/mul_2:z:0"^sequential_66/lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_66/lstm_199/while/Identity_5Identity3sequential_66/lstm_199/while/lstm_cell_52/add_1:z:0"^sequential_66/lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_66/lstm_199/while/NoOpNoOpA^sequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp@^sequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOpB^sequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_66_lstm_199_while_identity.sequential_66/lstm_199/while/Identity:output:0"[
'sequential_66_lstm_199_while_identity_10sequential_66/lstm_199/while/Identity_1:output:0"[
'sequential_66_lstm_199_while_identity_20sequential_66/lstm_199/while/Identity_2:output:0"[
'sequential_66_lstm_199_while_identity_30sequential_66/lstm_199/while/Identity_3:output:0"[
'sequential_66_lstm_199_while_identity_40sequential_66/lstm_199/while/Identity_4:output:0"[
'sequential_66_lstm_199_while_identity_50sequential_66/lstm_199/while/Identity_5:output:0"
Isequential_66_lstm_199_while_lstm_cell_52_biasadd_readvariableop_resourceKsequential_66_lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0"
Jsequential_66_lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resourceLsequential_66_lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0"
Hsequential_66_lstm_199_while_lstm_cell_52_matmul_readvariableop_resourceJsequential_66_lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0"
Csequential_66_lstm_199_while_sequential_66_lstm_199_strided_slice_1Esequential_66_lstm_199_while_sequential_66_lstm_199_strided_slice_1_0"
sequential_66_lstm_199_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_199_tensorarrayunstack_tensorlistfromtensorsequential_66_lstm_199_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_199_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp@sequential_66/lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2
?sequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp?sequential_66/lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp2
Asequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOpAsequential_66/lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_199_layer_call_fn_324484

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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322016s
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
8

D__inference_lstm_198_layer_call_and_return_conditional_losses_320817

inputs&
lstm_cell_51_320735:	&
lstm_cell_51_320737:	d"
lstm_cell_51_320739:	
identity˘$lstm_cell_51/StatefulPartitionedCall˘while;
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
$lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_51_320735lstm_cell_51_320737lstm_cell_51_320739*
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320734n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_51_320735lstm_cell_51_320737lstm_cell_51_320739*
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
while_body_320748*
condR
while_cond_320747*K
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
NoOpNoOp%^lstm_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_51/StatefulPartitionedCall$lstm_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_51_layer_call_fn_325719

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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320734o
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

ĥ
)__inference_lstm_198_layer_call_fn_323868

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
D__inference_lstm_198_layer_call_and_return_conditional_losses_321866s
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
Ç	
ġ
D__inference_dense_66_layer_call_and_return_conditional_losses_322184

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
while_cond_322462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_322462___redundant_placeholder04
0while_while_cond_322462___redundant_placeholder14
0while_while_cond_322462___redundant_placeholder24
0while_while_cond_322462___redundant_placeholder3
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
)__inference_lstm_198_layer_call_fn_323879

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
D__inference_lstm_198_layer_call_and_return_conditional_losses_322712s
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
ş

(sequential_66_lstm_198_while_cond_320298J
Fsequential_66_lstm_198_while_sequential_66_lstm_198_while_loop_counterP
Lsequential_66_lstm_198_while_sequential_66_lstm_198_while_maximum_iterations,
(sequential_66_lstm_198_while_placeholder.
*sequential_66_lstm_198_while_placeholder_1.
*sequential_66_lstm_198_while_placeholder_2.
*sequential_66_lstm_198_while_placeholder_3L
Hsequential_66_lstm_198_while_less_sequential_66_lstm_198_strided_slice_1b
^sequential_66_lstm_198_while_sequential_66_lstm_198_while_cond_320298___redundant_placeholder0b
^sequential_66_lstm_198_while_sequential_66_lstm_198_while_cond_320298___redundant_placeholder1b
^sequential_66_lstm_198_while_sequential_66_lstm_198_while_cond_320298___redundant_placeholder2b
^sequential_66_lstm_198_while_sequential_66_lstm_198_while_cond_320298___redundant_placeholder3)
%sequential_66_lstm_198_while_identity
?
!sequential_66/lstm_198/while/LessLess(sequential_66_lstm_198_while_placeholderHsequential_66_lstm_198_while_less_sequential_66_lstm_198_strided_slice_1*
T0*
_output_shapes
: y
%sequential_66/lstm_198/while/IdentityIdentity%sequential_66/lstm_198/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_66_lstm_198_while_identity.sequential_66/lstm_198/while/Identity:output:0*(
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
while_body_322628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322191

inputs"
lstm_198_321867:	"
lstm_198_321869:	d
lstm_198_321871:	"
lstm_199_322017:	dÈ"
lstm_199_322019:	2È
lstm_199_322021:	È!
lstm_200_322167:2(!
lstm_200_322169:
(
lstm_200_322171:(!
dense_66_322185:

dense_66_322187:
identity˘ dense_66/StatefulPartitionedCall˘ lstm_198/StatefulPartitionedCall˘ lstm_199/StatefulPartitionedCall˘ lstm_200/StatefulPartitionedCall
 lstm_198/StatefulPartitionedCallStatefulPartitionedCallinputslstm_198_321867lstm_198_321869lstm_198_321871*
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_321866Ş
 lstm_199/StatefulPartitionedCallStatefulPartitionedCall)lstm_198/StatefulPartitionedCall:output:0lstm_199_322017lstm_199_322019lstm_199_322021*
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322016Ĥ
 lstm_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_199/StatefulPartitionedCall:output:0lstm_200_322167lstm_200_322169lstm_200_322171*
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322166
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)lstm_200/StatefulPartitionedCall:output:0dense_66_322185dense_66_322187*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_322184x
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_66/StatefulPartitionedCall!^lstm_198/StatefulPartitionedCall!^lstm_199/StatefulPartitionedCall!^lstm_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 lstm_198/StatefulPartitionedCall lstm_198/StatefulPartitionedCall2D
 lstm_199/StatefulPartitionedCall lstm_199/StatefulPartitionedCall2D
 lstm_200/StatefulPartitionedCall lstm_200/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ħ

I__inference_sequential_66_layer_call_and_return_conditional_losses_323835

inputsG
4lstm_198_lstm_cell_51_matmul_readvariableop_resource:	I
6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource:	dD
5lstm_198_lstm_cell_51_biasadd_readvariableop_resource:	G
4lstm_199_lstm_cell_52_matmul_readvariableop_resource:	dÈI
6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈD
5lstm_199_lstm_cell_52_biasadd_readvariableop_resource:	ÈF
4lstm_200_lstm_cell_53_matmul_readvariableop_resource:2(H
6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource:
(C
5lstm_200_lstm_cell_53_biasadd_readvariableop_resource:(9
'dense_66_matmul_readvariableop_resource:
6
(dense_66_biasadd_readvariableop_resource:
identity˘dense_66/BiasAdd/ReadVariableOp˘dense_66/MatMul/ReadVariableOp˘,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp˘+lstm_198/lstm_cell_51/MatMul/ReadVariableOp˘-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp˘lstm_198/while˘,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp˘+lstm_199/lstm_cell_52/MatMul/ReadVariableOp˘-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp˘lstm_199/while˘,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp˘+lstm_200/lstm_cell_53/MatMul/ReadVariableOp˘-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp˘lstm_200/whileD
lstm_198/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_198/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_198/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_198/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_198/strided_sliceStridedSlicelstm_198/Shape:output:0%lstm_198/strided_slice/stack:output:0'lstm_198/strided_slice/stack_1:output:0'lstm_198/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_198/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_198/zeros/packedPacklstm_198/strided_slice:output:0 lstm_198/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_198/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_198/zerosFilllstm_198/zeros/packed:output:0lstm_198/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_198/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_198/zeros_1/packedPacklstm_198/strided_slice:output:0"lstm_198/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_198/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_198/zeros_1Fill lstm_198/zeros_1/packed:output:0lstm_198/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_198/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_198/transpose	Transposeinputs lstm_198/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_198/Shape_1Shapelstm_198/transpose:y:0*
T0*
_output_shapes
:h
lstm_198/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_198/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_198/strided_slice_1StridedSlicelstm_198/Shape_1:output:0'lstm_198/strided_slice_1/stack:output:0)lstm_198/strided_slice_1/stack_1:output:0)lstm_198/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_198/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_198/TensorArrayV2TensorListReserve-lstm_198/TensorArrayV2/element_shape:output:0!lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_198/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_198/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_198/transpose:y:0Glstm_198/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_198/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_198/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_198/strided_slice_2StridedSlicelstm_198/transpose:y:0'lstm_198/strided_slice_2/stack:output:0)lstm_198/strided_slice_2/stack_1:output:0)lstm_198/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_198/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp4lstm_198_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_198/lstm_cell_51/MatMulMatMul!lstm_198/strided_slice_2:output:03lstm_198/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_198/lstm_cell_51/MatMul_1MatMullstm_198/zeros:output:05lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_198/lstm_cell_51/addAddV2&lstm_198/lstm_cell_51/MatMul:product:0(lstm_198/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp5lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_198/lstm_cell_51/BiasAddBiasAddlstm_198/lstm_cell_51/add:z:04lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_198/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_198/lstm_cell_51/splitSplit.lstm_198/lstm_cell_51/split/split_dim:output:0&lstm_198/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_198/lstm_cell_51/SigmoidSigmoid$lstm_198/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/Sigmoid_1Sigmoid$lstm_198/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/mulMul#lstm_198/lstm_cell_51/Sigmoid_1:y:0lstm_198/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_198/lstm_cell_51/ReluRelu$lstm_198/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_198/lstm_cell_51/mul_1Mul!lstm_198/lstm_cell_51/Sigmoid:y:0(lstm_198/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/add_1AddV2lstm_198/lstm_cell_51/mul:z:0lstm_198/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/lstm_cell_51/Sigmoid_2Sigmoid$lstm_198/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_198/lstm_cell_51/Relu_1Relulstm_198/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_198/lstm_cell_51/mul_2Mul#lstm_198/lstm_cell_51/Sigmoid_2:y:0*lstm_198/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_198/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_198/TensorArrayV2_1TensorListReserve/lstm_198/TensorArrayV2_1/element_shape:output:0!lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_198/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_198/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_198/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_198/whileWhile$lstm_198/while/loop_counter:output:0*lstm_198/while/maximum_iterations:output:0lstm_198/time:output:0!lstm_198/TensorArrayV2_1:handle:0lstm_198/zeros:output:0lstm_198/zeros_1:output:0!lstm_198/strided_slice_1:output:0@lstm_198/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_198_lstm_cell_51_matmul_readvariableop_resource6lstm_198_lstm_cell_51_matmul_1_readvariableop_resource5lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
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
lstm_198_while_body_323467*&
condR
lstm_198_while_cond_323466*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_198/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_198/TensorArrayV2Stack/TensorListStackTensorListStacklstm_198/while:output:3Blstm_198/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_198/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_198/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_198/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_198/strided_slice_3StridedSlice4lstm_198/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_198/strided_slice_3/stack:output:0)lstm_198/strided_slice_3/stack_1:output:0)lstm_198/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_198/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_198/transpose_1	Transpose4lstm_198/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_198/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_198/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_199/ShapeShapelstm_198/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_199/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_199/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_199/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_199/strided_sliceStridedSlicelstm_199/Shape:output:0%lstm_199/strided_slice/stack:output:0'lstm_199/strided_slice/stack_1:output:0'lstm_199/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_199/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_199/zeros/packedPacklstm_199/strided_slice:output:0 lstm_199/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_199/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_199/zerosFilllstm_199/zeros/packed:output:0lstm_199/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_199/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_199/zeros_1/packedPacklstm_199/strided_slice:output:0"lstm_199/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_199/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_199/zeros_1Fill lstm_199/zeros_1/packed:output:0lstm_199/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_199/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_199/transpose	Transposelstm_198/transpose_1:y:0 lstm_199/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_199/Shape_1Shapelstm_199/transpose:y:0*
T0*
_output_shapes
:h
lstm_199/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_199/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_199/strided_slice_1StridedSlicelstm_199/Shape_1:output:0'lstm_199/strided_slice_1/stack:output:0)lstm_199/strided_slice_1/stack_1:output:0)lstm_199/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_199/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_199/TensorArrayV2TensorListReserve-lstm_199/TensorArrayV2/element_shape:output:0!lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_199/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_199/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_199/transpose:y:0Glstm_199/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_199/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_199/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_199/strided_slice_2StridedSlicelstm_199/transpose:y:0'lstm_199/strided_slice_2/stack:output:0)lstm_199/strided_slice_2/stack_1:output:0)lstm_199/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_199/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp4lstm_199_lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_199/lstm_cell_52/MatMulMatMul!lstm_199/strided_slice_2:output:03lstm_199/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_199/lstm_cell_52/MatMul_1MatMullstm_199/zeros:output:05lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_199/lstm_cell_52/addAddV2&lstm_199/lstm_cell_52/MatMul:product:0(lstm_199/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp5lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_199/lstm_cell_52/BiasAddBiasAddlstm_199/lstm_cell_52/add:z:04lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_199/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_199/lstm_cell_52/splitSplit.lstm_199/lstm_cell_52/split/split_dim:output:0&lstm_199/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_199/lstm_cell_52/SigmoidSigmoid$lstm_199/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/Sigmoid_1Sigmoid$lstm_199/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/mulMul#lstm_199/lstm_cell_52/Sigmoid_1:y:0lstm_199/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_199/lstm_cell_52/ReluRelu$lstm_199/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_199/lstm_cell_52/mul_1Mul!lstm_199/lstm_cell_52/Sigmoid:y:0(lstm_199/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/add_1AddV2lstm_199/lstm_cell_52/mul:z:0lstm_199/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/lstm_cell_52/Sigmoid_2Sigmoid$lstm_199/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_199/lstm_cell_52/Relu_1Relulstm_199/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_199/lstm_cell_52/mul_2Mul#lstm_199/lstm_cell_52/Sigmoid_2:y:0*lstm_199/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_199/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_199/TensorArrayV2_1TensorListReserve/lstm_199/TensorArrayV2_1/element_shape:output:0!lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_199/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_199/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_199/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_199/whileWhile$lstm_199/while/loop_counter:output:0*lstm_199/while/maximum_iterations:output:0lstm_199/time:output:0!lstm_199/TensorArrayV2_1:handle:0lstm_199/zeros:output:0lstm_199/zeros_1:output:0!lstm_199/strided_slice_1:output:0@lstm_199/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_199_lstm_cell_52_matmul_readvariableop_resource6lstm_199_lstm_cell_52_matmul_1_readvariableop_resource5lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
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
lstm_199_while_body_323606*&
condR
lstm_199_while_cond_323605*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_199/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_199/TensorArrayV2Stack/TensorListStackTensorListStacklstm_199/while:output:3Blstm_199/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_199/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_199/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_199/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_199/strided_slice_3StridedSlice4lstm_199/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_199/strided_slice_3/stack:output:0)lstm_199/strided_slice_3/stack_1:output:0)lstm_199/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_199/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_199/transpose_1	Transpose4lstm_199/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_199/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_199/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_200/ShapeShapelstm_199/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_200/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_200/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_200/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_200/strided_sliceStridedSlicelstm_200/Shape:output:0%lstm_200/strided_slice/stack:output:0'lstm_200/strided_slice/stack_1:output:0'lstm_200/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_200/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_200/zeros/packedPacklstm_200/strided_slice:output:0 lstm_200/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_200/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_200/zerosFilllstm_200/zeros/packed:output:0lstm_200/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_200/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_200/zeros_1/packedPacklstm_200/strided_slice:output:0"lstm_200/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_200/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_200/zeros_1Fill lstm_200/zeros_1/packed:output:0lstm_200/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_200/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_200/transpose	Transposelstm_199/transpose_1:y:0 lstm_200/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_200/Shape_1Shapelstm_200/transpose:y:0*
T0*
_output_shapes
:h
lstm_200/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_200/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_200/strided_slice_1StridedSlicelstm_200/Shape_1:output:0'lstm_200/strided_slice_1/stack:output:0)lstm_200/strided_slice_1/stack_1:output:0)lstm_200/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_200/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_200/TensorArrayV2TensorListReserve-lstm_200/TensorArrayV2/element_shape:output:0!lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_200/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_200/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_200/transpose:y:0Glstm_200/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_200/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_200/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_200/strided_slice_2StridedSlicelstm_200/transpose:y:0'lstm_200/strided_slice_2/stack:output:0)lstm_200/strided_slice_2/stack_1:output:0)lstm_200/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_200/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp4lstm_200_lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_200/lstm_cell_53/MatMulMatMul!lstm_200/strided_slice_2:output:03lstm_200/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_200/lstm_cell_53/MatMul_1MatMullstm_200/zeros:output:05lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_200/lstm_cell_53/addAddV2&lstm_200/lstm_cell_53/MatMul:product:0(lstm_200/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp5lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_200/lstm_cell_53/BiasAddBiasAddlstm_200/lstm_cell_53/add:z:04lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_200/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_200/lstm_cell_53/splitSplit.lstm_200/lstm_cell_53/split/split_dim:output:0&lstm_200/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_200/lstm_cell_53/SigmoidSigmoid$lstm_200/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/Sigmoid_1Sigmoid$lstm_200/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/mulMul#lstm_200/lstm_cell_53/Sigmoid_1:y:0lstm_200/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_200/lstm_cell_53/ReluRelu$lstm_200/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_200/lstm_cell_53/mul_1Mul!lstm_200/lstm_cell_53/Sigmoid:y:0(lstm_200/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/add_1AddV2lstm_200/lstm_cell_53/mul:z:0lstm_200/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/lstm_cell_53/Sigmoid_2Sigmoid$lstm_200/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_200/lstm_cell_53/Relu_1Relulstm_200/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_200/lstm_cell_53/mul_2Mul#lstm_200/lstm_cell_53/Sigmoid_2:y:0*lstm_200/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_200/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_200/TensorArrayV2_1TensorListReserve/lstm_200/TensorArrayV2_1/element_shape:output:0!lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_200/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_200/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_200/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_200/whileWhile$lstm_200/while/loop_counter:output:0*lstm_200/while/maximum_iterations:output:0lstm_200/time:output:0!lstm_200/TensorArrayV2_1:handle:0lstm_200/zeros:output:0lstm_200/zeros_1:output:0!lstm_200/strided_slice_1:output:0@lstm_200/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_200_lstm_cell_53_matmul_readvariableop_resource6lstm_200_lstm_cell_53_matmul_1_readvariableop_resource5lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
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
lstm_200_while_body_323745*&
condR
lstm_200_while_cond_323744*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_200/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_200/TensorArrayV2Stack/TensorListStackTensorListStacklstm_200/while:output:3Blstm_200/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_200/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_200/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_200/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_200/strided_slice_3StridedSlice4lstm_200/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_200/strided_slice_3/stack:output:0)lstm_200/strided_slice_3/stack_1:output:0)lstm_200/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_200/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_200/transpose_1	Transpose4lstm_200/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_200/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_200/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_66/MatMulMatMul!lstm_200/strided_slice_3:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_66/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp-^lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp,^lstm_198/lstm_cell_51/MatMul/ReadVariableOp.^lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp^lstm_198/while-^lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp,^lstm_199/lstm_cell_52/MatMul/ReadVariableOp.^lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp^lstm_199/while-^lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp,^lstm_200/lstm_cell_53/MatMul/ReadVariableOp.^lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp^lstm_200/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2\
,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp,lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp2Z
+lstm_198/lstm_cell_51/MatMul/ReadVariableOp+lstm_198/lstm_cell_51/MatMul/ReadVariableOp2^
-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp-lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp2 
lstm_198/whilelstm_198/while2\
,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp,lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp2Z
+lstm_199/lstm_cell_52/MatMul/ReadVariableOp+lstm_199/lstm_cell_52/MatMul/ReadVariableOp2^
-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp-lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp2 
lstm_199/whilelstm_199/while2\
,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp,lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp2Z
+lstm_200/lstm_cell_53/MatMul/ReadVariableOp+lstm_200/lstm_cell_53/MatMul/ReadVariableOp2^
-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp-lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp2 
lstm_200/whilelstm_200/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_199_while_cond_323178.
*lstm_199_while_lstm_199_while_loop_counter4
0lstm_199_while_lstm_199_while_maximum_iterations
lstm_199_while_placeholder 
lstm_199_while_placeholder_1 
lstm_199_while_placeholder_2 
lstm_199_while_placeholder_30
,lstm_199_while_less_lstm_199_strided_slice_1F
Blstm_199_while_lstm_199_while_cond_323178___redundant_placeholder0F
Blstm_199_while_lstm_199_while_cond_323178___redundant_placeholder1F
Blstm_199_while_lstm_199_while_cond_323178___redundant_placeholder2F
Blstm_199_while_lstm_199_while_cond_323178___redundant_placeholder3
lstm_199_while_identity

lstm_199/while/LessLesslstm_199_while_placeholder,lstm_199_while_less_lstm_199_strided_slice_1*
T0*
_output_shapes
: ]
lstm_199/while/IdentityIdentitylstm_199/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_199_while_identity lstm_199/while/Identity:output:0*(
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
âJ

D__inference_lstm_199_layer_call_and_return_conditional_losses_324781
inputs_0>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_324697*
condR
while_cond_324696*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ë
ö
-__inference_lstm_cell_52_layer_call_fn_325834

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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321230o
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
while_cond_322081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_322081___redundant_placeholder04
0while_while_cond_322081___redundant_placeholder14
0while_while_cond_322081___redundant_placeholder24
0while_while_cond_322081___redundant_placeholder3
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
Ğ
¸
)__inference_lstm_199_layer_call_fn_324473
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_321358|
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
while_cond_324839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324839___redundant_placeholder04
0while_while_cond_324839___redundant_placeholder14
0while_while_cond_324839___redundant_placeholder24
0while_while_cond_324839___redundant_placeholder3
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
Â

)__inference_dense_66_layer_call_fn_325692

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
D__inference_dense_66_layer_call_and_return_conditional_losses_322184o
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
ÛB
?

lstm_198_while_body_323040.
*lstm_198_while_lstm_198_while_loop_counter4
0lstm_198_while_lstm_198_while_maximum_iterations
lstm_198_while_placeholder 
lstm_198_while_placeholder_1 
lstm_198_while_placeholder_2 
lstm_198_while_placeholder_3-
)lstm_198_while_lstm_198_strided_slice_1_0i
elstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0:	Q
>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dL
=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0:	
lstm_198_while_identity
lstm_198_while_identity_1
lstm_198_while_identity_2
lstm_198_while_identity_3
lstm_198_while_identity_4
lstm_198_while_identity_5+
'lstm_198_while_lstm_198_strided_slice_1g
clstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensorM
:lstm_198_while_lstm_cell_51_matmul_readvariableop_resource:	O
<lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource:	dJ
;lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource:	˘2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp˘1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp˘3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp
@lstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_198/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0lstm_198_while_placeholderIlstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_198/while/lstm_cell_51/MatMulMatMul9lstm_198/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_198/while/lstm_cell_51/MatMul_1MatMullstm_198_while_placeholder_2;lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_198/while/lstm_cell_51/addAddV2,lstm_198/while/lstm_cell_51/MatMul:product:0.lstm_198/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_198/while/lstm_cell_51/BiasAddBiasAdd#lstm_198/while/lstm_cell_51/add:z:0:lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_198/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_198/while/lstm_cell_51/splitSplit4lstm_198/while/lstm_cell_51/split/split_dim:output:0,lstm_198/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_198/while/lstm_cell_51/SigmoidSigmoid*lstm_198/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_198/while/lstm_cell_51/Sigmoid_1Sigmoid*lstm_198/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_198/while/lstm_cell_51/mulMul)lstm_198/while/lstm_cell_51/Sigmoid_1:y:0lstm_198_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_198/while/lstm_cell_51/ReluRelu*lstm_198/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_198/while/lstm_cell_51/mul_1Mul'lstm_198/while/lstm_cell_51/Sigmoid:y:0.lstm_198/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_198/while/lstm_cell_51/add_1AddV2#lstm_198/while/lstm_cell_51/mul:z:0%lstm_198/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_198/while/lstm_cell_51/Sigmoid_2Sigmoid*lstm_198/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_198/while/lstm_cell_51/Relu_1Relu%lstm_198/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_198/while/lstm_cell_51/mul_2Mul)lstm_198/while/lstm_cell_51/Sigmoid_2:y:00lstm_198/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_198/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_198_while_placeholder_1lstm_198_while_placeholder%lstm_198/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_198/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_198/while/addAddV2lstm_198_while_placeholderlstm_198/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_198/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_198/while/add_1AddV2*lstm_198_while_lstm_198_while_loop_counterlstm_198/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_198/while/IdentityIdentitylstm_198/while/add_1:z:0^lstm_198/while/NoOp*
T0*
_output_shapes
: 
lstm_198/while/Identity_1Identity0lstm_198_while_lstm_198_while_maximum_iterations^lstm_198/while/NoOp*
T0*
_output_shapes
: t
lstm_198/while/Identity_2Identitylstm_198/while/add:z:0^lstm_198/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_198/while/Identity_3IdentityClstm_198/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_198/while/NoOp*
T0*
_output_shapes
: 
lstm_198/while/Identity_4Identity%lstm_198/while/lstm_cell_51/mul_2:z:0^lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/while/Identity_5Identity%lstm_198/while/lstm_cell_51/add_1:z:0^lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_198/while/NoOpNoOp3^lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2^lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp4^lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_198_while_identity lstm_198/while/Identity:output:0"?
lstm_198_while_identity_1"lstm_198/while/Identity_1:output:0"?
lstm_198_while_identity_2"lstm_198/while/Identity_2:output:0"?
lstm_198_while_identity_3"lstm_198/while/Identity_3:output:0"?
lstm_198_while_identity_4"lstm_198/while/Identity_4:output:0"?
lstm_198_while_identity_5"lstm_198/while/Identity_5:output:0"T
'lstm_198_while_lstm_198_strided_slice_1)lstm_198_while_lstm_198_strided_slice_1_0"|
;lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0"~
<lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0"z
:lstm_198_while_lstm_cell_51_matmul_readvariableop_resource<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0"Ì
clstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensorelstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2f
1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp2j
3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_324367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_321097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321097___redundant_placeholder04
0while_while_cond_321097___redundant_placeholder14
0while_while_cond_321097___redundant_placeholder24
0while_while_cond_321097___redundant_placeholder3
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
Ğ
¸
)__inference_lstm_198_layer_call_fn_323846
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_320817|
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
8

D__inference_lstm_199_layer_call_and_return_conditional_losses_321358

inputs&
lstm_cell_52_321276:	dÈ&
lstm_cell_52_321278:	2È"
lstm_cell_52_321280:	È
identity˘$lstm_cell_52/StatefulPartitionedCall˘while;
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
$lstm_cell_52/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_52_321276lstm_cell_52_321278lstm_cell_52_321280*
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321230n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_52_321276lstm_cell_52_321278lstm_cell_52_321280*
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
while_body_321289*
condR
while_cond_321288*K
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
NoOpNoOp%^lstm_cell_52/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_52/StatefulPartitionedCall$lstm_cell_52/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_322297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_322297___redundant_placeholder04
0while_while_cond_322297___redundant_placeholder14
0while_while_cond_322297___redundant_placeholder24
0while_while_cond_322297___redundant_placeholder3
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
áW

__inference__traced_save_326139
file_prefix.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_198_lstm_cell_198_kernel_read_readvariableopF
Bsavev2_lstm_198_lstm_cell_198_recurrent_kernel_read_readvariableop:
6savev2_lstm_198_lstm_cell_198_bias_read_readvariableop<
8savev2_lstm_199_lstm_cell_199_kernel_read_readvariableopF
Bsavev2_lstm_199_lstm_cell_199_recurrent_kernel_read_readvariableop:
6savev2_lstm_199_lstm_cell_199_bias_read_readvariableop<
8savev2_lstm_200_lstm_cell_200_kernel_read_readvariableopF
Bsavev2_lstm_200_lstm_cell_200_recurrent_kernel_read_readvariableop:
6savev2_lstm_200_lstm_cell_200_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_66_kernel_m_read_readvariableop3
/savev2_adam_dense_66_bias_m_read_readvariableopC
?savev2_adam_lstm_198_lstm_cell_198_kernel_m_read_readvariableopM
Isavev2_adam_lstm_198_lstm_cell_198_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_198_lstm_cell_198_bias_m_read_readvariableopC
?savev2_adam_lstm_199_lstm_cell_199_kernel_m_read_readvariableopM
Isavev2_adam_lstm_199_lstm_cell_199_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_199_lstm_cell_199_bias_m_read_readvariableopC
?savev2_adam_lstm_200_lstm_cell_200_kernel_m_read_readvariableopM
Isavev2_adam_lstm_200_lstm_cell_200_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_200_lstm_cell_200_bias_m_read_readvariableop5
1savev2_adam_dense_66_kernel_v_read_readvariableop3
/savev2_adam_dense_66_bias_v_read_readvariableopC
?savev2_adam_lstm_198_lstm_cell_198_kernel_v_read_readvariableopM
Isavev2_adam_lstm_198_lstm_cell_198_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_198_lstm_cell_198_bias_v_read_readvariableopC
?savev2_adam_lstm_199_lstm_cell_199_kernel_v_read_readvariableopM
Isavev2_adam_lstm_199_lstm_cell_199_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_199_lstm_cell_199_bias_v_read_readvariableopC
?savev2_adam_lstm_200_lstm_cell_200_kernel_v_read_readvariableopM
Isavev2_adam_lstm_200_lstm_cell_200_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_200_lstm_cell_200_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_198_lstm_cell_198_kernel_read_readvariableopBsavev2_lstm_198_lstm_cell_198_recurrent_kernel_read_readvariableop6savev2_lstm_198_lstm_cell_198_bias_read_readvariableop8savev2_lstm_199_lstm_cell_199_kernel_read_readvariableopBsavev2_lstm_199_lstm_cell_199_recurrent_kernel_read_readvariableop6savev2_lstm_199_lstm_cell_199_bias_read_readvariableop8savev2_lstm_200_lstm_cell_200_kernel_read_readvariableopBsavev2_lstm_200_lstm_cell_200_recurrent_kernel_read_readvariableop6savev2_lstm_200_lstm_cell_200_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_66_kernel_m_read_readvariableop/savev2_adam_dense_66_bias_m_read_readvariableop?savev2_adam_lstm_198_lstm_cell_198_kernel_m_read_readvariableopIsavev2_adam_lstm_198_lstm_cell_198_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_198_lstm_cell_198_bias_m_read_readvariableop?savev2_adam_lstm_199_lstm_cell_199_kernel_m_read_readvariableopIsavev2_adam_lstm_199_lstm_cell_199_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_199_lstm_cell_199_bias_m_read_readvariableop?savev2_adam_lstm_200_lstm_cell_200_kernel_m_read_readvariableopIsavev2_adam_lstm_200_lstm_cell_200_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_200_lstm_cell_200_bias_m_read_readvariableop1savev2_adam_dense_66_kernel_v_read_readvariableop/savev2_adam_dense_66_bias_v_read_readvariableop?savev2_adam_lstm_198_lstm_cell_198_kernel_v_read_readvariableopIsavev2_adam_lstm_198_lstm_cell_198_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_198_lstm_cell_198_bias_v_read_readvariableop?savev2_adam_lstm_199_lstm_cell_199_kernel_v_read_readvariableopIsavev2_adam_lstm_199_lstm_cell_199_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_199_lstm_cell_199_bias_v_read_readvariableop?savev2_adam_lstm_200_lstm_cell_200_kernel_v_read_readvariableopIsavev2_adam_lstm_200_lstm_cell_200_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_200_lstm_cell_200_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_322627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_322627___redundant_placeholder04
0while_while_cond_322627___redundant_placeholder14
0while_while_cond_322627___redundant_placeholder24
0while_while_cond_322627___redundant_placeholder3
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322547

inputs>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_322463*
condR
while_cond_322462*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ÎB
ê

lstm_200_while_body_323745.
*lstm_200_while_lstm_200_while_loop_counter4
0lstm_200_while_lstm_200_while_maximum_iterations
lstm_200_while_placeholder 
lstm_200_while_placeholder_1 
lstm_200_while_placeholder_2 
lstm_200_while_placeholder_3-
)lstm_200_while_lstm_200_strided_slice_1_0i
elstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0:2(P
>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(K
=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0:(
lstm_200_while_identity
lstm_200_while_identity_1
lstm_200_while_identity_2
lstm_200_while_identity_3
lstm_200_while_identity_4
lstm_200_while_identity_5+
'lstm_200_while_lstm_200_strided_slice_1g
clstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensorL
:lstm_200_while_lstm_cell_53_matmul_readvariableop_resource:2(N
<lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource:
(I
;lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource:(˘2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp˘1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp˘3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp
@lstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_200/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0lstm_200_while_placeholderIlstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_200/while/lstm_cell_53/MatMulMatMul9lstm_200/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_200/while/lstm_cell_53/MatMul_1MatMullstm_200_while_placeholder_2;lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_200/while/lstm_cell_53/addAddV2,lstm_200/while/lstm_cell_53/MatMul:product:0.lstm_200/while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_200/while/lstm_cell_53/BiasAddBiasAdd#lstm_200/while/lstm_cell_53/add:z:0:lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_200/while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_200/while/lstm_cell_53/splitSplit4lstm_200/while/lstm_cell_53/split/split_dim:output:0,lstm_200/while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_200/while/lstm_cell_53/SigmoidSigmoid*lstm_200/while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_200/while/lstm_cell_53/Sigmoid_1Sigmoid*lstm_200/while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_200/while/lstm_cell_53/mulMul)lstm_200/while/lstm_cell_53/Sigmoid_1:y:0lstm_200_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_200/while/lstm_cell_53/ReluRelu*lstm_200/while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_200/while/lstm_cell_53/mul_1Mul'lstm_200/while/lstm_cell_53/Sigmoid:y:0.lstm_200/while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_200/while/lstm_cell_53/add_1AddV2#lstm_200/while/lstm_cell_53/mul:z:0%lstm_200/while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_200/while/lstm_cell_53/Sigmoid_2Sigmoid*lstm_200/while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_200/while/lstm_cell_53/Relu_1Relu%lstm_200/while/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_200/while/lstm_cell_53/mul_2Mul)lstm_200/while/lstm_cell_53/Sigmoid_2:y:00lstm_200/while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_200/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_200_while_placeholder_1lstm_200_while_placeholder%lstm_200/while/lstm_cell_53/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_200/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_200/while/addAddV2lstm_200_while_placeholderlstm_200/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_200/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_200/while/add_1AddV2*lstm_200_while_lstm_200_while_loop_counterlstm_200/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_200/while/IdentityIdentitylstm_200/while/add_1:z:0^lstm_200/while/NoOp*
T0*
_output_shapes
: 
lstm_200/while/Identity_1Identity0lstm_200_while_lstm_200_while_maximum_iterations^lstm_200/while/NoOp*
T0*
_output_shapes
: t
lstm_200/while/Identity_2Identitylstm_200/while/add:z:0^lstm_200/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_200/while/Identity_3IdentityClstm_200/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_200/while/NoOp*
T0*
_output_shapes
: 
lstm_200/while/Identity_4Identity%lstm_200/while/lstm_cell_53/mul_2:z:0^lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/while/Identity_5Identity%lstm_200/while/lstm_cell_53/add_1:z:0^lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_200/while/NoOpNoOp3^lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2^lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp4^lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_200_while_identity lstm_200/while/Identity:output:0"?
lstm_200_while_identity_1"lstm_200/while/Identity_1:output:0"?
lstm_200_while_identity_2"lstm_200/while/Identity_2:output:0"?
lstm_200_while_identity_3"lstm_200/while/Identity_3:output:0"?
lstm_200_while_identity_4"lstm_200/while/Identity_4:output:0"?
lstm_200_while_identity_5"lstm_200/while/Identity_5:output:0"T
'lstm_200_while_lstm_200_strided_slice_1)lstm_200_while_lstm_200_strided_slice_1_0"|
;lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0"~
<lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0"z
:lstm_200_while_lstm_cell_53_matmul_readvariableop_resource<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0"Ì
clstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensorelstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2f
1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp2j
3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_324696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324696___redundant_placeholder04
0while_while_cond_324696___redundant_placeholder14
0while_while_cond_324696___redundant_placeholder24
0while_while_cond_324696___redundant_placeholder3
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
while_cond_325169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_325169___redundant_placeholder04
0while_while_cond_325169___redundant_placeholder14
0while_while_cond_325169___redundant_placeholder24
0while_while_cond_325169___redundant_placeholder3
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
while_body_320939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_51_320963_0:	.
while_lstm_cell_51_320965_0:	d*
while_lstm_cell_51_320967_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_51_320963:	,
while_lstm_cell_51_320965:	d(
while_lstm_cell_51_320967:	˘*while/lstm_cell_51/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_51_320963_0while_lstm_cell_51_320965_0while_lstm_cell_51_320967_0*
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320880Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_51/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_51/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_51_320963while_lstm_cell_51_320963_0"8
while_lstm_cell_51_320965while_lstm_cell_51_320965_0"8
while_lstm_cell_51_320967while_lstm_cell_51_320967_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_51/StatefulPartitionedCall*while/lstm_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_51_layer_call_fn_325736

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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320880o
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
à"
Ŭ
while_body_321448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_53_321472_0:2(-
while_lstm_cell_53_321474_0:
()
while_lstm_cell_53_321476_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_53_321472:2(+
while_lstm_cell_53_321474:
('
while_lstm_cell_53_321476:(˘*while/lstm_cell_53/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_53/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_53_321472_0while_lstm_cell_53_321474_0while_lstm_cell_53_321476_0*
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321434Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_53/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_53/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_53/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_53_321472while_lstm_cell_53_321472_0"8
while_lstm_cell_53_321474while_lstm_cell_53_321474_0"8
while_lstm_cell_53_321476while_lstm_cell_53_321476_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_53/StatefulPartitionedCall*while/lstm_cell_53/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_324223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324223___redundant_placeholder04
0while_while_cond_324223___redundant_placeholder14
0while_while_cond_324223___redundant_placeholder24
0while_while_cond_324223___redundant_placeholder3
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
!__inference__wrapped_model_320667
lstm_198_inputU
Bsequential_66_lstm_198_lstm_cell_51_matmul_readvariableop_resource:	W
Dsequential_66_lstm_198_lstm_cell_51_matmul_1_readvariableop_resource:	dR
Csequential_66_lstm_198_lstm_cell_51_biasadd_readvariableop_resource:	U
Bsequential_66_lstm_199_lstm_cell_52_matmul_readvariableop_resource:	dÈW
Dsequential_66_lstm_199_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈR
Csequential_66_lstm_199_lstm_cell_52_biasadd_readvariableop_resource:	ÈT
Bsequential_66_lstm_200_lstm_cell_53_matmul_readvariableop_resource:2(V
Dsequential_66_lstm_200_lstm_cell_53_matmul_1_readvariableop_resource:
(Q
Csequential_66_lstm_200_lstm_cell_53_biasadd_readvariableop_resource:(G
5sequential_66_dense_66_matmul_readvariableop_resource:
D
6sequential_66_dense_66_biasadd_readvariableop_resource:
identity˘-sequential_66/dense_66/BiasAdd/ReadVariableOp˘,sequential_66/dense_66/MatMul/ReadVariableOp˘:sequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp˘9sequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOp˘;sequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp˘sequential_66/lstm_198/while˘:sequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp˘9sequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOp˘;sequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp˘sequential_66/lstm_199/while˘:sequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp˘9sequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOp˘;sequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp˘sequential_66/lstm_200/whileZ
sequential_66/lstm_198/ShapeShapelstm_198_input*
T0*
_output_shapes
:t
*sequential_66/lstm_198/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_66/lstm_198/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_66/lstm_198/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_66/lstm_198/strided_sliceStridedSlice%sequential_66/lstm_198/Shape:output:03sequential_66/lstm_198/strided_slice/stack:output:05sequential_66/lstm_198/strided_slice/stack_1:output:05sequential_66/lstm_198/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_66/lstm_198/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_66/lstm_198/zeros/packedPack-sequential_66/lstm_198/strided_slice:output:0.sequential_66/lstm_198/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_66/lstm_198/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_66/lstm_198/zerosFill,sequential_66/lstm_198/zeros/packed:output:0+sequential_66/lstm_198/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_66/lstm_198/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_66/lstm_198/zeros_1/packedPack-sequential_66/lstm_198/strided_slice:output:00sequential_66/lstm_198/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_66/lstm_198/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_66/lstm_198/zeros_1Fill.sequential_66/lstm_198/zeros_1/packed:output:0-sequential_66/lstm_198/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_66/lstm_198/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_66/lstm_198/transpose	Transposelstm_198_input.sequential_66/lstm_198/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_66/lstm_198/Shape_1Shape$sequential_66/lstm_198/transpose:y:0*
T0*
_output_shapes
:v
,sequential_66/lstm_198/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_198/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_198/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_66/lstm_198/strided_slice_1StridedSlice'sequential_66/lstm_198/Shape_1:output:05sequential_66/lstm_198/strided_slice_1/stack:output:07sequential_66/lstm_198/strided_slice_1/stack_1:output:07sequential_66/lstm_198/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_66/lstm_198/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_66/lstm_198/TensorArrayV2TensorListReserve;sequential_66/lstm_198/TensorArrayV2/element_shape:output:0/sequential_66/lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_66/lstm_198/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_66/lstm_198/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_66/lstm_198/transpose:y:0Usequential_66/lstm_198/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_66/lstm_198/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_198/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_198/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_66/lstm_198/strided_slice_2StridedSlice$sequential_66/lstm_198/transpose:y:05sequential_66/lstm_198/strided_slice_2/stack:output:07sequential_66/lstm_198/strided_slice_2/stack_1:output:07sequential_66/lstm_198/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOpReadVariableOpBsequential_66_lstm_198_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_66/lstm_198/lstm_cell_51/MatMulMatMul/sequential_66/lstm_198/strided_slice_2:output:0Asequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOpDsequential_66_lstm_198_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_66/lstm_198/lstm_cell_51/MatMul_1MatMul%sequential_66/lstm_198/zeros:output:0Csequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_66/lstm_198/lstm_cell_51/addAddV24sequential_66/lstm_198/lstm_cell_51/MatMul:product:06sequential_66/lstm_198/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOpCsequential_66_lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_66/lstm_198/lstm_cell_51/BiasAddBiasAdd+sequential_66/lstm_198/lstm_cell_51/add:z:0Bsequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_66/lstm_198/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_66/lstm_198/lstm_cell_51/splitSplit<sequential_66/lstm_198/lstm_cell_51/split/split_dim:output:04sequential_66/lstm_198/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_66/lstm_198/lstm_cell_51/SigmoidSigmoid2sequential_66/lstm_198/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_66/lstm_198/lstm_cell_51/Sigmoid_1Sigmoid2sequential_66/lstm_198/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_66/lstm_198/lstm_cell_51/mulMul1sequential_66/lstm_198/lstm_cell_51/Sigmoid_1:y:0'sequential_66/lstm_198/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_66/lstm_198/lstm_cell_51/ReluRelu2sequential_66/lstm_198/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_66/lstm_198/lstm_cell_51/mul_1Mul/sequential_66/lstm_198/lstm_cell_51/Sigmoid:y:06sequential_66/lstm_198/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_66/lstm_198/lstm_cell_51/add_1AddV2+sequential_66/lstm_198/lstm_cell_51/mul:z:0-sequential_66/lstm_198/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_66/lstm_198/lstm_cell_51/Sigmoid_2Sigmoid2sequential_66/lstm_198/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_66/lstm_198/lstm_cell_51/Relu_1Relu-sequential_66/lstm_198/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_66/lstm_198/lstm_cell_51/mul_2Mul1sequential_66/lstm_198/lstm_cell_51/Sigmoid_2:y:08sequential_66/lstm_198/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_66/lstm_198/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_66/lstm_198/TensorArrayV2_1TensorListReserve=sequential_66/lstm_198/TensorArrayV2_1/element_shape:output:0/sequential_66/lstm_198/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_66/lstm_198/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_66/lstm_198/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_66/lstm_198/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_66/lstm_198/whileWhile2sequential_66/lstm_198/while/loop_counter:output:08sequential_66/lstm_198/while/maximum_iterations:output:0$sequential_66/lstm_198/time:output:0/sequential_66/lstm_198/TensorArrayV2_1:handle:0%sequential_66/lstm_198/zeros:output:0'sequential_66/lstm_198/zeros_1:output:0/sequential_66/lstm_198/strided_slice_1:output:0Nsequential_66/lstm_198/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_66_lstm_198_lstm_cell_51_matmul_readvariableop_resourceDsequential_66_lstm_198_lstm_cell_51_matmul_1_readvariableop_resourceCsequential_66_lstm_198_lstm_cell_51_biasadd_readvariableop_resource*
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
(sequential_66_lstm_198_while_body_320299*4
cond,R*
(sequential_66_lstm_198_while_cond_320298*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_66/lstm_198/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_66/lstm_198/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_66/lstm_198/while:output:3Psequential_66/lstm_198/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_66/lstm_198/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_66/lstm_198/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_198/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_66/lstm_198/strided_slice_3StridedSliceBsequential_66/lstm_198/TensorArrayV2Stack/TensorListStack:tensor:05sequential_66/lstm_198/strided_slice_3/stack:output:07sequential_66/lstm_198/strided_slice_3/stack_1:output:07sequential_66/lstm_198/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_66/lstm_198/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_66/lstm_198/transpose_1	TransposeBsequential_66/lstm_198/TensorArrayV2Stack/TensorListStack:tensor:00sequential_66/lstm_198/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_66/lstm_198/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_66/lstm_199/ShapeShape&sequential_66/lstm_198/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_66/lstm_199/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_66/lstm_199/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_66/lstm_199/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_66/lstm_199/strided_sliceStridedSlice%sequential_66/lstm_199/Shape:output:03sequential_66/lstm_199/strided_slice/stack:output:05sequential_66/lstm_199/strided_slice/stack_1:output:05sequential_66/lstm_199/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_66/lstm_199/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_66/lstm_199/zeros/packedPack-sequential_66/lstm_199/strided_slice:output:0.sequential_66/lstm_199/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_66/lstm_199/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_66/lstm_199/zerosFill,sequential_66/lstm_199/zeros/packed:output:0+sequential_66/lstm_199/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_66/lstm_199/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_66/lstm_199/zeros_1/packedPack-sequential_66/lstm_199/strided_slice:output:00sequential_66/lstm_199/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_66/lstm_199/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_66/lstm_199/zeros_1Fill.sequential_66/lstm_199/zeros_1/packed:output:0-sequential_66/lstm_199/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_66/lstm_199/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_66/lstm_199/transpose	Transpose&sequential_66/lstm_198/transpose_1:y:0.sequential_66/lstm_199/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_66/lstm_199/Shape_1Shape$sequential_66/lstm_199/transpose:y:0*
T0*
_output_shapes
:v
,sequential_66/lstm_199/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_199/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_199/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_66/lstm_199/strided_slice_1StridedSlice'sequential_66/lstm_199/Shape_1:output:05sequential_66/lstm_199/strided_slice_1/stack:output:07sequential_66/lstm_199/strided_slice_1/stack_1:output:07sequential_66/lstm_199/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_66/lstm_199/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_66/lstm_199/TensorArrayV2TensorListReserve;sequential_66/lstm_199/TensorArrayV2/element_shape:output:0/sequential_66/lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_66/lstm_199/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_66/lstm_199/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_66/lstm_199/transpose:y:0Usequential_66/lstm_199/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_66/lstm_199/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_199/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_199/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_66/lstm_199/strided_slice_2StridedSlice$sequential_66/lstm_199/transpose:y:05sequential_66/lstm_199/strided_slice_2/stack:output:07sequential_66/lstm_199/strided_slice_2/stack_1:output:07sequential_66/lstm_199/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOpReadVariableOpBsequential_66_lstm_199_lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_66/lstm_199/lstm_cell_52/MatMulMatMul/sequential_66/lstm_199/strided_slice_2:output:0Asequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOpDsequential_66_lstm_199_lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_66/lstm_199/lstm_cell_52/MatMul_1MatMul%sequential_66/lstm_199/zeros:output:0Csequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_66/lstm_199/lstm_cell_52/addAddV24sequential_66/lstm_199/lstm_cell_52/MatMul:product:06sequential_66/lstm_199/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOpCsequential_66_lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_66/lstm_199/lstm_cell_52/BiasAddBiasAdd+sequential_66/lstm_199/lstm_cell_52/add:z:0Bsequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_66/lstm_199/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_66/lstm_199/lstm_cell_52/splitSplit<sequential_66/lstm_199/lstm_cell_52/split/split_dim:output:04sequential_66/lstm_199/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_66/lstm_199/lstm_cell_52/SigmoidSigmoid2sequential_66/lstm_199/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_66/lstm_199/lstm_cell_52/Sigmoid_1Sigmoid2sequential_66/lstm_199/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_66/lstm_199/lstm_cell_52/mulMul1sequential_66/lstm_199/lstm_cell_52/Sigmoid_1:y:0'sequential_66/lstm_199/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_66/lstm_199/lstm_cell_52/ReluRelu2sequential_66/lstm_199/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_66/lstm_199/lstm_cell_52/mul_1Mul/sequential_66/lstm_199/lstm_cell_52/Sigmoid:y:06sequential_66/lstm_199/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_66/lstm_199/lstm_cell_52/add_1AddV2+sequential_66/lstm_199/lstm_cell_52/mul:z:0-sequential_66/lstm_199/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_66/lstm_199/lstm_cell_52/Sigmoid_2Sigmoid2sequential_66/lstm_199/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_66/lstm_199/lstm_cell_52/Relu_1Relu-sequential_66/lstm_199/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_66/lstm_199/lstm_cell_52/mul_2Mul1sequential_66/lstm_199/lstm_cell_52/Sigmoid_2:y:08sequential_66/lstm_199/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_66/lstm_199/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_66/lstm_199/TensorArrayV2_1TensorListReserve=sequential_66/lstm_199/TensorArrayV2_1/element_shape:output:0/sequential_66/lstm_199/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_66/lstm_199/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_66/lstm_199/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_66/lstm_199/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_66/lstm_199/whileWhile2sequential_66/lstm_199/while/loop_counter:output:08sequential_66/lstm_199/while/maximum_iterations:output:0$sequential_66/lstm_199/time:output:0/sequential_66/lstm_199/TensorArrayV2_1:handle:0%sequential_66/lstm_199/zeros:output:0'sequential_66/lstm_199/zeros_1:output:0/sequential_66/lstm_199/strided_slice_1:output:0Nsequential_66/lstm_199/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_66_lstm_199_lstm_cell_52_matmul_readvariableop_resourceDsequential_66_lstm_199_lstm_cell_52_matmul_1_readvariableop_resourceCsequential_66_lstm_199_lstm_cell_52_biasadd_readvariableop_resource*
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
(sequential_66_lstm_199_while_body_320438*4
cond,R*
(sequential_66_lstm_199_while_cond_320437*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_66/lstm_199/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_66/lstm_199/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_66/lstm_199/while:output:3Psequential_66/lstm_199/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_66/lstm_199/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_66/lstm_199/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_199/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_66/lstm_199/strided_slice_3StridedSliceBsequential_66/lstm_199/TensorArrayV2Stack/TensorListStack:tensor:05sequential_66/lstm_199/strided_slice_3/stack:output:07sequential_66/lstm_199/strided_slice_3/stack_1:output:07sequential_66/lstm_199/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_66/lstm_199/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_66/lstm_199/transpose_1	TransposeBsequential_66/lstm_199/TensorArrayV2Stack/TensorListStack:tensor:00sequential_66/lstm_199/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_66/lstm_199/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_66/lstm_200/ShapeShape&sequential_66/lstm_199/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_66/lstm_200/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_66/lstm_200/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_66/lstm_200/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_66/lstm_200/strided_sliceStridedSlice%sequential_66/lstm_200/Shape:output:03sequential_66/lstm_200/strided_slice/stack:output:05sequential_66/lstm_200/strided_slice/stack_1:output:05sequential_66/lstm_200/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_66/lstm_200/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_66/lstm_200/zeros/packedPack-sequential_66/lstm_200/strided_slice:output:0.sequential_66/lstm_200/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_66/lstm_200/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_66/lstm_200/zerosFill,sequential_66/lstm_200/zeros/packed:output:0+sequential_66/lstm_200/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_66/lstm_200/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_66/lstm_200/zeros_1/packedPack-sequential_66/lstm_200/strided_slice:output:00sequential_66/lstm_200/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_66/lstm_200/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_66/lstm_200/zeros_1Fill.sequential_66/lstm_200/zeros_1/packed:output:0-sequential_66/lstm_200/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_66/lstm_200/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_66/lstm_200/transpose	Transpose&sequential_66/lstm_199/transpose_1:y:0.sequential_66/lstm_200/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_66/lstm_200/Shape_1Shape$sequential_66/lstm_200/transpose:y:0*
T0*
_output_shapes
:v
,sequential_66/lstm_200/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_200/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_200/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_66/lstm_200/strided_slice_1StridedSlice'sequential_66/lstm_200/Shape_1:output:05sequential_66/lstm_200/strided_slice_1/stack:output:07sequential_66/lstm_200/strided_slice_1/stack_1:output:07sequential_66/lstm_200/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_66/lstm_200/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_66/lstm_200/TensorArrayV2TensorListReserve;sequential_66/lstm_200/TensorArrayV2/element_shape:output:0/sequential_66/lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_66/lstm_200/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_66/lstm_200/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_66/lstm_200/transpose:y:0Usequential_66/lstm_200/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_66/lstm_200/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_200/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_66/lstm_200/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_66/lstm_200/strided_slice_2StridedSlice$sequential_66/lstm_200/transpose:y:05sequential_66/lstm_200/strided_slice_2/stack:output:07sequential_66/lstm_200/strided_slice_2/stack_1:output:07sequential_66/lstm_200/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOpReadVariableOpBsequential_66_lstm_200_lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_66/lstm_200/lstm_cell_53/MatMulMatMul/sequential_66/lstm_200/strided_slice_2:output:0Asequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOpDsequential_66_lstm_200_lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_66/lstm_200/lstm_cell_53/MatMul_1MatMul%sequential_66/lstm_200/zeros:output:0Csequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_66/lstm_200/lstm_cell_53/addAddV24sequential_66/lstm_200/lstm_cell_53/MatMul:product:06sequential_66/lstm_200/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOpCsequential_66_lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_66/lstm_200/lstm_cell_53/BiasAddBiasAdd+sequential_66/lstm_200/lstm_cell_53/add:z:0Bsequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_66/lstm_200/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_66/lstm_200/lstm_cell_53/splitSplit<sequential_66/lstm_200/lstm_cell_53/split/split_dim:output:04sequential_66/lstm_200/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_66/lstm_200/lstm_cell_53/SigmoidSigmoid2sequential_66/lstm_200/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_66/lstm_200/lstm_cell_53/Sigmoid_1Sigmoid2sequential_66/lstm_200/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_66/lstm_200/lstm_cell_53/mulMul1sequential_66/lstm_200/lstm_cell_53/Sigmoid_1:y:0'sequential_66/lstm_200/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_66/lstm_200/lstm_cell_53/ReluRelu2sequential_66/lstm_200/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_66/lstm_200/lstm_cell_53/mul_1Mul/sequential_66/lstm_200/lstm_cell_53/Sigmoid:y:06sequential_66/lstm_200/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_66/lstm_200/lstm_cell_53/add_1AddV2+sequential_66/lstm_200/lstm_cell_53/mul:z:0-sequential_66/lstm_200/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_66/lstm_200/lstm_cell_53/Sigmoid_2Sigmoid2sequential_66/lstm_200/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_66/lstm_200/lstm_cell_53/Relu_1Relu-sequential_66/lstm_200/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_66/lstm_200/lstm_cell_53/mul_2Mul1sequential_66/lstm_200/lstm_cell_53/Sigmoid_2:y:08sequential_66/lstm_200/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_66/lstm_200/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_66/lstm_200/TensorArrayV2_1TensorListReserve=sequential_66/lstm_200/TensorArrayV2_1/element_shape:output:0/sequential_66/lstm_200/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_66/lstm_200/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_66/lstm_200/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_66/lstm_200/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_66/lstm_200/whileWhile2sequential_66/lstm_200/while/loop_counter:output:08sequential_66/lstm_200/while/maximum_iterations:output:0$sequential_66/lstm_200/time:output:0/sequential_66/lstm_200/TensorArrayV2_1:handle:0%sequential_66/lstm_200/zeros:output:0'sequential_66/lstm_200/zeros_1:output:0/sequential_66/lstm_200/strided_slice_1:output:0Nsequential_66/lstm_200/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_66_lstm_200_lstm_cell_53_matmul_readvariableop_resourceDsequential_66_lstm_200_lstm_cell_53_matmul_1_readvariableop_resourceCsequential_66_lstm_200_lstm_cell_53_biasadd_readvariableop_resource*
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
(sequential_66_lstm_200_while_body_320577*4
cond,R*
(sequential_66_lstm_200_while_cond_320576*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_66/lstm_200/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_66/lstm_200/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_66/lstm_200/while:output:3Psequential_66/lstm_200/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_66/lstm_200/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_66/lstm_200/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_66/lstm_200/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_66/lstm_200/strided_slice_3StridedSliceBsequential_66/lstm_200/TensorArrayV2Stack/TensorListStack:tensor:05sequential_66/lstm_200/strided_slice_3/stack:output:07sequential_66/lstm_200/strided_slice_3/stack_1:output:07sequential_66/lstm_200/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_66/lstm_200/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_66/lstm_200/transpose_1	TransposeBsequential_66/lstm_200/TensorArrayV2Stack/TensorListStack:tensor:00sequential_66/lstm_200/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_66/lstm_200/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_66/dense_66/MatMul/ReadVariableOpReadVariableOp5sequential_66_dense_66_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_66/dense_66/MatMulMatMul/sequential_66/lstm_200/strided_slice_3:output:04sequential_66/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_66/dense_66/BiasAdd/ReadVariableOpReadVariableOp6sequential_66_dense_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_66/dense_66/BiasAddBiasAdd'sequential_66/dense_66/MatMul:product:05sequential_66/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_66/dense_66/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_66/dense_66/BiasAdd/ReadVariableOp-^sequential_66/dense_66/MatMul/ReadVariableOp;^sequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp:^sequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOp<^sequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp^sequential_66/lstm_198/while;^sequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp:^sequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOp<^sequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp^sequential_66/lstm_199/while;^sequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp:^sequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOp<^sequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp^sequential_66/lstm_200/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_66/dense_66/BiasAdd/ReadVariableOp-sequential_66/dense_66/BiasAdd/ReadVariableOp2\
,sequential_66/dense_66/MatMul/ReadVariableOp,sequential_66/dense_66/MatMul/ReadVariableOp2x
:sequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp:sequential_66/lstm_198/lstm_cell_51/BiasAdd/ReadVariableOp2v
9sequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOp9sequential_66/lstm_198/lstm_cell_51/MatMul/ReadVariableOp2z
;sequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp;sequential_66/lstm_198/lstm_cell_51/MatMul_1/ReadVariableOp2<
sequential_66/lstm_198/whilesequential_66/lstm_198/while2x
:sequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp:sequential_66/lstm_199/lstm_cell_52/BiasAdd/ReadVariableOp2v
9sequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOp9sequential_66/lstm_199/lstm_cell_52/MatMul/ReadVariableOp2z
;sequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp;sequential_66/lstm_199/lstm_cell_52/MatMul_1/ReadVariableOp2<
sequential_66/lstm_199/whilesequential_66/lstm_199/while2x
:sequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp:sequential_66/lstm_200/lstm_cell_53/BiasAdd/ReadVariableOp2v
9sequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOp9sequential_66/lstm_200/lstm_cell_53/MatMul/ReadVariableOp2z
;sequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp;sequential_66/lstm_200/lstm_cell_53/MatMul_1/ReadVariableOp2<
sequential_66/lstm_200/whilesequential_66/lstm_200/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_198_input
?
ó
I__inference_sequential_66_layer_call_and_return_conditional_losses_322892
lstm_198_input"
lstm_198_322865:	"
lstm_198_322867:	d
lstm_198_322869:	"
lstm_199_322872:	dÈ"
lstm_199_322874:	2È
lstm_199_322876:	È!
lstm_200_322879:2(!
lstm_200_322881:
(
lstm_200_322883:(!
dense_66_322886:

dense_66_322888:
identity˘ dense_66/StatefulPartitionedCall˘ lstm_198/StatefulPartitionedCall˘ lstm_199/StatefulPartitionedCall˘ lstm_200/StatefulPartitionedCall
 lstm_198/StatefulPartitionedCallStatefulPartitionedCalllstm_198_inputlstm_198_322865lstm_198_322867lstm_198_322869*
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_322712Ş
 lstm_199/StatefulPartitionedCallStatefulPartitionedCall)lstm_198/StatefulPartitionedCall:output:0lstm_199_322872lstm_199_322874lstm_199_322876*
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322547Ĥ
 lstm_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_199/StatefulPartitionedCall:output:0lstm_200_322879lstm_200_322881lstm_200_322883*
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322382
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)lstm_200/StatefulPartitionedCall:output:0dense_66_322886dense_66_322888*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_322184x
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_66/StatefulPartitionedCall!^lstm_198/StatefulPartitionedCall!^lstm_199/StatefulPartitionedCall!^lstm_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 lstm_198/StatefulPartitionedCall lstm_198/StatefulPartitionedCall2D
 lstm_199/StatefulPartitionedCall lstm_199/StatefulPartitionedCall2D
 lstm_200/StatefulPartitionedCall lstm_200/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_198_input
ÎB
ê

lstm_200_while_body_323318.
*lstm_200_while_lstm_200_while_loop_counter4
0lstm_200_while_lstm_200_while_maximum_iterations
lstm_200_while_placeholder 
lstm_200_while_placeholder_1 
lstm_200_while_placeholder_2 
lstm_200_while_placeholder_3-
)lstm_200_while_lstm_200_strided_slice_1_0i
elstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0:2(P
>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(K
=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0:(
lstm_200_while_identity
lstm_200_while_identity_1
lstm_200_while_identity_2
lstm_200_while_identity_3
lstm_200_while_identity_4
lstm_200_while_identity_5+
'lstm_200_while_lstm_200_strided_slice_1g
clstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensorL
:lstm_200_while_lstm_cell_53_matmul_readvariableop_resource:2(N
<lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource:
(I
;lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource:(˘2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp˘1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp˘3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp
@lstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_200/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0lstm_200_while_placeholderIlstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_200/while/lstm_cell_53/MatMulMatMul9lstm_200/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_200/while/lstm_cell_53/MatMul_1MatMullstm_200_while_placeholder_2;lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_200/while/lstm_cell_53/addAddV2,lstm_200/while/lstm_cell_53/MatMul:product:0.lstm_200/while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_200/while/lstm_cell_53/BiasAddBiasAdd#lstm_200/while/lstm_cell_53/add:z:0:lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_200/while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_200/while/lstm_cell_53/splitSplit4lstm_200/while/lstm_cell_53/split/split_dim:output:0,lstm_200/while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_200/while/lstm_cell_53/SigmoidSigmoid*lstm_200/while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_200/while/lstm_cell_53/Sigmoid_1Sigmoid*lstm_200/while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_200/while/lstm_cell_53/mulMul)lstm_200/while/lstm_cell_53/Sigmoid_1:y:0lstm_200_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_200/while/lstm_cell_53/ReluRelu*lstm_200/while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_200/while/lstm_cell_53/mul_1Mul'lstm_200/while/lstm_cell_53/Sigmoid:y:0.lstm_200/while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_200/while/lstm_cell_53/add_1AddV2#lstm_200/while/lstm_cell_53/mul:z:0%lstm_200/while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_200/while/lstm_cell_53/Sigmoid_2Sigmoid*lstm_200/while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_200/while/lstm_cell_53/Relu_1Relu%lstm_200/while/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_200/while/lstm_cell_53/mul_2Mul)lstm_200/while/lstm_cell_53/Sigmoid_2:y:00lstm_200/while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_200/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_200_while_placeholder_1lstm_200_while_placeholder%lstm_200/while/lstm_cell_53/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_200/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_200/while/addAddV2lstm_200_while_placeholderlstm_200/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_200/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_200/while/add_1AddV2*lstm_200_while_lstm_200_while_loop_counterlstm_200/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_200/while/IdentityIdentitylstm_200/while/add_1:z:0^lstm_200/while/NoOp*
T0*
_output_shapes
: 
lstm_200/while/Identity_1Identity0lstm_200_while_lstm_200_while_maximum_iterations^lstm_200/while/NoOp*
T0*
_output_shapes
: t
lstm_200/while/Identity_2Identitylstm_200/while/add:z:0^lstm_200/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_200/while/Identity_3IdentityClstm_200/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_200/while/NoOp*
T0*
_output_shapes
: 
lstm_200/while/Identity_4Identity%lstm_200/while/lstm_cell_53/mul_2:z:0^lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_200/while/Identity_5Identity%lstm_200/while/lstm_cell_53/add_1:z:0^lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_200/while/NoOpNoOp3^lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2^lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp4^lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_200_while_identity lstm_200/while/Identity:output:0"?
lstm_200_while_identity_1"lstm_200/while/Identity_1:output:0"?
lstm_200_while_identity_2"lstm_200/while/Identity_2:output:0"?
lstm_200_while_identity_3"lstm_200/while/Identity_3:output:0"?
lstm_200_while_identity_4"lstm_200/while/Identity_4:output:0"?
lstm_200_while_identity_5"lstm_200/while/Identity_5:output:0"T
'lstm_200_while_lstm_200_strided_slice_1)lstm_200_while_lstm_200_strided_slice_1_0"|
;lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource=lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0"~
<lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource>lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0"z
:lstm_200_while_lstm_cell_53_matmul_readvariableop_resource<lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0"Ì
clstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensorelstm_200_while_tensorarrayv2read_tensorlistgetitem_lstm_200_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2f
1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp1lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp2j
3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp3lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ó

H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325964

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
8
?
while_body_324224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
è
ó
-__inference_lstm_cell_53_layer_call_fn_325915

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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321434o
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
while_cond_321288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321288___redundant_placeholder04
0while_while_cond_321288___redundant_placeholder14
0while_while_cond_321288___redundant_placeholder24
0while_while_cond_321288___redundant_placeholder3
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
lstm_198_while_cond_323466.
*lstm_198_while_lstm_198_while_loop_counter4
0lstm_198_while_lstm_198_while_maximum_iterations
lstm_198_while_placeholder 
lstm_198_while_placeholder_1 
lstm_198_while_placeholder_2 
lstm_198_while_placeholder_30
,lstm_198_while_less_lstm_198_strided_slice_1F
Blstm_198_while_lstm_198_while_cond_323466___redundant_placeholder0F
Blstm_198_while_lstm_198_while_cond_323466___redundant_placeholder1F
Blstm_198_while_lstm_198_while_cond_323466___redundant_placeholder2F
Blstm_198_while_lstm_198_while_cond_323466___redundant_placeholder3
lstm_198_while_identity

lstm_198/while/LessLesslstm_198_while_placeholder,lstm_198_while_less_lstm_198_strided_slice_1*
T0*
_output_shapes
: ]
lstm_198/while/IdentityIdentitylstm_198/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_198_while_identity lstm_198/while/Identity:output:0*(
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
ç¤

"__inference__traced_restore_326269
file_prefix2
 assignvariableop_dense_66_kernel:
.
 assignvariableop_1_dense_66_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_198_lstm_cell_198_kernel:	M
:assignvariableop_8_lstm_198_lstm_cell_198_recurrent_kernel:	d=
.assignvariableop_9_lstm_198_lstm_cell_198_bias:	D
1assignvariableop_10_lstm_199_lstm_cell_199_kernel:	dÈN
;assignvariableop_11_lstm_199_lstm_cell_199_recurrent_kernel:	2È>
/assignvariableop_12_lstm_199_lstm_cell_199_bias:	ÈC
1assignvariableop_13_lstm_200_lstm_cell_200_kernel:2(M
;assignvariableop_14_lstm_200_lstm_cell_200_recurrent_kernel:
(=
/assignvariableop_15_lstm_200_lstm_cell_200_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_66_kernel_m:
6
(assignvariableop_19_adam_dense_66_bias_m:K
8assignvariableop_20_adam_lstm_198_lstm_cell_198_kernel_m:	U
Bassignvariableop_21_adam_lstm_198_lstm_cell_198_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_198_lstm_cell_198_bias_m:	K
8assignvariableop_23_adam_lstm_199_lstm_cell_199_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_199_lstm_cell_199_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_199_lstm_cell_199_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_200_lstm_cell_200_kernel_m:2(T
Bassignvariableop_27_adam_lstm_200_lstm_cell_200_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_200_lstm_cell_200_bias_m:(<
*assignvariableop_29_adam_dense_66_kernel_v:
6
(assignvariableop_30_adam_dense_66_bias_v:K
8assignvariableop_31_adam_lstm_198_lstm_cell_198_kernel_v:	U
Bassignvariableop_32_adam_lstm_198_lstm_cell_198_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_198_lstm_cell_198_bias_v:	K
8assignvariableop_34_adam_lstm_199_lstm_cell_199_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_199_lstm_cell_199_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_199_lstm_cell_199_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_200_lstm_cell_200_kernel_v:2(T
Bassignvariableop_38_adam_lstm_200_lstm_cell_200_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_200_lstm_cell_200_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_66_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_66_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_198_lstm_cell_198_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_198_lstm_cell_198_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_198_lstm_cell_198_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_199_lstm_cell_199_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_199_lstm_cell_199_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_199_lstm_cell_199_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_200_lstm_cell_200_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_200_lstm_cell_200_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_200_lstm_cell_200_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_66_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_66_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_198_lstm_cell_198_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_198_lstm_cell_198_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_198_lstm_cell_198_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_199_lstm_cell_199_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_199_lstm_cell_199_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_199_lstm_cell_199_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_200_lstm_cell_200_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_200_lstm_cell_200_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_200_lstm_cell_200_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_66_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_66_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_198_lstm_cell_198_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_198_lstm_cell_198_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_198_lstm_cell_198_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_199_lstm_cell_199_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_199_lstm_cell_199_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_199_lstm_cell_199_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_200_lstm_cell_200_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_200_lstm_cell_200_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_200_lstm_cell_200_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_323938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_325598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_325598___redundant_placeholder04
0while_while_cond_325598___redundant_placeholder14
0while_while_cond_325598___redundant_placeholder24
0while_while_cond_325598___redundant_placeholder3
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
while_body_324554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÔJ

D__inference_lstm_200_layer_call_and_return_conditional_losses_325397
inputs_0=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_325313*
condR
while_cond_325312*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ò

˘
.__inference_sequential_66_layer_call_fn_322216
lstm_198_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_198_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322191o
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
_user_specified_namelstm_198_input
8
?
while_body_321782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_200_layer_call_fn_325111

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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322382o
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
while_cond_324080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324080___redundant_placeholder04
0while_while_cond_324080___redundant_placeholder14
0while_while_cond_324080___redundant_placeholder24
0while_while_cond_324080___redundant_placeholder3
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321084

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
µ
?
while_cond_324553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324553___redundant_placeholder04
0while_while_cond_324553___redundant_placeholder14
0while_while_cond_324553___redundant_placeholder24
0while_while_cond_324553___redundant_placeholder3
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_321008

inputs&
lstm_cell_51_320926:	&
lstm_cell_51_320928:	d"
lstm_cell_51_320930:	
identity˘$lstm_cell_51/StatefulPartitionedCall˘while;
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
$lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_51_320926lstm_cell_51_320928lstm_cell_51_320930*
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320880n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_51_320926lstm_cell_51_320928lstm_cell_51_320930*
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
while_body_320939*
condR
while_cond_320938*K
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
NoOpNoOp%^lstm_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_51/StatefulPartitionedCall$lstm_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_199_layer_call_and_return_conditional_losses_325067

inputs>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_324983*
condR
while_cond_324982*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
²

÷
lstm_200_while_cond_323317.
*lstm_200_while_lstm_200_while_loop_counter4
0lstm_200_while_lstm_200_while_maximum_iterations
lstm_200_while_placeholder 
lstm_200_while_placeholder_1 
lstm_200_while_placeholder_2 
lstm_200_while_placeholder_30
,lstm_200_while_less_lstm_200_strided_slice_1F
Blstm_200_while_lstm_200_while_cond_323317___redundant_placeholder0F
Blstm_200_while_lstm_200_while_cond_323317___redundant_placeholder1F
Blstm_200_while_lstm_200_while_cond_323317___redundant_placeholder2F
Blstm_200_while_lstm_200_while_cond_323317___redundant_placeholder3
lstm_200_while_identity

lstm_200/while/LessLesslstm_200_while_placeholder,lstm_200_while_less_lstm_200_strided_slice_1*
T0*
_output_shapes
: ]
lstm_200/while/IdentityIdentitylstm_200/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_200_while_identity lstm_200/while/Identity:output:0*(
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

µ
)__inference_lstm_200_layer_call_fn_325089
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_321708o
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
ö
³
)__inference_lstm_200_layer_call_fn_325100

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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322166o
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
âJ

D__inference_lstm_198_layer_call_and_return_conditional_losses_324022
inputs_0>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_323938*
condR
while_cond_323937*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_198_layer_call_and_return_conditional_losses_324308

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_324224*
condR
while_cond_324223*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĉ"
?
while_body_321289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_52_321313_0:	dÈ.
while_lstm_cell_52_321315_0:	2È*
while_lstm_cell_52_321317_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_52_321313:	dÈ,
while_lstm_cell_52_321315:	2È(
while_lstm_cell_52_321317:	È˘*while/lstm_cell_52/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_52/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_52_321313_0while_lstm_cell_52_321315_0while_lstm_cell_52_321317_0*
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321230Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_52/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_52/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_52/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_52_321313while_lstm_cell_52_321313_0"8
while_lstm_cell_52_321315while_lstm_cell_52_321315_0"8
while_lstm_cell_52_321317while_lstm_cell_52_321317_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_52/StatefulPartitionedCall*while/lstm_cell_52/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_324840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¤J

D__inference_lstm_198_layer_call_and_return_conditional_losses_321866

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_321782*
condR
while_cond_321781*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
?
ó
I__inference_sequential_66_layer_call_and_return_conditional_losses_322862
lstm_198_input"
lstm_198_322835:	"
lstm_198_322837:	d
lstm_198_322839:	"
lstm_199_322842:	dÈ"
lstm_199_322844:	2È
lstm_199_322846:	È!
lstm_200_322849:2(!
lstm_200_322851:
(
lstm_200_322853:(!
dense_66_322856:

dense_66_322858:
identity˘ dense_66/StatefulPartitionedCall˘ lstm_198/StatefulPartitionedCall˘ lstm_199/StatefulPartitionedCall˘ lstm_200/StatefulPartitionedCall
 lstm_198/StatefulPartitionedCallStatefulPartitionedCalllstm_198_inputlstm_198_322835lstm_198_322837lstm_198_322839*
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_321866Ş
 lstm_199/StatefulPartitionedCallStatefulPartitionedCall)lstm_198/StatefulPartitionedCall:output:0lstm_199_322842lstm_199_322844lstm_199_322846*
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322016Ĥ
 lstm_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_199/StatefulPartitionedCall:output:0lstm_200_322849lstm_200_322851lstm_200_322853*
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_322166
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)lstm_200/StatefulPartitionedCall:output:0dense_66_322856dense_66_322858*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_322184x
IdentityIdentity)dense_66/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_66/StatefulPartitionedCall!^lstm_198/StatefulPartitionedCall!^lstm_199/StatefulPartitionedCall!^lstm_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 lstm_198/StatefulPartitionedCall lstm_198/StatefulPartitionedCall2D
 lstm_199/StatefulPartitionedCall lstm_199/StatefulPartitionedCall2D
 lstm_200/StatefulPartitionedCall lstm_200/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_198_input
Ŭ

H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325800

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
J

D__inference_lstm_200_layer_call_and_return_conditional_losses_325683

inputs=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_325599*
condR
while_cond_325598*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_321931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321931___redundant_placeholder04
0while_while_cond_321931___redundant_placeholder14
0while_while_cond_321931___redundant_placeholder24
0while_while_cond_321931___redundant_placeholder3
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
è
ó
-__inference_lstm_cell_53_layer_call_fn_325932

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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321580o
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
while_body_321098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_52_321122_0:	dÈ.
while_lstm_cell_52_321124_0:	2È*
while_lstm_cell_52_321126_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_52_321122:	dÈ,
while_lstm_cell_52_321124:	2È(
while_lstm_cell_52_321126:	È˘*while/lstm_cell_52/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_52/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_52_321122_0while_lstm_cell_52_321124_0while_lstm_cell_52_321126_0*
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321084Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_52/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_52/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_52/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_52_321122while_lstm_cell_52_321122_0"8
while_lstm_cell_52_321124while_lstm_cell_52_321124_0"8
while_lstm_cell_52_321126while_lstm_cell_52_321126_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_52/StatefulPartitionedCall*while/lstm_cell_52/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

µ
)__inference_lstm_200_layer_call_fn_325078
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_321517o
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
à"
Ŭ
while_body_321639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_53_321663_0:2(-
while_lstm_cell_53_321665_0:
()
while_lstm_cell_53_321667_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_53_321663:2(+
while_lstm_cell_53_321665:
('
while_lstm_cell_53_321667:(˘*while/lstm_cell_53/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_53/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_53_321663_0while_lstm_cell_53_321665_0while_lstm_cell_53_321667_0*
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321580Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_53/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_53/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_53/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_53_321663while_lstm_cell_53_321663_0"8
while_lstm_cell_53_321665while_lstm_cell_53_321665_0"8
while_lstm_cell_53_321667while_lstm_cell_53_321667_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_53/StatefulPartitionedCall*while/lstm_cell_53/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_324165
inputs_0>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_324081*
condR
while_cond_324080*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
²

÷
lstm_199_while_cond_323605.
*lstm_199_while_lstm_199_while_loop_counter4
0lstm_199_while_lstm_199_while_maximum_iterations
lstm_199_while_placeholder 
lstm_199_while_placeholder_1 
lstm_199_while_placeholder_2 
lstm_199_while_placeholder_30
,lstm_199_while_less_lstm_199_strided_slice_1F
Blstm_199_while_lstm_199_while_cond_323605___redundant_placeholder0F
Blstm_199_while_lstm_199_while_cond_323605___redundant_placeholder1F
Blstm_199_while_lstm_199_while_cond_323605___redundant_placeholder2F
Blstm_199_while_lstm_199_while_cond_323605___redundant_placeholder3
lstm_199_while_identity

lstm_199/while/LessLesslstm_199_while_placeholder,lstm_199_while_less_lstm_199_strided_slice_1*
T0*
_output_shapes
: ]
lstm_199/while/IdentityIdentitylstm_199/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_199_while_identity lstm_199/while/Identity:output:0*(
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320880

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

ĥ
)__inference_lstm_199_layer_call_fn_324495

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
D__inference_lstm_199_layer_call_and_return_conditional_losses_322547s
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
J

D__inference_lstm_200_layer_call_and_return_conditional_losses_322382

inputs=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_322298*
condR
while_cond_322297*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
âJ

D__inference_lstm_199_layer_call_and_return_conditional_losses_324638
inputs_0>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_324554*
condR
while_cond_324553*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ó

H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325996

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
Ë

H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321580

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
while_cond_323937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_323937___redundant_placeholder04
0while_while_cond_323937___redundant_placeholder14
0while_while_cond_323937___redundant_placeholder24
0while_while_cond_323937___redundant_placeholder3
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320734

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
while_cond_325312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_325312___redundant_placeholder04
0while_while_cond_325312___redundant_placeholder14
0while_while_cond_325312___redundant_placeholder24
0while_while_cond_325312___redundant_placeholder3
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
S
³
(sequential_66_lstm_198_while_body_320299J
Fsequential_66_lstm_198_while_sequential_66_lstm_198_while_loop_counterP
Lsequential_66_lstm_198_while_sequential_66_lstm_198_while_maximum_iterations,
(sequential_66_lstm_198_while_placeholder.
*sequential_66_lstm_198_while_placeholder_1.
*sequential_66_lstm_198_while_placeholder_2.
*sequential_66_lstm_198_while_placeholder_3I
Esequential_66_lstm_198_while_sequential_66_lstm_198_strided_slice_1_0
sequential_66_lstm_198_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_198_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_66_lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0:	_
Lsequential_66_lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dZ
Ksequential_66_lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0:	)
%sequential_66_lstm_198_while_identity+
'sequential_66_lstm_198_while_identity_1+
'sequential_66_lstm_198_while_identity_2+
'sequential_66_lstm_198_while_identity_3+
'sequential_66_lstm_198_while_identity_4+
'sequential_66_lstm_198_while_identity_5G
Csequential_66_lstm_198_while_sequential_66_lstm_198_strided_slice_1
sequential_66_lstm_198_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_198_tensorarrayunstack_tensorlistfromtensor[
Hsequential_66_lstm_198_while_lstm_cell_51_matmul_readvariableop_resource:	]
Jsequential_66_lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource:	dX
Isequential_66_lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource:	˘@sequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp˘?sequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp˘Asequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp
Nsequential_66/lstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_66/lstm_198/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_66_lstm_198_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_198_tensorarrayunstack_tensorlistfromtensor_0(sequential_66_lstm_198_while_placeholderWsequential_66/lstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOpJsequential_66_lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_66/lstm_198/while/lstm_cell_51/MatMulMatMulGsequential_66/lstm_198/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOpLsequential_66_lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_66/lstm_198/while/lstm_cell_51/MatMul_1MatMul*sequential_66_lstm_198_while_placeholder_2Isequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_66/lstm_198/while/lstm_cell_51/addAddV2:sequential_66/lstm_198/while/lstm_cell_51/MatMul:product:0<sequential_66/lstm_198/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOpKsequential_66_lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_66/lstm_198/while/lstm_cell_51/BiasAddBiasAdd1sequential_66/lstm_198/while/lstm_cell_51/add:z:0Hsequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_66/lstm_198/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_66/lstm_198/while/lstm_cell_51/splitSplitBsequential_66/lstm_198/while/lstm_cell_51/split/split_dim:output:0:sequential_66/lstm_198/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_66/lstm_198/while/lstm_cell_51/SigmoidSigmoid8sequential_66/lstm_198/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_66/lstm_198/while/lstm_cell_51/Sigmoid_1Sigmoid8sequential_66/lstm_198/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_66/lstm_198/while/lstm_cell_51/mulMul7sequential_66/lstm_198/while/lstm_cell_51/Sigmoid_1:y:0*sequential_66_lstm_198_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_66/lstm_198/while/lstm_cell_51/ReluRelu8sequential_66/lstm_198/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_66/lstm_198/while/lstm_cell_51/mul_1Mul5sequential_66/lstm_198/while/lstm_cell_51/Sigmoid:y:0<sequential_66/lstm_198/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_66/lstm_198/while/lstm_cell_51/add_1AddV21sequential_66/lstm_198/while/lstm_cell_51/mul:z:03sequential_66/lstm_198/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_66/lstm_198/while/lstm_cell_51/Sigmoid_2Sigmoid8sequential_66/lstm_198/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_66/lstm_198/while/lstm_cell_51/Relu_1Relu3sequential_66/lstm_198/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_66/lstm_198/while/lstm_cell_51/mul_2Mul7sequential_66/lstm_198/while/lstm_cell_51/Sigmoid_2:y:0>sequential_66/lstm_198/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_66/lstm_198/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_66_lstm_198_while_placeholder_1(sequential_66_lstm_198_while_placeholder3sequential_66/lstm_198/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_66/lstm_198/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_66/lstm_198/while/addAddV2(sequential_66_lstm_198_while_placeholder+sequential_66/lstm_198/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_66/lstm_198/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_66/lstm_198/while/add_1AddV2Fsequential_66_lstm_198_while_sequential_66_lstm_198_while_loop_counter-sequential_66/lstm_198/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_66/lstm_198/while/IdentityIdentity&sequential_66/lstm_198/while/add_1:z:0"^sequential_66/lstm_198/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_66/lstm_198/while/Identity_1IdentityLsequential_66_lstm_198_while_sequential_66_lstm_198_while_maximum_iterations"^sequential_66/lstm_198/while/NoOp*
T0*
_output_shapes
: 
'sequential_66/lstm_198/while/Identity_2Identity$sequential_66/lstm_198/while/add:z:0"^sequential_66/lstm_198/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_66/lstm_198/while/Identity_3IdentityQsequential_66/lstm_198/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_66/lstm_198/while/NoOp*
T0*
_output_shapes
: ?
'sequential_66/lstm_198/while/Identity_4Identity3sequential_66/lstm_198/while/lstm_cell_51/mul_2:z:0"^sequential_66/lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_66/lstm_198/while/Identity_5Identity3sequential_66/lstm_198/while/lstm_cell_51/add_1:z:0"^sequential_66/lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_66/lstm_198/while/NoOpNoOpA^sequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp@^sequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOpB^sequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_66_lstm_198_while_identity.sequential_66/lstm_198/while/Identity:output:0"[
'sequential_66_lstm_198_while_identity_10sequential_66/lstm_198/while/Identity_1:output:0"[
'sequential_66_lstm_198_while_identity_20sequential_66/lstm_198/while/Identity_2:output:0"[
'sequential_66_lstm_198_while_identity_30sequential_66/lstm_198/while/Identity_3:output:0"[
'sequential_66_lstm_198_while_identity_40sequential_66/lstm_198/while/Identity_4:output:0"[
'sequential_66_lstm_198_while_identity_50sequential_66/lstm_198/while/Identity_5:output:0"
Isequential_66_lstm_198_while_lstm_cell_51_biasadd_readvariableop_resourceKsequential_66_lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0"
Jsequential_66_lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resourceLsequential_66_lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0"
Hsequential_66_lstm_198_while_lstm_cell_51_matmul_readvariableop_resourceJsequential_66_lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0"
Csequential_66_lstm_198_while_sequential_66_lstm_198_strided_slice_1Esequential_66_lstm_198_while_sequential_66_lstm_198_strided_slice_1_0"
sequential_66_lstm_198_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_198_tensorarrayunstack_tensorlistfromtensorsequential_66_lstm_198_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_198_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp@sequential_66/lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2
?sequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp?sequential_66/lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp2
Asequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOpAsequential_66/lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321434

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
J

D__inference_lstm_200_layer_call_and_return_conditional_losses_325540

inputs=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_325456*
condR
while_cond_325455*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
˙7
Ê
while_body_322298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_320938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_320938___redundant_placeholder04
0while_while_cond_320938___redundant_placeholder14
0while_while_cond_320938___redundant_placeholder24
0while_while_cond_320938___redundant_placeholder3
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_325254
inputs_0=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_325170*
condR
while_cond_325169*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
˙7
Ê
while_body_325456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_324982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324982___redundant_placeholder04
0while_while_cond_324982___redundant_placeholder14
0while_while_cond_324982___redundant_placeholder24
0while_while_cond_324982___redundant_placeholder3
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
while_cond_320747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_320747___redundant_placeholder04
0while_while_cond_320747___redundant_placeholder14
0while_while_cond_320747___redundant_placeholder24
0while_while_cond_320747___redundant_placeholder3
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
lstm_198_while_cond_323039.
*lstm_198_while_lstm_198_while_loop_counter4
0lstm_198_while_lstm_198_while_maximum_iterations
lstm_198_while_placeholder 
lstm_198_while_placeholder_1 
lstm_198_while_placeholder_2 
lstm_198_while_placeholder_30
,lstm_198_while_less_lstm_198_strided_slice_1F
Blstm_198_while_lstm_198_while_cond_323039___redundant_placeholder0F
Blstm_198_while_lstm_198_while_cond_323039___redundant_placeholder1F
Blstm_198_while_lstm_198_while_cond_323039___redundant_placeholder2F
Blstm_198_while_lstm_198_while_cond_323039___redundant_placeholder3
lstm_198_while_identity

lstm_198/while/LessLesslstm_198_while_placeholder,lstm_198_while_less_lstm_198_strided_slice_1*
T0*
_output_shapes
: ]
lstm_198/while/IdentityIdentitylstm_198/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_198_while_identity lstm_198/while/Identity:output:0*(
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
J

D__inference_lstm_200_layer_call_and_return_conditional_losses_322166

inputs=
+lstm_cell_53_matmul_readvariableop_resource:2(?
-lstm_cell_53_matmul_1_readvariableop_resource:
(:
,lstm_cell_53_biasadd_readvariableop_resource:(
identity˘#lstm_cell_53/BiasAdd/ReadVariableOp˘"lstm_cell_53/MatMul/ReadVariableOp˘$lstm_cell_53/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_53/MatMul/ReadVariableOpReadVariableOp+lstm_cell_53_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_53/MatMulMatMulstrided_slice_2:output:0*lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_53_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_53/MatMul_1MatMulzeros:output:0,lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_53/addAddV2lstm_cell_53/MatMul:product:0lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_53_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_53/BiasAddBiasAddlstm_cell_53/add:z:0+lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_53/splitSplit%lstm_cell_53/split/split_dim:output:0lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_53/SigmoidSigmoidlstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_1Sigmoidlstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_53/mulMullstm_cell_53/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_53/ReluRelulstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_1Mullstm_cell_53/Sigmoid:y:0lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_53/add_1AddV2lstm_cell_53/mul:z:0lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_53/Sigmoid_2Sigmoidlstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_53/Relu_1Relulstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_53/mul_2Mullstm_cell_53/Sigmoid_2:y:0!lstm_cell_53/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_53_matmul_readvariableop_resource-lstm_cell_53_matmul_1_readvariableop_resource,lstm_cell_53_biasadd_readvariableop_resource*
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
while_body_322082*
condR
while_cond_322081*K
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
NoOpNoOp$^lstm_cell_53/BiasAdd/ReadVariableOp#^lstm_cell_53/MatMul/ReadVariableOp%^lstm_cell_53/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_53/BiasAdd/ReadVariableOp#lstm_cell_53/BiasAdd/ReadVariableOp2H
"lstm_cell_53/MatMul/ReadVariableOp"lstm_cell_53/MatMul/ReadVariableOp2L
$lstm_cell_53/MatMul_1/ReadVariableOp$lstm_cell_53/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_324366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_324366___redundant_placeholder04
0while_while_cond_324366___redundant_placeholder14
0while_while_cond_324366___redundant_placeholder24
0while_while_cond_324366___redundant_placeholder3
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_321167

inputs&
lstm_cell_52_321085:	dÈ&
lstm_cell_52_321087:	2È"
lstm_cell_52_321089:	È
identity˘$lstm_cell_52/StatefulPartitionedCall˘while;
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
$lstm_cell_52/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_52_321085lstm_cell_52_321087lstm_cell_52_321089*
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321084n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_52_321085lstm_cell_52_321087lstm_cell_52_321089*
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
while_body_321098*
condR
while_cond_321097*K
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
NoOpNoOp%^lstm_cell_52/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_52/StatefulPartitionedCall$lstm_cell_52/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ğ
¸
)__inference_lstm_199_layer_call_fn_324462
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_321167|
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
while_body_324697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_52_layer_call_fn_325817

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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321084o
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
8
?
while_body_324081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	H
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	F
3while_lstm_cell_51_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_51_biasadd_readvariableop_resource:	˘)while/lstm_cell_51/BiasAdd/ReadVariableOp˘(while/lstm_cell_51/MatMul/ReadVariableOp˘*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
˙7
Ê
while_body_325170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
S
­
(sequential_66_lstm_200_while_body_320577J
Fsequential_66_lstm_200_while_sequential_66_lstm_200_while_loop_counterP
Lsequential_66_lstm_200_while_sequential_66_lstm_200_while_maximum_iterations,
(sequential_66_lstm_200_while_placeholder.
*sequential_66_lstm_200_while_placeholder_1.
*sequential_66_lstm_200_while_placeholder_2.
*sequential_66_lstm_200_while_placeholder_3I
Esequential_66_lstm_200_while_sequential_66_lstm_200_strided_slice_1_0
sequential_66_lstm_200_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_200_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_66_lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0:2(^
Lsequential_66_lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(Y
Ksequential_66_lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0:()
%sequential_66_lstm_200_while_identity+
'sequential_66_lstm_200_while_identity_1+
'sequential_66_lstm_200_while_identity_2+
'sequential_66_lstm_200_while_identity_3+
'sequential_66_lstm_200_while_identity_4+
'sequential_66_lstm_200_while_identity_5G
Csequential_66_lstm_200_while_sequential_66_lstm_200_strided_slice_1
sequential_66_lstm_200_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_200_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_66_lstm_200_while_lstm_cell_53_matmul_readvariableop_resource:2(\
Jsequential_66_lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource:
(W
Isequential_66_lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource:(˘@sequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp˘?sequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp˘Asequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp
Nsequential_66/lstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_66/lstm_200/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_66_lstm_200_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_200_tensorarrayunstack_tensorlistfromtensor_0(sequential_66_lstm_200_while_placeholderWsequential_66/lstm_200/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOpJsequential_66_lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_66/lstm_200/while/lstm_cell_53/MatMulMatMulGsequential_66/lstm_200/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOpLsequential_66_lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_66/lstm_200/while/lstm_cell_53/MatMul_1MatMul*sequential_66_lstm_200_while_placeholder_2Isequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_66/lstm_200/while/lstm_cell_53/addAddV2:sequential_66/lstm_200/while/lstm_cell_53/MatMul:product:0<sequential_66/lstm_200/while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOpKsequential_66_lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_66/lstm_200/while/lstm_cell_53/BiasAddBiasAdd1sequential_66/lstm_200/while/lstm_cell_53/add:z:0Hsequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_66/lstm_200/while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_66/lstm_200/while/lstm_cell_53/splitSplitBsequential_66/lstm_200/while/lstm_cell_53/split/split_dim:output:0:sequential_66/lstm_200/while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_66/lstm_200/while/lstm_cell_53/SigmoidSigmoid8sequential_66/lstm_200/while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_66/lstm_200/while/lstm_cell_53/Sigmoid_1Sigmoid8sequential_66/lstm_200/while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_66/lstm_200/while/lstm_cell_53/mulMul7sequential_66/lstm_200/while/lstm_cell_53/Sigmoid_1:y:0*sequential_66_lstm_200_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_66/lstm_200/while/lstm_cell_53/ReluRelu8sequential_66/lstm_200/while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_66/lstm_200/while/lstm_cell_53/mul_1Mul5sequential_66/lstm_200/while/lstm_cell_53/Sigmoid:y:0<sequential_66/lstm_200/while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_66/lstm_200/while/lstm_cell_53/add_1AddV21sequential_66/lstm_200/while/lstm_cell_53/mul:z:03sequential_66/lstm_200/while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_66/lstm_200/while/lstm_cell_53/Sigmoid_2Sigmoid8sequential_66/lstm_200/while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_66/lstm_200/while/lstm_cell_53/Relu_1Relu3sequential_66/lstm_200/while/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_66/lstm_200/while/lstm_cell_53/mul_2Mul7sequential_66/lstm_200/while/lstm_cell_53/Sigmoid_2:y:0>sequential_66/lstm_200/while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_66/lstm_200/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_66_lstm_200_while_placeholder_1(sequential_66_lstm_200_while_placeholder3sequential_66/lstm_200/while/lstm_cell_53/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_66/lstm_200/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_66/lstm_200/while/addAddV2(sequential_66_lstm_200_while_placeholder+sequential_66/lstm_200/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_66/lstm_200/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_66/lstm_200/while/add_1AddV2Fsequential_66_lstm_200_while_sequential_66_lstm_200_while_loop_counter-sequential_66/lstm_200/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_66/lstm_200/while/IdentityIdentity&sequential_66/lstm_200/while/add_1:z:0"^sequential_66/lstm_200/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_66/lstm_200/while/Identity_1IdentityLsequential_66_lstm_200_while_sequential_66_lstm_200_while_maximum_iterations"^sequential_66/lstm_200/while/NoOp*
T0*
_output_shapes
: 
'sequential_66/lstm_200/while/Identity_2Identity$sequential_66/lstm_200/while/add:z:0"^sequential_66/lstm_200/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_66/lstm_200/while/Identity_3IdentityQsequential_66/lstm_200/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_66/lstm_200/while/NoOp*
T0*
_output_shapes
: ?
'sequential_66/lstm_200/while/Identity_4Identity3sequential_66/lstm_200/while/lstm_cell_53/mul_2:z:0"^sequential_66/lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_66/lstm_200/while/Identity_5Identity3sequential_66/lstm_200/while/lstm_cell_53/add_1:z:0"^sequential_66/lstm_200/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_66/lstm_200/while/NoOpNoOpA^sequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp@^sequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOpB^sequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_66_lstm_200_while_identity.sequential_66/lstm_200/while/Identity:output:0"[
'sequential_66_lstm_200_while_identity_10sequential_66/lstm_200/while/Identity_1:output:0"[
'sequential_66_lstm_200_while_identity_20sequential_66/lstm_200/while/Identity_2:output:0"[
'sequential_66_lstm_200_while_identity_30sequential_66/lstm_200/while/Identity_3:output:0"[
'sequential_66_lstm_200_while_identity_40sequential_66/lstm_200/while/Identity_4:output:0"[
'sequential_66_lstm_200_while_identity_50sequential_66/lstm_200/while/Identity_5:output:0"
Isequential_66_lstm_200_while_lstm_cell_53_biasadd_readvariableop_resourceKsequential_66_lstm_200_while_lstm_cell_53_biasadd_readvariableop_resource_0"
Jsequential_66_lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resourceLsequential_66_lstm_200_while_lstm_cell_53_matmul_1_readvariableop_resource_0"
Hsequential_66_lstm_200_while_lstm_cell_53_matmul_readvariableop_resourceJsequential_66_lstm_200_while_lstm_cell_53_matmul_readvariableop_resource_0"
Csequential_66_lstm_200_while_sequential_66_lstm_200_strided_slice_1Esequential_66_lstm_200_while_sequential_66_lstm_200_strided_slice_1_0"
sequential_66_lstm_200_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_200_tensorarrayunstack_tensorlistfromtensorsequential_66_lstm_200_while_tensorarrayv2read_tensorlistgetitem_sequential_66_lstm_200_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp@sequential_66/lstm_200/while/lstm_cell_53/BiasAdd/ReadVariableOp2
?sequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp?sequential_66/lstm_200/while/lstm_cell_53/MatMul/ReadVariableOp2
Asequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOpAsequential_66/lstm_200/while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

D__inference_lstm_200_layer_call_and_return_conditional_losses_321517

inputs%
lstm_cell_53_321435:2(%
lstm_cell_53_321437:
(!
lstm_cell_53_321439:(
identity˘$lstm_cell_53/StatefulPartitionedCall˘while;
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
$lstm_cell_53/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_53_321435lstm_cell_53_321437lstm_cell_53_321439*
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_321434n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_53_321435lstm_cell_53_321437lstm_cell_53_321439*
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
while_body_321448*
condR
while_cond_321447*K
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
NoOpNoOp%^lstm_cell_53/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_53/StatefulPartitionedCall$lstm_cell_53/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325866

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
¤J

D__inference_lstm_199_layer_call_and_return_conditional_losses_322016

inputs>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_321932*
condR
while_cond_321931*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
¤J

D__inference_lstm_199_layer_call_and_return_conditional_losses_324924

inputs>
+lstm_cell_52_matmul_readvariableop_resource:	dÈ@
-lstm_cell_52_matmul_1_readvariableop_resource:	2È;
,lstm_cell_52_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_52/BiasAdd/ReadVariableOp˘"lstm_cell_52/MatMul/ReadVariableOp˘$lstm_cell_52/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_52/MatMul/ReadVariableOpReadVariableOp+lstm_cell_52_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_52/MatMulMatMulstrided_slice_2:output:0*lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_52_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_52/MatMul_1MatMulzeros:output:0,lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_52/addAddV2lstm_cell_52/MatMul:product:0lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_52_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_52/BiasAddBiasAddlstm_cell_52/add:z:0+lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_52/splitSplit%lstm_cell_52/split/split_dim:output:0lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_52/SigmoidSigmoidlstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_1Sigmoidlstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_52/mulMullstm_cell_52/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_52/ReluRelulstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_1Mullstm_cell_52/Sigmoid:y:0lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_52/add_1AddV2lstm_cell_52/mul:z:0lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_52/Sigmoid_2Sigmoidlstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_52/Relu_1Relulstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_52/mul_2Mullstm_cell_52/Sigmoid_2:y:0!lstm_cell_52/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_52_matmul_readvariableop_resource-lstm_cell_52_matmul_1_readvariableop_resource,lstm_cell_52_biasadd_readvariableop_resource*
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
while_body_324840*
condR
while_cond_324839*K
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
NoOpNoOp$^lstm_cell_52/BiasAdd/ReadVariableOp#^lstm_cell_52/MatMul/ReadVariableOp%^lstm_cell_52/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_52/BiasAdd/ReadVariableOp#lstm_cell_52/BiasAdd/ReadVariableOp2H
"lstm_cell_52/MatMul/ReadVariableOp"lstm_cell_52/MatMul/ReadVariableOp2L
$lstm_cell_52/MatMul_1/ReadVariableOp$lstm_cell_52/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_324983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¤J

D__inference_lstm_198_layer_call_and_return_conditional_losses_324451

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_324367*
condR
while_cond_324366*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
À


$__inference_signature_wrapper_322927
lstm_198_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_198_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_320667o
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
_user_specified_namelstm_198_input
µ
?
while_cond_321447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321447___redundant_placeholder04
0while_while_cond_321447___redundant_placeholder14
0while_while_cond_321447___redundant_placeholder24
0while_while_cond_321447___redundant_placeholder3
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
while_cond_321781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321781___redundant_placeholder04
0while_while_cond_321781___redundant_placeholder14
0while_while_cond_321781___redundant_placeholder24
0while_while_cond_321781___redundant_placeholder3
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
while_body_322463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_52_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_52_biasadd_readvariableop_resource:	È˘)while/lstm_cell_52/BiasAdd/ReadVariableOp˘(while/lstm_cell_52/MatMul/ReadVariableOp˘*while/lstm_cell_52/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_52/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_52/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_52/addAddV2#while/lstm_cell_52/MatMul:product:0%while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_52/BiasAddBiasAddwhile/lstm_cell_52/add:z:01while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_52/splitSplit+while/lstm_cell_52/split/split_dim:output:0#while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_52/SigmoidSigmoid!while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_1Sigmoid!while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mulMul while/lstm_cell_52/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_52/ReluRelu!while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_1Mulwhile/lstm_cell_52/Sigmoid:y:0%while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/add_1AddV2while/lstm_cell_52/mul:z:0while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_52/Sigmoid_2Sigmoid!while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_52/Relu_1Reluwhile/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_52/mul_2Mul while/lstm_cell_52/Sigmoid_2:y:0'while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_52/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_52/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_52/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_52/BiasAdd/ReadVariableOp)^while/lstm_cell_52/MatMul/ReadVariableOp+^while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_52_biasadd_readvariableop_resource4while_lstm_cell_52_biasadd_readvariableop_resource_0"l
3while_lstm_cell_52_matmul_1_readvariableop_resource5while_lstm_cell_52_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_52_matmul_readvariableop_resource3while_lstm_cell_52_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_52/BiasAdd/ReadVariableOp)while/lstm_cell_52/BiasAdd/ReadVariableOp2T
(while/lstm_cell_52/MatMul/ReadVariableOp(while/lstm_cell_52/MatMul/ReadVariableOp2X
*while/lstm_cell_52/MatMul_1/ReadVariableOp*while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_66_layer_call_fn_322832
lstm_198_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_198_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322780o
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
_user_specified_namelstm_198_input
˙7
Ê
while_body_322082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_320748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_51_320772_0:	.
while_lstm_cell_51_320774_0:	d*
while_lstm_cell_51_320776_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_51_320772:	,
while_lstm_cell_51_320774:	d(
while_lstm_cell_51_320776:	˘*while/lstm_cell_51/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_51_320772_0while_lstm_cell_51_320774_0while_lstm_cell_51_320776_0*
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_320734Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_51/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_51/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_51_320772while_lstm_cell_51_320772_0"8
while_lstm_cell_51_320774while_lstm_cell_51_320774_0"8
while_lstm_cell_51_320776while_lstm_cell_51_320776_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_51/StatefulPartitionedCall*while/lstm_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_198_layer_call_fn_323857
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_321008|
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
Ġ

H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_321230

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
while_body_325313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_321638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_321638___redundant_placeholder04
0while_while_cond_321638___redundant_placeholder14
0while_while_cond_321638___redundant_placeholder24
0while_while_cond_321638___redundant_placeholder3
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
ÛB
?

lstm_199_while_body_323606.
*lstm_199_while_lstm_199_while_loop_counter4
0lstm_199_while_lstm_199_while_maximum_iterations
lstm_199_while_placeholder 
lstm_199_while_placeholder_1 
lstm_199_while_placeholder_2 
lstm_199_while_placeholder_3-
)lstm_199_while_lstm_199_strided_slice_1_0i
elstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0:	dÈQ
>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0:	È
lstm_199_while_identity
lstm_199_while_identity_1
lstm_199_while_identity_2
lstm_199_while_identity_3
lstm_199_while_identity_4
lstm_199_while_identity_5+
'lstm_199_while_lstm_199_strided_slice_1g
clstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensorM
:lstm_199_while_lstm_cell_52_matmul_readvariableop_resource:	dÈO
<lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource:	2ÈJ
;lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource:	È˘2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp˘1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp˘3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp
@lstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_199/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0lstm_199_while_placeholderIlstm_199/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOpReadVariableOp<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_199/while/lstm_cell_52/MatMulMatMul9lstm_199/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOpReadVariableOp>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_199/while/lstm_cell_52/MatMul_1MatMullstm_199_while_placeholder_2;lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_199/while/lstm_cell_52/addAddV2,lstm_199/while/lstm_cell_52/MatMul:product:0.lstm_199/while/lstm_cell_52/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOpReadVariableOp=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_199/while/lstm_cell_52/BiasAddBiasAdd#lstm_199/while/lstm_cell_52/add:z:0:lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_199/while/lstm_cell_52/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_199/while/lstm_cell_52/splitSplit4lstm_199/while/lstm_cell_52/split/split_dim:output:0,lstm_199/while/lstm_cell_52/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_199/while/lstm_cell_52/SigmoidSigmoid*lstm_199/while/lstm_cell_52/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_199/while/lstm_cell_52/Sigmoid_1Sigmoid*lstm_199/while/lstm_cell_52/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_199/while/lstm_cell_52/mulMul)lstm_199/while/lstm_cell_52/Sigmoid_1:y:0lstm_199_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_199/while/lstm_cell_52/ReluRelu*lstm_199/while/lstm_cell_52/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_199/while/lstm_cell_52/mul_1Mul'lstm_199/while/lstm_cell_52/Sigmoid:y:0.lstm_199/while/lstm_cell_52/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_199/while/lstm_cell_52/add_1AddV2#lstm_199/while/lstm_cell_52/mul:z:0%lstm_199/while/lstm_cell_52/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_199/while/lstm_cell_52/Sigmoid_2Sigmoid*lstm_199/while/lstm_cell_52/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_199/while/lstm_cell_52/Relu_1Relu%lstm_199/while/lstm_cell_52/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_199/while/lstm_cell_52/mul_2Mul)lstm_199/while/lstm_cell_52/Sigmoid_2:y:00lstm_199/while/lstm_cell_52/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_199/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_199_while_placeholder_1lstm_199_while_placeholder%lstm_199/while/lstm_cell_52/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_199/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_199/while/addAddV2lstm_199_while_placeholderlstm_199/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_199/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_199/while/add_1AddV2*lstm_199_while_lstm_199_while_loop_counterlstm_199/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_199/while/IdentityIdentitylstm_199/while/add_1:z:0^lstm_199/while/NoOp*
T0*
_output_shapes
: 
lstm_199/while/Identity_1Identity0lstm_199_while_lstm_199_while_maximum_iterations^lstm_199/while/NoOp*
T0*
_output_shapes
: t
lstm_199/while/Identity_2Identitylstm_199/while/add:z:0^lstm_199/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_199/while/Identity_3IdentityClstm_199/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_199/while/NoOp*
T0*
_output_shapes
: 
lstm_199/while/Identity_4Identity%lstm_199/while/lstm_cell_52/mul_2:z:0^lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_199/while/Identity_5Identity%lstm_199/while/lstm_cell_52/add_1:z:0^lstm_199/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_199/while/NoOpNoOp3^lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2^lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp4^lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_199_while_identity lstm_199/while/Identity:output:0"?
lstm_199_while_identity_1"lstm_199/while/Identity_1:output:0"?
lstm_199_while_identity_2"lstm_199/while/Identity_2:output:0"?
lstm_199_while_identity_3"lstm_199/while/Identity_3:output:0"?
lstm_199_while_identity_4"lstm_199/while/Identity_4:output:0"?
lstm_199_while_identity_5"lstm_199/while/Identity_5:output:0"T
'lstm_199_while_lstm_199_strided_slice_1)lstm_199_while_lstm_199_strided_slice_1_0"|
;lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource=lstm_199_while_lstm_cell_52_biasadd_readvariableop_resource_0"~
<lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource>lstm_199_while_lstm_cell_52_matmul_1_readvariableop_resource_0"z
:lstm_199_while_lstm_cell_52_matmul_readvariableop_resource<lstm_199_while_lstm_cell_52_matmul_readvariableop_resource_0"Ì
clstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensorelstm_199_while_tensorarrayv2read_tensorlistgetitem_lstm_199_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2lstm_199/while/lstm_cell_52/BiasAdd/ReadVariableOp2f
1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp1lstm_199/while/lstm_cell_52/MatMul/ReadVariableOp2j
3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp3lstm_199/while/lstm_cell_52/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¤J

D__inference_lstm_198_layer_call_and_return_conditional_losses_322712

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	@
-lstm_cell_51_matmul_1_readvariableop_resource:	d;
,lstm_cell_51_biasadd_readvariableop_resource:	
identity˘#lstm_cell_51/BiasAdd/ReadVariableOp˘"lstm_cell_51/MatMul/ReadVariableOp˘$lstm_cell_51/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
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
while_body_322628*
condR
while_cond_322627*K
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
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÛB
?

lstm_198_while_body_323467.
*lstm_198_while_lstm_198_while_loop_counter4
0lstm_198_while_lstm_198_while_maximum_iterations
lstm_198_while_placeholder 
lstm_198_while_placeholder_1 
lstm_198_while_placeholder_2 
lstm_198_while_placeholder_3-
)lstm_198_while_lstm_198_strided_slice_1_0i
elstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0:	Q
>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	dL
=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0:	
lstm_198_while_identity
lstm_198_while_identity_1
lstm_198_while_identity_2
lstm_198_while_identity_3
lstm_198_while_identity_4
lstm_198_while_identity_5+
'lstm_198_while_lstm_198_strided_slice_1g
clstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensorM
:lstm_198_while_lstm_cell_51_matmul_readvariableop_resource:	O
<lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource:	dJ
;lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource:	˘2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp˘1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp˘3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp
@lstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_198/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0lstm_198_while_placeholderIlstm_198/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_198/while/lstm_cell_51/MatMulMatMul9lstm_198/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_198/while/lstm_cell_51/MatMul_1MatMullstm_198_while_placeholder_2;lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_198/while/lstm_cell_51/addAddV2,lstm_198/while/lstm_cell_51/MatMul:product:0.lstm_198/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_198/while/lstm_cell_51/BiasAddBiasAdd#lstm_198/while/lstm_cell_51/add:z:0:lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_198/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_198/while/lstm_cell_51/splitSplit4lstm_198/while/lstm_cell_51/split/split_dim:output:0,lstm_198/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_198/while/lstm_cell_51/SigmoidSigmoid*lstm_198/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_198/while/lstm_cell_51/Sigmoid_1Sigmoid*lstm_198/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_198/while/lstm_cell_51/mulMul)lstm_198/while/lstm_cell_51/Sigmoid_1:y:0lstm_198_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_198/while/lstm_cell_51/ReluRelu*lstm_198/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_198/while/lstm_cell_51/mul_1Mul'lstm_198/while/lstm_cell_51/Sigmoid:y:0.lstm_198/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_198/while/lstm_cell_51/add_1AddV2#lstm_198/while/lstm_cell_51/mul:z:0%lstm_198/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_198/while/lstm_cell_51/Sigmoid_2Sigmoid*lstm_198/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_198/while/lstm_cell_51/Relu_1Relu%lstm_198/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_198/while/lstm_cell_51/mul_2Mul)lstm_198/while/lstm_cell_51/Sigmoid_2:y:00lstm_198/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_198/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_198_while_placeholder_1lstm_198_while_placeholder%lstm_198/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_198/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_198/while/addAddV2lstm_198_while_placeholderlstm_198/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_198/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_198/while/add_1AddV2*lstm_198_while_lstm_198_while_loop_counterlstm_198/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_198/while/IdentityIdentitylstm_198/while/add_1:z:0^lstm_198/while/NoOp*
T0*
_output_shapes
: 
lstm_198/while/Identity_1Identity0lstm_198_while_lstm_198_while_maximum_iterations^lstm_198/while/NoOp*
T0*
_output_shapes
: t
lstm_198/while/Identity_2Identitylstm_198/while/add:z:0^lstm_198/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_198/while/Identity_3IdentityClstm_198/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_198/while/NoOp*
T0*
_output_shapes
: 
lstm_198/while/Identity_4Identity%lstm_198/while/lstm_cell_51/mul_2:z:0^lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_198/while/Identity_5Identity%lstm_198/while/lstm_cell_51/add_1:z:0^lstm_198/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_198/while/NoOpNoOp3^lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2^lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp4^lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_198_while_identity lstm_198/while/Identity:output:0"?
lstm_198_while_identity_1"lstm_198/while/Identity_1:output:0"?
lstm_198_while_identity_2"lstm_198/while/Identity_2:output:0"?
lstm_198_while_identity_3"lstm_198/while/Identity_3:output:0"?
lstm_198_while_identity_4"lstm_198/while/Identity_4:output:0"?
lstm_198_while_identity_5"lstm_198/while/Identity_5:output:0"T
'lstm_198_while_lstm_198_strided_slice_1)lstm_198_while_lstm_198_strided_slice_1_0"|
;lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource=lstm_198_while_lstm_cell_51_biasadd_readvariableop_resource_0"~
<lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource>lstm_198_while_lstm_cell_51_matmul_1_readvariableop_resource_0"z
:lstm_198_while_lstm_cell_51_matmul_readvariableop_resource<lstm_198_while_lstm_cell_51_matmul_readvariableop_resource_0"Ì
clstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensorelstm_198_while_tensorarrayv2read_tensorlistgetitem_lstm_198_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2lstm_198/while/lstm_cell_51/BiasAdd/ReadVariableOp2f
1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp1lstm_198/while/lstm_cell_51/MatMul/ReadVariableOp2j
3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp3lstm_198/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_dense_66_layer_call_and_return_conditional_losses_325702

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
while_body_325599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_53_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_53_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_53_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_53_matmul_readvariableop_resource:2(E
3while_lstm_cell_53_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_53_biasadd_readvariableop_resource:(˘)while/lstm_cell_53/BiasAdd/ReadVariableOp˘(while/lstm_cell_53/MatMul/ReadVariableOp˘*while/lstm_cell_53/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_53/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_53_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_53/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_53/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_53_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_53/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_53/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_53/addAddV2#while/lstm_cell_53/MatMul:product:0%while/lstm_cell_53/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_53/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_53_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_53/BiasAddBiasAddwhile/lstm_cell_53/add:z:01while/lstm_cell_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_53/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_53/splitSplit+while/lstm_cell_53/split/split_dim:output:0#while/lstm_cell_53/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_53/SigmoidSigmoid!while/lstm_cell_53/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_1Sigmoid!while/lstm_cell_53/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mulMul while/lstm_cell_53/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_53/ReluRelu!while/lstm_cell_53/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_1Mulwhile/lstm_cell_53/Sigmoid:y:0%while/lstm_cell_53/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/add_1AddV2while/lstm_cell_53/mul:z:0while/lstm_cell_53/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_53/Sigmoid_2Sigmoid!while/lstm_cell_53/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_53/Relu_1Reluwhile/lstm_cell_53/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_53/mul_2Mul while/lstm_cell_53/Sigmoid_2:y:0'while/lstm_cell_53/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_53/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_53/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_53/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_53/BiasAdd/ReadVariableOp)^while/lstm_cell_53/MatMul/ReadVariableOp+^while/lstm_cell_53/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_53_biasadd_readvariableop_resource4while_lstm_cell_53_biasadd_readvariableop_resource_0"l
3while_lstm_cell_53_matmul_1_readvariableop_resource5while_lstm_cell_53_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_53_matmul_readvariableop_resource3while_lstm_cell_53_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_53/BiasAdd/ReadVariableOp)while/lstm_cell_53/BiasAdd/ReadVariableOp2T
(while/lstm_cell_53/MatMul/ReadVariableOp(while/lstm_cell_53/MatMul/ReadVariableOp2X
*while/lstm_cell_53/MatMul_1/ReadVariableOp*while/lstm_cell_53/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_198_input;
 serving_default_lstm_198_input:0˙˙˙˙˙˙˙˙˙<
dense_660
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
2dense_66/kernel
:2dense_66/bias
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
0:.	2lstm_198/lstm_cell_198/kernel
::8	d2'lstm_198/lstm_cell_198/recurrent_kernel
*:(2lstm_198/lstm_cell_198/bias
0:.	dÈ2lstm_199/lstm_cell_199/kernel
::8	2È2'lstm_199/lstm_cell_199/recurrent_kernel
*:(È2lstm_199/lstm_cell_199/bias
/:-2(2lstm_200/lstm_cell_200/kernel
9:7
(2'lstm_200/lstm_cell_200/recurrent_kernel
):'(2lstm_200/lstm_cell_200/bias
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
2Adam/dense_66/kernel/m
 :2Adam/dense_66/bias/m
5:3	2$Adam/lstm_198/lstm_cell_198/kernel/m
?:=	d2.Adam/lstm_198/lstm_cell_198/recurrent_kernel/m
/:-2"Adam/lstm_198/lstm_cell_198/bias/m
5:3	dÈ2$Adam/lstm_199/lstm_cell_199/kernel/m
?:=	2È2.Adam/lstm_199/lstm_cell_199/recurrent_kernel/m
/:-È2"Adam/lstm_199/lstm_cell_199/bias/m
4:22(2$Adam/lstm_200/lstm_cell_200/kernel/m
>:<
(2.Adam/lstm_200/lstm_cell_200/recurrent_kernel/m
.:,(2"Adam/lstm_200/lstm_cell_200/bias/m
&:$
2Adam/dense_66/kernel/v
 :2Adam/dense_66/bias/v
5:3	2$Adam/lstm_198/lstm_cell_198/kernel/v
?:=	d2.Adam/lstm_198/lstm_cell_198/recurrent_kernel/v
/:-2"Adam/lstm_198/lstm_cell_198/bias/v
5:3	dÈ2$Adam/lstm_199/lstm_cell_199/kernel/v
?:=	2È2.Adam/lstm_199/lstm_cell_199/recurrent_kernel/v
/:-È2"Adam/lstm_199/lstm_cell_199/bias/v
4:22(2$Adam/lstm_200/lstm_cell_200/kernel/v
>:<
(2.Adam/lstm_200/lstm_cell_200/recurrent_kernel/v
.:,(2"Adam/lstm_200/lstm_cell_200/bias/v
2
.__inference_sequential_66_layer_call_fn_322216
.__inference_sequential_66_layer_call_fn_322954
.__inference_sequential_66_layer_call_fn_322981
.__inference_sequential_66_layer_call_fn_322832À
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_323408
I__inference_sequential_66_layer_call_and_return_conditional_losses_323835
I__inference_sequential_66_layer_call_and_return_conditional_losses_322862
I__inference_sequential_66_layer_call_and_return_conditional_losses_322892À
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
!__inference__wrapped_model_320667lstm_198_input"
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
)__inference_lstm_198_layer_call_fn_323846
)__inference_lstm_198_layer_call_fn_323857
)__inference_lstm_198_layer_call_fn_323868
)__inference_lstm_198_layer_call_fn_323879Ġ
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_324022
D__inference_lstm_198_layer_call_and_return_conditional_losses_324165
D__inference_lstm_198_layer_call_and_return_conditional_losses_324308
D__inference_lstm_198_layer_call_and_return_conditional_losses_324451Ġ
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
)__inference_lstm_199_layer_call_fn_324462
)__inference_lstm_199_layer_call_fn_324473
)__inference_lstm_199_layer_call_fn_324484
)__inference_lstm_199_layer_call_fn_324495Ġ
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_324638
D__inference_lstm_199_layer_call_and_return_conditional_losses_324781
D__inference_lstm_199_layer_call_and_return_conditional_losses_324924
D__inference_lstm_199_layer_call_and_return_conditional_losses_325067Ġ
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
)__inference_lstm_200_layer_call_fn_325078
)__inference_lstm_200_layer_call_fn_325089
)__inference_lstm_200_layer_call_fn_325100
)__inference_lstm_200_layer_call_fn_325111Ġ
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_325254
D__inference_lstm_200_layer_call_and_return_conditional_losses_325397
D__inference_lstm_200_layer_call_and_return_conditional_losses_325540
D__inference_lstm_200_layer_call_and_return_conditional_losses_325683Ġ
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
)__inference_dense_66_layer_call_fn_325692˘
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
D__inference_dense_66_layer_call_and_return_conditional_losses_325702˘
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
$__inference_signature_wrapper_322927lstm_198_input"
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
-__inference_lstm_cell_51_layer_call_fn_325719
-__inference_lstm_cell_51_layer_call_fn_325736?
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325768
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325800?
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
-__inference_lstm_cell_52_layer_call_fn_325817
-__inference_lstm_cell_52_layer_call_fn_325834?
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325866
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325898?
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
-__inference_lstm_cell_53_layer_call_fn_325915
-__inference_lstm_cell_53_layer_call_fn_325932?
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325964
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325996?
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
!__inference__wrapped_model_320667-./012345!";˘8
1˘.
,)
lstm_198_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_66"
dense_66˙˙˙˙˙˙˙˙˙¤
D__inference_dense_66_layer_call_and_return_conditional_losses_325702\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_66_layer_call_fn_325692O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_198_layer_call_and_return_conditional_losses_324022-./O˘L
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_324165-./O˘L
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_324308q-./?˘<
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
D__inference_lstm_198_layer_call_and_return_conditional_losses_324451q-./?˘<
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
)__inference_lstm_198_layer_call_fn_323846}-./O˘L
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
)__inference_lstm_198_layer_call_fn_323857}-./O˘L
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
)__inference_lstm_198_layer_call_fn_323868d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_198_layer_call_fn_323879d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_199_layer_call_and_return_conditional_losses_324638012O˘L
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_324781012O˘L
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_324924q012?˘<
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
D__inference_lstm_199_layer_call_and_return_conditional_losses_325067q012?˘<
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
)__inference_lstm_199_layer_call_fn_324462}012O˘L
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
)__inference_lstm_199_layer_call_fn_324473}012O˘L
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
)__inference_lstm_199_layer_call_fn_324484d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_199_layer_call_fn_324495d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_200_layer_call_and_return_conditional_losses_325254}345O˘L
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_325397}345O˘L
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_325540m345?˘<
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
D__inference_lstm_200_layer_call_and_return_conditional_losses_325683m345?˘<
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
)__inference_lstm_200_layer_call_fn_325078p345O˘L
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
)__inference_lstm_200_layer_call_fn_325089p345O˘L
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
)__inference_lstm_200_layer_call_fn_325100`345?˘<
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
)__inference_lstm_200_layer_call_fn_325111`345?˘<
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325768ŭ-./˘}
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
H__inference_lstm_cell_51_layer_call_and_return_conditional_losses_325800ŭ-./˘}
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
-__inference_lstm_cell_51_layer_call_fn_325719í-./˘}
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
-__inference_lstm_cell_51_layer_call_fn_325736í-./˘}
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325866ŭ012˘}
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
H__inference_lstm_cell_52_layer_call_and_return_conditional_losses_325898ŭ012˘}
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
-__inference_lstm_cell_52_layer_call_fn_325817í012˘}
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
-__inference_lstm_cell_52_layer_call_fn_325834í012˘}
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325964ŭ345˘}
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
H__inference_lstm_cell_53_layer_call_and_return_conditional_losses_325996ŭ345˘}
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
-__inference_lstm_cell_53_layer_call_fn_325915í345˘}
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
-__inference_lstm_cell_53_layer_call_fn_325932í345˘}
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_322862y-./012345!"C˘@
9˘6
,)
lstm_198_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_66_layer_call_and_return_conditional_losses_322892y-./012345!"C˘@
9˘6
,)
lstm_198_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_66_layer_call_and_return_conditional_losses_323408q-./012345!";˘8
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
I__inference_sequential_66_layer_call_and_return_conditional_losses_323835q-./012345!";˘8
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
.__inference_sequential_66_layer_call_fn_322216l-./012345!"C˘@
9˘6
,)
lstm_198_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_66_layer_call_fn_322832l-./012345!"C˘@
9˘6
,)
lstm_198_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_66_layer_call_fn_322954d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_66_layer_call_fn_322981d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_322927-./012345!"M˘J
˘ 
CŞ@
>
lstm_198_input,)
lstm_198_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_66"
dense_66˙˙˙˙˙˙˙˙˙