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
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

:
*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
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
lstm_105/lstm_cell_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_105/lstm_cell_105/kernel

1lstm_105/lstm_cell_105/kernel/Read/ReadVariableOpReadVariableOplstm_105/lstm_cell_105/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_105/lstm_cell_105/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_105/lstm_cell_105/recurrent_kernel
¤
;lstm_105/lstm_cell_105/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_105/lstm_cell_105/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_105/lstm_cell_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_105/lstm_cell_105/bias

/lstm_105/lstm_cell_105/bias/Read/ReadVariableOpReadVariableOplstm_105/lstm_cell_105/bias*
_output_shapes	
:*
dtype0

lstm_106/lstm_cell_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_106/lstm_cell_106/kernel

1lstm_106/lstm_cell_106/kernel/Read/ReadVariableOpReadVariableOplstm_106/lstm_cell_106/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_106/lstm_cell_106/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_106/lstm_cell_106/recurrent_kernel
¤
;lstm_106/lstm_cell_106/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_106/lstm_cell_106/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_106/lstm_cell_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_106/lstm_cell_106/bias

/lstm_106/lstm_cell_106/bias/Read/ReadVariableOpReadVariableOplstm_106/lstm_cell_106/bias*
_output_shapes	
:È*
dtype0

lstm_107/lstm_cell_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_107/lstm_cell_107/kernel

1lstm_107/lstm_cell_107/kernel/Read/ReadVariableOpReadVariableOplstm_107/lstm_cell_107/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_107/lstm_cell_107/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_107/lstm_cell_107/recurrent_kernel
£
;lstm_107/lstm_cell_107/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_107/lstm_cell_107/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_107/lstm_cell_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_107/lstm_cell_107/bias

/lstm_107/lstm_cell_107/bias/Read/ReadVariableOpReadVariableOplstm_107/lstm_cell_107/bias*
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
Adam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_35/kernel/m

*Adam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/m
y
(Adam/dense_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_105/lstm_cell_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_105/lstm_cell_105/kernel/m

8Adam/lstm_105/lstm_cell_105/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_105/lstm_cell_105/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_105/lstm_cell_105/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m
²
BAdam/lstm_105/lstm_cell_105/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_105/lstm_cell_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_105/lstm_cell_105/bias/m

6Adam/lstm_105/lstm_cell_105/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_105/lstm_cell_105/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_106/lstm_cell_106/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_106/lstm_cell_106/kernel/m

8Adam/lstm_106/lstm_cell_106/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_106/lstm_cell_106/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_106/lstm_cell_106/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_106/lstm_cell_106/recurrent_kernel/m
²
BAdam/lstm_106/lstm_cell_106/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_106/lstm_cell_106/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_106/lstm_cell_106/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_106/lstm_cell_106/bias/m

6Adam/lstm_106/lstm_cell_106/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_106/lstm_cell_106/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_107/lstm_cell_107/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_107/lstm_cell_107/kernel/m

8Adam/lstm_107/lstm_cell_107/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_107/lstm_cell_107/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_107/lstm_cell_107/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_107/lstm_cell_107/recurrent_kernel/m
ħ
BAdam/lstm_107/lstm_cell_107/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_107/lstm_cell_107/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_107/lstm_cell_107/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_107/lstm_cell_107/bias/m

6Adam/lstm_107/lstm_cell_107/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_107/lstm_cell_107/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_35/kernel/v

*Adam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/v
y
(Adam/dense_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_105/lstm_cell_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_105/lstm_cell_105/kernel/v

8Adam/lstm_105/lstm_cell_105/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_105/lstm_cell_105/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_105/lstm_cell_105/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v
²
BAdam/lstm_105/lstm_cell_105/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_105/lstm_cell_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_105/lstm_cell_105/bias/v

6Adam/lstm_105/lstm_cell_105/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_105/lstm_cell_105/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_106/lstm_cell_106/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_106/lstm_cell_106/kernel/v

8Adam/lstm_106/lstm_cell_106/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_106/lstm_cell_106/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_106/lstm_cell_106/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_106/lstm_cell_106/recurrent_kernel/v
²
BAdam/lstm_106/lstm_cell_106/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_106/lstm_cell_106/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_106/lstm_cell_106/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_106/lstm_cell_106/bias/v

6Adam/lstm_106/lstm_cell_106/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_106/lstm_cell_106/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_107/lstm_cell_107/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_107/lstm_cell_107/kernel/v

8Adam/lstm_107/lstm_cell_107/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_107/lstm_cell_107/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_107/lstm_cell_107/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_107/lstm_cell_107/recurrent_kernel/v
ħ
BAdam/lstm_107/lstm_cell_107/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_107/lstm_cell_107/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_107/lstm_cell_107/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_107/lstm_cell_107/bias/v

6Adam/lstm_107/lstm_cell_107/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_107/lstm_cell_107/bias/v*
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
VARIABLE_VALUEdense_35/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_35/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_105/lstm_cell_105/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_105/lstm_cell_105/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_105/lstm_cell_105/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_106/lstm_cell_106/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_106/lstm_cell_106/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_106/lstm_cell_106/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_107/lstm_cell_107/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_107/lstm_cell_107/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_107/lstm_cell_107/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_35/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_35/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_105/lstm_cell_105/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_105/lstm_cell_105/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_105/lstm_cell_105/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_106/lstm_cell_106/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_106/lstm_cell_106/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_106/lstm_cell_106/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_107/lstm_cell_107/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_107/lstm_cell_107/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_107/lstm_cell_107/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_35/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_35/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_105/lstm_cell_105/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_105/lstm_cell_105/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_105/lstm_cell_105/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_106/lstm_cell_106/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_106/lstm_cell_106/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_106/lstm_cell_106/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_107/lstm_cell_107/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_107/lstm_cell_107/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_107/lstm_cell_107/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_105_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_105_inputlstm_105/lstm_cell_105/kernel'lstm_105/lstm_cell_105/recurrent_kernellstm_105/lstm_cell_105/biaslstm_106/lstm_cell_106/kernel'lstm_106/lstm_cell_106/recurrent_kernellstm_106/lstm_cell_106/biaslstm_107/lstm_cell_107/kernel'lstm_107/lstm_cell_107/recurrent_kernellstm_107/lstm_cell_107/biasdense_35/kerneldense_35/bias*
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
$__inference_signature_wrapper_178597
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_105/lstm_cell_105/kernel/Read/ReadVariableOp;lstm_105/lstm_cell_105/recurrent_kernel/Read/ReadVariableOp/lstm_105/lstm_cell_105/bias/Read/ReadVariableOp1lstm_106/lstm_cell_106/kernel/Read/ReadVariableOp;lstm_106/lstm_cell_106/recurrent_kernel/Read/ReadVariableOp/lstm_106/lstm_cell_106/bias/Read/ReadVariableOp1lstm_107/lstm_cell_107/kernel/Read/ReadVariableOp;lstm_107/lstm_cell_107/recurrent_kernel/Read/ReadVariableOp/lstm_107/lstm_cell_107/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_35/kernel/m/Read/ReadVariableOp(Adam/dense_35/bias/m/Read/ReadVariableOp8Adam/lstm_105/lstm_cell_105/kernel/m/Read/ReadVariableOpBAdam/lstm_105/lstm_cell_105/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_105/lstm_cell_105/bias/m/Read/ReadVariableOp8Adam/lstm_106/lstm_cell_106/kernel/m/Read/ReadVariableOpBAdam/lstm_106/lstm_cell_106/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_106/lstm_cell_106/bias/m/Read/ReadVariableOp8Adam/lstm_107/lstm_cell_107/kernel/m/Read/ReadVariableOpBAdam/lstm_107/lstm_cell_107/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_107/lstm_cell_107/bias/m/Read/ReadVariableOp*Adam/dense_35/kernel/v/Read/ReadVariableOp(Adam/dense_35/bias/v/Read/ReadVariableOp8Adam/lstm_105/lstm_cell_105/kernel/v/Read/ReadVariableOpBAdam/lstm_105/lstm_cell_105/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_105/lstm_cell_105/bias/v/Read/ReadVariableOp8Adam/lstm_106/lstm_cell_106/kernel/v/Read/ReadVariableOpBAdam/lstm_106/lstm_cell_106/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_106/lstm_cell_106/bias/v/Read/ReadVariableOp8Adam/lstm_107/lstm_cell_107/kernel/v/Read/ReadVariableOpBAdam/lstm_107/lstm_cell_107/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_107/lstm_cell_107/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_181809

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_35/kerneldense_35/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_105/lstm_cell_105/kernel'lstm_105/lstm_cell_105/recurrent_kernellstm_105/lstm_cell_105/biaslstm_106/lstm_cell_106/kernel'lstm_106/lstm_cell_106/recurrent_kernellstm_106/lstm_cell_106/biaslstm_107/lstm_cell_107/kernel'lstm_107/lstm_cell_107/recurrent_kernellstm_107/lstm_cell_107/biastotalcountAdam/dense_35/kernel/mAdam/dense_35/bias/m$Adam/lstm_105/lstm_cell_105/kernel/m.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m"Adam/lstm_105/lstm_cell_105/bias/m$Adam/lstm_106/lstm_cell_106/kernel/m.Adam/lstm_106/lstm_cell_106/recurrent_kernel/m"Adam/lstm_106/lstm_cell_106/bias/m$Adam/lstm_107/lstm_cell_107/kernel/m.Adam/lstm_107/lstm_cell_107/recurrent_kernel/m"Adam/lstm_107/lstm_cell_107/bias/mAdam/dense_35/kernel/vAdam/dense_35/bias/v$Adam/lstm_105/lstm_cell_105/kernel/v.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v"Adam/lstm_105/lstm_cell_105/bias/v$Adam/lstm_106/lstm_cell_106/kernel/v.Adam/lstm_106/lstm_cell_106/recurrent_kernel/v"Adam/lstm_106/lstm_cell_106/bias/v$Adam/lstm_107/lstm_cell_107/kernel/v.Adam/lstm_107/lstm_cell_107/recurrent_kernel/v"Adam/lstm_107/lstm_cell_107/bias/v*4
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
"__inference__traced_restore_181939½Ó+
ĉ"
?
while_body_176609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_27_176633_0:	.
while_lstm_cell_27_176635_0:	d*
while_lstm_cell_27_176637_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_27_176633:	,
while_lstm_cell_27_176635:	d(
while_lstm_cell_27_176637:	˘*while/lstm_cell_27/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_27/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27_176633_0while_lstm_cell_27_176635_0while_lstm_cell_27_176637_0*
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176550Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_27/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_27/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_27/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_27_176633while_lstm_cell_27_176633_0"8
while_lstm_cell_27_176635while_lstm_cell_27_176635_0"8
while_lstm_cell_27_176637while_lstm_cell_27_176637_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_27/StatefulPartitionedCall*while/lstm_cell_27/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_180510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
à"
Ŭ
while_body_177309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_29_177333_0:2(-
while_lstm_cell_29_177335_0:
()
while_lstm_cell_29_177337_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_29_177333:2(+
while_lstm_cell_29_177335:
('
while_lstm_cell_29_177337:(˘*while/lstm_cell_29/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_29_177333_0while_lstm_cell_29_177335_0while_lstm_cell_29_177337_0*
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177250Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_29/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_29/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_29/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_29_177333while_lstm_cell_29_177333_0"8
while_lstm_cell_29_177335while_lstm_cell_29_177335_0"8
while_lstm_cell_29_177337while_lstm_cell_29_177337_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_29/StatefulPartitionedCall*while/lstm_cell_29/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ŭ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181536

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
while_body_178298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_176417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176417___redundant_placeholder04
0while_while_cond_176417___redundant_placeholder14
0while_while_cond_176417___redundant_placeholder24
0while_while_cond_176417___redundant_placeholder3
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
(sequential_35_lstm_107_while_body_176247J
Fsequential_35_lstm_107_while_sequential_35_lstm_107_while_loop_counterP
Lsequential_35_lstm_107_while_sequential_35_lstm_107_while_maximum_iterations,
(sequential_35_lstm_107_while_placeholder.
*sequential_35_lstm_107_while_placeholder_1.
*sequential_35_lstm_107_while_placeholder_2.
*sequential_35_lstm_107_while_placeholder_3I
Esequential_35_lstm_107_while_sequential_35_lstm_107_strided_slice_1_0
sequential_35_lstm_107_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_107_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_35_lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0:2(^
Lsequential_35_lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(Y
Ksequential_35_lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0:()
%sequential_35_lstm_107_while_identity+
'sequential_35_lstm_107_while_identity_1+
'sequential_35_lstm_107_while_identity_2+
'sequential_35_lstm_107_while_identity_3+
'sequential_35_lstm_107_while_identity_4+
'sequential_35_lstm_107_while_identity_5G
Csequential_35_lstm_107_while_sequential_35_lstm_107_strided_slice_1
sequential_35_lstm_107_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_107_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_35_lstm_107_while_lstm_cell_29_matmul_readvariableop_resource:2(\
Jsequential_35_lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource:
(W
Isequential_35_lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource:(˘@sequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp˘?sequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp˘Asequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp
Nsequential_35/lstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_35/lstm_107/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_35_lstm_107_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_107_tensorarrayunstack_tensorlistfromtensor_0(sequential_35_lstm_107_while_placeholderWsequential_35/lstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOpJsequential_35_lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_35/lstm_107/while/lstm_cell_29/MatMulMatMulGsequential_35/lstm_107/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOpLsequential_35_lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_35/lstm_107/while/lstm_cell_29/MatMul_1MatMul*sequential_35_lstm_107_while_placeholder_2Isequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_35/lstm_107/while/lstm_cell_29/addAddV2:sequential_35/lstm_107/while/lstm_cell_29/MatMul:product:0<sequential_35/lstm_107/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOpKsequential_35_lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_35/lstm_107/while/lstm_cell_29/BiasAddBiasAdd1sequential_35/lstm_107/while/lstm_cell_29/add:z:0Hsequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_35/lstm_107/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_35/lstm_107/while/lstm_cell_29/splitSplitBsequential_35/lstm_107/while/lstm_cell_29/split/split_dim:output:0:sequential_35/lstm_107/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_35/lstm_107/while/lstm_cell_29/SigmoidSigmoid8sequential_35/lstm_107/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_35/lstm_107/while/lstm_cell_29/Sigmoid_1Sigmoid8sequential_35/lstm_107/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_35/lstm_107/while/lstm_cell_29/mulMul7sequential_35/lstm_107/while/lstm_cell_29/Sigmoid_1:y:0*sequential_35_lstm_107_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_35/lstm_107/while/lstm_cell_29/ReluRelu8sequential_35/lstm_107/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_35/lstm_107/while/lstm_cell_29/mul_1Mul5sequential_35/lstm_107/while/lstm_cell_29/Sigmoid:y:0<sequential_35/lstm_107/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_35/lstm_107/while/lstm_cell_29/add_1AddV21sequential_35/lstm_107/while/lstm_cell_29/mul:z:03sequential_35/lstm_107/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_35/lstm_107/while/lstm_cell_29/Sigmoid_2Sigmoid8sequential_35/lstm_107/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_35/lstm_107/while/lstm_cell_29/Relu_1Relu3sequential_35/lstm_107/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_35/lstm_107/while/lstm_cell_29/mul_2Mul7sequential_35/lstm_107/while/lstm_cell_29/Sigmoid_2:y:0>sequential_35/lstm_107/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_35/lstm_107/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_35_lstm_107_while_placeholder_1(sequential_35_lstm_107_while_placeholder3sequential_35/lstm_107/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_35/lstm_107/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_35/lstm_107/while/addAddV2(sequential_35_lstm_107_while_placeholder+sequential_35/lstm_107/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_35/lstm_107/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_35/lstm_107/while/add_1AddV2Fsequential_35_lstm_107_while_sequential_35_lstm_107_while_loop_counter-sequential_35/lstm_107/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_35/lstm_107/while/IdentityIdentity&sequential_35/lstm_107/while/add_1:z:0"^sequential_35/lstm_107/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_35/lstm_107/while/Identity_1IdentityLsequential_35_lstm_107_while_sequential_35_lstm_107_while_maximum_iterations"^sequential_35/lstm_107/while/NoOp*
T0*
_output_shapes
: 
'sequential_35/lstm_107/while/Identity_2Identity$sequential_35/lstm_107/while/add:z:0"^sequential_35/lstm_107/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_35/lstm_107/while/Identity_3IdentityQsequential_35/lstm_107/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_35/lstm_107/while/NoOp*
T0*
_output_shapes
: ?
'sequential_35/lstm_107/while/Identity_4Identity3sequential_35/lstm_107/while/lstm_cell_29/mul_2:z:0"^sequential_35/lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_35/lstm_107/while/Identity_5Identity3sequential_35/lstm_107/while/lstm_cell_29/add_1:z:0"^sequential_35/lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_35/lstm_107/while/NoOpNoOpA^sequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp@^sequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOpB^sequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_35_lstm_107_while_identity.sequential_35/lstm_107/while/Identity:output:0"[
'sequential_35_lstm_107_while_identity_10sequential_35/lstm_107/while/Identity_1:output:0"[
'sequential_35_lstm_107_while_identity_20sequential_35/lstm_107/while/Identity_2:output:0"[
'sequential_35_lstm_107_while_identity_30sequential_35/lstm_107/while/Identity_3:output:0"[
'sequential_35_lstm_107_while_identity_40sequential_35/lstm_107/while/Identity_4:output:0"[
'sequential_35_lstm_107_while_identity_50sequential_35/lstm_107/while/Identity_5:output:0"
Isequential_35_lstm_107_while_lstm_cell_29_biasadd_readvariableop_resourceKsequential_35_lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0"
Jsequential_35_lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resourceLsequential_35_lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0"
Hsequential_35_lstm_107_while_lstm_cell_29_matmul_readvariableop_resourceJsequential_35_lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0"
Csequential_35_lstm_107_while_sequential_35_lstm_107_strided_slice_1Esequential_35_lstm_107_while_sequential_35_lstm_107_strided_slice_1_0"
sequential_35_lstm_107_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_107_tensorarrayunstack_tensorlistfromtensorsequential_35_lstm_107_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_107_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp@sequential_35/lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2
?sequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp?sequential_35/lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp2
Asequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOpAsequential_35/lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
$__inference_signature_wrapper_178597
lstm_105_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_105_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_176337o
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
_user_specified_namelstm_105_input
8
?
while_body_177602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177028

inputs&
lstm_cell_28_176946:	dÈ&
lstm_cell_28_176948:	2È"
lstm_cell_28_176950:	È
identity˘$lstm_cell_28/StatefulPartitionedCall˘while;
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
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_176946lstm_cell_28_176948lstm_cell_28_176950*
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176900n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_176946lstm_cell_28_176948lstm_cell_28_176950*
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
while_body_176959*
condR
while_cond_176958*K
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
NoOpNoOp%^lstm_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
¤J

D__inference_lstm_106_layer_call_and_return_conditional_losses_178217

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_178133*
condR
while_cond_178132*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
²

÷
lstm_106_while_cond_179275.
*lstm_106_while_lstm_106_while_loop_counter4
0lstm_106_while_lstm_106_while_maximum_iterations
lstm_106_while_placeholder 
lstm_106_while_placeholder_1 
lstm_106_while_placeholder_2 
lstm_106_while_placeholder_30
,lstm_106_while_less_lstm_106_strided_slice_1F
Blstm_106_while_lstm_106_while_cond_179275___redundant_placeholder0F
Blstm_106_while_lstm_106_while_cond_179275___redundant_placeholder1F
Blstm_106_while_lstm_106_while_cond_179275___redundant_placeholder2F
Blstm_106_while_lstm_106_while_cond_179275___redundant_placeholder3
lstm_106_while_identity

lstm_106/while/LessLesslstm_106_while_placeholder,lstm_106_while_less_lstm_106_strided_slice_1*
T0*
_output_shapes
: ]
lstm_106/while/IdentityIdentitylstm_106/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_106_while_identity lstm_106/while/Identity:output:0*(
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
ò

˘
.__inference_sequential_35_layer_call_fn_178502
lstm_105_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_105_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_178450o
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
_user_specified_namelstm_105_input

ĥ
)__inference_lstm_105_layer_call_fn_179538

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
D__inference_lstm_105_layer_call_and_return_conditional_losses_177536s
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
J

D__inference_lstm_107_layer_call_and_return_conditional_losses_181210

inputs=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_181126*
condR
while_cond_181125*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_106_while_body_179276.
*lstm_106_while_lstm_106_while_loop_counter4
0lstm_106_while_lstm_106_while_maximum_iterations
lstm_106_while_placeholder 
lstm_106_while_placeholder_1 
lstm_106_while_placeholder_2 
lstm_106_while_placeholder_3-
)lstm_106_while_lstm_106_strided_slice_1_0i
elstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈQ
>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
lstm_106_while_identity
lstm_106_while_identity_1
lstm_106_while_identity_2
lstm_106_while_identity_3
lstm_106_while_identity_4
lstm_106_while_identity_5+
'lstm_106_while_lstm_106_strided_slice_1g
clstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensorM
:lstm_106_while_lstm_cell_28_matmul_readvariableop_resource:	dÈO
<lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈJ
;lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource:	È˘2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp˘1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp˘3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp
@lstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_106/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0lstm_106_while_placeholderIlstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_106/while/lstm_cell_28/MatMulMatMul9lstm_106/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_106/while/lstm_cell_28/MatMul_1MatMullstm_106_while_placeholder_2;lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_106/while/lstm_cell_28/addAddV2,lstm_106/while/lstm_cell_28/MatMul:product:0.lstm_106/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_106/while/lstm_cell_28/BiasAddBiasAdd#lstm_106/while/lstm_cell_28/add:z:0:lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_106/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_106/while/lstm_cell_28/splitSplit4lstm_106/while/lstm_cell_28/split/split_dim:output:0,lstm_106/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_106/while/lstm_cell_28/SigmoidSigmoid*lstm_106/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_106/while/lstm_cell_28/Sigmoid_1Sigmoid*lstm_106/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_106/while/lstm_cell_28/mulMul)lstm_106/while/lstm_cell_28/Sigmoid_1:y:0lstm_106_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_106/while/lstm_cell_28/ReluRelu*lstm_106/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_106/while/lstm_cell_28/mul_1Mul'lstm_106/while/lstm_cell_28/Sigmoid:y:0.lstm_106/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_106/while/lstm_cell_28/add_1AddV2#lstm_106/while/lstm_cell_28/mul:z:0%lstm_106/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_106/while/lstm_cell_28/Sigmoid_2Sigmoid*lstm_106/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_106/while/lstm_cell_28/Relu_1Relu%lstm_106/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_106/while/lstm_cell_28/mul_2Mul)lstm_106/while/lstm_cell_28/Sigmoid_2:y:00lstm_106/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_106/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_106_while_placeholder_1lstm_106_while_placeholder%lstm_106/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_106/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_106/while/addAddV2lstm_106_while_placeholderlstm_106/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_106/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_106/while/add_1AddV2*lstm_106_while_lstm_106_while_loop_counterlstm_106/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_106/while/IdentityIdentitylstm_106/while/add_1:z:0^lstm_106/while/NoOp*
T0*
_output_shapes
: 
lstm_106/while/Identity_1Identity0lstm_106_while_lstm_106_while_maximum_iterations^lstm_106/while/NoOp*
T0*
_output_shapes
: t
lstm_106/while/Identity_2Identitylstm_106/while/add:z:0^lstm_106/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_106/while/Identity_3IdentityClstm_106/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_106/while/NoOp*
T0*
_output_shapes
: 
lstm_106/while/Identity_4Identity%lstm_106/while/lstm_cell_28/mul_2:z:0^lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/while/Identity_5Identity%lstm_106/while/lstm_cell_28/add_1:z:0^lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_106/while/NoOpNoOp3^lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2^lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp4^lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_106_while_identity lstm_106/while/Identity:output:0"?
lstm_106_while_identity_1"lstm_106/while/Identity_1:output:0"?
lstm_106_while_identity_2"lstm_106/while/Identity_2:output:0"?
lstm_106_while_identity_3"lstm_106/while/Identity_3:output:0"?
lstm_106_while_identity_4"lstm_106/while/Identity_4:output:0"?
lstm_106_while_identity_5"lstm_106/while/Identity_5:output:0"T
'lstm_106_while_lstm_106_strided_slice_1)lstm_106_while_lstm_106_strided_slice_1_0"|
;lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0"~
<lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0"z
:lstm_106_while_lstm_cell_28_matmul_readvariableop_resource<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0"Ì
clstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensorelstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2f
1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp2j
3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
ó
I__inference_sequential_35_layer_call_and_return_conditional_losses_178562
lstm_105_input"
lstm_105_178535:	"
lstm_105_178537:	d
lstm_105_178539:	"
lstm_106_178542:	dÈ"
lstm_106_178544:	2È
lstm_106_178546:	È!
lstm_107_178549:2(!
lstm_107_178551:
(
lstm_107_178553:(!
dense_35_178556:

dense_35_178558:
identity˘ dense_35/StatefulPartitionedCall˘ lstm_105/StatefulPartitionedCall˘ lstm_106/StatefulPartitionedCall˘ lstm_107/StatefulPartitionedCall
 lstm_105/StatefulPartitionedCallStatefulPartitionedCalllstm_105_inputlstm_105_178535lstm_105_178537lstm_105_178539*
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_178382Ş
 lstm_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0lstm_106_178542lstm_106_178544lstm_106_178546*
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_178217Ĥ
 lstm_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_106/StatefulPartitionedCall:output:0lstm_107_178549lstm_107_178551lstm_107_178553*
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_178052
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_35_178556dense_35_178558*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_35/StatefulPartitionedCall!^lstm_105/StatefulPartitionedCall!^lstm_106/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2D
 lstm_106/StatefulPartitionedCall lstm_106/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_105_input
µ
?
while_cond_177751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177751___redundant_placeholder04
0while_while_cond_177751___redundant_placeholder14
0while_while_cond_177751___redundant_placeholder24
0while_while_cond_177751___redundant_placeholder3
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
)__inference_lstm_106_layer_call_fn_180132
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_176837|
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
ĉ"
?
while_body_176768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_28_176792_0:	dÈ.
while_lstm_cell_28_176794_0:	2È*
while_lstm_cell_28_176796_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_28_176792:	dÈ,
while_lstm_cell_28_176794:	2È(
while_lstm_cell_28_176796:	È˘*while/lstm_cell_28/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_176792_0while_lstm_cell_28_176794_0while_lstm_cell_28_176796_0*
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176754Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_28_176792while_lstm_cell_28_176792_0"8
while_lstm_cell_28_176794while_lstm_cell_28_176794_0"8
while_lstm_cell_28_176796while_lstm_cell_28_176796_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_180223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180223___redundant_placeholder04
0while_while_cond_180223___redundant_placeholder14
0while_while_cond_180223___redundant_placeholder24
0while_while_cond_180223___redundant_placeholder3
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176754

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
¤J

D__inference_lstm_106_layer_call_and_return_conditional_losses_180594

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_180510*
condR
while_cond_180509*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_180653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_180121

inputs>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_180037*
condR
while_cond_180036*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_107_layer_call_and_return_conditional_losses_180924
inputs_0=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_180840*
condR
while_cond_180839*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ë
ö
-__inference_lstm_cell_27_layer_call_fn_181406

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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176550o
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
while_cond_181268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181268___redundant_placeholder04
0while_while_cond_181268___redundant_placeholder14
0while_while_cond_181268___redundant_placeholder24
0while_while_cond_181268___redundant_placeholder3
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
while_body_177752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_105_layer_call_and_return_conditional_losses_176678

inputs&
lstm_cell_27_176596:	&
lstm_cell_27_176598:	d"
lstm_cell_27_176600:	
identity˘$lstm_cell_27/StatefulPartitionedCall˘while;
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
$lstm_cell_27/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27_176596lstm_cell_27_176598lstm_cell_27_176600*
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176550n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27_176596lstm_cell_27_176598lstm_cell_27_176600*
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
while_body_176609*
condR
while_cond_176608*K
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
NoOpNoOp%^lstm_cell_27/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_27/StatefulPartitionedCall$lstm_cell_27/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÎB
ê

lstm_107_while_body_179415.
*lstm_107_while_lstm_107_while_loop_counter4
0lstm_107_while_lstm_107_while_maximum_iterations
lstm_107_while_placeholder 
lstm_107_while_placeholder_1 
lstm_107_while_placeholder_2 
lstm_107_while_placeholder_3-
)lstm_107_while_lstm_107_strided_slice_1_0i
elstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0:2(P
>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(K
=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0:(
lstm_107_while_identity
lstm_107_while_identity_1
lstm_107_while_identity_2
lstm_107_while_identity_3
lstm_107_while_identity_4
lstm_107_while_identity_5+
'lstm_107_while_lstm_107_strided_slice_1g
clstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensorL
:lstm_107_while_lstm_cell_29_matmul_readvariableop_resource:2(N
<lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource:
(I
;lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource:(˘2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp˘1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp˘3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp
@lstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_107/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0lstm_107_while_placeholderIlstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_107/while/lstm_cell_29/MatMulMatMul9lstm_107/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_107/while/lstm_cell_29/MatMul_1MatMullstm_107_while_placeholder_2;lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_107/while/lstm_cell_29/addAddV2,lstm_107/while/lstm_cell_29/MatMul:product:0.lstm_107/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_107/while/lstm_cell_29/BiasAddBiasAdd#lstm_107/while/lstm_cell_29/add:z:0:lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_107/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_107/while/lstm_cell_29/splitSplit4lstm_107/while/lstm_cell_29/split/split_dim:output:0,lstm_107/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_107/while/lstm_cell_29/SigmoidSigmoid*lstm_107/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_107/while/lstm_cell_29/Sigmoid_1Sigmoid*lstm_107/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_107/while/lstm_cell_29/mulMul)lstm_107/while/lstm_cell_29/Sigmoid_1:y:0lstm_107_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_107/while/lstm_cell_29/ReluRelu*lstm_107/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_107/while/lstm_cell_29/mul_1Mul'lstm_107/while/lstm_cell_29/Sigmoid:y:0.lstm_107/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_107/while/lstm_cell_29/add_1AddV2#lstm_107/while/lstm_cell_29/mul:z:0%lstm_107/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_107/while/lstm_cell_29/Sigmoid_2Sigmoid*lstm_107/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_107/while/lstm_cell_29/Relu_1Relu%lstm_107/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_107/while/lstm_cell_29/mul_2Mul)lstm_107/while/lstm_cell_29/Sigmoid_2:y:00lstm_107/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_107/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_107_while_placeholder_1lstm_107_while_placeholder%lstm_107/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_107/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_107/while/addAddV2lstm_107_while_placeholderlstm_107/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_107/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_107/while/add_1AddV2*lstm_107_while_lstm_107_while_loop_counterlstm_107/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_107/while/IdentityIdentitylstm_107/while/add_1:z:0^lstm_107/while/NoOp*
T0*
_output_shapes
: 
lstm_107/while/Identity_1Identity0lstm_107_while_lstm_107_while_maximum_iterations^lstm_107/while/NoOp*
T0*
_output_shapes
: t
lstm_107/while/Identity_2Identitylstm_107/while/add:z:0^lstm_107/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_107/while/Identity_3IdentityClstm_107/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_107/while/NoOp*
T0*
_output_shapes
: 
lstm_107/while/Identity_4Identity%lstm_107/while/lstm_cell_29/mul_2:z:0^lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/while/Identity_5Identity%lstm_107/while/lstm_cell_29/add_1:z:0^lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_107/while/NoOpNoOp3^lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2^lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp4^lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_107_while_identity lstm_107/while/Identity:output:0"?
lstm_107_while_identity_1"lstm_107/while/Identity_1:output:0"?
lstm_107_while_identity_2"lstm_107/while/Identity_2:output:0"?
lstm_107_while_identity_3"lstm_107/while/Identity_3:output:0"?
lstm_107_while_identity_4"lstm_107/while/Identity_4:output:0"?
lstm_107_while_identity_5"lstm_107/while/Identity_5:output:0"T
'lstm_107_while_lstm_107_strided_slice_1)lstm_107_while_lstm_107_strided_slice_1_0"|
;lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0"~
<lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0"z
:lstm_107_while_lstm_cell_29_matmul_readvariableop_resource<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0"Ì
clstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensorelstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2f
1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp2j
3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177104

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
˙µ
Á
!__inference__wrapped_model_176337
lstm_105_inputU
Bsequential_35_lstm_105_lstm_cell_27_matmul_readvariableop_resource:	W
Dsequential_35_lstm_105_lstm_cell_27_matmul_1_readvariableop_resource:	dR
Csequential_35_lstm_105_lstm_cell_27_biasadd_readvariableop_resource:	U
Bsequential_35_lstm_106_lstm_cell_28_matmul_readvariableop_resource:	dÈW
Dsequential_35_lstm_106_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈR
Csequential_35_lstm_106_lstm_cell_28_biasadd_readvariableop_resource:	ÈT
Bsequential_35_lstm_107_lstm_cell_29_matmul_readvariableop_resource:2(V
Dsequential_35_lstm_107_lstm_cell_29_matmul_1_readvariableop_resource:
(Q
Csequential_35_lstm_107_lstm_cell_29_biasadd_readvariableop_resource:(G
5sequential_35_dense_35_matmul_readvariableop_resource:
D
6sequential_35_dense_35_biasadd_readvariableop_resource:
identity˘-sequential_35/dense_35/BiasAdd/ReadVariableOp˘,sequential_35/dense_35/MatMul/ReadVariableOp˘:sequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp˘9sequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOp˘;sequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp˘sequential_35/lstm_105/while˘:sequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp˘9sequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOp˘;sequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp˘sequential_35/lstm_106/while˘:sequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp˘9sequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOp˘;sequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp˘sequential_35/lstm_107/whileZ
sequential_35/lstm_105/ShapeShapelstm_105_input*
T0*
_output_shapes
:t
*sequential_35/lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_35/lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_35/lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_35/lstm_105/strided_sliceStridedSlice%sequential_35/lstm_105/Shape:output:03sequential_35/lstm_105/strided_slice/stack:output:05sequential_35/lstm_105/strided_slice/stack_1:output:05sequential_35/lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_35/lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_35/lstm_105/zeros/packedPack-sequential_35/lstm_105/strided_slice:output:0.sequential_35/lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_35/lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_35/lstm_105/zerosFill,sequential_35/lstm_105/zeros/packed:output:0+sequential_35/lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_35/lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_35/lstm_105/zeros_1/packedPack-sequential_35/lstm_105/strided_slice:output:00sequential_35/lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_35/lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_35/lstm_105/zeros_1Fill.sequential_35/lstm_105/zeros_1/packed:output:0-sequential_35/lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_35/lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_35/lstm_105/transpose	Transposelstm_105_input.sequential_35/lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_35/lstm_105/Shape_1Shape$sequential_35/lstm_105/transpose:y:0*
T0*
_output_shapes
:v
,sequential_35/lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_35/lstm_105/strided_slice_1StridedSlice'sequential_35/lstm_105/Shape_1:output:05sequential_35/lstm_105/strided_slice_1/stack:output:07sequential_35/lstm_105/strided_slice_1/stack_1:output:07sequential_35/lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_35/lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_35/lstm_105/TensorArrayV2TensorListReserve;sequential_35/lstm_105/TensorArrayV2/element_shape:output:0/sequential_35/lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_35/lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_35/lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_35/lstm_105/transpose:y:0Usequential_35/lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_35/lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_35/lstm_105/strided_slice_2StridedSlice$sequential_35/lstm_105/transpose:y:05sequential_35/lstm_105/strided_slice_2/stack:output:07sequential_35/lstm_105/strided_slice_2/stack_1:output:07sequential_35/lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOpReadVariableOpBsequential_35_lstm_105_lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_35/lstm_105/lstm_cell_27/MatMulMatMul/sequential_35/lstm_105/strided_slice_2:output:0Asequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOpDsequential_35_lstm_105_lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_35/lstm_105/lstm_cell_27/MatMul_1MatMul%sequential_35/lstm_105/zeros:output:0Csequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_35/lstm_105/lstm_cell_27/addAddV24sequential_35/lstm_105/lstm_cell_27/MatMul:product:06sequential_35/lstm_105/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOpCsequential_35_lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_35/lstm_105/lstm_cell_27/BiasAddBiasAdd+sequential_35/lstm_105/lstm_cell_27/add:z:0Bsequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_35/lstm_105/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_35/lstm_105/lstm_cell_27/splitSplit<sequential_35/lstm_105/lstm_cell_27/split/split_dim:output:04sequential_35/lstm_105/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_35/lstm_105/lstm_cell_27/SigmoidSigmoid2sequential_35/lstm_105/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_35/lstm_105/lstm_cell_27/Sigmoid_1Sigmoid2sequential_35/lstm_105/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_35/lstm_105/lstm_cell_27/mulMul1sequential_35/lstm_105/lstm_cell_27/Sigmoid_1:y:0'sequential_35/lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_35/lstm_105/lstm_cell_27/ReluRelu2sequential_35/lstm_105/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_35/lstm_105/lstm_cell_27/mul_1Mul/sequential_35/lstm_105/lstm_cell_27/Sigmoid:y:06sequential_35/lstm_105/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_35/lstm_105/lstm_cell_27/add_1AddV2+sequential_35/lstm_105/lstm_cell_27/mul:z:0-sequential_35/lstm_105/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_35/lstm_105/lstm_cell_27/Sigmoid_2Sigmoid2sequential_35/lstm_105/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_35/lstm_105/lstm_cell_27/Relu_1Relu-sequential_35/lstm_105/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_35/lstm_105/lstm_cell_27/mul_2Mul1sequential_35/lstm_105/lstm_cell_27/Sigmoid_2:y:08sequential_35/lstm_105/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_35/lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_35/lstm_105/TensorArrayV2_1TensorListReserve=sequential_35/lstm_105/TensorArrayV2_1/element_shape:output:0/sequential_35/lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_35/lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_35/lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_35/lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_35/lstm_105/whileWhile2sequential_35/lstm_105/while/loop_counter:output:08sequential_35/lstm_105/while/maximum_iterations:output:0$sequential_35/lstm_105/time:output:0/sequential_35/lstm_105/TensorArrayV2_1:handle:0%sequential_35/lstm_105/zeros:output:0'sequential_35/lstm_105/zeros_1:output:0/sequential_35/lstm_105/strided_slice_1:output:0Nsequential_35/lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_35_lstm_105_lstm_cell_27_matmul_readvariableop_resourceDsequential_35_lstm_105_lstm_cell_27_matmul_1_readvariableop_resourceCsequential_35_lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
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
(sequential_35_lstm_105_while_body_175969*4
cond,R*
(sequential_35_lstm_105_while_cond_175968*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_35/lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_35/lstm_105/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_35/lstm_105/while:output:3Psequential_35/lstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_35/lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_35/lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_35/lstm_105/strided_slice_3StridedSliceBsequential_35/lstm_105/TensorArrayV2Stack/TensorListStack:tensor:05sequential_35/lstm_105/strided_slice_3/stack:output:07sequential_35/lstm_105/strided_slice_3/stack_1:output:07sequential_35/lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_35/lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_35/lstm_105/transpose_1	TransposeBsequential_35/lstm_105/TensorArrayV2Stack/TensorListStack:tensor:00sequential_35/lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_35/lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_35/lstm_106/ShapeShape&sequential_35/lstm_105/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_35/lstm_106/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_35/lstm_106/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_35/lstm_106/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_35/lstm_106/strided_sliceStridedSlice%sequential_35/lstm_106/Shape:output:03sequential_35/lstm_106/strided_slice/stack:output:05sequential_35/lstm_106/strided_slice/stack_1:output:05sequential_35/lstm_106/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_35/lstm_106/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_35/lstm_106/zeros/packedPack-sequential_35/lstm_106/strided_slice:output:0.sequential_35/lstm_106/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_35/lstm_106/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_35/lstm_106/zerosFill,sequential_35/lstm_106/zeros/packed:output:0+sequential_35/lstm_106/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_35/lstm_106/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_35/lstm_106/zeros_1/packedPack-sequential_35/lstm_106/strided_slice:output:00sequential_35/lstm_106/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_35/lstm_106/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_35/lstm_106/zeros_1Fill.sequential_35/lstm_106/zeros_1/packed:output:0-sequential_35/lstm_106/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_35/lstm_106/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_35/lstm_106/transpose	Transpose&sequential_35/lstm_105/transpose_1:y:0.sequential_35/lstm_106/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_35/lstm_106/Shape_1Shape$sequential_35/lstm_106/transpose:y:0*
T0*
_output_shapes
:v
,sequential_35/lstm_106/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_106/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_106/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_35/lstm_106/strided_slice_1StridedSlice'sequential_35/lstm_106/Shape_1:output:05sequential_35/lstm_106/strided_slice_1/stack:output:07sequential_35/lstm_106/strided_slice_1/stack_1:output:07sequential_35/lstm_106/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_35/lstm_106/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_35/lstm_106/TensorArrayV2TensorListReserve;sequential_35/lstm_106/TensorArrayV2/element_shape:output:0/sequential_35/lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_35/lstm_106/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_35/lstm_106/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_35/lstm_106/transpose:y:0Usequential_35/lstm_106/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_35/lstm_106/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_106/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_106/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_35/lstm_106/strided_slice_2StridedSlice$sequential_35/lstm_106/transpose:y:05sequential_35/lstm_106/strided_slice_2/stack:output:07sequential_35/lstm_106/strided_slice_2/stack_1:output:07sequential_35/lstm_106/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpBsequential_35_lstm_106_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_35/lstm_106/lstm_cell_28/MatMulMatMul/sequential_35/lstm_106/strided_slice_2:output:0Asequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpDsequential_35_lstm_106_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_35/lstm_106/lstm_cell_28/MatMul_1MatMul%sequential_35/lstm_106/zeros:output:0Csequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_35/lstm_106/lstm_cell_28/addAddV24sequential_35/lstm_106/lstm_cell_28/MatMul:product:06sequential_35/lstm_106/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpCsequential_35_lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_35/lstm_106/lstm_cell_28/BiasAddBiasAdd+sequential_35/lstm_106/lstm_cell_28/add:z:0Bsequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_35/lstm_106/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_35/lstm_106/lstm_cell_28/splitSplit<sequential_35/lstm_106/lstm_cell_28/split/split_dim:output:04sequential_35/lstm_106/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_35/lstm_106/lstm_cell_28/SigmoidSigmoid2sequential_35/lstm_106/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_35/lstm_106/lstm_cell_28/Sigmoid_1Sigmoid2sequential_35/lstm_106/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_35/lstm_106/lstm_cell_28/mulMul1sequential_35/lstm_106/lstm_cell_28/Sigmoid_1:y:0'sequential_35/lstm_106/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_35/lstm_106/lstm_cell_28/ReluRelu2sequential_35/lstm_106/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_35/lstm_106/lstm_cell_28/mul_1Mul/sequential_35/lstm_106/lstm_cell_28/Sigmoid:y:06sequential_35/lstm_106/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_35/lstm_106/lstm_cell_28/add_1AddV2+sequential_35/lstm_106/lstm_cell_28/mul:z:0-sequential_35/lstm_106/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_35/lstm_106/lstm_cell_28/Sigmoid_2Sigmoid2sequential_35/lstm_106/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_35/lstm_106/lstm_cell_28/Relu_1Relu-sequential_35/lstm_106/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_35/lstm_106/lstm_cell_28/mul_2Mul1sequential_35/lstm_106/lstm_cell_28/Sigmoid_2:y:08sequential_35/lstm_106/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_35/lstm_106/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_35/lstm_106/TensorArrayV2_1TensorListReserve=sequential_35/lstm_106/TensorArrayV2_1/element_shape:output:0/sequential_35/lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_35/lstm_106/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_35/lstm_106/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_35/lstm_106/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_35/lstm_106/whileWhile2sequential_35/lstm_106/while/loop_counter:output:08sequential_35/lstm_106/while/maximum_iterations:output:0$sequential_35/lstm_106/time:output:0/sequential_35/lstm_106/TensorArrayV2_1:handle:0%sequential_35/lstm_106/zeros:output:0'sequential_35/lstm_106/zeros_1:output:0/sequential_35/lstm_106/strided_slice_1:output:0Nsequential_35/lstm_106/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_35_lstm_106_lstm_cell_28_matmul_readvariableop_resourceDsequential_35_lstm_106_lstm_cell_28_matmul_1_readvariableop_resourceCsequential_35_lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
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
(sequential_35_lstm_106_while_body_176108*4
cond,R*
(sequential_35_lstm_106_while_cond_176107*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_35/lstm_106/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_35/lstm_106/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_35/lstm_106/while:output:3Psequential_35/lstm_106/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_35/lstm_106/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_35/lstm_106/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_106/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_35/lstm_106/strided_slice_3StridedSliceBsequential_35/lstm_106/TensorArrayV2Stack/TensorListStack:tensor:05sequential_35/lstm_106/strided_slice_3/stack:output:07sequential_35/lstm_106/strided_slice_3/stack_1:output:07sequential_35/lstm_106/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_35/lstm_106/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_35/lstm_106/transpose_1	TransposeBsequential_35/lstm_106/TensorArrayV2Stack/TensorListStack:tensor:00sequential_35/lstm_106/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_35/lstm_106/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_35/lstm_107/ShapeShape&sequential_35/lstm_106/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_35/lstm_107/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_35/lstm_107/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_35/lstm_107/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_35/lstm_107/strided_sliceStridedSlice%sequential_35/lstm_107/Shape:output:03sequential_35/lstm_107/strided_slice/stack:output:05sequential_35/lstm_107/strided_slice/stack_1:output:05sequential_35/lstm_107/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_35/lstm_107/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_35/lstm_107/zeros/packedPack-sequential_35/lstm_107/strided_slice:output:0.sequential_35/lstm_107/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_35/lstm_107/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_35/lstm_107/zerosFill,sequential_35/lstm_107/zeros/packed:output:0+sequential_35/lstm_107/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_35/lstm_107/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_35/lstm_107/zeros_1/packedPack-sequential_35/lstm_107/strided_slice:output:00sequential_35/lstm_107/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_35/lstm_107/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_35/lstm_107/zeros_1Fill.sequential_35/lstm_107/zeros_1/packed:output:0-sequential_35/lstm_107/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_35/lstm_107/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_35/lstm_107/transpose	Transpose&sequential_35/lstm_106/transpose_1:y:0.sequential_35/lstm_107/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_35/lstm_107/Shape_1Shape$sequential_35/lstm_107/transpose:y:0*
T0*
_output_shapes
:v
,sequential_35/lstm_107/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_107/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_107/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_35/lstm_107/strided_slice_1StridedSlice'sequential_35/lstm_107/Shape_1:output:05sequential_35/lstm_107/strided_slice_1/stack:output:07sequential_35/lstm_107/strided_slice_1/stack_1:output:07sequential_35/lstm_107/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_35/lstm_107/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_35/lstm_107/TensorArrayV2TensorListReserve;sequential_35/lstm_107/TensorArrayV2/element_shape:output:0/sequential_35/lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_35/lstm_107/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_35/lstm_107/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_35/lstm_107/transpose:y:0Usequential_35/lstm_107/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_35/lstm_107/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_107/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_35/lstm_107/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_35/lstm_107/strided_slice_2StridedSlice$sequential_35/lstm_107/transpose:y:05sequential_35/lstm_107/strided_slice_2/stack:output:07sequential_35/lstm_107/strided_slice_2/stack_1:output:07sequential_35/lstm_107/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOpReadVariableOpBsequential_35_lstm_107_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_35/lstm_107/lstm_cell_29/MatMulMatMul/sequential_35/lstm_107/strided_slice_2:output:0Asequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOpDsequential_35_lstm_107_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_35/lstm_107/lstm_cell_29/MatMul_1MatMul%sequential_35/lstm_107/zeros:output:0Csequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_35/lstm_107/lstm_cell_29/addAddV24sequential_35/lstm_107/lstm_cell_29/MatMul:product:06sequential_35/lstm_107/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOpCsequential_35_lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_35/lstm_107/lstm_cell_29/BiasAddBiasAdd+sequential_35/lstm_107/lstm_cell_29/add:z:0Bsequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_35/lstm_107/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_35/lstm_107/lstm_cell_29/splitSplit<sequential_35/lstm_107/lstm_cell_29/split/split_dim:output:04sequential_35/lstm_107/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_35/lstm_107/lstm_cell_29/SigmoidSigmoid2sequential_35/lstm_107/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_35/lstm_107/lstm_cell_29/Sigmoid_1Sigmoid2sequential_35/lstm_107/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_35/lstm_107/lstm_cell_29/mulMul1sequential_35/lstm_107/lstm_cell_29/Sigmoid_1:y:0'sequential_35/lstm_107/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_35/lstm_107/lstm_cell_29/ReluRelu2sequential_35/lstm_107/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_35/lstm_107/lstm_cell_29/mul_1Mul/sequential_35/lstm_107/lstm_cell_29/Sigmoid:y:06sequential_35/lstm_107/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_35/lstm_107/lstm_cell_29/add_1AddV2+sequential_35/lstm_107/lstm_cell_29/mul:z:0-sequential_35/lstm_107/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_35/lstm_107/lstm_cell_29/Sigmoid_2Sigmoid2sequential_35/lstm_107/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_35/lstm_107/lstm_cell_29/Relu_1Relu-sequential_35/lstm_107/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_35/lstm_107/lstm_cell_29/mul_2Mul1sequential_35/lstm_107/lstm_cell_29/Sigmoid_2:y:08sequential_35/lstm_107/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_35/lstm_107/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_35/lstm_107/TensorArrayV2_1TensorListReserve=sequential_35/lstm_107/TensorArrayV2_1/element_shape:output:0/sequential_35/lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_35/lstm_107/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_35/lstm_107/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_35/lstm_107/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_35/lstm_107/whileWhile2sequential_35/lstm_107/while/loop_counter:output:08sequential_35/lstm_107/while/maximum_iterations:output:0$sequential_35/lstm_107/time:output:0/sequential_35/lstm_107/TensorArrayV2_1:handle:0%sequential_35/lstm_107/zeros:output:0'sequential_35/lstm_107/zeros_1:output:0/sequential_35/lstm_107/strided_slice_1:output:0Nsequential_35/lstm_107/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_35_lstm_107_lstm_cell_29_matmul_readvariableop_resourceDsequential_35_lstm_107_lstm_cell_29_matmul_1_readvariableop_resourceCsequential_35_lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
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
(sequential_35_lstm_107_while_body_176247*4
cond,R*
(sequential_35_lstm_107_while_cond_176246*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_35/lstm_107/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_35/lstm_107/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_35/lstm_107/while:output:3Psequential_35/lstm_107/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_35/lstm_107/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_35/lstm_107/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_35/lstm_107/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_35/lstm_107/strided_slice_3StridedSliceBsequential_35/lstm_107/TensorArrayV2Stack/TensorListStack:tensor:05sequential_35/lstm_107/strided_slice_3/stack:output:07sequential_35/lstm_107/strided_slice_3/stack_1:output:07sequential_35/lstm_107/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_35/lstm_107/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_35/lstm_107/transpose_1	TransposeBsequential_35/lstm_107/TensorArrayV2Stack/TensorListStack:tensor:00sequential_35/lstm_107/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_35/lstm_107/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_35/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_35_dense_35_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_35/dense_35/MatMulMatMul/sequential_35/lstm_107/strided_slice_3:output:04sequential_35/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_35/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_35_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_35/dense_35/BiasAddBiasAdd'sequential_35/dense_35/MatMul:product:05sequential_35/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_35/dense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_35/dense_35/BiasAdd/ReadVariableOp-^sequential_35/dense_35/MatMul/ReadVariableOp;^sequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp:^sequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOp<^sequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp^sequential_35/lstm_105/while;^sequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp:^sequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOp<^sequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp^sequential_35/lstm_106/while;^sequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp:^sequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOp<^sequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp^sequential_35/lstm_107/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_35/dense_35/BiasAdd/ReadVariableOp-sequential_35/dense_35/BiasAdd/ReadVariableOp2\
,sequential_35/dense_35/MatMul/ReadVariableOp,sequential_35/dense_35/MatMul/ReadVariableOp2x
:sequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp:sequential_35/lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp2v
9sequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOp9sequential_35/lstm_105/lstm_cell_27/MatMul/ReadVariableOp2z
;sequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp;sequential_35/lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp2<
sequential_35/lstm_105/whilesequential_35/lstm_105/while2x
:sequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp:sequential_35/lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp2v
9sequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOp9sequential_35/lstm_106/lstm_cell_28/MatMul/ReadVariableOp2z
;sequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp;sequential_35/lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp2<
sequential_35/lstm_106/whilesequential_35/lstm_106/while2x
:sequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp:sequential_35/lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp2v
9sequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOp9sequential_35/lstm_107/lstm_cell_29/MatMul/ReadVariableOp2z
;sequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp;sequential_35/lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp2<
sequential_35/lstm_107/whilesequential_35/lstm_107/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_105_input
µ
?
while_cond_177308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177308___redundant_placeholder04
0while_while_cond_177308___redundant_placeholder14
0while_while_cond_177308___redundant_placeholder24
0while_while_cond_177308___redundant_placeholder3
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
while_body_177968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_181126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_178297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178297___redundant_placeholder04
0while_while_cond_178297___redundant_placeholder14
0while_while_cond_178297___redundant_placeholder24
0while_while_cond_178297___redundant_placeholder3
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
)__inference_lstm_106_layer_call_fn_180143
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177028|
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
Ú


.__inference_sequential_35_layer_call_fn_178651

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
I__inference_sequential_35_layer_call_and_return_conditional_losses_178450o
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

ĥ
)__inference_lstm_106_layer_call_fn_180154

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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177686s
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
²

÷
lstm_105_while_cond_179136.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_30
,lstm_105_while_less_lstm_105_strided_slice_1F
Blstm_105_while_lstm_105_while_cond_179136___redundant_placeholder0F
Blstm_105_while_lstm_105_while_cond_179136___redundant_placeholder1F
Blstm_105_while_lstm_105_while_cond_179136___redundant_placeholder2F
Blstm_105_while_lstm_105_while_cond_179136___redundant_placeholder3
lstm_105_while_identity

lstm_105/while/LessLesslstm_105_while_placeholder,lstm_105_while_less_lstm_105_strided_slice_1*
T0*
_output_shapes
: ]
lstm_105/while/IdentityIdentitylstm_105/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_105_while_identity lstm_105/while/Identity:output:0*(
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_179692
inputs_0>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_179608*
condR
while_cond_179607*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Ğ
ë
I__inference_sequential_35_layer_call_and_return_conditional_losses_177861

inputs"
lstm_105_177537:	"
lstm_105_177539:	d
lstm_105_177541:	"
lstm_106_177687:	dÈ"
lstm_106_177689:	2È
lstm_106_177691:	È!
lstm_107_177837:2(!
lstm_107_177839:
(
lstm_107_177841:(!
dense_35_177855:

dense_35_177857:
identity˘ dense_35/StatefulPartitionedCall˘ lstm_105/StatefulPartitionedCall˘ lstm_106/StatefulPartitionedCall˘ lstm_107/StatefulPartitionedCall
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinputslstm_105_177537lstm_105_177539lstm_105_177541*
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_177536Ş
 lstm_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0lstm_106_177687lstm_106_177689lstm_106_177691*
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177686Ĥ
 lstm_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_106/StatefulPartitionedCall:output:0lstm_107_177837lstm_107_177839lstm_107_177841*
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177836
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_35_177855dense_35_177857*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_35/StatefulPartitionedCall!^lstm_105/StatefulPartitionedCall!^lstm_106/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2D
 lstm_106/StatefulPartitionedCall lstm_106/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â

)__inference_dense_35_layer_call_fn_181362

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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854o
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
S
³
(sequential_35_lstm_105_while_body_175969J
Fsequential_35_lstm_105_while_sequential_35_lstm_105_while_loop_counterP
Lsequential_35_lstm_105_while_sequential_35_lstm_105_while_maximum_iterations,
(sequential_35_lstm_105_while_placeholder.
*sequential_35_lstm_105_while_placeholder_1.
*sequential_35_lstm_105_while_placeholder_2.
*sequential_35_lstm_105_while_placeholder_3I
Esequential_35_lstm_105_while_sequential_35_lstm_105_strided_slice_1_0
sequential_35_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_105_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_35_lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0:	_
Lsequential_35_lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dZ
Ksequential_35_lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0:	)
%sequential_35_lstm_105_while_identity+
'sequential_35_lstm_105_while_identity_1+
'sequential_35_lstm_105_while_identity_2+
'sequential_35_lstm_105_while_identity_3+
'sequential_35_lstm_105_while_identity_4+
'sequential_35_lstm_105_while_identity_5G
Csequential_35_lstm_105_while_sequential_35_lstm_105_strided_slice_1
sequential_35_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_105_tensorarrayunstack_tensorlistfromtensor[
Hsequential_35_lstm_105_while_lstm_cell_27_matmul_readvariableop_resource:	]
Jsequential_35_lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource:	dX
Isequential_35_lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource:	˘@sequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp˘?sequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp˘Asequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp
Nsequential_35/lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_35/lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_35_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_105_tensorarrayunstack_tensorlistfromtensor_0(sequential_35_lstm_105_while_placeholderWsequential_35/lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOpJsequential_35_lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_35/lstm_105/while/lstm_cell_27/MatMulMatMulGsequential_35/lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOpLsequential_35_lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_35/lstm_105/while/lstm_cell_27/MatMul_1MatMul*sequential_35_lstm_105_while_placeholder_2Isequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_35/lstm_105/while/lstm_cell_27/addAddV2:sequential_35/lstm_105/while/lstm_cell_27/MatMul:product:0<sequential_35/lstm_105/while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOpKsequential_35_lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_35/lstm_105/while/lstm_cell_27/BiasAddBiasAdd1sequential_35/lstm_105/while/lstm_cell_27/add:z:0Hsequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_35/lstm_105/while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_35/lstm_105/while/lstm_cell_27/splitSplitBsequential_35/lstm_105/while/lstm_cell_27/split/split_dim:output:0:sequential_35/lstm_105/while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_35/lstm_105/while/lstm_cell_27/SigmoidSigmoid8sequential_35/lstm_105/while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_35/lstm_105/while/lstm_cell_27/Sigmoid_1Sigmoid8sequential_35/lstm_105/while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_35/lstm_105/while/lstm_cell_27/mulMul7sequential_35/lstm_105/while/lstm_cell_27/Sigmoid_1:y:0*sequential_35_lstm_105_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_35/lstm_105/while/lstm_cell_27/ReluRelu8sequential_35/lstm_105/while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_35/lstm_105/while/lstm_cell_27/mul_1Mul5sequential_35/lstm_105/while/lstm_cell_27/Sigmoid:y:0<sequential_35/lstm_105/while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_35/lstm_105/while/lstm_cell_27/add_1AddV21sequential_35/lstm_105/while/lstm_cell_27/mul:z:03sequential_35/lstm_105/while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_35/lstm_105/while/lstm_cell_27/Sigmoid_2Sigmoid8sequential_35/lstm_105/while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_35/lstm_105/while/lstm_cell_27/Relu_1Relu3sequential_35/lstm_105/while/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_35/lstm_105/while/lstm_cell_27/mul_2Mul7sequential_35/lstm_105/while/lstm_cell_27/Sigmoid_2:y:0>sequential_35/lstm_105/while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_35/lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_35_lstm_105_while_placeholder_1(sequential_35_lstm_105_while_placeholder3sequential_35/lstm_105/while/lstm_cell_27/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_35/lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_35/lstm_105/while/addAddV2(sequential_35_lstm_105_while_placeholder+sequential_35/lstm_105/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_35/lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_35/lstm_105/while/add_1AddV2Fsequential_35_lstm_105_while_sequential_35_lstm_105_while_loop_counter-sequential_35/lstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_35/lstm_105/while/IdentityIdentity&sequential_35/lstm_105/while/add_1:z:0"^sequential_35/lstm_105/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_35/lstm_105/while/Identity_1IdentityLsequential_35_lstm_105_while_sequential_35_lstm_105_while_maximum_iterations"^sequential_35/lstm_105/while/NoOp*
T0*
_output_shapes
: 
'sequential_35/lstm_105/while/Identity_2Identity$sequential_35/lstm_105/while/add:z:0"^sequential_35/lstm_105/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_35/lstm_105/while/Identity_3IdentityQsequential_35/lstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_35/lstm_105/while/NoOp*
T0*
_output_shapes
: ?
'sequential_35/lstm_105/while/Identity_4Identity3sequential_35/lstm_105/while/lstm_cell_27/mul_2:z:0"^sequential_35/lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_35/lstm_105/while/Identity_5Identity3sequential_35/lstm_105/while/lstm_cell_27/add_1:z:0"^sequential_35/lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_35/lstm_105/while/NoOpNoOpA^sequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp@^sequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOpB^sequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_35_lstm_105_while_identity.sequential_35/lstm_105/while/Identity:output:0"[
'sequential_35_lstm_105_while_identity_10sequential_35/lstm_105/while/Identity_1:output:0"[
'sequential_35_lstm_105_while_identity_20sequential_35/lstm_105/while/Identity_2:output:0"[
'sequential_35_lstm_105_while_identity_30sequential_35/lstm_105/while/Identity_3:output:0"[
'sequential_35_lstm_105_while_identity_40sequential_35/lstm_105/while/Identity_4:output:0"[
'sequential_35_lstm_105_while_identity_50sequential_35/lstm_105/while/Identity_5:output:0"
Isequential_35_lstm_105_while_lstm_cell_27_biasadd_readvariableop_resourceKsequential_35_lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0"
Jsequential_35_lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resourceLsequential_35_lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0"
Hsequential_35_lstm_105_while_lstm_cell_27_matmul_readvariableop_resourceJsequential_35_lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0"
Csequential_35_lstm_105_while_sequential_35_lstm_105_strided_slice_1Esequential_35_lstm_105_while_sequential_35_lstm_105_strided_slice_1_0"
sequential_35_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_105_tensorarrayunstack_tensorlistfromtensorsequential_35_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp@sequential_35/lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2
?sequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp?sequential_35/lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp2
Asequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOpAsequential_35/lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_177536

inputs>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_177452*
condR
while_cond_177451*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_179751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_105_while_body_178710.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_3-
)lstm_105_while_lstm_105_strided_slice_1_0i
elstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0:	Q
>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dL
=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0:	
lstm_105_while_identity
lstm_105_while_identity_1
lstm_105_while_identity_2
lstm_105_while_identity_3
lstm_105_while_identity_4
lstm_105_while_identity_5+
'lstm_105_while_lstm_105_strided_slice_1g
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorM
:lstm_105_while_lstm_cell_27_matmul_readvariableop_resource:	O
<lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource:	dJ
;lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource:	˘2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp˘1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp˘3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0lstm_105_while_placeholderIlstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_105/while/lstm_cell_27/MatMulMatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_105/while/lstm_cell_27/MatMul_1MatMullstm_105_while_placeholder_2;lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_105/while/lstm_cell_27/addAddV2,lstm_105/while/lstm_cell_27/MatMul:product:0.lstm_105/while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_105/while/lstm_cell_27/BiasAddBiasAdd#lstm_105/while/lstm_cell_27/add:z:0:lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_105/while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_105/while/lstm_cell_27/splitSplit4lstm_105/while/lstm_cell_27/split/split_dim:output:0,lstm_105/while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_105/while/lstm_cell_27/SigmoidSigmoid*lstm_105/while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_105/while/lstm_cell_27/Sigmoid_1Sigmoid*lstm_105/while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_105/while/lstm_cell_27/mulMul)lstm_105/while/lstm_cell_27/Sigmoid_1:y:0lstm_105_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_105/while/lstm_cell_27/ReluRelu*lstm_105/while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_105/while/lstm_cell_27/mul_1Mul'lstm_105/while/lstm_cell_27/Sigmoid:y:0.lstm_105/while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_105/while/lstm_cell_27/add_1AddV2#lstm_105/while/lstm_cell_27/mul:z:0%lstm_105/while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_105/while/lstm_cell_27/Sigmoid_2Sigmoid*lstm_105/while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_105/while/lstm_cell_27/Relu_1Relu%lstm_105/while/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_105/while/lstm_cell_27/mul_2Mul)lstm_105/while/lstm_cell_27/Sigmoid_2:y:00lstm_105/while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_105_while_placeholder_1lstm_105_while_placeholder%lstm_105/while/lstm_cell_27/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_105/while/addAddV2lstm_105_while_placeholderlstm_105/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_105/while/add_1AddV2*lstm_105_while_lstm_105_while_loop_counterlstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_105/while/IdentityIdentitylstm_105/while/add_1:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 
lstm_105/while/Identity_1Identity0lstm_105_while_lstm_105_while_maximum_iterations^lstm_105/while/NoOp*
T0*
_output_shapes
: t
lstm_105/while/Identity_2Identitylstm_105/while/add:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_105/while/Identity_3IdentityClstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 
lstm_105/while/Identity_4Identity%lstm_105/while/lstm_cell_27/mul_2:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/while/Identity_5Identity%lstm_105/while/lstm_cell_27/add_1:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_105/while/NoOpNoOp3^lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2^lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp4^lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_105_while_identity lstm_105/while/Identity:output:0"?
lstm_105_while_identity_1"lstm_105/while/Identity_1:output:0"?
lstm_105_while_identity_2"lstm_105/while/Identity_2:output:0"?
lstm_105_while_identity_3"lstm_105/while/Identity_3:output:0"?
lstm_105_while_identity_4"lstm_105/while/Identity_4:output:0"?
lstm_105_while_identity_5"lstm_105/while/Identity_5:output:0"T
'lstm_105_while_lstm_105_strided_slice_1)lstm_105_while_lstm_105_strided_slice_1_0"|
;lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0"~
<lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0"z
:lstm_105_while_lstm_cell_27_matmul_readvariableop_resource<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0"Ì
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2f
1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp2j
3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_179750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179750___redundant_placeholder04
0while_while_cond_179750___redundant_placeholder14
0while_while_cond_179750___redundant_placeholder24
0while_while_cond_179750___redundant_placeholder3
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
)__inference_lstm_107_layer_call_fn_180781

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
D__inference_lstm_107_layer_call_and_return_conditional_losses_178052o
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
while_cond_180982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180982___redundant_placeholder04
0while_while_cond_180982___redundant_placeholder14
0while_while_cond_180982___redundant_placeholder24
0while_while_cond_180982___redundant_placeholder3
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
while_cond_177451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177451___redundant_placeholder04
0while_while_cond_177451___redundant_placeholder14
0while_while_cond_177451___redundant_placeholder24
0while_while_cond_177451___redundant_placeholder3
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
áW

__inference__traced_save_181809
file_prefix.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_105_lstm_cell_105_kernel_read_readvariableopF
Bsavev2_lstm_105_lstm_cell_105_recurrent_kernel_read_readvariableop:
6savev2_lstm_105_lstm_cell_105_bias_read_readvariableop<
8savev2_lstm_106_lstm_cell_106_kernel_read_readvariableopF
Bsavev2_lstm_106_lstm_cell_106_recurrent_kernel_read_readvariableop:
6savev2_lstm_106_lstm_cell_106_bias_read_readvariableop<
8savev2_lstm_107_lstm_cell_107_kernel_read_readvariableopF
Bsavev2_lstm_107_lstm_cell_107_recurrent_kernel_read_readvariableop:
6savev2_lstm_107_lstm_cell_107_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_35_kernel_m_read_readvariableop3
/savev2_adam_dense_35_bias_m_read_readvariableopC
?savev2_adam_lstm_105_lstm_cell_105_kernel_m_read_readvariableopM
Isavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_105_lstm_cell_105_bias_m_read_readvariableopC
?savev2_adam_lstm_106_lstm_cell_106_kernel_m_read_readvariableopM
Isavev2_adam_lstm_106_lstm_cell_106_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_106_lstm_cell_106_bias_m_read_readvariableopC
?savev2_adam_lstm_107_lstm_cell_107_kernel_m_read_readvariableopM
Isavev2_adam_lstm_107_lstm_cell_107_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_107_lstm_cell_107_bias_m_read_readvariableop5
1savev2_adam_dense_35_kernel_v_read_readvariableop3
/savev2_adam_dense_35_bias_v_read_readvariableopC
?savev2_adam_lstm_105_lstm_cell_105_kernel_v_read_readvariableopM
Isavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_105_lstm_cell_105_bias_v_read_readvariableopC
?savev2_adam_lstm_106_lstm_cell_106_kernel_v_read_readvariableopM
Isavev2_adam_lstm_106_lstm_cell_106_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_106_lstm_cell_106_bias_v_read_readvariableopC
?savev2_adam_lstm_107_lstm_cell_107_kernel_v_read_readvariableopM
Isavev2_adam_lstm_107_lstm_cell_107_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_107_lstm_cell_107_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_105_lstm_cell_105_kernel_read_readvariableopBsavev2_lstm_105_lstm_cell_105_recurrent_kernel_read_readvariableop6savev2_lstm_105_lstm_cell_105_bias_read_readvariableop8savev2_lstm_106_lstm_cell_106_kernel_read_readvariableopBsavev2_lstm_106_lstm_cell_106_recurrent_kernel_read_readvariableop6savev2_lstm_106_lstm_cell_106_bias_read_readvariableop8savev2_lstm_107_lstm_cell_107_kernel_read_readvariableopBsavev2_lstm_107_lstm_cell_107_recurrent_kernel_read_readvariableop6savev2_lstm_107_lstm_cell_107_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_35_kernel_m_read_readvariableop/savev2_adam_dense_35_bias_m_read_readvariableop?savev2_adam_lstm_105_lstm_cell_105_kernel_m_read_readvariableopIsavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_105_lstm_cell_105_bias_m_read_readvariableop?savev2_adam_lstm_106_lstm_cell_106_kernel_m_read_readvariableopIsavev2_adam_lstm_106_lstm_cell_106_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_106_lstm_cell_106_bias_m_read_readvariableop?savev2_adam_lstm_107_lstm_cell_107_kernel_m_read_readvariableopIsavev2_adam_lstm_107_lstm_cell_107_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_107_lstm_cell_107_bias_m_read_readvariableop1savev2_adam_dense_35_kernel_v_read_readvariableop/savev2_adam_dense_35_bias_v_read_readvariableop?savev2_adam_lstm_105_lstm_cell_105_kernel_v_read_readvariableopIsavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_105_lstm_cell_105_bias_v_read_readvariableop?savev2_adam_lstm_106_lstm_cell_106_kernel_v_read_readvariableopIsavev2_adam_lstm_106_lstm_cell_106_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_106_lstm_cell_106_bias_v_read_readvariableop?savev2_adam_lstm_107_lstm_cell_107_kernel_v_read_readvariableopIsavev2_adam_lstm_107_lstm_cell_107_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_107_lstm_cell_107_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
8

D__inference_lstm_106_layer_call_and_return_conditional_losses_176837

inputs&
lstm_cell_28_176755:	dÈ&
lstm_cell_28_176757:	2È"
lstm_cell_28_176759:	È
identity˘$lstm_cell_28/StatefulPartitionedCall˘while;
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
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_176755lstm_cell_28_176757lstm_cell_28_176759*
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176754n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_176755lstm_cell_28_176757lstm_cell_28_176759*
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
while_body_176768*
condR
while_cond_176767*K
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
NoOpNoOp%^lstm_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ħ

I__inference_sequential_35_layer_call_and_return_conditional_losses_179505

inputsG
4lstm_105_lstm_cell_27_matmul_readvariableop_resource:	I
6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource:	dD
5lstm_105_lstm_cell_27_biasadd_readvariableop_resource:	G
4lstm_106_lstm_cell_28_matmul_readvariableop_resource:	dÈI
6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈD
5lstm_106_lstm_cell_28_biasadd_readvariableop_resource:	ÈF
4lstm_107_lstm_cell_29_matmul_readvariableop_resource:2(H
6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource:
(C
5lstm_107_lstm_cell_29_biasadd_readvariableop_resource:(9
'dense_35_matmul_readvariableop_resource:
6
(dense_35_biasadd_readvariableop_resource:
identity˘dense_35/BiasAdd/ReadVariableOp˘dense_35/MatMul/ReadVariableOp˘,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp˘+lstm_105/lstm_cell_27/MatMul/ReadVariableOp˘-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp˘lstm_105/while˘,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp˘+lstm_106/lstm_cell_28/MatMul/ReadVariableOp˘-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp˘lstm_106/while˘,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp˘+lstm_107/lstm_cell_29/MatMul/ReadVariableOp˘-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp˘lstm_107/whileD
lstm_105/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_105/strided_sliceStridedSlicelstm_105/Shape:output:0%lstm_105/strided_slice/stack:output:0'lstm_105/strided_slice/stack_1:output:0'lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_105/zeros/packedPacklstm_105/strided_slice:output:0 lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_105/zerosFilllstm_105/zeros/packed:output:0lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_105/zeros_1/packedPacklstm_105/strided_slice:output:0"lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_105/zeros_1Fill lstm_105/zeros_1/packed:output:0lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_105/transpose	Transposeinputs lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_105/Shape_1Shapelstm_105/transpose:y:0*
T0*
_output_shapes
:h
lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_105/strided_slice_1StridedSlicelstm_105/Shape_1:output:0'lstm_105/strided_slice_1/stack:output:0)lstm_105/strided_slice_1/stack_1:output:0)lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_105/TensorArrayV2TensorListReserve-lstm_105/TensorArrayV2/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_105/transpose:y:0Glstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_105/strided_slice_2StridedSlicelstm_105/transpose:y:0'lstm_105/strided_slice_2/stack:output:0)lstm_105/strided_slice_2/stack_1:output:0)lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_105/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_105/lstm_cell_27/MatMulMatMul!lstm_105/strided_slice_2:output:03lstm_105/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_105/lstm_cell_27/MatMul_1MatMullstm_105/zeros:output:05lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_105/lstm_cell_27/addAddV2&lstm_105/lstm_cell_27/MatMul:product:0(lstm_105/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp5lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_105/lstm_cell_27/BiasAddBiasAddlstm_105/lstm_cell_27/add:z:04lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_105/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_105/lstm_cell_27/splitSplit.lstm_105/lstm_cell_27/split/split_dim:output:0&lstm_105/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_105/lstm_cell_27/SigmoidSigmoid$lstm_105/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/Sigmoid_1Sigmoid$lstm_105/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/mulMul#lstm_105/lstm_cell_27/Sigmoid_1:y:0lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_105/lstm_cell_27/ReluRelu$lstm_105/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_105/lstm_cell_27/mul_1Mul!lstm_105/lstm_cell_27/Sigmoid:y:0(lstm_105/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/add_1AddV2lstm_105/lstm_cell_27/mul:z:0lstm_105/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/Sigmoid_2Sigmoid$lstm_105/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_105/lstm_cell_27/Relu_1Relulstm_105/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_105/lstm_cell_27/mul_2Mul#lstm_105/lstm_cell_27/Sigmoid_2:y:0*lstm_105/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_105/TensorArrayV2_1TensorListReserve/lstm_105/TensorArrayV2_1/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_105/whileWhile$lstm_105/while/loop_counter:output:0*lstm_105/while/maximum_iterations:output:0lstm_105/time:output:0!lstm_105/TensorArrayV2_1:handle:0lstm_105/zeros:output:0lstm_105/zeros_1:output:0!lstm_105/strided_slice_1:output:0@lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_105_lstm_cell_27_matmul_readvariableop_resource6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource5lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
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
lstm_105_while_body_179137*&
condR
lstm_105_while_cond_179136*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_105/TensorArrayV2Stack/TensorListStackTensorListStacklstm_105/while:output:3Blstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_105/strided_slice_3StridedSlice4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_105/strided_slice_3/stack:output:0)lstm_105/strided_slice_3/stack_1:output:0)lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_105/transpose_1	Transpose4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_106/ShapeShapelstm_105/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_106/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_106/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_106/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_106/strided_sliceStridedSlicelstm_106/Shape:output:0%lstm_106/strided_slice/stack:output:0'lstm_106/strided_slice/stack_1:output:0'lstm_106/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_106/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_106/zeros/packedPacklstm_106/strided_slice:output:0 lstm_106/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_106/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_106/zerosFilllstm_106/zeros/packed:output:0lstm_106/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_106/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_106/zeros_1/packedPacklstm_106/strided_slice:output:0"lstm_106/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_106/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_106/zeros_1Fill lstm_106/zeros_1/packed:output:0lstm_106/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_106/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_106/transpose	Transposelstm_105/transpose_1:y:0 lstm_106/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_106/Shape_1Shapelstm_106/transpose:y:0*
T0*
_output_shapes
:h
lstm_106/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_106/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_106/strided_slice_1StridedSlicelstm_106/Shape_1:output:0'lstm_106/strided_slice_1/stack:output:0)lstm_106/strided_slice_1/stack_1:output:0)lstm_106/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_106/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_106/TensorArrayV2TensorListReserve-lstm_106/TensorArrayV2/element_shape:output:0!lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_106/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_106/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_106/transpose:y:0Glstm_106/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_106/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_106/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_106/strided_slice_2StridedSlicelstm_106/transpose:y:0'lstm_106/strided_slice_2/stack:output:0)lstm_106/strided_slice_2/stack_1:output:0)lstm_106/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_106/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp4lstm_106_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_106/lstm_cell_28/MatMulMatMul!lstm_106/strided_slice_2:output:03lstm_106/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_106/lstm_cell_28/MatMul_1MatMullstm_106/zeros:output:05lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_106/lstm_cell_28/addAddV2&lstm_106/lstm_cell_28/MatMul:product:0(lstm_106/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp5lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_106/lstm_cell_28/BiasAddBiasAddlstm_106/lstm_cell_28/add:z:04lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_106/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_106/lstm_cell_28/splitSplit.lstm_106/lstm_cell_28/split/split_dim:output:0&lstm_106/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_106/lstm_cell_28/SigmoidSigmoid$lstm_106/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/Sigmoid_1Sigmoid$lstm_106/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/mulMul#lstm_106/lstm_cell_28/Sigmoid_1:y:0lstm_106/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_106/lstm_cell_28/ReluRelu$lstm_106/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_106/lstm_cell_28/mul_1Mul!lstm_106/lstm_cell_28/Sigmoid:y:0(lstm_106/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/add_1AddV2lstm_106/lstm_cell_28/mul:z:0lstm_106/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/Sigmoid_2Sigmoid$lstm_106/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_106/lstm_cell_28/Relu_1Relulstm_106/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_106/lstm_cell_28/mul_2Mul#lstm_106/lstm_cell_28/Sigmoid_2:y:0*lstm_106/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_106/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_106/TensorArrayV2_1TensorListReserve/lstm_106/TensorArrayV2_1/element_shape:output:0!lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_106/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_106/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_106/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_106/whileWhile$lstm_106/while/loop_counter:output:0*lstm_106/while/maximum_iterations:output:0lstm_106/time:output:0!lstm_106/TensorArrayV2_1:handle:0lstm_106/zeros:output:0lstm_106/zeros_1:output:0!lstm_106/strided_slice_1:output:0@lstm_106/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_106_lstm_cell_28_matmul_readvariableop_resource6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource5lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
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
lstm_106_while_body_179276*&
condR
lstm_106_while_cond_179275*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_106/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_106/TensorArrayV2Stack/TensorListStackTensorListStacklstm_106/while:output:3Blstm_106/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_106/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_106/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_106/strided_slice_3StridedSlice4lstm_106/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_106/strided_slice_3/stack:output:0)lstm_106/strided_slice_3/stack_1:output:0)lstm_106/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_106/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_106/transpose_1	Transpose4lstm_106/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_106/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_106/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_107/ShapeShapelstm_106/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_107/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_107/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_107/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_107/strided_sliceStridedSlicelstm_107/Shape:output:0%lstm_107/strided_slice/stack:output:0'lstm_107/strided_slice/stack_1:output:0'lstm_107/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_107/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_107/zeros/packedPacklstm_107/strided_slice:output:0 lstm_107/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_107/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_107/zerosFilllstm_107/zeros/packed:output:0lstm_107/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_107/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_107/zeros_1/packedPacklstm_107/strided_slice:output:0"lstm_107/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_107/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_107/zeros_1Fill lstm_107/zeros_1/packed:output:0lstm_107/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_107/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_107/transpose	Transposelstm_106/transpose_1:y:0 lstm_107/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_107/Shape_1Shapelstm_107/transpose:y:0*
T0*
_output_shapes
:h
lstm_107/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_107/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_107/strided_slice_1StridedSlicelstm_107/Shape_1:output:0'lstm_107/strided_slice_1/stack:output:0)lstm_107/strided_slice_1/stack_1:output:0)lstm_107/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_107/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_107/TensorArrayV2TensorListReserve-lstm_107/TensorArrayV2/element_shape:output:0!lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_107/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_107/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_107/transpose:y:0Glstm_107/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_107/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_107/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_107/strided_slice_2StridedSlicelstm_107/transpose:y:0'lstm_107/strided_slice_2/stack:output:0)lstm_107/strided_slice_2/stack_1:output:0)lstm_107/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_107/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp4lstm_107_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_107/lstm_cell_29/MatMulMatMul!lstm_107/strided_slice_2:output:03lstm_107/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_107/lstm_cell_29/MatMul_1MatMullstm_107/zeros:output:05lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_107/lstm_cell_29/addAddV2&lstm_107/lstm_cell_29/MatMul:product:0(lstm_107/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp5lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_107/lstm_cell_29/BiasAddBiasAddlstm_107/lstm_cell_29/add:z:04lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_107/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_107/lstm_cell_29/splitSplit.lstm_107/lstm_cell_29/split/split_dim:output:0&lstm_107/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_107/lstm_cell_29/SigmoidSigmoid$lstm_107/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/Sigmoid_1Sigmoid$lstm_107/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/mulMul#lstm_107/lstm_cell_29/Sigmoid_1:y:0lstm_107/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_107/lstm_cell_29/ReluRelu$lstm_107/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_107/lstm_cell_29/mul_1Mul!lstm_107/lstm_cell_29/Sigmoid:y:0(lstm_107/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/add_1AddV2lstm_107/lstm_cell_29/mul:z:0lstm_107/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/Sigmoid_2Sigmoid$lstm_107/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_107/lstm_cell_29/Relu_1Relulstm_107/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_107/lstm_cell_29/mul_2Mul#lstm_107/lstm_cell_29/Sigmoid_2:y:0*lstm_107/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_107/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_107/TensorArrayV2_1TensorListReserve/lstm_107/TensorArrayV2_1/element_shape:output:0!lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_107/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_107/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_107/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_107/whileWhile$lstm_107/while/loop_counter:output:0*lstm_107/while/maximum_iterations:output:0lstm_107/time:output:0!lstm_107/TensorArrayV2_1:handle:0lstm_107/zeros:output:0lstm_107/zeros_1:output:0!lstm_107/strided_slice_1:output:0@lstm_107/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_107_lstm_cell_29_matmul_readvariableop_resource6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource5lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
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
lstm_107_while_body_179415*&
condR
lstm_107_while_cond_179414*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_107/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_107/TensorArrayV2Stack/TensorListStackTensorListStacklstm_107/while:output:3Blstm_107/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_107/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_107/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_107/strided_slice_3StridedSlice4lstm_107/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_107/strided_slice_3/stack:output:0)lstm_107/strided_slice_3/stack_1:output:0)lstm_107/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_107/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_107/transpose_1	Transpose4lstm_107/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_107/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_107/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_35/MatMulMatMul!lstm_107/strided_slice_3:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp-^lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp,^lstm_105/lstm_cell_27/MatMul/ReadVariableOp.^lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp^lstm_105/while-^lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp,^lstm_106/lstm_cell_28/MatMul/ReadVariableOp.^lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_106/while-^lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp,^lstm_107/lstm_cell_29/MatMul/ReadVariableOp.^lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp^lstm_107/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2\
,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp2Z
+lstm_105/lstm_cell_27/MatMul/ReadVariableOp+lstm_105/lstm_cell_27/MatMul/ReadVariableOp2^
-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp2 
lstm_105/whilelstm_105/while2\
,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp2Z
+lstm_106/lstm_cell_28/MatMul/ReadVariableOp+lstm_106/lstm_cell_28/MatMul/ReadVariableOp2^
-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp2 
lstm_106/whilelstm_106/while2\
,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp2Z
+lstm_107/lstm_cell_29/MatMul/ReadVariableOp+lstm_107/lstm_cell_29/MatMul/ReadVariableOp2^
-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp2 
lstm_107/whilelstm_107/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_180366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180366___redundant_placeholder04
0while_while_cond_180366___redundant_placeholder14
0while_while_cond_180366___redundant_placeholder24
0while_while_cond_180366___redundant_placeholder3
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
-__inference_lstm_cell_29_layer_call_fn_181602

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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177250o
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
ö
³
)__inference_lstm_107_layer_call_fn_180770

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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177836o
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
while_body_177452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ġ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176900

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
Ó

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181634

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
¤J

D__inference_lstm_105_layer_call_and_return_conditional_losses_178382

inputs>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_178298*
condR
while_cond_178297*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÛB
?

lstm_106_while_body_178849.
*lstm_106_while_lstm_106_while_loop_counter4
0lstm_106_while_lstm_106_while_maximum_iterations
lstm_106_while_placeholder 
lstm_106_while_placeholder_1 
lstm_106_while_placeholder_2 
lstm_106_while_placeholder_3-
)lstm_106_while_lstm_106_strided_slice_1_0i
elstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈQ
>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
lstm_106_while_identity
lstm_106_while_identity_1
lstm_106_while_identity_2
lstm_106_while_identity_3
lstm_106_while_identity_4
lstm_106_while_identity_5+
'lstm_106_while_lstm_106_strided_slice_1g
clstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensorM
:lstm_106_while_lstm_cell_28_matmul_readvariableop_resource:	dÈO
<lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈJ
;lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource:	È˘2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp˘1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp˘3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp
@lstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_106/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0lstm_106_while_placeholderIlstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_106/while/lstm_cell_28/MatMulMatMul9lstm_106/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_106/while/lstm_cell_28/MatMul_1MatMullstm_106_while_placeholder_2;lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_106/while/lstm_cell_28/addAddV2,lstm_106/while/lstm_cell_28/MatMul:product:0.lstm_106/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_106/while/lstm_cell_28/BiasAddBiasAdd#lstm_106/while/lstm_cell_28/add:z:0:lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_106/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_106/while/lstm_cell_28/splitSplit4lstm_106/while/lstm_cell_28/split/split_dim:output:0,lstm_106/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_106/while/lstm_cell_28/SigmoidSigmoid*lstm_106/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_106/while/lstm_cell_28/Sigmoid_1Sigmoid*lstm_106/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_106/while/lstm_cell_28/mulMul)lstm_106/while/lstm_cell_28/Sigmoid_1:y:0lstm_106_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_106/while/lstm_cell_28/ReluRelu*lstm_106/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_106/while/lstm_cell_28/mul_1Mul'lstm_106/while/lstm_cell_28/Sigmoid:y:0.lstm_106/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_106/while/lstm_cell_28/add_1AddV2#lstm_106/while/lstm_cell_28/mul:z:0%lstm_106/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_106/while/lstm_cell_28/Sigmoid_2Sigmoid*lstm_106/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_106/while/lstm_cell_28/Relu_1Relu%lstm_106/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_106/while/lstm_cell_28/mul_2Mul)lstm_106/while/lstm_cell_28/Sigmoid_2:y:00lstm_106/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_106/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_106_while_placeholder_1lstm_106_while_placeholder%lstm_106/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_106/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_106/while/addAddV2lstm_106_while_placeholderlstm_106/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_106/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_106/while/add_1AddV2*lstm_106_while_lstm_106_while_loop_counterlstm_106/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_106/while/IdentityIdentitylstm_106/while/add_1:z:0^lstm_106/while/NoOp*
T0*
_output_shapes
: 
lstm_106/while/Identity_1Identity0lstm_106_while_lstm_106_while_maximum_iterations^lstm_106/while/NoOp*
T0*
_output_shapes
: t
lstm_106/while/Identity_2Identitylstm_106/while/add:z:0^lstm_106/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_106/while/Identity_3IdentityClstm_106/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_106/while/NoOp*
T0*
_output_shapes
: 
lstm_106/while/Identity_4Identity%lstm_106/while/lstm_cell_28/mul_2:z:0^lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/while/Identity_5Identity%lstm_106/while/lstm_cell_28/add_1:z:0^lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_106/while/NoOpNoOp3^lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2^lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp4^lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_106_while_identity lstm_106/while/Identity:output:0"?
lstm_106_while_identity_1"lstm_106/while/Identity_1:output:0"?
lstm_106_while_identity_2"lstm_106/while/Identity_2:output:0"?
lstm_106_while_identity_3"lstm_106/while/Identity_3:output:0"?
lstm_106_while_identity_4"lstm_106/while/Identity_4:output:0"?
lstm_106_while_identity_5"lstm_106/while/Identity_5:output:0"T
'lstm_106_while_lstm_106_strided_slice_1)lstm_106_while_lstm_106_strided_slice_1_0"|
;lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource=lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0"~
<lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource>lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0"z
:lstm_106_while_lstm_cell_28_matmul_readvariableop_resource<lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0"Ì
clstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensorelstm_106_while_tensorarrayv2read_tensorlistgetitem_lstm_106_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2f
1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp1lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp2j
3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp3lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_177967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177967___redundant_placeholder04
0while_while_cond_177967___redundant_placeholder14
0while_while_cond_177967___redundant_placeholder24
0while_while_cond_177967___redundant_placeholder3
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

µ
)__inference_lstm_107_layer_call_fn_180748
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177187o
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
while_cond_176767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176767___redundant_placeholder04
0while_while_cond_176767___redundant_placeholder14
0while_while_cond_176767___redundant_placeholder24
0while_while_cond_176767___redundant_placeholder3
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
while_cond_180036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180036___redundant_placeholder04
0while_while_cond_180036___redundant_placeholder14
0while_while_cond_180036___redundant_placeholder24
0while_while_cond_180036___redundant_placeholder3
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
-__inference_lstm_cell_28_layer_call_fn_181487

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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176754o
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
ÔJ

D__inference_lstm_107_layer_call_and_return_conditional_losses_181067
inputs_0=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_180983*
condR
while_cond_180982*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ş

(sequential_35_lstm_105_while_cond_175968J
Fsequential_35_lstm_105_while_sequential_35_lstm_105_while_loop_counterP
Lsequential_35_lstm_105_while_sequential_35_lstm_105_while_maximum_iterations,
(sequential_35_lstm_105_while_placeholder.
*sequential_35_lstm_105_while_placeholder_1.
*sequential_35_lstm_105_while_placeholder_2.
*sequential_35_lstm_105_while_placeholder_3L
Hsequential_35_lstm_105_while_less_sequential_35_lstm_105_strided_slice_1b
^sequential_35_lstm_105_while_sequential_35_lstm_105_while_cond_175968___redundant_placeholder0b
^sequential_35_lstm_105_while_sequential_35_lstm_105_while_cond_175968___redundant_placeholder1b
^sequential_35_lstm_105_while_sequential_35_lstm_105_while_cond_175968___redundant_placeholder2b
^sequential_35_lstm_105_while_sequential_35_lstm_105_while_cond_175968___redundant_placeholder3)
%sequential_35_lstm_105_while_identity
?
!sequential_35/lstm_105/while/LessLess(sequential_35_lstm_105_while_placeholderHsequential_35_lstm_105_while_less_sequential_35_lstm_105_strided_slice_1*
T0*
_output_shapes
: y
%sequential_35/lstm_105/while/IdentityIdentity%sequential_35/lstm_105/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_35_lstm_105_while_identity.sequential_35/lstm_105/while/Identity:output:0*(
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
lstm_105_while_cond_178709.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_30
,lstm_105_while_less_lstm_105_strided_slice_1F
Blstm_105_while_lstm_105_while_cond_178709___redundant_placeholder0F
Blstm_105_while_lstm_105_while_cond_178709___redundant_placeholder1F
Blstm_105_while_lstm_105_while_cond_178709___redundant_placeholder2F
Blstm_105_while_lstm_105_while_cond_178709___redundant_placeholder3
lstm_105_while_identity

lstm_105/while/LessLesslstm_105_while_placeholder,lstm_105_while_less_lstm_105_strided_slice_1*
T0*
_output_shapes
: ]
lstm_105/while/IdentityIdentitylstm_105/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_105_while_identity lstm_105/while/Identity:output:0*(
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
while_body_180983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_180224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_177601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177601___redundant_placeholder04
0while_while_cond_177601___redundant_placeholder14
0while_while_cond_177601___redundant_placeholder24
0while_while_cond_177601___redundant_placeholder3
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181438

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

D__inference_lstm_107_layer_call_and_return_conditional_losses_177378

inputs%
lstm_cell_29_177296:2(%
lstm_cell_29_177298:
(!
lstm_cell_29_177300:(
identity˘$lstm_cell_29/StatefulPartitionedCall˘while;
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
$lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_29_177296lstm_cell_29_177298lstm_cell_29_177300*
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177250n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_29_177296lstm_cell_29_177298lstm_cell_29_177300*
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
while_body_177309*
condR
while_cond_177308*K
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
NoOpNoOp%^lstm_cell_29/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_29/StatefulPartitionedCall$lstm_cell_29/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_178133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_180367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_28_biasadd_readvariableop_resource:	È˘)while/lstm_cell_28/BiasAdd/ReadVariableOp˘(while/lstm_cell_28/MatMul/ReadVariableOp˘*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_105_layer_call_fn_179516
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_176487|
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
¤J

D__inference_lstm_105_layer_call_and_return_conditional_losses_179978

inputs>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_179894*
condR
while_cond_179893*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_27_layer_call_fn_181389

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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176404o
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
while_cond_179607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179607___redundant_placeholder04
0while_while_cond_179607___redundant_placeholder14
0while_while_cond_179607___redundant_placeholder24
0while_while_cond_179607___redundant_placeholder3
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180737

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_180653*
condR
while_cond_180652*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ë

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177250

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
while_body_176959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_28_176983_0:	dÈ.
while_lstm_cell_28_176985_0:	2È*
while_lstm_cell_28_176987_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_28_176983:	dÈ,
while_lstm_cell_28_176985:	2È(
while_lstm_cell_28_176987:	È˘*while/lstm_cell_28/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_176983_0while_lstm_cell_28_176985_0while_lstm_cell_28_176987_0*
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176900Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_28_176983while_lstm_cell_28_176983_0"8
while_lstm_cell_28_176985while_lstm_cell_28_176985_0"8
while_lstm_cell_28_176987while_lstm_cell_28_176987_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177686

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_177602*
condR
while_cond_177601*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_105_layer_call_fn_179549

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
D__inference_lstm_105_layer_call_and_return_conditional_losses_178382s
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
Ŭ

H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181470

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
ò

˘
.__inference_sequential_35_layer_call_fn_177886
lstm_105_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_105_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_177861o
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
_user_specified_namelstm_105_input
µ
?
while_cond_178132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178132___redundant_placeholder04
0while_while_cond_178132___redundant_placeholder14
0while_while_cond_178132___redundant_placeholder24
0while_while_cond_178132___redundant_placeholder3
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
while_cond_179893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179893___redundant_placeholder04
0while_while_cond_179893___redundant_placeholder14
0while_while_cond_179893___redundant_placeholder24
0while_while_cond_179893___redundant_placeholder3
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176550

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
lstm_106_while_cond_178848.
*lstm_106_while_lstm_106_while_loop_counter4
0lstm_106_while_lstm_106_while_maximum_iterations
lstm_106_while_placeholder 
lstm_106_while_placeholder_1 
lstm_106_while_placeholder_2 
lstm_106_while_placeholder_30
,lstm_106_while_less_lstm_106_strided_slice_1F
Blstm_106_while_lstm_106_while_cond_178848___redundant_placeholder0F
Blstm_106_while_lstm_106_while_cond_178848___redundant_placeholder1F
Blstm_106_while_lstm_106_while_cond_178848___redundant_placeholder2F
Blstm_106_while_lstm_106_while_cond_178848___redundant_placeholder3
lstm_106_while_identity

lstm_106/while/LessLesslstm_106_while_placeholder,lstm_106_while_less_lstm_106_strided_slice_1*
T0*
_output_shapes
: ]
lstm_106/while/IdentityIdentitylstm_106/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_106_while_identity lstm_106/while/Identity:output:0*(
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
)__inference_lstm_105_layer_call_fn_179527
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_176678|
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181568

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
ç¤

"__inference__traced_restore_181939
file_prefix2
 assignvariableop_dense_35_kernel:
.
 assignvariableop_1_dense_35_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_105_lstm_cell_105_kernel:	M
:assignvariableop_8_lstm_105_lstm_cell_105_recurrent_kernel:	d=
.assignvariableop_9_lstm_105_lstm_cell_105_bias:	D
1assignvariableop_10_lstm_106_lstm_cell_106_kernel:	dÈN
;assignvariableop_11_lstm_106_lstm_cell_106_recurrent_kernel:	2È>
/assignvariableop_12_lstm_106_lstm_cell_106_bias:	ÈC
1assignvariableop_13_lstm_107_lstm_cell_107_kernel:2(M
;assignvariableop_14_lstm_107_lstm_cell_107_recurrent_kernel:
(=
/assignvariableop_15_lstm_107_lstm_cell_107_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_35_kernel_m:
6
(assignvariableop_19_adam_dense_35_bias_m:K
8assignvariableop_20_adam_lstm_105_lstm_cell_105_kernel_m:	U
Bassignvariableop_21_adam_lstm_105_lstm_cell_105_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_105_lstm_cell_105_bias_m:	K
8assignvariableop_23_adam_lstm_106_lstm_cell_106_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_106_lstm_cell_106_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_106_lstm_cell_106_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_107_lstm_cell_107_kernel_m:2(T
Bassignvariableop_27_adam_lstm_107_lstm_cell_107_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_107_lstm_cell_107_bias_m:(<
*assignvariableop_29_adam_dense_35_kernel_v:
6
(assignvariableop_30_adam_dense_35_bias_v:K
8assignvariableop_31_adam_lstm_105_lstm_cell_105_kernel_v:	U
Bassignvariableop_32_adam_lstm_105_lstm_cell_105_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_105_lstm_cell_105_bias_v:	K
8assignvariableop_34_adam_lstm_106_lstm_cell_106_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_106_lstm_cell_106_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_106_lstm_cell_106_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_107_lstm_cell_107_kernel_v:2(T
Bassignvariableop_38_adam_lstm_107_lstm_cell_107_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_107_lstm_cell_107_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_35_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_35_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_105_lstm_cell_105_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_105_lstm_cell_105_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_105_lstm_cell_105_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_106_lstm_cell_106_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_106_lstm_cell_106_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_106_lstm_cell_106_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_107_lstm_cell_107_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_107_lstm_cell_107_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_107_lstm_cell_107_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_35_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_35_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_105_lstm_cell_105_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_105_lstm_cell_105_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_105_lstm_cell_105_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_106_lstm_cell_106_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_106_lstm_cell_106_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_106_lstm_cell_106_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_107_lstm_cell_107_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_107_lstm_cell_107_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_107_lstm_cell_107_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_35_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_35_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_105_lstm_cell_105_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_105_lstm_cell_105_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_105_lstm_cell_105_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_106_lstm_cell_106_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_106_lstm_cell_106_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_106_lstm_cell_106_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_107_lstm_cell_107_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_107_lstm_cell_107_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_107_lstm_cell_107_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_179894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_107_layer_call_fn_180759
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177378o
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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854

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
8

D__inference_lstm_107_layer_call_and_return_conditional_losses_177187

inputs%
lstm_cell_29_177105:2(%
lstm_cell_29_177107:
(!
lstm_cell_29_177109:(
identity˘$lstm_cell_29/StatefulPartitionedCall˘while;
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
$lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_29_177105lstm_cell_29_177107lstm_cell_29_177109*
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177104n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_29_177105lstm_cell_29_177107lstm_cell_29_177109*
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
while_body_177118*
condR
while_cond_177117*K
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
NoOpNoOp%^lstm_cell_29/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_29/StatefulPartitionedCall$lstm_cell_29/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
âJ

D__inference_lstm_106_layer_call_and_return_conditional_losses_180308
inputs_0>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_180224*
condR
while_cond_180223*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
µ
?
while_cond_177117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177117___redundant_placeholder04
0while_while_cond_177117___redundant_placeholder14
0while_while_cond_177117___redundant_placeholder24
0while_while_cond_177117___redundant_placeholder3
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_181353

inputs=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_181269*
condR
while_cond_181268*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_181125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181125___redundant_placeholder04
0while_while_cond_181125___redundant_placeholder14
0while_while_cond_181125___redundant_placeholder24
0while_while_cond_181125___redundant_placeholder3
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
Ç	
ġ
D__inference_dense_35_layer_call_and_return_conditional_losses_181372

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
Ğ
ë
I__inference_sequential_35_layer_call_and_return_conditional_losses_178450

inputs"
lstm_105_178423:	"
lstm_105_178425:	d
lstm_105_178427:	"
lstm_106_178430:	dÈ"
lstm_106_178432:	2È
lstm_106_178434:	È!
lstm_107_178437:2(!
lstm_107_178439:
(
lstm_107_178441:(!
dense_35_178444:

dense_35_178446:
identity˘ dense_35/StatefulPartitionedCall˘ lstm_105/StatefulPartitionedCall˘ lstm_106/StatefulPartitionedCall˘ lstm_107/StatefulPartitionedCall
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinputslstm_105_178423lstm_105_178425lstm_105_178427*
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_178382Ş
 lstm_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0lstm_106_178430lstm_106_178432lstm_106_178434*
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_178217Ĥ
 lstm_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_106/StatefulPartitionedCall:output:0lstm_107_178437lstm_107_178439lstm_107_178441*
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_178052
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_35_178444dense_35_178446*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_35/StatefulPartitionedCall!^lstm_105/StatefulPartitionedCall!^lstm_106/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2D
 lstm_106/StatefulPartitionedCall lstm_106/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_107_while_cond_179414.
*lstm_107_while_lstm_107_while_loop_counter4
0lstm_107_while_lstm_107_while_maximum_iterations
lstm_107_while_placeholder 
lstm_107_while_placeholder_1 
lstm_107_while_placeholder_2 
lstm_107_while_placeholder_30
,lstm_107_while_less_lstm_107_strided_slice_1F
Blstm_107_while_lstm_107_while_cond_179414___redundant_placeholder0F
Blstm_107_while_lstm_107_while_cond_179414___redundant_placeholder1F
Blstm_107_while_lstm_107_while_cond_179414___redundant_placeholder2F
Blstm_107_while_lstm_107_while_cond_179414___redundant_placeholder3
lstm_107_while_identity

lstm_107/while/LessLesslstm_107_while_placeholder,lstm_107_while_less_lstm_107_strided_slice_1*
T0*
_output_shapes
: ]
lstm_107/while/IdentityIdentitylstm_107/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_107_while_identity lstm_107/while/Identity:output:0*(
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
while_body_176418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_27_176442_0:	.
while_lstm_cell_27_176444_0:	d*
while_lstm_cell_27_176446_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_27_176442:	,
while_lstm_cell_27_176444:	d(
while_lstm_cell_27_176446:	˘*while/lstm_cell_27/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_27/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27_176442_0while_lstm_cell_27_176444_0while_lstm_cell_27_176446_0*
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176404Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_27/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_27/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_27/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_27_176442while_lstm_cell_27_176442_0"8
while_lstm_cell_27_176444while_lstm_cell_27_176444_0"8
while_lstm_cell_27_176446while_lstm_cell_27_176446_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_27/StatefulPartitionedCall*while/lstm_cell_27/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_105_while_body_179137.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_3-
)lstm_105_while_lstm_105_strided_slice_1_0i
elstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0:	Q
>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dL
=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0:	
lstm_105_while_identity
lstm_105_while_identity_1
lstm_105_while_identity_2
lstm_105_while_identity_3
lstm_105_while_identity_4
lstm_105_while_identity_5+
'lstm_105_while_lstm_105_strided_slice_1g
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorM
:lstm_105_while_lstm_cell_27_matmul_readvariableop_resource:	O
<lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource:	dJ
;lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource:	˘2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp˘1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp˘3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0lstm_105_while_placeholderIlstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_105/while/lstm_cell_27/MatMulMatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_105/while/lstm_cell_27/MatMul_1MatMullstm_105_while_placeholder_2;lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_105/while/lstm_cell_27/addAddV2,lstm_105/while/lstm_cell_27/MatMul:product:0.lstm_105/while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_105/while/lstm_cell_27/BiasAddBiasAdd#lstm_105/while/lstm_cell_27/add:z:0:lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_105/while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_105/while/lstm_cell_27/splitSplit4lstm_105/while/lstm_cell_27/split/split_dim:output:0,lstm_105/while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_105/while/lstm_cell_27/SigmoidSigmoid*lstm_105/while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_105/while/lstm_cell_27/Sigmoid_1Sigmoid*lstm_105/while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_105/while/lstm_cell_27/mulMul)lstm_105/while/lstm_cell_27/Sigmoid_1:y:0lstm_105_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_105/while/lstm_cell_27/ReluRelu*lstm_105/while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_105/while/lstm_cell_27/mul_1Mul'lstm_105/while/lstm_cell_27/Sigmoid:y:0.lstm_105/while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_105/while/lstm_cell_27/add_1AddV2#lstm_105/while/lstm_cell_27/mul:z:0%lstm_105/while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_105/while/lstm_cell_27/Sigmoid_2Sigmoid*lstm_105/while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_105/while/lstm_cell_27/Relu_1Relu%lstm_105/while/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_105/while/lstm_cell_27/mul_2Mul)lstm_105/while/lstm_cell_27/Sigmoid_2:y:00lstm_105/while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_105_while_placeholder_1lstm_105_while_placeholder%lstm_105/while/lstm_cell_27/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_105/while/addAddV2lstm_105_while_placeholderlstm_105/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_105/while/add_1AddV2*lstm_105_while_lstm_105_while_loop_counterlstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_105/while/IdentityIdentitylstm_105/while/add_1:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 
lstm_105/while/Identity_1Identity0lstm_105_while_lstm_105_while_maximum_iterations^lstm_105/while/NoOp*
T0*
_output_shapes
: t
lstm_105/while/Identity_2Identitylstm_105/while/add:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_105/while/Identity_3IdentityClstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 
lstm_105/while/Identity_4Identity%lstm_105/while/lstm_cell_27/mul_2:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/while/Identity_5Identity%lstm_105/while/lstm_cell_27/add_1:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_105/while/NoOpNoOp3^lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2^lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp4^lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_105_while_identity lstm_105/while/Identity:output:0"?
lstm_105_while_identity_1"lstm_105/while/Identity_1:output:0"?
lstm_105_while_identity_2"lstm_105/while/Identity_2:output:0"?
lstm_105_while_identity_3"lstm_105/while/Identity_3:output:0"?
lstm_105_while_identity_4"lstm_105/while/Identity_4:output:0"?
lstm_105_while_identity_5"lstm_105/while/Identity_5:output:0"T
'lstm_105_while_lstm_105_strided_slice_1)lstm_105_while_lstm_105_strided_slice_1_0"|
;lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource=lstm_105_while_lstm_cell_27_biasadd_readvariableop_resource_0"~
<lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource>lstm_105_while_lstm_cell_27_matmul_1_readvariableop_resource_0"z
:lstm_105_while_lstm_cell_27_matmul_readvariableop_resource<lstm_105_while_lstm_cell_27_matmul_readvariableop_resource_0"Ì
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2lstm_105/while/lstm_cell_27/BiasAdd/ReadVariableOp2f
1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp1lstm_105/while/lstm_cell_27/MatMul/ReadVariableOp2j
3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp3lstm_105/while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_179608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
8

D__inference_lstm_105_layer_call_and_return_conditional_losses_176487

inputs&
lstm_cell_27_176405:	&
lstm_cell_27_176407:	d"
lstm_cell_27_176409:	
identity˘$lstm_cell_27/StatefulPartitionedCall˘while;
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
$lstm_cell_27/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27_176405lstm_cell_27_176407lstm_cell_27_176409*
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176404n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27_176405lstm_cell_27_176407lstm_cell_27_176409*
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
while_body_176418*
condR
while_cond_176417*K
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
NoOpNoOp%^lstm_cell_27/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_27/StatefulPartitionedCall$lstm_cell_27/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_181269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_178532
lstm_105_input"
lstm_105_178505:	"
lstm_105_178507:	d
lstm_105_178509:	"
lstm_106_178512:	dÈ"
lstm_106_178514:	2È
lstm_106_178516:	È!
lstm_107_178519:2(!
lstm_107_178521:
(
lstm_107_178523:(!
dense_35_178526:

dense_35_178528:
identity˘ dense_35/StatefulPartitionedCall˘ lstm_105/StatefulPartitionedCall˘ lstm_106/StatefulPartitionedCall˘ lstm_107/StatefulPartitionedCall
 lstm_105/StatefulPartitionedCallStatefulPartitionedCalllstm_105_inputlstm_105_178505lstm_105_178507lstm_105_178509*
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_177536Ş
 lstm_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0lstm_106_178512lstm_106_178514lstm_106_178516*
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_177686Ĥ
 lstm_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_106/StatefulPartitionedCall:output:0lstm_107_178519lstm_107_178521lstm_107_178523*
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177836
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_35_178526dense_35_178528*
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
D__inference_dense_35_layer_call_and_return_conditional_losses_177854x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_35/StatefulPartitionedCall!^lstm_105/StatefulPartitionedCall!^lstm_106/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2D
 lstm_106/StatefulPartitionedCall lstm_106/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_105_input
Ġ

H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_176404

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
ÎB
ê

lstm_107_while_body_178988.
*lstm_107_while_lstm_107_while_loop_counter4
0lstm_107_while_lstm_107_while_maximum_iterations
lstm_107_while_placeholder 
lstm_107_while_placeholder_1 
lstm_107_while_placeholder_2 
lstm_107_while_placeholder_3-
)lstm_107_while_lstm_107_strided_slice_1_0i
elstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0:2(P
>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(K
=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0:(
lstm_107_while_identity
lstm_107_while_identity_1
lstm_107_while_identity_2
lstm_107_while_identity_3
lstm_107_while_identity_4
lstm_107_while_identity_5+
'lstm_107_while_lstm_107_strided_slice_1g
clstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensorL
:lstm_107_while_lstm_cell_29_matmul_readvariableop_resource:2(N
<lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource:
(I
;lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource:(˘2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp˘1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp˘3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp
@lstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_107/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0lstm_107_while_placeholderIlstm_107/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_107/while/lstm_cell_29/MatMulMatMul9lstm_107/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_107/while/lstm_cell_29/MatMul_1MatMullstm_107_while_placeholder_2;lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_107/while/lstm_cell_29/addAddV2,lstm_107/while/lstm_cell_29/MatMul:product:0.lstm_107/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_107/while/lstm_cell_29/BiasAddBiasAdd#lstm_107/while/lstm_cell_29/add:z:0:lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_107/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_107/while/lstm_cell_29/splitSplit4lstm_107/while/lstm_cell_29/split/split_dim:output:0,lstm_107/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_107/while/lstm_cell_29/SigmoidSigmoid*lstm_107/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_107/while/lstm_cell_29/Sigmoid_1Sigmoid*lstm_107/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_107/while/lstm_cell_29/mulMul)lstm_107/while/lstm_cell_29/Sigmoid_1:y:0lstm_107_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_107/while/lstm_cell_29/ReluRelu*lstm_107/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_107/while/lstm_cell_29/mul_1Mul'lstm_107/while/lstm_cell_29/Sigmoid:y:0.lstm_107/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_107/while/lstm_cell_29/add_1AddV2#lstm_107/while/lstm_cell_29/mul:z:0%lstm_107/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_107/while/lstm_cell_29/Sigmoid_2Sigmoid*lstm_107/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_107/while/lstm_cell_29/Relu_1Relu%lstm_107/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_107/while/lstm_cell_29/mul_2Mul)lstm_107/while/lstm_cell_29/Sigmoid_2:y:00lstm_107/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_107/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_107_while_placeholder_1lstm_107_while_placeholder%lstm_107/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_107/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_107/while/addAddV2lstm_107_while_placeholderlstm_107/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_107/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_107/while/add_1AddV2*lstm_107_while_lstm_107_while_loop_counterlstm_107/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_107/while/IdentityIdentitylstm_107/while/add_1:z:0^lstm_107/while/NoOp*
T0*
_output_shapes
: 
lstm_107/while/Identity_1Identity0lstm_107_while_lstm_107_while_maximum_iterations^lstm_107/while/NoOp*
T0*
_output_shapes
: t
lstm_107/while/Identity_2Identitylstm_107/while/add:z:0^lstm_107/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_107/while/Identity_3IdentityClstm_107/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_107/while/NoOp*
T0*
_output_shapes
: 
lstm_107/while/Identity_4Identity%lstm_107/while/lstm_cell_29/mul_2:z:0^lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/while/Identity_5Identity%lstm_107/while/lstm_cell_29/add_1:z:0^lstm_107/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_107/while/NoOpNoOp3^lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2^lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp4^lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_107_while_identity lstm_107/while/Identity:output:0"?
lstm_107_while_identity_1"lstm_107/while/Identity_1:output:0"?
lstm_107_while_identity_2"lstm_107/while/Identity_2:output:0"?
lstm_107_while_identity_3"lstm_107/while/Identity_3:output:0"?
lstm_107_while_identity_4"lstm_107/while/Identity_4:output:0"?
lstm_107_while_identity_5"lstm_107/while/Identity_5:output:0"T
'lstm_107_while_lstm_107_strided_slice_1)lstm_107_while_lstm_107_strided_slice_1_0"|
;lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource=lstm_107_while_lstm_cell_29_biasadd_readvariableop_resource_0"~
<lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource>lstm_107_while_lstm_cell_29_matmul_1_readvariableop_resource_0"z
:lstm_107_while_lstm_cell_29_matmul_readvariableop_resource<lstm_107_while_lstm_cell_29_matmul_readvariableop_resource_0"Ì
clstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensorelstm_107_while_tensorarrayv2read_tensorlistgetitem_lstm_107_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2lstm_107/while/lstm_cell_29/BiasAdd/ReadVariableOp2f
1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp1lstm_107/while/lstm_cell_29/MatMul/ReadVariableOp2j
3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp3lstm_107/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_176608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176608___redundant_placeholder04
0while_while_cond_176608___redundant_placeholder14
0while_while_cond_176608___redundant_placeholder24
0while_while_cond_176608___redundant_placeholder3
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_179835
inputs_0>
+lstm_cell_27_matmul_readvariableop_resource:	@
-lstm_cell_27_matmul_1_readvariableop_resource:	d;
,lstm_cell_27_biasadd_readvariableop_resource:	
identity˘#lstm_cell_27/BiasAdd/ReadVariableOp˘"lstm_cell_27/MatMul/ReadVariableOp˘$lstm_cell_27/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_27/MatMul/ReadVariableOpReadVariableOp+lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_27/MatMulMatMulstrided_slice_2:output:0*lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_27/MatMul_1MatMulzeros:output:0,lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_27/addAddV2lstm_cell_27/MatMul:product:0lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_27/BiasAddBiasAddlstm_cell_27/add:z:0+lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_27/splitSplit%lstm_cell_27/split/split_dim:output:0lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_27/SigmoidSigmoidlstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_1Sigmoidlstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_27/mulMullstm_cell_27/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_27/ReluRelulstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_1Mullstm_cell_27/Sigmoid:y:0lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_27/add_1AddV2lstm_cell_27/mul:z:0lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_27/Sigmoid_2Sigmoidlstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_27/Relu_1Relulstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_27/mul_2Mullstm_cell_27/Sigmoid_2:y:0!lstm_cell_27/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_27_matmul_readvariableop_resource-lstm_cell_27_matmul_1_readvariableop_resource,lstm_cell_27_biasadd_readvariableop_resource*
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
while_body_179751*
condR
while_cond_179750*K
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
NoOpNoOp$^lstm_cell_27/BiasAdd/ReadVariableOp#^lstm_cell_27/MatMul/ReadVariableOp%^lstm_cell_27/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_27/BiasAdd/ReadVariableOp#lstm_cell_27/BiasAdd/ReadVariableOp2H
"lstm_cell_27/MatMul/ReadVariableOp"lstm_cell_27/MatMul/ReadVariableOp2L
$lstm_cell_27/MatMul_1/ReadVariableOp$lstm_cell_27/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Ú


.__inference_sequential_35_layer_call_fn_178624

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
I__inference_sequential_35_layer_call_and_return_conditional_losses_177861o
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_177836

inputs=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_177752*
condR
while_cond_177751*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
J

D__inference_lstm_107_layer_call_and_return_conditional_losses_178052

inputs=
+lstm_cell_29_matmul_readvariableop_resource:2(?
-lstm_cell_29_matmul_1_readvariableop_resource:
(:
,lstm_cell_29_biasadd_readvariableop_resource:(
identity˘#lstm_cell_29/BiasAdd/ReadVariableOp˘"lstm_cell_29/MatMul/ReadVariableOp˘$lstm_cell_29/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
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
while_body_177968*
condR
while_cond_177967*K
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
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_29_layer_call_fn_181585

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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177104o
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
while_cond_180509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180509___redundant_placeholder04
0while_while_cond_180509___redundant_placeholder14
0while_while_cond_180509___redundant_placeholder24
0while_while_cond_180509___redundant_placeholder3
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
while_body_180840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_29_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource:2(E
3while_lstm_cell_29_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_29_biasadd_readvariableop_resource:(˘)while/lstm_cell_29/BiasAdd/ReadVariableOp˘(while/lstm_cell_29/MatMul/ReadVariableOp˘*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181666

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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180451
inputs_0>
+lstm_cell_28_matmul_readvariableop_resource:	dÈ@
-lstm_cell_28_matmul_1_readvariableop_resource:	2È;
,lstm_cell_28_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_28/BiasAdd/ReadVariableOp˘"lstm_cell_28/MatMul/ReadVariableOp˘$lstm_cell_28/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
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
while_body_180367*
condR
while_cond_180366*K
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
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
à"
Ŭ
while_body_177118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_29_177142_0:2(-
while_lstm_cell_29_177144_0:
()
while_lstm_cell_29_177146_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_29_177142:2(+
while_lstm_cell_29_177144:
('
while_lstm_cell_29_177146:(˘*while/lstm_cell_29/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_29_177142_0while_lstm_cell_29_177144_0while_lstm_cell_29_177146_0*
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_177104Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_29/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_29/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_29/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_29_177142while_lstm_cell_29_177142_0"8
while_lstm_cell_29_177144while_lstm_cell_29_177144_0"8
while_lstm_cell_29_177146while_lstm_cell_29_177146_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_29/StatefulPartitionedCall*while/lstm_cell_29/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ë
ö
-__inference_lstm_cell_28_layer_call_fn_181504

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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_176900o
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
while_cond_180652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180652___redundant_placeholder04
0while_while_cond_180652___redundant_placeholder14
0while_while_cond_180652___redundant_placeholder24
0while_while_cond_180652___redundant_placeholder3
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
ş

(sequential_35_lstm_107_while_cond_176246J
Fsequential_35_lstm_107_while_sequential_35_lstm_107_while_loop_counterP
Lsequential_35_lstm_107_while_sequential_35_lstm_107_while_maximum_iterations,
(sequential_35_lstm_107_while_placeholder.
*sequential_35_lstm_107_while_placeholder_1.
*sequential_35_lstm_107_while_placeholder_2.
*sequential_35_lstm_107_while_placeholder_3L
Hsequential_35_lstm_107_while_less_sequential_35_lstm_107_strided_slice_1b
^sequential_35_lstm_107_while_sequential_35_lstm_107_while_cond_176246___redundant_placeholder0b
^sequential_35_lstm_107_while_sequential_35_lstm_107_while_cond_176246___redundant_placeholder1b
^sequential_35_lstm_107_while_sequential_35_lstm_107_while_cond_176246___redundant_placeholder2b
^sequential_35_lstm_107_while_sequential_35_lstm_107_while_cond_176246___redundant_placeholder3)
%sequential_35_lstm_107_while_identity
?
!sequential_35/lstm_107/while/LessLess(sequential_35_lstm_107_while_placeholderHsequential_35_lstm_107_while_less_sequential_35_lstm_107_strided_slice_1*
T0*
_output_shapes
: y
%sequential_35/lstm_107/while/IdentityIdentity%sequential_35/lstm_107/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_35_lstm_107_while_identity.sequential_35/lstm_107/while/Identity:output:0*(
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
lstm_107_while_cond_178987.
*lstm_107_while_lstm_107_while_loop_counter4
0lstm_107_while_lstm_107_while_maximum_iterations
lstm_107_while_placeholder 
lstm_107_while_placeholder_1 
lstm_107_while_placeholder_2 
lstm_107_while_placeholder_30
,lstm_107_while_less_lstm_107_strided_slice_1F
Blstm_107_while_lstm_107_while_cond_178987___redundant_placeholder0F
Blstm_107_while_lstm_107_while_cond_178987___redundant_placeholder1F
Blstm_107_while_lstm_107_while_cond_178987___redundant_placeholder2F
Blstm_107_while_lstm_107_while_cond_178987___redundant_placeholder3
lstm_107_while_identity

lstm_107/while/LessLesslstm_107_while_placeholder,lstm_107_while_less_lstm_107_strided_slice_1*
T0*
_output_shapes
: ]
lstm_107/while/IdentityIdentitylstm_107/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_107_while_identity lstm_107/while/Identity:output:0*(
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
while_cond_176958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176958___redundant_placeholder04
0while_while_cond_176958___redundant_placeholder14
0while_while_cond_176958___redundant_placeholder24
0while_while_cond_176958___redundant_placeholder3
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
)__inference_lstm_106_layer_call_fn_180165

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
D__inference_lstm_106_layer_call_and_return_conditional_losses_178217s
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
8
?
while_body_180037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_27_matmul_readvariableop_resource_0:	H
5while_lstm_cell_27_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_27_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_27_matmul_readvariableop_resource:	F
3while_lstm_cell_27_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_27_biasadd_readvariableop_resource:	˘)while/lstm_cell_27/BiasAdd/ReadVariableOp˘(while/lstm_cell_27/MatMul/ReadVariableOp˘*while/lstm_cell_27/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_27_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_27/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_27_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_27/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_27/addAddV2#while/lstm_cell_27/MatMul:product:0%while/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_27_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_27/BiasAddBiasAddwhile/lstm_cell_27/add:z:01while/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_27/splitSplit+while/lstm_cell_27/split/split_dim:output:0#while/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_27/SigmoidSigmoid!while/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_1Sigmoid!while/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mulMul while/lstm_cell_27/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_27/ReluRelu!while/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_1Mulwhile/lstm_cell_27/Sigmoid:y:0%while/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/add_1AddV2while/lstm_cell_27/mul:z:0while/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_27/Sigmoid_2Sigmoid!while/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_27/Relu_1Reluwhile/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_27/mul_2Mul while/lstm_cell_27/Sigmoid_2:y:0'while/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_27/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_27/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_27/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_27/BiasAdd/ReadVariableOp)^while/lstm_cell_27/MatMul/ReadVariableOp+^while/lstm_cell_27/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_27_biasadd_readvariableop_resource4while_lstm_cell_27_biasadd_readvariableop_resource_0"l
3while_lstm_cell_27_matmul_1_readvariableop_resource5while_lstm_cell_27_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_27_matmul_readvariableop_resource3while_lstm_cell_27_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_27/BiasAdd/ReadVariableOp)while/lstm_cell_27/BiasAdd/ReadVariableOp2T
(while/lstm_cell_27/MatMul/ReadVariableOp(while/lstm_cell_27/MatMul/ReadVariableOp2X
*while/lstm_cell_27/MatMul_1/ReadVariableOp*while/lstm_cell_27/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ħ

I__inference_sequential_35_layer_call_and_return_conditional_losses_179078

inputsG
4lstm_105_lstm_cell_27_matmul_readvariableop_resource:	I
6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource:	dD
5lstm_105_lstm_cell_27_biasadd_readvariableop_resource:	G
4lstm_106_lstm_cell_28_matmul_readvariableop_resource:	dÈI
6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈD
5lstm_106_lstm_cell_28_biasadd_readvariableop_resource:	ÈF
4lstm_107_lstm_cell_29_matmul_readvariableop_resource:2(H
6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource:
(C
5lstm_107_lstm_cell_29_biasadd_readvariableop_resource:(9
'dense_35_matmul_readvariableop_resource:
6
(dense_35_biasadd_readvariableop_resource:
identity˘dense_35/BiasAdd/ReadVariableOp˘dense_35/MatMul/ReadVariableOp˘,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp˘+lstm_105/lstm_cell_27/MatMul/ReadVariableOp˘-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp˘lstm_105/while˘,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp˘+lstm_106/lstm_cell_28/MatMul/ReadVariableOp˘-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp˘lstm_106/while˘,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp˘+lstm_107/lstm_cell_29/MatMul/ReadVariableOp˘-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp˘lstm_107/whileD
lstm_105/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_105/strided_sliceStridedSlicelstm_105/Shape:output:0%lstm_105/strided_slice/stack:output:0'lstm_105/strided_slice/stack_1:output:0'lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_105/zeros/packedPacklstm_105/strided_slice:output:0 lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_105/zerosFilllstm_105/zeros/packed:output:0lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_105/zeros_1/packedPacklstm_105/strided_slice:output:0"lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_105/zeros_1Fill lstm_105/zeros_1/packed:output:0lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_105/transpose	Transposeinputs lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_105/Shape_1Shapelstm_105/transpose:y:0*
T0*
_output_shapes
:h
lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_105/strided_slice_1StridedSlicelstm_105/Shape_1:output:0'lstm_105/strided_slice_1/stack:output:0)lstm_105/strided_slice_1/stack_1:output:0)lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_105/TensorArrayV2TensorListReserve-lstm_105/TensorArrayV2/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_105/transpose:y:0Glstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_105/strided_slice_2StridedSlicelstm_105/transpose:y:0'lstm_105/strided_slice_2/stack:output:0)lstm_105/strided_slice_2/stack_1:output:0)lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_105/lstm_cell_27/MatMul/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_105/lstm_cell_27/MatMulMatMul!lstm_105/strided_slice_2:output:03lstm_105/lstm_cell_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOpReadVariableOp6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_105/lstm_cell_27/MatMul_1MatMullstm_105/zeros:output:05lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_105/lstm_cell_27/addAddV2&lstm_105/lstm_cell_27/MatMul:product:0(lstm_105/lstm_cell_27/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOpReadVariableOp5lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_105/lstm_cell_27/BiasAddBiasAddlstm_105/lstm_cell_27/add:z:04lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_105/lstm_cell_27/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_105/lstm_cell_27/splitSplit.lstm_105/lstm_cell_27/split/split_dim:output:0&lstm_105/lstm_cell_27/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_105/lstm_cell_27/SigmoidSigmoid$lstm_105/lstm_cell_27/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/Sigmoid_1Sigmoid$lstm_105/lstm_cell_27/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/mulMul#lstm_105/lstm_cell_27/Sigmoid_1:y:0lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_105/lstm_cell_27/ReluRelu$lstm_105/lstm_cell_27/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_105/lstm_cell_27/mul_1Mul!lstm_105/lstm_cell_27/Sigmoid:y:0(lstm_105/lstm_cell_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/add_1AddV2lstm_105/lstm_cell_27/mul:z:0lstm_105/lstm_cell_27/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_105/lstm_cell_27/Sigmoid_2Sigmoid$lstm_105/lstm_cell_27/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_105/lstm_cell_27/Relu_1Relulstm_105/lstm_cell_27/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_105/lstm_cell_27/mul_2Mul#lstm_105/lstm_cell_27/Sigmoid_2:y:0*lstm_105/lstm_cell_27/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_105/TensorArrayV2_1TensorListReserve/lstm_105/TensorArrayV2_1/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_105/whileWhile$lstm_105/while/loop_counter:output:0*lstm_105/while/maximum_iterations:output:0lstm_105/time:output:0!lstm_105/TensorArrayV2_1:handle:0lstm_105/zeros:output:0lstm_105/zeros_1:output:0!lstm_105/strided_slice_1:output:0@lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_105_lstm_cell_27_matmul_readvariableop_resource6lstm_105_lstm_cell_27_matmul_1_readvariableop_resource5lstm_105_lstm_cell_27_biasadd_readvariableop_resource*
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
lstm_105_while_body_178710*&
condR
lstm_105_while_cond_178709*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_105/TensorArrayV2Stack/TensorListStackTensorListStacklstm_105/while:output:3Blstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_105/strided_slice_3StridedSlice4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_105/strided_slice_3/stack:output:0)lstm_105/strided_slice_3/stack_1:output:0)lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_105/transpose_1	Transpose4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_106/ShapeShapelstm_105/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_106/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_106/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_106/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_106/strided_sliceStridedSlicelstm_106/Shape:output:0%lstm_106/strided_slice/stack:output:0'lstm_106/strided_slice/stack_1:output:0'lstm_106/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_106/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_106/zeros/packedPacklstm_106/strided_slice:output:0 lstm_106/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_106/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_106/zerosFilllstm_106/zeros/packed:output:0lstm_106/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_106/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_106/zeros_1/packedPacklstm_106/strided_slice:output:0"lstm_106/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_106/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_106/zeros_1Fill lstm_106/zeros_1/packed:output:0lstm_106/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_106/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_106/transpose	Transposelstm_105/transpose_1:y:0 lstm_106/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_106/Shape_1Shapelstm_106/transpose:y:0*
T0*
_output_shapes
:h
lstm_106/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_106/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_106/strided_slice_1StridedSlicelstm_106/Shape_1:output:0'lstm_106/strided_slice_1/stack:output:0)lstm_106/strided_slice_1/stack_1:output:0)lstm_106/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_106/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_106/TensorArrayV2TensorListReserve-lstm_106/TensorArrayV2/element_shape:output:0!lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_106/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_106/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_106/transpose:y:0Glstm_106/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_106/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_106/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_106/strided_slice_2StridedSlicelstm_106/transpose:y:0'lstm_106/strided_slice_2/stack:output:0)lstm_106/strided_slice_2/stack_1:output:0)lstm_106/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_106/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp4lstm_106_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_106/lstm_cell_28/MatMulMatMul!lstm_106/strided_slice_2:output:03lstm_106/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_106/lstm_cell_28/MatMul_1MatMullstm_106/zeros:output:05lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_106/lstm_cell_28/addAddV2&lstm_106/lstm_cell_28/MatMul:product:0(lstm_106/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp5lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_106/lstm_cell_28/BiasAddBiasAddlstm_106/lstm_cell_28/add:z:04lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_106/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_106/lstm_cell_28/splitSplit.lstm_106/lstm_cell_28/split/split_dim:output:0&lstm_106/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_106/lstm_cell_28/SigmoidSigmoid$lstm_106/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/Sigmoid_1Sigmoid$lstm_106/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/mulMul#lstm_106/lstm_cell_28/Sigmoid_1:y:0lstm_106/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_106/lstm_cell_28/ReluRelu$lstm_106/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_106/lstm_cell_28/mul_1Mul!lstm_106/lstm_cell_28/Sigmoid:y:0(lstm_106/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/add_1AddV2lstm_106/lstm_cell_28/mul:z:0lstm_106/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_106/lstm_cell_28/Sigmoid_2Sigmoid$lstm_106/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_106/lstm_cell_28/Relu_1Relulstm_106/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_106/lstm_cell_28/mul_2Mul#lstm_106/lstm_cell_28/Sigmoid_2:y:0*lstm_106/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_106/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_106/TensorArrayV2_1TensorListReserve/lstm_106/TensorArrayV2_1/element_shape:output:0!lstm_106/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_106/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_106/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_106/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_106/whileWhile$lstm_106/while/loop_counter:output:0*lstm_106/while/maximum_iterations:output:0lstm_106/time:output:0!lstm_106/TensorArrayV2_1:handle:0lstm_106/zeros:output:0lstm_106/zeros_1:output:0!lstm_106/strided_slice_1:output:0@lstm_106/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_106_lstm_cell_28_matmul_readvariableop_resource6lstm_106_lstm_cell_28_matmul_1_readvariableop_resource5lstm_106_lstm_cell_28_biasadd_readvariableop_resource*
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
lstm_106_while_body_178849*&
condR
lstm_106_while_cond_178848*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_106/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_106/TensorArrayV2Stack/TensorListStackTensorListStacklstm_106/while:output:3Blstm_106/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_106/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_106/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_106/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_106/strided_slice_3StridedSlice4lstm_106/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_106/strided_slice_3/stack:output:0)lstm_106/strided_slice_3/stack_1:output:0)lstm_106/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_106/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_106/transpose_1	Transpose4lstm_106/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_106/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_106/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_107/ShapeShapelstm_106/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_107/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_107/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_107/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_107/strided_sliceStridedSlicelstm_107/Shape:output:0%lstm_107/strided_slice/stack:output:0'lstm_107/strided_slice/stack_1:output:0'lstm_107/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_107/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_107/zeros/packedPacklstm_107/strided_slice:output:0 lstm_107/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_107/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_107/zerosFilllstm_107/zeros/packed:output:0lstm_107/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_107/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_107/zeros_1/packedPacklstm_107/strided_slice:output:0"lstm_107/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_107/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_107/zeros_1Fill lstm_107/zeros_1/packed:output:0lstm_107/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_107/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_107/transpose	Transposelstm_106/transpose_1:y:0 lstm_107/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_107/Shape_1Shapelstm_107/transpose:y:0*
T0*
_output_shapes
:h
lstm_107/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_107/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_107/strided_slice_1StridedSlicelstm_107/Shape_1:output:0'lstm_107/strided_slice_1/stack:output:0)lstm_107/strided_slice_1/stack_1:output:0)lstm_107/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_107/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_107/TensorArrayV2TensorListReserve-lstm_107/TensorArrayV2/element_shape:output:0!lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_107/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_107/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_107/transpose:y:0Glstm_107/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_107/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_107/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_107/strided_slice_2StridedSlicelstm_107/transpose:y:0'lstm_107/strided_slice_2/stack:output:0)lstm_107/strided_slice_2/stack_1:output:0)lstm_107/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_107/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp4lstm_107_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_107/lstm_cell_29/MatMulMatMul!lstm_107/strided_slice_2:output:03lstm_107/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_107/lstm_cell_29/MatMul_1MatMullstm_107/zeros:output:05lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_107/lstm_cell_29/addAddV2&lstm_107/lstm_cell_29/MatMul:product:0(lstm_107/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp5lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_107/lstm_cell_29/BiasAddBiasAddlstm_107/lstm_cell_29/add:z:04lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_107/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_107/lstm_cell_29/splitSplit.lstm_107/lstm_cell_29/split/split_dim:output:0&lstm_107/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_107/lstm_cell_29/SigmoidSigmoid$lstm_107/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/Sigmoid_1Sigmoid$lstm_107/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/mulMul#lstm_107/lstm_cell_29/Sigmoid_1:y:0lstm_107/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_107/lstm_cell_29/ReluRelu$lstm_107/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_107/lstm_cell_29/mul_1Mul!lstm_107/lstm_cell_29/Sigmoid:y:0(lstm_107/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/add_1AddV2lstm_107/lstm_cell_29/mul:z:0lstm_107/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_107/lstm_cell_29/Sigmoid_2Sigmoid$lstm_107/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_107/lstm_cell_29/Relu_1Relulstm_107/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_107/lstm_cell_29/mul_2Mul#lstm_107/lstm_cell_29/Sigmoid_2:y:0*lstm_107/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_107/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_107/TensorArrayV2_1TensorListReserve/lstm_107/TensorArrayV2_1/element_shape:output:0!lstm_107/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_107/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_107/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_107/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_107/whileWhile$lstm_107/while/loop_counter:output:0*lstm_107/while/maximum_iterations:output:0lstm_107/time:output:0!lstm_107/TensorArrayV2_1:handle:0lstm_107/zeros:output:0lstm_107/zeros_1:output:0!lstm_107/strided_slice_1:output:0@lstm_107/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_107_lstm_cell_29_matmul_readvariableop_resource6lstm_107_lstm_cell_29_matmul_1_readvariableop_resource5lstm_107_lstm_cell_29_biasadd_readvariableop_resource*
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
lstm_107_while_body_178988*&
condR
lstm_107_while_cond_178987*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_107/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_107/TensorArrayV2Stack/TensorListStackTensorListStacklstm_107/while:output:3Blstm_107/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_107/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_107/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_107/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_107/strided_slice_3StridedSlice4lstm_107/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_107/strided_slice_3/stack:output:0)lstm_107/strided_slice_3/stack_1:output:0)lstm_107/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_107/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_107/transpose_1	Transpose4lstm_107/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_107/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_107/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_35/MatMulMatMul!lstm_107/strided_slice_3:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp-^lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp,^lstm_105/lstm_cell_27/MatMul/ReadVariableOp.^lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp^lstm_105/while-^lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp,^lstm_106/lstm_cell_28/MatMul/ReadVariableOp.^lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_106/while-^lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp,^lstm_107/lstm_cell_29/MatMul/ReadVariableOp.^lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp^lstm_107/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2\
,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp,lstm_105/lstm_cell_27/BiasAdd/ReadVariableOp2Z
+lstm_105/lstm_cell_27/MatMul/ReadVariableOp+lstm_105/lstm_cell_27/MatMul/ReadVariableOp2^
-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp-lstm_105/lstm_cell_27/MatMul_1/ReadVariableOp2 
lstm_105/whilelstm_105/while2\
,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp,lstm_106/lstm_cell_28/BiasAdd/ReadVariableOp2Z
+lstm_106/lstm_cell_28/MatMul/ReadVariableOp+lstm_106/lstm_cell_28/MatMul/ReadVariableOp2^
-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp-lstm_106/lstm_cell_28/MatMul_1/ReadVariableOp2 
lstm_106/whilelstm_106/while2\
,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp,lstm_107/lstm_cell_29/BiasAdd/ReadVariableOp2Z
+lstm_107/lstm_cell_29/MatMul/ReadVariableOp+lstm_107/lstm_cell_29/MatMul/ReadVariableOp2^
-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp-lstm_107/lstm_cell_29/MatMul_1/ReadVariableOp2 
lstm_107/whilelstm_107/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş

(sequential_35_lstm_106_while_cond_176107J
Fsequential_35_lstm_106_while_sequential_35_lstm_106_while_loop_counterP
Lsequential_35_lstm_106_while_sequential_35_lstm_106_while_maximum_iterations,
(sequential_35_lstm_106_while_placeholder.
*sequential_35_lstm_106_while_placeholder_1.
*sequential_35_lstm_106_while_placeholder_2.
*sequential_35_lstm_106_while_placeholder_3L
Hsequential_35_lstm_106_while_less_sequential_35_lstm_106_strided_slice_1b
^sequential_35_lstm_106_while_sequential_35_lstm_106_while_cond_176107___redundant_placeholder0b
^sequential_35_lstm_106_while_sequential_35_lstm_106_while_cond_176107___redundant_placeholder1b
^sequential_35_lstm_106_while_sequential_35_lstm_106_while_cond_176107___redundant_placeholder2b
^sequential_35_lstm_106_while_sequential_35_lstm_106_while_cond_176107___redundant_placeholder3)
%sequential_35_lstm_106_while_identity
?
!sequential_35/lstm_106/while/LessLess(sequential_35_lstm_106_while_placeholderHsequential_35_lstm_106_while_less_sequential_35_lstm_106_strided_slice_1*
T0*
_output_shapes
: y
%sequential_35/lstm_106/while/IdentityIdentity%sequential_35/lstm_106/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_35_lstm_106_while_identity.sequential_35/lstm_106/while/Identity:output:0*(
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
while_cond_180839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180839___redundant_placeholder04
0while_while_cond_180839___redundant_placeholder14
0while_while_cond_180839___redundant_placeholder24
0while_while_cond_180839___redundant_placeholder3
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
(sequential_35_lstm_106_while_body_176108J
Fsequential_35_lstm_106_while_sequential_35_lstm_106_while_loop_counterP
Lsequential_35_lstm_106_while_sequential_35_lstm_106_while_maximum_iterations,
(sequential_35_lstm_106_while_placeholder.
*sequential_35_lstm_106_while_placeholder_1.
*sequential_35_lstm_106_while_placeholder_2.
*sequential_35_lstm_106_while_placeholder_3I
Esequential_35_lstm_106_while_sequential_35_lstm_106_strided_slice_1_0
sequential_35_lstm_106_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_106_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_35_lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0:	dÈ_
Lsequential_35_lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_35_lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0:	È)
%sequential_35_lstm_106_while_identity+
'sequential_35_lstm_106_while_identity_1+
'sequential_35_lstm_106_while_identity_2+
'sequential_35_lstm_106_while_identity_3+
'sequential_35_lstm_106_while_identity_4+
'sequential_35_lstm_106_while_identity_5G
Csequential_35_lstm_106_while_sequential_35_lstm_106_strided_slice_1
sequential_35_lstm_106_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_106_tensorarrayunstack_tensorlistfromtensor[
Hsequential_35_lstm_106_while_lstm_cell_28_matmul_readvariableop_resource:	dÈ]
Jsequential_35_lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource:	2ÈX
Isequential_35_lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource:	È˘@sequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp˘?sequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp˘Asequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp
Nsequential_35/lstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_35/lstm_106/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_35_lstm_106_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_106_tensorarrayunstack_tensorlistfromtensor_0(sequential_35_lstm_106_while_placeholderWsequential_35/lstm_106/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpJsequential_35_lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_35/lstm_106/while/lstm_cell_28/MatMulMatMulGsequential_35/lstm_106/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpLsequential_35_lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_35/lstm_106/while/lstm_cell_28/MatMul_1MatMul*sequential_35_lstm_106_while_placeholder_2Isequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_35/lstm_106/while/lstm_cell_28/addAddV2:sequential_35/lstm_106/while/lstm_cell_28/MatMul:product:0<sequential_35/lstm_106/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpKsequential_35_lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_35/lstm_106/while/lstm_cell_28/BiasAddBiasAdd1sequential_35/lstm_106/while/lstm_cell_28/add:z:0Hsequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_35/lstm_106/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_35/lstm_106/while/lstm_cell_28/splitSplitBsequential_35/lstm_106/while/lstm_cell_28/split/split_dim:output:0:sequential_35/lstm_106/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_35/lstm_106/while/lstm_cell_28/SigmoidSigmoid8sequential_35/lstm_106/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_35/lstm_106/while/lstm_cell_28/Sigmoid_1Sigmoid8sequential_35/lstm_106/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_35/lstm_106/while/lstm_cell_28/mulMul7sequential_35/lstm_106/while/lstm_cell_28/Sigmoid_1:y:0*sequential_35_lstm_106_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_35/lstm_106/while/lstm_cell_28/ReluRelu8sequential_35/lstm_106/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_35/lstm_106/while/lstm_cell_28/mul_1Mul5sequential_35/lstm_106/while/lstm_cell_28/Sigmoid:y:0<sequential_35/lstm_106/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_35/lstm_106/while/lstm_cell_28/add_1AddV21sequential_35/lstm_106/while/lstm_cell_28/mul:z:03sequential_35/lstm_106/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_35/lstm_106/while/lstm_cell_28/Sigmoid_2Sigmoid8sequential_35/lstm_106/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_35/lstm_106/while/lstm_cell_28/Relu_1Relu3sequential_35/lstm_106/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_35/lstm_106/while/lstm_cell_28/mul_2Mul7sequential_35/lstm_106/while/lstm_cell_28/Sigmoid_2:y:0>sequential_35/lstm_106/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_35/lstm_106/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_35_lstm_106_while_placeholder_1(sequential_35_lstm_106_while_placeholder3sequential_35/lstm_106/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_35/lstm_106/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_35/lstm_106/while/addAddV2(sequential_35_lstm_106_while_placeholder+sequential_35/lstm_106/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_35/lstm_106/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_35/lstm_106/while/add_1AddV2Fsequential_35_lstm_106_while_sequential_35_lstm_106_while_loop_counter-sequential_35/lstm_106/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_35/lstm_106/while/IdentityIdentity&sequential_35/lstm_106/while/add_1:z:0"^sequential_35/lstm_106/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_35/lstm_106/while/Identity_1IdentityLsequential_35_lstm_106_while_sequential_35_lstm_106_while_maximum_iterations"^sequential_35/lstm_106/while/NoOp*
T0*
_output_shapes
: 
'sequential_35/lstm_106/while/Identity_2Identity$sequential_35/lstm_106/while/add:z:0"^sequential_35/lstm_106/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_35/lstm_106/while/Identity_3IdentityQsequential_35/lstm_106/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_35/lstm_106/while/NoOp*
T0*
_output_shapes
: ?
'sequential_35/lstm_106/while/Identity_4Identity3sequential_35/lstm_106/while/lstm_cell_28/mul_2:z:0"^sequential_35/lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_35/lstm_106/while/Identity_5Identity3sequential_35/lstm_106/while/lstm_cell_28/add_1:z:0"^sequential_35/lstm_106/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_35/lstm_106/while/NoOpNoOpA^sequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp@^sequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOpB^sequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_35_lstm_106_while_identity.sequential_35/lstm_106/while/Identity:output:0"[
'sequential_35_lstm_106_while_identity_10sequential_35/lstm_106/while/Identity_1:output:0"[
'sequential_35_lstm_106_while_identity_20sequential_35/lstm_106/while/Identity_2:output:0"[
'sequential_35_lstm_106_while_identity_30sequential_35/lstm_106/while/Identity_3:output:0"[
'sequential_35_lstm_106_while_identity_40sequential_35/lstm_106/while/Identity_4:output:0"[
'sequential_35_lstm_106_while_identity_50sequential_35/lstm_106/while/Identity_5:output:0"
Isequential_35_lstm_106_while_lstm_cell_28_biasadd_readvariableop_resourceKsequential_35_lstm_106_while_lstm_cell_28_biasadd_readvariableop_resource_0"
Jsequential_35_lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resourceLsequential_35_lstm_106_while_lstm_cell_28_matmul_1_readvariableop_resource_0"
Hsequential_35_lstm_106_while_lstm_cell_28_matmul_readvariableop_resourceJsequential_35_lstm_106_while_lstm_cell_28_matmul_readvariableop_resource_0"
Csequential_35_lstm_106_while_sequential_35_lstm_106_strided_slice_1Esequential_35_lstm_106_while_sequential_35_lstm_106_strided_slice_1_0"
sequential_35_lstm_106_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_106_tensorarrayunstack_tensorlistfromtensorsequential_35_lstm_106_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_106_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp@sequential_35/lstm_106/while/lstm_cell_28/BiasAdd/ReadVariableOp2
?sequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp?sequential_35/lstm_106/while/lstm_cell_28/MatMul/ReadVariableOp2
Asequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOpAsequential_35/lstm_106/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_105_input;
 serving_default_lstm_105_input:0˙˙˙˙˙˙˙˙˙<
dense_350
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
2dense_35/kernel
:2dense_35/bias
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
0:.	2lstm_105/lstm_cell_105/kernel
::8	d2'lstm_105/lstm_cell_105/recurrent_kernel
*:(2lstm_105/lstm_cell_105/bias
0:.	dÈ2lstm_106/lstm_cell_106/kernel
::8	2È2'lstm_106/lstm_cell_106/recurrent_kernel
*:(È2lstm_106/lstm_cell_106/bias
/:-2(2lstm_107/lstm_cell_107/kernel
9:7
(2'lstm_107/lstm_cell_107/recurrent_kernel
):'(2lstm_107/lstm_cell_107/bias
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
2Adam/dense_35/kernel/m
 :2Adam/dense_35/bias/m
5:3	2$Adam/lstm_105/lstm_cell_105/kernel/m
?:=	d2.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m
/:-2"Adam/lstm_105/lstm_cell_105/bias/m
5:3	dÈ2$Adam/lstm_106/lstm_cell_106/kernel/m
?:=	2È2.Adam/lstm_106/lstm_cell_106/recurrent_kernel/m
/:-È2"Adam/lstm_106/lstm_cell_106/bias/m
4:22(2$Adam/lstm_107/lstm_cell_107/kernel/m
>:<
(2.Adam/lstm_107/lstm_cell_107/recurrent_kernel/m
.:,(2"Adam/lstm_107/lstm_cell_107/bias/m
&:$
2Adam/dense_35/kernel/v
 :2Adam/dense_35/bias/v
5:3	2$Adam/lstm_105/lstm_cell_105/kernel/v
?:=	d2.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v
/:-2"Adam/lstm_105/lstm_cell_105/bias/v
5:3	dÈ2$Adam/lstm_106/lstm_cell_106/kernel/v
?:=	2È2.Adam/lstm_106/lstm_cell_106/recurrent_kernel/v
/:-È2"Adam/lstm_106/lstm_cell_106/bias/v
4:22(2$Adam/lstm_107/lstm_cell_107/kernel/v
>:<
(2.Adam/lstm_107/lstm_cell_107/recurrent_kernel/v
.:,(2"Adam/lstm_107/lstm_cell_107/bias/v
2
.__inference_sequential_35_layer_call_fn_177886
.__inference_sequential_35_layer_call_fn_178624
.__inference_sequential_35_layer_call_fn_178651
.__inference_sequential_35_layer_call_fn_178502À
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_179078
I__inference_sequential_35_layer_call_and_return_conditional_losses_179505
I__inference_sequential_35_layer_call_and_return_conditional_losses_178532
I__inference_sequential_35_layer_call_and_return_conditional_losses_178562À
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
!__inference__wrapped_model_176337lstm_105_input"
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
)__inference_lstm_105_layer_call_fn_179516
)__inference_lstm_105_layer_call_fn_179527
)__inference_lstm_105_layer_call_fn_179538
)__inference_lstm_105_layer_call_fn_179549Ġ
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_179692
D__inference_lstm_105_layer_call_and_return_conditional_losses_179835
D__inference_lstm_105_layer_call_and_return_conditional_losses_179978
D__inference_lstm_105_layer_call_and_return_conditional_losses_180121Ġ
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
)__inference_lstm_106_layer_call_fn_180132
)__inference_lstm_106_layer_call_fn_180143
)__inference_lstm_106_layer_call_fn_180154
)__inference_lstm_106_layer_call_fn_180165Ġ
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180308
D__inference_lstm_106_layer_call_and_return_conditional_losses_180451
D__inference_lstm_106_layer_call_and_return_conditional_losses_180594
D__inference_lstm_106_layer_call_and_return_conditional_losses_180737Ġ
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
)__inference_lstm_107_layer_call_fn_180748
)__inference_lstm_107_layer_call_fn_180759
)__inference_lstm_107_layer_call_fn_180770
)__inference_lstm_107_layer_call_fn_180781Ġ
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_180924
D__inference_lstm_107_layer_call_and_return_conditional_losses_181067
D__inference_lstm_107_layer_call_and_return_conditional_losses_181210
D__inference_lstm_107_layer_call_and_return_conditional_losses_181353Ġ
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
)__inference_dense_35_layer_call_fn_181362˘
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
D__inference_dense_35_layer_call_and_return_conditional_losses_181372˘
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
$__inference_signature_wrapper_178597lstm_105_input"
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
-__inference_lstm_cell_27_layer_call_fn_181389
-__inference_lstm_cell_27_layer_call_fn_181406?
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181438
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181470?
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
-__inference_lstm_cell_28_layer_call_fn_181487
-__inference_lstm_cell_28_layer_call_fn_181504?
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181536
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181568?
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
-__inference_lstm_cell_29_layer_call_fn_181585
-__inference_lstm_cell_29_layer_call_fn_181602?
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181634
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181666?
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
!__inference__wrapped_model_176337-./012345!";˘8
1˘.
,)
lstm_105_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_35"
dense_35˙˙˙˙˙˙˙˙˙¤
D__inference_dense_35_layer_call_and_return_conditional_losses_181372\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_35_layer_call_fn_181362O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_105_layer_call_and_return_conditional_losses_179692-./O˘L
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_179835-./O˘L
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_179978q-./?˘<
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
D__inference_lstm_105_layer_call_and_return_conditional_losses_180121q-./?˘<
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
)__inference_lstm_105_layer_call_fn_179516}-./O˘L
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
)__inference_lstm_105_layer_call_fn_179527}-./O˘L
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
)__inference_lstm_105_layer_call_fn_179538d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_105_layer_call_fn_179549d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_106_layer_call_and_return_conditional_losses_180308012O˘L
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180451012O˘L
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180594q012?˘<
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
D__inference_lstm_106_layer_call_and_return_conditional_losses_180737q012?˘<
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
)__inference_lstm_106_layer_call_fn_180132}012O˘L
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
)__inference_lstm_106_layer_call_fn_180143}012O˘L
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
)__inference_lstm_106_layer_call_fn_180154d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_106_layer_call_fn_180165d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_107_layer_call_and_return_conditional_losses_180924}345O˘L
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_181067}345O˘L
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_181210m345?˘<
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
D__inference_lstm_107_layer_call_and_return_conditional_losses_181353m345?˘<
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
)__inference_lstm_107_layer_call_fn_180748p345O˘L
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
)__inference_lstm_107_layer_call_fn_180759p345O˘L
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
)__inference_lstm_107_layer_call_fn_180770`345?˘<
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
)__inference_lstm_107_layer_call_fn_180781`345?˘<
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181438ŭ-./˘}
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
H__inference_lstm_cell_27_layer_call_and_return_conditional_losses_181470ŭ-./˘}
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
-__inference_lstm_cell_27_layer_call_fn_181389í-./˘}
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
-__inference_lstm_cell_27_layer_call_fn_181406í-./˘}
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181536ŭ012˘}
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
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_181568ŭ012˘}
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
-__inference_lstm_cell_28_layer_call_fn_181487í012˘}
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
-__inference_lstm_cell_28_layer_call_fn_181504í012˘}
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181634ŭ345˘}
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
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_181666ŭ345˘}
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
-__inference_lstm_cell_29_layer_call_fn_181585í345˘}
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
-__inference_lstm_cell_29_layer_call_fn_181602í345˘}
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_178532y-./012345!"C˘@
9˘6
,)
lstm_105_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_35_layer_call_and_return_conditional_losses_178562y-./012345!"C˘@
9˘6
,)
lstm_105_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_35_layer_call_and_return_conditional_losses_179078q-./012345!";˘8
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
I__inference_sequential_35_layer_call_and_return_conditional_losses_179505q-./012345!";˘8
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
.__inference_sequential_35_layer_call_fn_177886l-./012345!"C˘@
9˘6
,)
lstm_105_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_35_layer_call_fn_178502l-./012345!"C˘@
9˘6
,)
lstm_105_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_35_layer_call_fn_178624d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_35_layer_call_fn_178651d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_178597-./012345!"M˘J
˘ 
CŞ@
>
lstm_105_input,)
lstm_105_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_35"
dense_35˙˙˙˙˙˙˙˙˙