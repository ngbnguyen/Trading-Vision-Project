¤/
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ĝ -
|
dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_104/kernel
u
$dense_104/kernel/Read/ReadVariableOpReadVariableOpdense_104/kernel*
_output_shapes

:
*
dtype0
t
dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_104/bias
m
"dense_104/bias/Read/ReadVariableOpReadVariableOpdense_104/bias*
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
lstm_312/lstm_cell_312/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_312/lstm_cell_312/kernel

1lstm_312/lstm_cell_312/kernel/Read/ReadVariableOpReadVariableOplstm_312/lstm_cell_312/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_312/lstm_cell_312/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_312/lstm_cell_312/recurrent_kernel
¤
;lstm_312/lstm_cell_312/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_312/lstm_cell_312/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_312/lstm_cell_312/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_312/lstm_cell_312/bias

/lstm_312/lstm_cell_312/bias/Read/ReadVariableOpReadVariableOplstm_312/lstm_cell_312/bias*
_output_shapes	
:*
dtype0

lstm_313/lstm_cell_313/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_313/lstm_cell_313/kernel

1lstm_313/lstm_cell_313/kernel/Read/ReadVariableOpReadVariableOplstm_313/lstm_cell_313/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_313/lstm_cell_313/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_313/lstm_cell_313/recurrent_kernel
¤
;lstm_313/lstm_cell_313/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_313/lstm_cell_313/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_313/lstm_cell_313/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_313/lstm_cell_313/bias

/lstm_313/lstm_cell_313/bias/Read/ReadVariableOpReadVariableOplstm_313/lstm_cell_313/bias*
_output_shapes	
:È*
dtype0

lstm_314/lstm_cell_314/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_314/lstm_cell_314/kernel

1lstm_314/lstm_cell_314/kernel/Read/ReadVariableOpReadVariableOplstm_314/lstm_cell_314/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_314/lstm_cell_314/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_314/lstm_cell_314/recurrent_kernel
£
;lstm_314/lstm_cell_314/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_314/lstm_cell_314/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_314/lstm_cell_314/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_314/lstm_cell_314/bias

/lstm_314/lstm_cell_314/bias/Read/ReadVariableOpReadVariableOplstm_314/lstm_cell_314/bias*
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

Adam/dense_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_104/kernel/m

+Adam/dense_104/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_104/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_104/bias/m
{
)Adam/dense_104/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_104/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_312/lstm_cell_312/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_312/lstm_cell_312/kernel/m

8Adam/lstm_312/lstm_cell_312/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_312/lstm_cell_312/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_312/lstm_cell_312/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_312/lstm_cell_312/recurrent_kernel/m
²
BAdam/lstm_312/lstm_cell_312/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_312/lstm_cell_312/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_312/lstm_cell_312/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_312/lstm_cell_312/bias/m

6Adam/lstm_312/lstm_cell_312/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_312/lstm_cell_312/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_313/lstm_cell_313/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_313/lstm_cell_313/kernel/m

8Adam/lstm_313/lstm_cell_313/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_313/lstm_cell_313/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_313/lstm_cell_313/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_313/lstm_cell_313/recurrent_kernel/m
²
BAdam/lstm_313/lstm_cell_313/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_313/lstm_cell_313/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_313/lstm_cell_313/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_313/lstm_cell_313/bias/m

6Adam/lstm_313/lstm_cell_313/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_313/lstm_cell_313/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_314/lstm_cell_314/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_314/lstm_cell_314/kernel/m

8Adam/lstm_314/lstm_cell_314/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_314/lstm_cell_314/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_314/lstm_cell_314/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_314/lstm_cell_314/recurrent_kernel/m
ħ
BAdam/lstm_314/lstm_cell_314/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_314/lstm_cell_314/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_314/lstm_cell_314/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_314/lstm_cell_314/bias/m

6Adam/lstm_314/lstm_cell_314/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_314/lstm_cell_314/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_104/kernel/v

+Adam/dense_104/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_104/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_104/bias/v
{
)Adam/dense_104/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_104/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_312/lstm_cell_312/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_312/lstm_cell_312/kernel/v

8Adam/lstm_312/lstm_cell_312/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_312/lstm_cell_312/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_312/lstm_cell_312/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_312/lstm_cell_312/recurrent_kernel/v
²
BAdam/lstm_312/lstm_cell_312/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_312/lstm_cell_312/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_312/lstm_cell_312/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_312/lstm_cell_312/bias/v

6Adam/lstm_312/lstm_cell_312/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_312/lstm_cell_312/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_313/lstm_cell_313/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_313/lstm_cell_313/kernel/v

8Adam/lstm_313/lstm_cell_313/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_313/lstm_cell_313/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_313/lstm_cell_313/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_313/lstm_cell_313/recurrent_kernel/v
²
BAdam/lstm_313/lstm_cell_313/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_313/lstm_cell_313/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_313/lstm_cell_313/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_313/lstm_cell_313/bias/v

6Adam/lstm_313/lstm_cell_313/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_313/lstm_cell_313/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_314/lstm_cell_314/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_314/lstm_cell_314/kernel/v

8Adam/lstm_314/lstm_cell_314/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_314/lstm_cell_314/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_314/lstm_cell_314/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_314/lstm_cell_314/recurrent_kernel/v
ħ
BAdam/lstm_314/lstm_cell_314/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_314/lstm_cell_314/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_314/lstm_cell_314/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_314/lstm_cell_314/bias/v

6Adam/lstm_314/lstm_cell_314/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_314/lstm_cell_314/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ċA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* A
valueABA BA
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
\Z
VARIABLE_VALUEdense_104/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_104/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_312/lstm_cell_312/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_312/lstm_cell_312/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_312/lstm_cell_312/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_313/lstm_cell_313/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_313/lstm_cell_313/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_313/lstm_cell_313/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_314/lstm_cell_314/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_314/lstm_cell_314/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_314/lstm_cell_314/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_104/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_104/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_312/lstm_cell_312/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_312/lstm_cell_312/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_312/lstm_cell_312/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_313/lstm_cell_313/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_313/lstm_cell_313/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_313/lstm_cell_313/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_314/lstm_cell_314/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_314/lstm_cell_314/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_314/lstm_cell_314/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_104/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_104/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_312/lstm_cell_312/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_312/lstm_cell_312/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_312/lstm_cell_312/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_313/lstm_cell_313/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_313/lstm_cell_313/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_313/lstm_cell_313/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_314/lstm_cell_314/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_314/lstm_cell_314/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_314/lstm_cell_314/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_312_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_312_inputlstm_312/lstm_cell_312/kernel'lstm_312/lstm_cell_312/recurrent_kernellstm_312/lstm_cell_312/biaslstm_313/lstm_cell_313/kernel'lstm_313/lstm_cell_313/recurrent_kernellstm_313/lstm_cell_313/biaslstm_314/lstm_cell_314/kernel'lstm_314/lstm_cell_314/recurrent_kernellstm_314/lstm_cell_314/biasdense_104/kerneldense_104/bias*
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
$__inference_signature_wrapper_504900
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_104/kernel/Read/ReadVariableOp"dense_104/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_312/lstm_cell_312/kernel/Read/ReadVariableOp;lstm_312/lstm_cell_312/recurrent_kernel/Read/ReadVariableOp/lstm_312/lstm_cell_312/bias/Read/ReadVariableOp1lstm_313/lstm_cell_313/kernel/Read/ReadVariableOp;lstm_313/lstm_cell_313/recurrent_kernel/Read/ReadVariableOp/lstm_313/lstm_cell_313/bias/Read/ReadVariableOp1lstm_314/lstm_cell_314/kernel/Read/ReadVariableOp;lstm_314/lstm_cell_314/recurrent_kernel/Read/ReadVariableOp/lstm_314/lstm_cell_314/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_104/kernel/m/Read/ReadVariableOp)Adam/dense_104/bias/m/Read/ReadVariableOp8Adam/lstm_312/lstm_cell_312/kernel/m/Read/ReadVariableOpBAdam/lstm_312/lstm_cell_312/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_312/lstm_cell_312/bias/m/Read/ReadVariableOp8Adam/lstm_313/lstm_cell_313/kernel/m/Read/ReadVariableOpBAdam/lstm_313/lstm_cell_313/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_313/lstm_cell_313/bias/m/Read/ReadVariableOp8Adam/lstm_314/lstm_cell_314/kernel/m/Read/ReadVariableOpBAdam/lstm_314/lstm_cell_314/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_314/lstm_cell_314/bias/m/Read/ReadVariableOp+Adam/dense_104/kernel/v/Read/ReadVariableOp)Adam/dense_104/bias/v/Read/ReadVariableOp8Adam/lstm_312/lstm_cell_312/kernel/v/Read/ReadVariableOpBAdam/lstm_312/lstm_cell_312/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_312/lstm_cell_312/bias/v/Read/ReadVariableOp8Adam/lstm_313/lstm_cell_313/kernel/v/Read/ReadVariableOpBAdam/lstm_313/lstm_cell_313/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_313/lstm_cell_313/bias/v/Read/ReadVariableOp8Adam/lstm_314/lstm_cell_314/kernel/v/Read/ReadVariableOpBAdam/lstm_314/lstm_cell_314/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_314/lstm_cell_314/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_508112

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_104/kerneldense_104/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_312/lstm_cell_312/kernel'lstm_312/lstm_cell_312/recurrent_kernellstm_312/lstm_cell_312/biaslstm_313/lstm_cell_313/kernel'lstm_313/lstm_cell_313/recurrent_kernellstm_313/lstm_cell_313/biaslstm_314/lstm_cell_314/kernel'lstm_314/lstm_cell_314/recurrent_kernellstm_314/lstm_cell_314/biastotalcountAdam/dense_104/kernel/mAdam/dense_104/bias/m$Adam/lstm_312/lstm_cell_312/kernel/m.Adam/lstm_312/lstm_cell_312/recurrent_kernel/m"Adam/lstm_312/lstm_cell_312/bias/m$Adam/lstm_313/lstm_cell_313/kernel/m.Adam/lstm_313/lstm_cell_313/recurrent_kernel/m"Adam/lstm_313/lstm_cell_313/bias/m$Adam/lstm_314/lstm_cell_314/kernel/m.Adam/lstm_314/lstm_cell_314/recurrent_kernel/m"Adam/lstm_314/lstm_cell_314/bias/mAdam/dense_104/kernel/vAdam/dense_104/bias/v$Adam/lstm_312/lstm_cell_312/kernel/v.Adam/lstm_312/lstm_cell_312/recurrent_kernel/v"Adam/lstm_312/lstm_cell_312/bias/v$Adam/lstm_313/lstm_cell_313/kernel/v.Adam/lstm_313/lstm_cell_313/recurrent_kernel/v"Adam/lstm_313/lstm_cell_313/bias/v$Adam/lstm_314/lstm_cell_314/kernel/v.Adam/lstm_314/lstm_cell_314/recurrent_kernel/v"Adam/lstm_314/lstm_cell_314/bias/v*4
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
"__inference__traced_restore_508242ĜÜ+
ÎB
ê

lstm_314_while_body_505291.
*lstm_314_while_lstm_314_while_loop_counter4
0lstm_314_while_lstm_314_while_maximum_iterations
lstm_314_while_placeholder 
lstm_314_while_placeholder_1 
lstm_314_while_placeholder_2 
lstm_314_while_placeholder_3-
)lstm_314_while_lstm_314_strided_slice_1_0i
elstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0:2(P
>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(K
=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0:(
lstm_314_while_identity
lstm_314_while_identity_1
lstm_314_while_identity_2
lstm_314_while_identity_3
lstm_314_while_identity_4
lstm_314_while_identity_5+
'lstm_314_while_lstm_314_strided_slice_1g
clstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensorL
:lstm_314_while_lstm_cell_83_matmul_readvariableop_resource:2(N
<lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource:
(I
;lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource:(˘2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp˘1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp˘3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp
@lstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_314/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0lstm_314_while_placeholderIlstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_314/while/lstm_cell_83/MatMulMatMul9lstm_314/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_314/while/lstm_cell_83/MatMul_1MatMullstm_314_while_placeholder_2;lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_314/while/lstm_cell_83/addAddV2,lstm_314/while/lstm_cell_83/MatMul:product:0.lstm_314/while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_314/while/lstm_cell_83/BiasAddBiasAdd#lstm_314/while/lstm_cell_83/add:z:0:lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_314/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_314/while/lstm_cell_83/splitSplit4lstm_314/while/lstm_cell_83/split/split_dim:output:0,lstm_314/while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_314/while/lstm_cell_83/SigmoidSigmoid*lstm_314/while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_314/while/lstm_cell_83/Sigmoid_1Sigmoid*lstm_314/while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_314/while/lstm_cell_83/mulMul)lstm_314/while/lstm_cell_83/Sigmoid_1:y:0lstm_314_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_314/while/lstm_cell_83/ReluRelu*lstm_314/while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_314/while/lstm_cell_83/mul_1Mul'lstm_314/while/lstm_cell_83/Sigmoid:y:0.lstm_314/while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_314/while/lstm_cell_83/add_1AddV2#lstm_314/while/lstm_cell_83/mul:z:0%lstm_314/while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_314/while/lstm_cell_83/Sigmoid_2Sigmoid*lstm_314/while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_314/while/lstm_cell_83/Relu_1Relu%lstm_314/while/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_314/while/lstm_cell_83/mul_2Mul)lstm_314/while/lstm_cell_83/Sigmoid_2:y:00lstm_314/while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_314/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_314_while_placeholder_1lstm_314_while_placeholder%lstm_314/while/lstm_cell_83/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_314/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_314/while/addAddV2lstm_314_while_placeholderlstm_314/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_314/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_314/while/add_1AddV2*lstm_314_while_lstm_314_while_loop_counterlstm_314/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_314/while/IdentityIdentitylstm_314/while/add_1:z:0^lstm_314/while/NoOp*
T0*
_output_shapes
: 
lstm_314/while/Identity_1Identity0lstm_314_while_lstm_314_while_maximum_iterations^lstm_314/while/NoOp*
T0*
_output_shapes
: t
lstm_314/while/Identity_2Identitylstm_314/while/add:z:0^lstm_314/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_314/while/Identity_3IdentityClstm_314/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_314/while/NoOp*
T0*
_output_shapes
: 
lstm_314/while/Identity_4Identity%lstm_314/while/lstm_cell_83/mul_2:z:0^lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/while/Identity_5Identity%lstm_314/while/lstm_cell_83/add_1:z:0^lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_314/while/NoOpNoOp3^lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2^lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp4^lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_314_while_identity lstm_314/while/Identity:output:0"?
lstm_314_while_identity_1"lstm_314/while/Identity_1:output:0"?
lstm_314_while_identity_2"lstm_314/while/Identity_2:output:0"?
lstm_314_while_identity_3"lstm_314/while/Identity_3:output:0"?
lstm_314_while_identity_4"lstm_314/while/Identity_4:output:0"?
lstm_314_while_identity_5"lstm_314/while/Identity_5:output:0"T
'lstm_314_while_lstm_314_strided_slice_1)lstm_314_while_lstm_314_strided_slice_1_0"|
;lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0"~
<lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0"z
:lstm_314_while_lstm_cell_83_matmul_readvariableop_resource<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0"Ì
clstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensorelstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2f
1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp2j
3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_506054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_503261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503261___redundant_placeholder04
0while_while_cond_503261___redundant_placeholder14
0while_while_cond_503261___redundant_placeholder24
0while_while_cond_503261___redundant_placeholder3
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503203

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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503989

inputs>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_503905*
condR
while_cond_503904*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĥT
Ô
)sequential_104_lstm_313_while_body_502411L
Hsequential_104_lstm_313_while_sequential_104_lstm_313_while_loop_counterR
Nsequential_104_lstm_313_while_sequential_104_lstm_313_while_maximum_iterations-
)sequential_104_lstm_313_while_placeholder/
+sequential_104_lstm_313_while_placeholder_1/
+sequential_104_lstm_313_while_placeholder_2/
+sequential_104_lstm_313_while_placeholder_3K
Gsequential_104_lstm_313_while_sequential_104_lstm_313_strided_slice_1_0
sequential_104_lstm_313_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_313_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_104_lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈ`
Msequential_104_lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2È[
Lsequential_104_lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0:	È*
&sequential_104_lstm_313_while_identity,
(sequential_104_lstm_313_while_identity_1,
(sequential_104_lstm_313_while_identity_2,
(sequential_104_lstm_313_while_identity_3,
(sequential_104_lstm_313_while_identity_4,
(sequential_104_lstm_313_while_identity_5I
Esequential_104_lstm_313_while_sequential_104_lstm_313_strided_slice_1
sequential_104_lstm_313_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_313_tensorarrayunstack_tensorlistfromtensor\
Isequential_104_lstm_313_while_lstm_cell_82_matmul_readvariableop_resource:	dÈ^
Ksequential_104_lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈY
Jsequential_104_lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource:	È˘Asequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp˘@sequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp˘Bsequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp 
Osequential_104/lstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_104/lstm_313/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_104_lstm_313_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_313_tensorarrayunstack_tensorlistfromtensor_0)sequential_104_lstm_313_while_placeholderXsequential_104/lstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOpKsequential_104_lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_104/lstm_313/while/lstm_cell_82/MatMulMatMulHsequential_104/lstm_313/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOpMsequential_104_lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_104/lstm_313/while/lstm_cell_82/MatMul_1MatMul+sequential_104_lstm_313_while_placeholder_2Jsequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_104/lstm_313/while/lstm_cell_82/addAddV2;sequential_104/lstm_313/while/lstm_cell_82/MatMul:product:0=sequential_104/lstm_313/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOpLsequential_104_lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_104/lstm_313/while/lstm_cell_82/BiasAddBiasAdd2sequential_104/lstm_313/while/lstm_cell_82/add:z:0Isequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_104/lstm_313/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_104/lstm_313/while/lstm_cell_82/splitSplitCsequential_104/lstm_313/while/lstm_cell_82/split/split_dim:output:0;sequential_104/lstm_313/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_104/lstm_313/while/lstm_cell_82/SigmoidSigmoid9sequential_104/lstm_313/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_104/lstm_313/while/lstm_cell_82/Sigmoid_1Sigmoid9sequential_104/lstm_313/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_104/lstm_313/while/lstm_cell_82/mulMul8sequential_104/lstm_313/while/lstm_cell_82/Sigmoid_1:y:0+sequential_104_lstm_313_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_104/lstm_313/while/lstm_cell_82/ReluRelu9sequential_104/lstm_313/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_104/lstm_313/while/lstm_cell_82/mul_1Mul6sequential_104/lstm_313/while/lstm_cell_82/Sigmoid:y:0=sequential_104/lstm_313/while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_104/lstm_313/while/lstm_cell_82/add_1AddV22sequential_104/lstm_313/while/lstm_cell_82/mul:z:04sequential_104/lstm_313/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_104/lstm_313/while/lstm_cell_82/Sigmoid_2Sigmoid9sequential_104/lstm_313/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_104/lstm_313/while/lstm_cell_82/Relu_1Relu4sequential_104/lstm_313/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_104/lstm_313/while/lstm_cell_82/mul_2Mul8sequential_104/lstm_313/while/lstm_cell_82/Sigmoid_2:y:0?sequential_104/lstm_313/while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_104/lstm_313/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_104_lstm_313_while_placeholder_1)sequential_104_lstm_313_while_placeholder4sequential_104/lstm_313/while/lstm_cell_82/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_104/lstm_313/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_104/lstm_313/while/addAddV2)sequential_104_lstm_313_while_placeholder,sequential_104/lstm_313/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_104/lstm_313/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_104/lstm_313/while/add_1AddV2Hsequential_104_lstm_313_while_sequential_104_lstm_313_while_loop_counter.sequential_104/lstm_313/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_104/lstm_313/while/IdentityIdentity'sequential_104/lstm_313/while/add_1:z:0#^sequential_104/lstm_313/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_104/lstm_313/while/Identity_1IdentityNsequential_104_lstm_313_while_sequential_104_lstm_313_while_maximum_iterations#^sequential_104/lstm_313/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_104/lstm_313/while/Identity_2Identity%sequential_104/lstm_313/while/add:z:0#^sequential_104/lstm_313/while/NoOp*
T0*
_output_shapes
: Î
(sequential_104/lstm_313/while/Identity_3IdentityRsequential_104/lstm_313/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_104/lstm_313/while/NoOp*
T0*
_output_shapes
: Á
(sequential_104/lstm_313/while/Identity_4Identity4sequential_104/lstm_313/while/lstm_cell_82/mul_2:z:0#^sequential_104/lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_104/lstm_313/while/Identity_5Identity4sequential_104/lstm_313/while/lstm_cell_82/add_1:z:0#^sequential_104/lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_104/lstm_313/while/NoOpNoOpB^sequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOpA^sequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOpC^sequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_104_lstm_313_while_identity/sequential_104/lstm_313/while/Identity:output:0"]
(sequential_104_lstm_313_while_identity_11sequential_104/lstm_313/while/Identity_1:output:0"]
(sequential_104_lstm_313_while_identity_21sequential_104/lstm_313/while/Identity_2:output:0"]
(sequential_104_lstm_313_while_identity_31sequential_104/lstm_313/while/Identity_3:output:0"]
(sequential_104_lstm_313_while_identity_41sequential_104/lstm_313/while/Identity_4:output:0"]
(sequential_104_lstm_313_while_identity_51sequential_104/lstm_313/while/Identity_5:output:0"
Jsequential_104_lstm_313_while_lstm_cell_82_biasadd_readvariableop_resourceLsequential_104_lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0"
Ksequential_104_lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resourceMsequential_104_lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0"
Isequential_104_lstm_313_while_lstm_cell_82_matmul_readvariableop_resourceKsequential_104_lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0"
Esequential_104_lstm_313_while_sequential_104_lstm_313_strided_slice_1Gsequential_104_lstm_313_while_sequential_104_lstm_313_strided_slice_1_0"
sequential_104_lstm_313_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_313_tensorarrayunstack_tensorlistfromtensorsequential_104_lstm_313_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_313_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOpAsequential_104/lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2
@sequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp@sequential_104/lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp2
Bsequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOpBsequential_104/lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
İT
Î
)sequential_104_lstm_314_while_body_502550L
Hsequential_104_lstm_314_while_sequential_104_lstm_314_while_loop_counterR
Nsequential_104_lstm_314_while_sequential_104_lstm_314_while_maximum_iterations-
)sequential_104_lstm_314_while_placeholder/
+sequential_104_lstm_314_while_placeholder_1/
+sequential_104_lstm_314_while_placeholder_2/
+sequential_104_lstm_314_while_placeholder_3K
Gsequential_104_lstm_314_while_sequential_104_lstm_314_strided_slice_1_0
sequential_104_lstm_314_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_314_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_104_lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0:2(_
Msequential_104_lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(Z
Lsequential_104_lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0:(*
&sequential_104_lstm_314_while_identity,
(sequential_104_lstm_314_while_identity_1,
(sequential_104_lstm_314_while_identity_2,
(sequential_104_lstm_314_while_identity_3,
(sequential_104_lstm_314_while_identity_4,
(sequential_104_lstm_314_while_identity_5I
Esequential_104_lstm_314_while_sequential_104_lstm_314_strided_slice_1
sequential_104_lstm_314_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_314_tensorarrayunstack_tensorlistfromtensor[
Isequential_104_lstm_314_while_lstm_cell_83_matmul_readvariableop_resource:2(]
Ksequential_104_lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource:
(X
Jsequential_104_lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource:(˘Asequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp˘@sequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp˘Bsequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp 
Osequential_104/lstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_104/lstm_314/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_104_lstm_314_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_314_tensorarrayunstack_tensorlistfromtensor_0)sequential_104_lstm_314_while_placeholderXsequential_104/lstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOpKsequential_104_lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_104/lstm_314/while/lstm_cell_83/MatMulMatMulHsequential_104/lstm_314/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOpMsequential_104_lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_104/lstm_314/while/lstm_cell_83/MatMul_1MatMul+sequential_104_lstm_314_while_placeholder_2Jsequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_104/lstm_314/while/lstm_cell_83/addAddV2;sequential_104/lstm_314/while/lstm_cell_83/MatMul:product:0=sequential_104/lstm_314/while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOpLsequential_104_lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_104/lstm_314/while/lstm_cell_83/BiasAddBiasAdd2sequential_104/lstm_314/while/lstm_cell_83/add:z:0Isequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_104/lstm_314/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_104/lstm_314/while/lstm_cell_83/splitSplitCsequential_104/lstm_314/while/lstm_cell_83/split/split_dim:output:0;sequential_104/lstm_314/while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_104/lstm_314/while/lstm_cell_83/SigmoidSigmoid9sequential_104/lstm_314/while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_104/lstm_314/while/lstm_cell_83/Sigmoid_1Sigmoid9sequential_104/lstm_314/while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_104/lstm_314/while/lstm_cell_83/mulMul8sequential_104/lstm_314/while/lstm_cell_83/Sigmoid_1:y:0+sequential_104_lstm_314_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_104/lstm_314/while/lstm_cell_83/ReluRelu9sequential_104/lstm_314/while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_104/lstm_314/while/lstm_cell_83/mul_1Mul6sequential_104/lstm_314/while/lstm_cell_83/Sigmoid:y:0=sequential_104/lstm_314/while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_104/lstm_314/while/lstm_cell_83/add_1AddV22sequential_104/lstm_314/while/lstm_cell_83/mul:z:04sequential_104/lstm_314/while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_104/lstm_314/while/lstm_cell_83/Sigmoid_2Sigmoid9sequential_104/lstm_314/while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_104/lstm_314/while/lstm_cell_83/Relu_1Relu4sequential_104/lstm_314/while/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_104/lstm_314/while/lstm_cell_83/mul_2Mul8sequential_104/lstm_314/while/lstm_cell_83/Sigmoid_2:y:0?sequential_104/lstm_314/while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_104/lstm_314/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_104_lstm_314_while_placeholder_1)sequential_104_lstm_314_while_placeholder4sequential_104/lstm_314/while/lstm_cell_83/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_104/lstm_314/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_104/lstm_314/while/addAddV2)sequential_104_lstm_314_while_placeholder,sequential_104/lstm_314/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_104/lstm_314/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_104/lstm_314/while/add_1AddV2Hsequential_104_lstm_314_while_sequential_104_lstm_314_while_loop_counter.sequential_104/lstm_314/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_104/lstm_314/while/IdentityIdentity'sequential_104/lstm_314/while/add_1:z:0#^sequential_104/lstm_314/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_104/lstm_314/while/Identity_1IdentityNsequential_104_lstm_314_while_sequential_104_lstm_314_while_maximum_iterations#^sequential_104/lstm_314/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_104/lstm_314/while/Identity_2Identity%sequential_104/lstm_314/while/add:z:0#^sequential_104/lstm_314/while/NoOp*
T0*
_output_shapes
: Î
(sequential_104/lstm_314/while/Identity_3IdentityRsequential_104/lstm_314/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_104/lstm_314/while/NoOp*
T0*
_output_shapes
: Á
(sequential_104/lstm_314/while/Identity_4Identity4sequential_104/lstm_314/while/lstm_cell_83/mul_2:z:0#^sequential_104/lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_104/lstm_314/while/Identity_5Identity4sequential_104/lstm_314/while/lstm_cell_83/add_1:z:0#^sequential_104/lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_104/lstm_314/while/NoOpNoOpB^sequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOpA^sequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOpC^sequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_104_lstm_314_while_identity/sequential_104/lstm_314/while/Identity:output:0"]
(sequential_104_lstm_314_while_identity_11sequential_104/lstm_314/while/Identity_1:output:0"]
(sequential_104_lstm_314_while_identity_21sequential_104/lstm_314/while/Identity_2:output:0"]
(sequential_104_lstm_314_while_identity_31sequential_104/lstm_314/while/Identity_3:output:0"]
(sequential_104_lstm_314_while_identity_41sequential_104/lstm_314/while/Identity_4:output:0"]
(sequential_104_lstm_314_while_identity_51sequential_104/lstm_314/while/Identity_5:output:0"
Jsequential_104_lstm_314_while_lstm_cell_83_biasadd_readvariableop_resourceLsequential_104_lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0"
Ksequential_104_lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resourceMsequential_104_lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0"
Isequential_104_lstm_314_while_lstm_cell_83_matmul_readvariableop_resourceKsequential_104_lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0"
Esequential_104_lstm_314_while_sequential_104_lstm_314_strided_slice_1Gsequential_104_lstm_314_while_sequential_104_lstm_314_strided_slice_1_0"
sequential_104_lstm_314_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_314_tensorarrayunstack_tensorlistfromtensorsequential_104_lstm_314_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_314_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOpAsequential_104/lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2
@sequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp@sequential_104/lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp2
Bsequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOpBsequential_104/lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_313_while_cond_505578.
*lstm_313_while_lstm_313_while_loop_counter4
0lstm_313_while_lstm_313_while_maximum_iterations
lstm_313_while_placeholder 
lstm_313_while_placeholder_1 
lstm_313_while_placeholder_2 
lstm_313_while_placeholder_30
,lstm_313_while_less_lstm_313_strided_slice_1F
Blstm_313_while_lstm_313_while_cond_505578___redundant_placeholder0F
Blstm_313_while_lstm_313_while_cond_505578___redundant_placeholder1F
Blstm_313_while_lstm_313_while_cond_505578___redundant_placeholder2F
Blstm_313_while_lstm_313_while_cond_505578___redundant_placeholder3
lstm_313_while_identity

lstm_313/while/LessLesslstm_313_while_placeholder,lstm_313_while_less_lstm_313_strided_slice_1*
T0*
_output_shapes
: ]
lstm_313/while/IdentityIdentitylstm_313/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_313_while_identity lstm_313/while/Identity:output:0*(
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

lstm_314_while_body_505718.
*lstm_314_while_lstm_314_while_loop_counter4
0lstm_314_while_lstm_314_while_maximum_iterations
lstm_314_while_placeholder 
lstm_314_while_placeholder_1 
lstm_314_while_placeholder_2 
lstm_314_while_placeholder_3-
)lstm_314_while_lstm_314_strided_slice_1_0i
elstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0:2(P
>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(K
=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0:(
lstm_314_while_identity
lstm_314_while_identity_1
lstm_314_while_identity_2
lstm_314_while_identity_3
lstm_314_while_identity_4
lstm_314_while_identity_5+
'lstm_314_while_lstm_314_strided_slice_1g
clstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensorL
:lstm_314_while_lstm_cell_83_matmul_readvariableop_resource:2(N
<lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource:
(I
;lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource:(˘2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp˘1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp˘3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp
@lstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_314/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0lstm_314_while_placeholderIlstm_314/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_314/while/lstm_cell_83/MatMulMatMul9lstm_314/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_314/while/lstm_cell_83/MatMul_1MatMullstm_314_while_placeholder_2;lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_314/while/lstm_cell_83/addAddV2,lstm_314/while/lstm_cell_83/MatMul:product:0.lstm_314/while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_314/while/lstm_cell_83/BiasAddBiasAdd#lstm_314/while/lstm_cell_83/add:z:0:lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_314/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_314/while/lstm_cell_83/splitSplit4lstm_314/while/lstm_cell_83/split/split_dim:output:0,lstm_314/while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_314/while/lstm_cell_83/SigmoidSigmoid*lstm_314/while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_314/while/lstm_cell_83/Sigmoid_1Sigmoid*lstm_314/while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_314/while/lstm_cell_83/mulMul)lstm_314/while/lstm_cell_83/Sigmoid_1:y:0lstm_314_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_314/while/lstm_cell_83/ReluRelu*lstm_314/while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_314/while/lstm_cell_83/mul_1Mul'lstm_314/while/lstm_cell_83/Sigmoid:y:0.lstm_314/while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_314/while/lstm_cell_83/add_1AddV2#lstm_314/while/lstm_cell_83/mul:z:0%lstm_314/while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_314/while/lstm_cell_83/Sigmoid_2Sigmoid*lstm_314/while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_314/while/lstm_cell_83/Relu_1Relu%lstm_314/while/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_314/while/lstm_cell_83/mul_2Mul)lstm_314/while/lstm_cell_83/Sigmoid_2:y:00lstm_314/while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_314/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_314_while_placeholder_1lstm_314_while_placeholder%lstm_314/while/lstm_cell_83/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_314/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_314/while/addAddV2lstm_314_while_placeholderlstm_314/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_314/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_314/while/add_1AddV2*lstm_314_while_lstm_314_while_loop_counterlstm_314/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_314/while/IdentityIdentitylstm_314/while/add_1:z:0^lstm_314/while/NoOp*
T0*
_output_shapes
: 
lstm_314/while/Identity_1Identity0lstm_314_while_lstm_314_while_maximum_iterations^lstm_314/while/NoOp*
T0*
_output_shapes
: t
lstm_314/while/Identity_2Identitylstm_314/while/add:z:0^lstm_314/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_314/while/Identity_3IdentityClstm_314/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_314/while/NoOp*
T0*
_output_shapes
: 
lstm_314/while/Identity_4Identity%lstm_314/while/lstm_cell_83/mul_2:z:0^lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/while/Identity_5Identity%lstm_314/while/lstm_cell_83/add_1:z:0^lstm_314/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_314/while/NoOpNoOp3^lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2^lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp4^lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_314_while_identity lstm_314/while/Identity:output:0"?
lstm_314_while_identity_1"lstm_314/while/Identity_1:output:0"?
lstm_314_while_identity_2"lstm_314/while/Identity_2:output:0"?
lstm_314_while_identity_3"lstm_314/while/Identity_3:output:0"?
lstm_314_while_identity_4"lstm_314/while/Identity_4:output:0"?
lstm_314_while_identity_5"lstm_314/while/Identity_5:output:0"T
'lstm_314_while_lstm_314_strided_slice_1)lstm_314_while_lstm_314_strided_slice_1_0"|
;lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource=lstm_314_while_lstm_cell_83_biasadd_readvariableop_resource_0"~
<lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource>lstm_314_while_lstm_cell_83_matmul_1_readvariableop_resource_0"z
:lstm_314_while_lstm_cell_83_matmul_readvariableop_resource<lstm_314_while_lstm_cell_83_matmul_readvariableop_resource_0"Ì
clstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensorelstm_314_while_tensorarrayv2read_tensorlistgetitem_lstm_314_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2lstm_314/while/lstm_cell_83/BiasAdd/ReadVariableOp2f
1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp1lstm_314/while/lstm_cell_83/MatMul/ReadVariableOp2j
3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp3lstm_314/while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_506281

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_506197*
condR
while_cond_506196*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502853

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
while_cond_507428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_507428___redundant_placeholder04
0while_while_cond_507428___redundant_placeholder14
0while_while_cond_507428___redundant_placeholder24
0while_while_cond_507428___redundant_placeholder3
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
È	
ö
E__inference_dense_104_layer_call_and_return_conditional_losses_504157

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
è
ó
-__inference_lstm_cell_83_layer_call_fn_507888

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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503407o
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
while_body_503755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ô

£
/__inference_sequential_104_layer_call_fn_504805
lstm_312_input
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
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_104_layer_call_and_return_conditional_losses_504753o
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
_user_specified_namelstm_312_input
ĉ"
?
while_body_502912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_81_502936_0:	.
while_lstm_cell_81_502938_0:	d*
while_lstm_cell_81_502940_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_81_502936:	,
while_lstm_cell_81_502938:	d(
while_lstm_cell_81_502940:	˘*while/lstm_cell_81/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_81_502936_0while_lstm_cell_81_502938_0while_lstm_cell_81_502940_0*
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502853Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_81/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_81/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_81/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_81/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_81_502936while_lstm_cell_81_502936_0"8
while_lstm_cell_81_502938while_lstm_cell_81_502938_0"8
while_lstm_cell_81_502940while_lstm_cell_81_502940_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_81/StatefulPartitionedCall*while/lstm_cell_81/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_312_while_body_505013.
*lstm_312_while_lstm_312_while_loop_counter4
0lstm_312_while_lstm_312_while_maximum_iterations
lstm_312_while_placeholder 
lstm_312_while_placeholder_1 
lstm_312_while_placeholder_2 
lstm_312_while_placeholder_3-
)lstm_312_while_lstm_312_strided_slice_1_0i
elstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0:	Q
>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dL
=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0:	
lstm_312_while_identity
lstm_312_while_identity_1
lstm_312_while_identity_2
lstm_312_while_identity_3
lstm_312_while_identity_4
lstm_312_while_identity_5+
'lstm_312_while_lstm_312_strided_slice_1g
clstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensorM
:lstm_312_while_lstm_cell_81_matmul_readvariableop_resource:	O
<lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource:	dJ
;lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource:	˘2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp˘1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp˘3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp
@lstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_312/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0lstm_312_while_placeholderIlstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_312/while/lstm_cell_81/MatMulMatMul9lstm_312/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_312/while/lstm_cell_81/MatMul_1MatMullstm_312_while_placeholder_2;lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_312/while/lstm_cell_81/addAddV2,lstm_312/while/lstm_cell_81/MatMul:product:0.lstm_312/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_312/while/lstm_cell_81/BiasAddBiasAdd#lstm_312/while/lstm_cell_81/add:z:0:lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_312/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_312/while/lstm_cell_81/splitSplit4lstm_312/while/lstm_cell_81/split/split_dim:output:0,lstm_312/while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_312/while/lstm_cell_81/SigmoidSigmoid*lstm_312/while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_312/while/lstm_cell_81/Sigmoid_1Sigmoid*lstm_312/while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_312/while/lstm_cell_81/mulMul)lstm_312/while/lstm_cell_81/Sigmoid_1:y:0lstm_312_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_312/while/lstm_cell_81/ReluRelu*lstm_312/while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_312/while/lstm_cell_81/mul_1Mul'lstm_312/while/lstm_cell_81/Sigmoid:y:0.lstm_312/while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_312/while/lstm_cell_81/add_1AddV2#lstm_312/while/lstm_cell_81/mul:z:0%lstm_312/while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_312/while/lstm_cell_81/Sigmoid_2Sigmoid*lstm_312/while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_312/while/lstm_cell_81/Relu_1Relu%lstm_312/while/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_312/while/lstm_cell_81/mul_2Mul)lstm_312/while/lstm_cell_81/Sigmoid_2:y:00lstm_312/while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_312/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_312_while_placeholder_1lstm_312_while_placeholder%lstm_312/while/lstm_cell_81/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_312/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_312/while/addAddV2lstm_312_while_placeholderlstm_312/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_312/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_312/while/add_1AddV2*lstm_312_while_lstm_312_while_loop_counterlstm_312/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_312/while/IdentityIdentitylstm_312/while/add_1:z:0^lstm_312/while/NoOp*
T0*
_output_shapes
: 
lstm_312/while/Identity_1Identity0lstm_312_while_lstm_312_while_maximum_iterations^lstm_312/while/NoOp*
T0*
_output_shapes
: t
lstm_312/while/Identity_2Identitylstm_312/while/add:z:0^lstm_312/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_312/while/Identity_3IdentityClstm_312/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_312/while/NoOp*
T0*
_output_shapes
: 
lstm_312/while/Identity_4Identity%lstm_312/while/lstm_cell_81/mul_2:z:0^lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/while/Identity_5Identity%lstm_312/while/lstm_cell_81/add_1:z:0^lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_312/while/NoOpNoOp3^lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2^lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp4^lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_312_while_identity lstm_312/while/Identity:output:0"?
lstm_312_while_identity_1"lstm_312/while/Identity_1:output:0"?
lstm_312_while_identity_2"lstm_312/while/Identity_2:output:0"?
lstm_312_while_identity_3"lstm_312/while/Identity_3:output:0"?
lstm_312_while_identity_4"lstm_312/while/Identity_4:output:0"?
lstm_312_while_identity_5"lstm_312/while/Identity_5:output:0"T
'lstm_312_while_lstm_312_strided_slice_1)lstm_312_while_lstm_312_strided_slice_1_0"|
;lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0"~
<lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0"z
:lstm_312_while_lstm_cell_81_matmul_readvariableop_resource<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0"Ì
clstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensorelstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2f
1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp2j
3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_507571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_507571___redundant_placeholder04
0while_while_cond_507571___redundant_placeholder14
0while_while_cond_507571___redundant_placeholder24
0while_while_cond_507571___redundant_placeholder3
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_507040

inputs>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_506956*
condR
while_cond_506955*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_506197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĥT
Ô
)sequential_104_lstm_312_while_body_502272L
Hsequential_104_lstm_312_while_sequential_104_lstm_312_while_loop_counterR
Nsequential_104_lstm_312_while_sequential_104_lstm_312_while_maximum_iterations-
)sequential_104_lstm_312_while_placeholder/
+sequential_104_lstm_312_while_placeholder_1/
+sequential_104_lstm_312_while_placeholder_2/
+sequential_104_lstm_312_while_placeholder_3K
Gsequential_104_lstm_312_while_sequential_104_lstm_312_strided_slice_1_0
sequential_104_lstm_312_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_312_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_104_lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0:	`
Msequential_104_lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0:	d[
Lsequential_104_lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0:	*
&sequential_104_lstm_312_while_identity,
(sequential_104_lstm_312_while_identity_1,
(sequential_104_lstm_312_while_identity_2,
(sequential_104_lstm_312_while_identity_3,
(sequential_104_lstm_312_while_identity_4,
(sequential_104_lstm_312_while_identity_5I
Esequential_104_lstm_312_while_sequential_104_lstm_312_strided_slice_1
sequential_104_lstm_312_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_312_tensorarrayunstack_tensorlistfromtensor\
Isequential_104_lstm_312_while_lstm_cell_81_matmul_readvariableop_resource:	^
Ksequential_104_lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource:	dY
Jsequential_104_lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource:	˘Asequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp˘@sequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp˘Bsequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp 
Osequential_104/lstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_104/lstm_312/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_104_lstm_312_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_312_tensorarrayunstack_tensorlistfromtensor_0)sequential_104_lstm_312_while_placeholderXsequential_104/lstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOpKsequential_104_lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_104/lstm_312/while/lstm_cell_81/MatMulMatMulHsequential_104/lstm_312/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOpMsequential_104_lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_104/lstm_312/while/lstm_cell_81/MatMul_1MatMul+sequential_104_lstm_312_while_placeholder_2Jsequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_104/lstm_312/while/lstm_cell_81/addAddV2;sequential_104/lstm_312/while/lstm_cell_81/MatMul:product:0=sequential_104/lstm_312/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOpLsequential_104_lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_104/lstm_312/while/lstm_cell_81/BiasAddBiasAdd2sequential_104/lstm_312/while/lstm_cell_81/add:z:0Isequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_104/lstm_312/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_104/lstm_312/while/lstm_cell_81/splitSplitCsequential_104/lstm_312/while/lstm_cell_81/split/split_dim:output:0;sequential_104/lstm_312/while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_104/lstm_312/while/lstm_cell_81/SigmoidSigmoid9sequential_104/lstm_312/while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_104/lstm_312/while/lstm_cell_81/Sigmoid_1Sigmoid9sequential_104/lstm_312/while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_104/lstm_312/while/lstm_cell_81/mulMul8sequential_104/lstm_312/while/lstm_cell_81/Sigmoid_1:y:0+sequential_104_lstm_312_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_104/lstm_312/while/lstm_cell_81/ReluRelu9sequential_104/lstm_312/while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_104/lstm_312/while/lstm_cell_81/mul_1Mul6sequential_104/lstm_312/while/lstm_cell_81/Sigmoid:y:0=sequential_104/lstm_312/while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_104/lstm_312/while/lstm_cell_81/add_1AddV22sequential_104/lstm_312/while/lstm_cell_81/mul:z:04sequential_104/lstm_312/while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_104/lstm_312/while/lstm_cell_81/Sigmoid_2Sigmoid9sequential_104/lstm_312/while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_104/lstm_312/while/lstm_cell_81/Relu_1Relu4sequential_104/lstm_312/while/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_104/lstm_312/while/lstm_cell_81/mul_2Mul8sequential_104/lstm_312/while/lstm_cell_81/Sigmoid_2:y:0?sequential_104/lstm_312/while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_104/lstm_312/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_104_lstm_312_while_placeholder_1)sequential_104_lstm_312_while_placeholder4sequential_104/lstm_312/while/lstm_cell_81/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_104/lstm_312/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_104/lstm_312/while/addAddV2)sequential_104_lstm_312_while_placeholder,sequential_104/lstm_312/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_104/lstm_312/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_104/lstm_312/while/add_1AddV2Hsequential_104_lstm_312_while_sequential_104_lstm_312_while_loop_counter.sequential_104/lstm_312/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_104/lstm_312/while/IdentityIdentity'sequential_104/lstm_312/while/add_1:z:0#^sequential_104/lstm_312/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_104/lstm_312/while/Identity_1IdentityNsequential_104_lstm_312_while_sequential_104_lstm_312_while_maximum_iterations#^sequential_104/lstm_312/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_104/lstm_312/while/Identity_2Identity%sequential_104/lstm_312/while/add:z:0#^sequential_104/lstm_312/while/NoOp*
T0*
_output_shapes
: Î
(sequential_104/lstm_312/while/Identity_3IdentityRsequential_104/lstm_312/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_104/lstm_312/while/NoOp*
T0*
_output_shapes
: Á
(sequential_104/lstm_312/while/Identity_4Identity4sequential_104/lstm_312/while/lstm_cell_81/mul_2:z:0#^sequential_104/lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_104/lstm_312/while/Identity_5Identity4sequential_104/lstm_312/while/lstm_cell_81/add_1:z:0#^sequential_104/lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_104/lstm_312/while/NoOpNoOpB^sequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOpA^sequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOpC^sequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_104_lstm_312_while_identity/sequential_104/lstm_312/while/Identity:output:0"]
(sequential_104_lstm_312_while_identity_11sequential_104/lstm_312/while/Identity_1:output:0"]
(sequential_104_lstm_312_while_identity_21sequential_104/lstm_312/while/Identity_2:output:0"]
(sequential_104_lstm_312_while_identity_31sequential_104/lstm_312/while/Identity_3:output:0"]
(sequential_104_lstm_312_while_identity_41sequential_104/lstm_312/while/Identity_4:output:0"]
(sequential_104_lstm_312_while_identity_51sequential_104/lstm_312/while/Identity_5:output:0"
Jsequential_104_lstm_312_while_lstm_cell_81_biasadd_readvariableop_resourceLsequential_104_lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0"
Ksequential_104_lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resourceMsequential_104_lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0"
Isequential_104_lstm_312_while_lstm_cell_81_matmul_readvariableop_resourceKsequential_104_lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0"
Esequential_104_lstm_312_while_sequential_104_lstm_312_strided_slice_1Gsequential_104_lstm_312_while_sequential_104_lstm_312_strided_slice_1_0"
sequential_104_lstm_312_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_312_tensorarrayunstack_tensorlistfromtensorsequential_104_lstm_312_while_tensorarrayv2read_tensorlistgetitem_sequential_104_lstm_312_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOpAsequential_104/lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2
@sequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp@sequential_104/lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp2
Bsequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOpBsequential_104/lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

ĥ
)__inference_lstm_313_layer_call_fn_506457

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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503989s
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503057

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
J

D__inference_lstm_314_layer_call_and_return_conditional_losses_507513

inputs=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_507429*
condR
while_cond_507428*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ö
£
)sequential_104_lstm_312_while_cond_502271L
Hsequential_104_lstm_312_while_sequential_104_lstm_312_while_loop_counterR
Nsequential_104_lstm_312_while_sequential_104_lstm_312_while_maximum_iterations-
)sequential_104_lstm_312_while_placeholder/
+sequential_104_lstm_312_while_placeholder_1/
+sequential_104_lstm_312_while_placeholder_2/
+sequential_104_lstm_312_while_placeholder_3N
Jsequential_104_lstm_312_while_less_sequential_104_lstm_312_strided_slice_1d
`sequential_104_lstm_312_while_sequential_104_lstm_312_while_cond_502271___redundant_placeholder0d
`sequential_104_lstm_312_while_sequential_104_lstm_312_while_cond_502271___redundant_placeholder1d
`sequential_104_lstm_312_while_sequential_104_lstm_312_while_cond_502271___redundant_placeholder2d
`sequential_104_lstm_312_while_sequential_104_lstm_312_while_cond_502271___redundant_placeholder3*
&sequential_104_lstm_312_while_identity
Â
"sequential_104/lstm_312/while/LessLess)sequential_104_lstm_312_while_placeholderJsequential_104_lstm_312_while_less_sequential_104_lstm_312_strided_slice_1*
T0*
_output_shapes
: {
&sequential_104/lstm_312/while/IdentityIdentity&sequential_104/lstm_312/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_104_lstm_312_while_identity/sequential_104/lstm_312/while/Identity:output:0*(
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
while_cond_503420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503420___redundant_placeholder04
0while_while_cond_503420___redundant_placeholder14
0while_while_cond_503420___redundant_placeholder24
0while_while_cond_503420___redundant_placeholder3
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
·
ï
J__inference_sequential_104_layer_call_and_return_conditional_losses_504753

inputs"
lstm_312_504726:	"
lstm_312_504728:	d
lstm_312_504730:	"
lstm_313_504733:	dÈ"
lstm_313_504735:	2È
lstm_313_504737:	È!
lstm_314_504740:2(!
lstm_314_504742:
(
lstm_314_504744:("
dense_104_504747:

dense_104_504749:
identity˘!dense_104/StatefulPartitionedCall˘ lstm_312/StatefulPartitionedCall˘ lstm_313/StatefulPartitionedCall˘ lstm_314/StatefulPartitionedCall
 lstm_312/StatefulPartitionedCallStatefulPartitionedCallinputslstm_312_504726lstm_312_504728lstm_312_504730*
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_504685Ş
 lstm_313/StatefulPartitionedCallStatefulPartitionedCall)lstm_312/StatefulPartitionedCall:output:0lstm_313_504733lstm_313_504735lstm_313_504737*
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_504520Ĥ
 lstm_314/StatefulPartitionedCallStatefulPartitionedCall)lstm_313/StatefulPartitionedCall:output:0lstm_314_504740lstm_314_504742lstm_314_504744*
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504355
!dense_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_314/StatefulPartitionedCall:output:0dense_104_504747dense_104_504749*
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
GPU 2J 8 *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_504157y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_104/StatefulPartitionedCall!^lstm_312/StatefulPartitionedCall!^lstm_313/StatefulPartitionedCall!^lstm_314/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2D
 lstm_312/StatefulPartitionedCall lstm_312/StatefulPartitionedCall2D
 lstm_313/StatefulPartitionedCall lstm_313/StatefulPartitionedCall2D
 lstm_314/StatefulPartitionedCall lstm_314/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_506813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_504600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_504600___redundant_placeholder04
0while_while_cond_504600___redundant_placeholder14
0while_while_cond_504600___redundant_placeholder24
0while_while_cond_504600___redundant_placeholder3
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
while_body_507286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503553

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
²

÷
lstm_312_while_cond_505439.
*lstm_312_while_lstm_312_while_loop_counter4
0lstm_312_while_lstm_312_while_maximum_iterations
lstm_312_while_placeholder 
lstm_312_while_placeholder_1 
lstm_312_while_placeholder_2 
lstm_312_while_placeholder_30
,lstm_312_while_less_lstm_312_strided_slice_1F
Blstm_312_while_lstm_312_while_cond_505439___redundant_placeholder0F
Blstm_312_while_lstm_312_while_cond_505439___redundant_placeholder1F
Blstm_312_while_lstm_312_while_cond_505439___redundant_placeholder2F
Blstm_312_while_lstm_312_while_cond_505439___redundant_placeholder3
lstm_312_while_identity

lstm_312/while/LessLesslstm_312_while_placeholder,lstm_312_while_less_lstm_312_strided_slice_1*
T0*
_output_shapes
: ]
lstm_312/while/IdentityIdentitylstm_312/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_312_while_identity lstm_312/while/Identity:output:0*(
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
while_cond_505910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_505910___redundant_placeholder04
0while_while_cond_505910___redundant_placeholder14
0while_while_cond_505910___redundant_placeholder24
0while_while_cond_505910___redundant_placeholder3
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_506611
inputs_0>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_506527*
condR
while_cond_506526*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
µ
?
while_cond_506955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506955___redundant_placeholder04
0while_while_cond_506955___redundant_placeholder14
0while_while_cond_506955___redundant_placeholder24
0while_while_cond_506955___redundant_placeholder3
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
ş
Ŝ
!__inference__wrapped_model_502640
lstm_312_inputV
Csequential_104_lstm_312_lstm_cell_81_matmul_readvariableop_resource:	X
Esequential_104_lstm_312_lstm_cell_81_matmul_1_readvariableop_resource:	dS
Dsequential_104_lstm_312_lstm_cell_81_biasadd_readvariableop_resource:	V
Csequential_104_lstm_313_lstm_cell_82_matmul_readvariableop_resource:	dÈX
Esequential_104_lstm_313_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈS
Dsequential_104_lstm_313_lstm_cell_82_biasadd_readvariableop_resource:	ÈU
Csequential_104_lstm_314_lstm_cell_83_matmul_readvariableop_resource:2(W
Esequential_104_lstm_314_lstm_cell_83_matmul_1_readvariableop_resource:
(R
Dsequential_104_lstm_314_lstm_cell_83_biasadd_readvariableop_resource:(I
7sequential_104_dense_104_matmul_readvariableop_resource:
F
8sequential_104_dense_104_biasadd_readvariableop_resource:
identity˘/sequential_104/dense_104/BiasAdd/ReadVariableOp˘.sequential_104/dense_104/MatMul/ReadVariableOp˘;sequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp˘:sequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOp˘<sequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp˘sequential_104/lstm_312/while˘;sequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp˘:sequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOp˘<sequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp˘sequential_104/lstm_313/while˘;sequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp˘:sequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOp˘<sequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp˘sequential_104/lstm_314/while[
sequential_104/lstm_312/ShapeShapelstm_312_input*
T0*
_output_shapes
:u
+sequential_104/lstm_312/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_104/lstm_312/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_104/lstm_312/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_104/lstm_312/strided_sliceStridedSlice&sequential_104/lstm_312/Shape:output:04sequential_104/lstm_312/strided_slice/stack:output:06sequential_104/lstm_312/strided_slice/stack_1:output:06sequential_104/lstm_312/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_104/lstm_312/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_104/lstm_312/zeros/packedPack.sequential_104/lstm_312/strided_slice:output:0/sequential_104/lstm_312/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_104/lstm_312/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_104/lstm_312/zerosFill-sequential_104/lstm_312/zeros/packed:output:0,sequential_104/lstm_312/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_104/lstm_312/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_104/lstm_312/zeros_1/packedPack.sequential_104/lstm_312/strided_slice:output:01sequential_104/lstm_312/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_104/lstm_312/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_104/lstm_312/zeros_1Fill/sequential_104/lstm_312/zeros_1/packed:output:0.sequential_104/lstm_312/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_104/lstm_312/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_104/lstm_312/transpose	Transposelstm_312_input/sequential_104/lstm_312/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_104/lstm_312/Shape_1Shape%sequential_104/lstm_312/transpose:y:0*
T0*
_output_shapes
:w
-sequential_104/lstm_312/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_312/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_312/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_104/lstm_312/strided_slice_1StridedSlice(sequential_104/lstm_312/Shape_1:output:06sequential_104/lstm_312/strided_slice_1/stack:output:08sequential_104/lstm_312/strided_slice_1/stack_1:output:08sequential_104/lstm_312/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_104/lstm_312/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_104/lstm_312/TensorArrayV2TensorListReserve<sequential_104/lstm_312/TensorArrayV2/element_shape:output:00sequential_104/lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_104/lstm_312/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_104/lstm_312/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_104/lstm_312/transpose:y:0Vsequential_104/lstm_312/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_104/lstm_312/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_312/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_312/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_104/lstm_312/strided_slice_2StridedSlice%sequential_104/lstm_312/transpose:y:06sequential_104/lstm_312/strided_slice_2/stack:output:08sequential_104/lstm_312/strided_slice_2/stack_1:output:08sequential_104/lstm_312/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOpReadVariableOpCsequential_104_lstm_312_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_104/lstm_312/lstm_cell_81/MatMulMatMul0sequential_104/lstm_312/strided_slice_2:output:0Bsequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOpEsequential_104_lstm_312_lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_104/lstm_312/lstm_cell_81/MatMul_1MatMul&sequential_104/lstm_312/zeros:output:0Dsequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_104/lstm_312/lstm_cell_81/addAddV25sequential_104/lstm_312/lstm_cell_81/MatMul:product:07sequential_104/lstm_312/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOpDsequential_104_lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_104/lstm_312/lstm_cell_81/BiasAddBiasAdd,sequential_104/lstm_312/lstm_cell_81/add:z:0Csequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_104/lstm_312/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_104/lstm_312/lstm_cell_81/splitSplit=sequential_104/lstm_312/lstm_cell_81/split/split_dim:output:05sequential_104/lstm_312/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_104/lstm_312/lstm_cell_81/SigmoidSigmoid3sequential_104/lstm_312/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_104/lstm_312/lstm_cell_81/Sigmoid_1Sigmoid3sequential_104/lstm_312/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_104/lstm_312/lstm_cell_81/mulMul2sequential_104/lstm_312/lstm_cell_81/Sigmoid_1:y:0(sequential_104/lstm_312/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_104/lstm_312/lstm_cell_81/ReluRelu3sequential_104/lstm_312/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_104/lstm_312/lstm_cell_81/mul_1Mul0sequential_104/lstm_312/lstm_cell_81/Sigmoid:y:07sequential_104/lstm_312/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_104/lstm_312/lstm_cell_81/add_1AddV2,sequential_104/lstm_312/lstm_cell_81/mul:z:0.sequential_104/lstm_312/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_104/lstm_312/lstm_cell_81/Sigmoid_2Sigmoid3sequential_104/lstm_312/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_104/lstm_312/lstm_cell_81/Relu_1Relu.sequential_104/lstm_312/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_104/lstm_312/lstm_cell_81/mul_2Mul2sequential_104/lstm_312/lstm_cell_81/Sigmoid_2:y:09sequential_104/lstm_312/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_104/lstm_312/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_104/lstm_312/TensorArrayV2_1TensorListReserve>sequential_104/lstm_312/TensorArrayV2_1/element_shape:output:00sequential_104/lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_104/lstm_312/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_104/lstm_312/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_104/lstm_312/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_104/lstm_312/whileWhile3sequential_104/lstm_312/while/loop_counter:output:09sequential_104/lstm_312/while/maximum_iterations:output:0%sequential_104/lstm_312/time:output:00sequential_104/lstm_312/TensorArrayV2_1:handle:0&sequential_104/lstm_312/zeros:output:0(sequential_104/lstm_312/zeros_1:output:00sequential_104/lstm_312/strided_slice_1:output:0Osequential_104/lstm_312/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_104_lstm_312_lstm_cell_81_matmul_readvariableop_resourceEsequential_104_lstm_312_lstm_cell_81_matmul_1_readvariableop_resourceDsequential_104_lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_104_lstm_312_while_body_502272*5
cond-R+
)sequential_104_lstm_312_while_cond_502271*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_104/lstm_312/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_104/lstm_312/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_104/lstm_312/while:output:3Qsequential_104/lstm_312/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_104/lstm_312/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_104/lstm_312/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_312/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_104/lstm_312/strided_slice_3StridedSliceCsequential_104/lstm_312/TensorArrayV2Stack/TensorListStack:tensor:06sequential_104/lstm_312/strided_slice_3/stack:output:08sequential_104/lstm_312/strided_slice_3/stack_1:output:08sequential_104/lstm_312/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_104/lstm_312/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_104/lstm_312/transpose_1	TransposeCsequential_104/lstm_312/TensorArrayV2Stack/TensorListStack:tensor:01sequential_104/lstm_312/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_104/lstm_312/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_104/lstm_313/ShapeShape'sequential_104/lstm_312/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_104/lstm_313/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_104/lstm_313/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_104/lstm_313/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_104/lstm_313/strided_sliceStridedSlice&sequential_104/lstm_313/Shape:output:04sequential_104/lstm_313/strided_slice/stack:output:06sequential_104/lstm_313/strided_slice/stack_1:output:06sequential_104/lstm_313/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_104/lstm_313/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_104/lstm_313/zeros/packedPack.sequential_104/lstm_313/strided_slice:output:0/sequential_104/lstm_313/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_104/lstm_313/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_104/lstm_313/zerosFill-sequential_104/lstm_313/zeros/packed:output:0,sequential_104/lstm_313/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_104/lstm_313/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_104/lstm_313/zeros_1/packedPack.sequential_104/lstm_313/strided_slice:output:01sequential_104/lstm_313/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_104/lstm_313/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_104/lstm_313/zeros_1Fill/sequential_104/lstm_313/zeros_1/packed:output:0.sequential_104/lstm_313/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_104/lstm_313/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_104/lstm_313/transpose	Transpose'sequential_104/lstm_312/transpose_1:y:0/sequential_104/lstm_313/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_104/lstm_313/Shape_1Shape%sequential_104/lstm_313/transpose:y:0*
T0*
_output_shapes
:w
-sequential_104/lstm_313/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_313/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_313/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_104/lstm_313/strided_slice_1StridedSlice(sequential_104/lstm_313/Shape_1:output:06sequential_104/lstm_313/strided_slice_1/stack:output:08sequential_104/lstm_313/strided_slice_1/stack_1:output:08sequential_104/lstm_313/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_104/lstm_313/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_104/lstm_313/TensorArrayV2TensorListReserve<sequential_104/lstm_313/TensorArrayV2/element_shape:output:00sequential_104/lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_104/lstm_313/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_104/lstm_313/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_104/lstm_313/transpose:y:0Vsequential_104/lstm_313/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_104/lstm_313/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_313/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_313/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_104/lstm_313/strided_slice_2StridedSlice%sequential_104/lstm_313/transpose:y:06sequential_104/lstm_313/strided_slice_2/stack:output:08sequential_104/lstm_313/strided_slice_2/stack_1:output:08sequential_104/lstm_313/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOpReadVariableOpCsequential_104_lstm_313_lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_104/lstm_313/lstm_cell_82/MatMulMatMul0sequential_104/lstm_313/strided_slice_2:output:0Bsequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOpEsequential_104_lstm_313_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_104/lstm_313/lstm_cell_82/MatMul_1MatMul&sequential_104/lstm_313/zeros:output:0Dsequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_104/lstm_313/lstm_cell_82/addAddV25sequential_104/lstm_313/lstm_cell_82/MatMul:product:07sequential_104/lstm_313/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOpDsequential_104_lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_104/lstm_313/lstm_cell_82/BiasAddBiasAdd,sequential_104/lstm_313/lstm_cell_82/add:z:0Csequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_104/lstm_313/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_104/lstm_313/lstm_cell_82/splitSplit=sequential_104/lstm_313/lstm_cell_82/split/split_dim:output:05sequential_104/lstm_313/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_104/lstm_313/lstm_cell_82/SigmoidSigmoid3sequential_104/lstm_313/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_104/lstm_313/lstm_cell_82/Sigmoid_1Sigmoid3sequential_104/lstm_313/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_104/lstm_313/lstm_cell_82/mulMul2sequential_104/lstm_313/lstm_cell_82/Sigmoid_1:y:0(sequential_104/lstm_313/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_104/lstm_313/lstm_cell_82/ReluRelu3sequential_104/lstm_313/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_104/lstm_313/lstm_cell_82/mul_1Mul0sequential_104/lstm_313/lstm_cell_82/Sigmoid:y:07sequential_104/lstm_313/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_104/lstm_313/lstm_cell_82/add_1AddV2,sequential_104/lstm_313/lstm_cell_82/mul:z:0.sequential_104/lstm_313/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_104/lstm_313/lstm_cell_82/Sigmoid_2Sigmoid3sequential_104/lstm_313/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_104/lstm_313/lstm_cell_82/Relu_1Relu.sequential_104/lstm_313/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_104/lstm_313/lstm_cell_82/mul_2Mul2sequential_104/lstm_313/lstm_cell_82/Sigmoid_2:y:09sequential_104/lstm_313/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_104/lstm_313/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_104/lstm_313/TensorArrayV2_1TensorListReserve>sequential_104/lstm_313/TensorArrayV2_1/element_shape:output:00sequential_104/lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_104/lstm_313/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_104/lstm_313/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_104/lstm_313/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_104/lstm_313/whileWhile3sequential_104/lstm_313/while/loop_counter:output:09sequential_104/lstm_313/while/maximum_iterations:output:0%sequential_104/lstm_313/time:output:00sequential_104/lstm_313/TensorArrayV2_1:handle:0&sequential_104/lstm_313/zeros:output:0(sequential_104/lstm_313/zeros_1:output:00sequential_104/lstm_313/strided_slice_1:output:0Osequential_104/lstm_313/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_104_lstm_313_lstm_cell_82_matmul_readvariableop_resourceEsequential_104_lstm_313_lstm_cell_82_matmul_1_readvariableop_resourceDsequential_104_lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_104_lstm_313_while_body_502411*5
cond-R+
)sequential_104_lstm_313_while_cond_502410*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_104/lstm_313/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_104/lstm_313/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_104/lstm_313/while:output:3Qsequential_104/lstm_313/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_104/lstm_313/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_104/lstm_313/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_313/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_104/lstm_313/strided_slice_3StridedSliceCsequential_104/lstm_313/TensorArrayV2Stack/TensorListStack:tensor:06sequential_104/lstm_313/strided_slice_3/stack:output:08sequential_104/lstm_313/strided_slice_3/stack_1:output:08sequential_104/lstm_313/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_104/lstm_313/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_104/lstm_313/transpose_1	TransposeCsequential_104/lstm_313/TensorArrayV2Stack/TensorListStack:tensor:01sequential_104/lstm_313/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_104/lstm_313/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_104/lstm_314/ShapeShape'sequential_104/lstm_313/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_104/lstm_314/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_104/lstm_314/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_104/lstm_314/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_104/lstm_314/strided_sliceStridedSlice&sequential_104/lstm_314/Shape:output:04sequential_104/lstm_314/strided_slice/stack:output:06sequential_104/lstm_314/strided_slice/stack_1:output:06sequential_104/lstm_314/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_104/lstm_314/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_104/lstm_314/zeros/packedPack.sequential_104/lstm_314/strided_slice:output:0/sequential_104/lstm_314/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_104/lstm_314/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_104/lstm_314/zerosFill-sequential_104/lstm_314/zeros/packed:output:0,sequential_104/lstm_314/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_104/lstm_314/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_104/lstm_314/zeros_1/packedPack.sequential_104/lstm_314/strided_slice:output:01sequential_104/lstm_314/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_104/lstm_314/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_104/lstm_314/zeros_1Fill/sequential_104/lstm_314/zeros_1/packed:output:0.sequential_104/lstm_314/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_104/lstm_314/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_104/lstm_314/transpose	Transpose'sequential_104/lstm_313/transpose_1:y:0/sequential_104/lstm_314/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_104/lstm_314/Shape_1Shape%sequential_104/lstm_314/transpose:y:0*
T0*
_output_shapes
:w
-sequential_104/lstm_314/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_314/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_314/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_104/lstm_314/strided_slice_1StridedSlice(sequential_104/lstm_314/Shape_1:output:06sequential_104/lstm_314/strided_slice_1/stack:output:08sequential_104/lstm_314/strided_slice_1/stack_1:output:08sequential_104/lstm_314/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_104/lstm_314/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_104/lstm_314/TensorArrayV2TensorListReserve<sequential_104/lstm_314/TensorArrayV2/element_shape:output:00sequential_104/lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_104/lstm_314/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_104/lstm_314/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_104/lstm_314/transpose:y:0Vsequential_104/lstm_314/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_104/lstm_314/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_314/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_104/lstm_314/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_104/lstm_314/strided_slice_2StridedSlice%sequential_104/lstm_314/transpose:y:06sequential_104/lstm_314/strided_slice_2/stack:output:08sequential_104/lstm_314/strided_slice_2/stack_1:output:08sequential_104/lstm_314/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOpReadVariableOpCsequential_104_lstm_314_lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_104/lstm_314/lstm_cell_83/MatMulMatMul0sequential_104/lstm_314/strided_slice_2:output:0Bsequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOpEsequential_104_lstm_314_lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_104/lstm_314/lstm_cell_83/MatMul_1MatMul&sequential_104/lstm_314/zeros:output:0Dsequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_104/lstm_314/lstm_cell_83/addAddV25sequential_104/lstm_314/lstm_cell_83/MatMul:product:07sequential_104/lstm_314/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOpDsequential_104_lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_104/lstm_314/lstm_cell_83/BiasAddBiasAdd,sequential_104/lstm_314/lstm_cell_83/add:z:0Csequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_104/lstm_314/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_104/lstm_314/lstm_cell_83/splitSplit=sequential_104/lstm_314/lstm_cell_83/split/split_dim:output:05sequential_104/lstm_314/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_104/lstm_314/lstm_cell_83/SigmoidSigmoid3sequential_104/lstm_314/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_104/lstm_314/lstm_cell_83/Sigmoid_1Sigmoid3sequential_104/lstm_314/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_104/lstm_314/lstm_cell_83/mulMul2sequential_104/lstm_314/lstm_cell_83/Sigmoid_1:y:0(sequential_104/lstm_314/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_104/lstm_314/lstm_cell_83/ReluRelu3sequential_104/lstm_314/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_104/lstm_314/lstm_cell_83/mul_1Mul0sequential_104/lstm_314/lstm_cell_83/Sigmoid:y:07sequential_104/lstm_314/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_104/lstm_314/lstm_cell_83/add_1AddV2,sequential_104/lstm_314/lstm_cell_83/mul:z:0.sequential_104/lstm_314/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_104/lstm_314/lstm_cell_83/Sigmoid_2Sigmoid3sequential_104/lstm_314/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_104/lstm_314/lstm_cell_83/Relu_1Relu.sequential_104/lstm_314/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_104/lstm_314/lstm_cell_83/mul_2Mul2sequential_104/lstm_314/lstm_cell_83/Sigmoid_2:y:09sequential_104/lstm_314/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_104/lstm_314/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_104/lstm_314/TensorArrayV2_1TensorListReserve>sequential_104/lstm_314/TensorArrayV2_1/element_shape:output:00sequential_104/lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_104/lstm_314/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_104/lstm_314/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_104/lstm_314/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_104/lstm_314/whileWhile3sequential_104/lstm_314/while/loop_counter:output:09sequential_104/lstm_314/while/maximum_iterations:output:0%sequential_104/lstm_314/time:output:00sequential_104/lstm_314/TensorArrayV2_1:handle:0&sequential_104/lstm_314/zeros:output:0(sequential_104/lstm_314/zeros_1:output:00sequential_104/lstm_314/strided_slice_1:output:0Osequential_104/lstm_314/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_104_lstm_314_lstm_cell_83_matmul_readvariableop_resourceEsequential_104_lstm_314_lstm_cell_83_matmul_1_readvariableop_resourceDsequential_104_lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
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
_stateful_parallelism( *5
body-R+
)sequential_104_lstm_314_while_body_502550*5
cond-R+
)sequential_104_lstm_314_while_cond_502549*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_104/lstm_314/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_104/lstm_314/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_104/lstm_314/while:output:3Qsequential_104/lstm_314/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_104/lstm_314/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_104/lstm_314/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_104/lstm_314/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_104/lstm_314/strided_slice_3StridedSliceCsequential_104/lstm_314/TensorArrayV2Stack/TensorListStack:tensor:06sequential_104/lstm_314/strided_slice_3/stack:output:08sequential_104/lstm_314/strided_slice_3/stack_1:output:08sequential_104/lstm_314/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_104/lstm_314/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_104/lstm_314/transpose_1	TransposeCsequential_104/lstm_314/TensorArrayV2Stack/TensorListStack:tensor:01sequential_104/lstm_314/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_104/lstm_314/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_104/dense_104/MatMul/ReadVariableOpReadVariableOp7sequential_104_dense_104_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_104/dense_104/MatMulMatMul0sequential_104/lstm_314/strided_slice_3:output:06sequential_104/dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_104/dense_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_104_dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_104/dense_104/BiasAddBiasAdd)sequential_104/dense_104/MatMul:product:07sequential_104/dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_104/dense_104/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_104/dense_104/BiasAdd/ReadVariableOp/^sequential_104/dense_104/MatMul/ReadVariableOp<^sequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp;^sequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOp=^sequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp^sequential_104/lstm_312/while<^sequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp;^sequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOp=^sequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp^sequential_104/lstm_313/while<^sequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp;^sequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOp=^sequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp^sequential_104/lstm_314/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_104/dense_104/BiasAdd/ReadVariableOp/sequential_104/dense_104/BiasAdd/ReadVariableOp2`
.sequential_104/dense_104/MatMul/ReadVariableOp.sequential_104/dense_104/MatMul/ReadVariableOp2z
;sequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp;sequential_104/lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp2x
:sequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOp:sequential_104/lstm_312/lstm_cell_81/MatMul/ReadVariableOp2|
<sequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp<sequential_104/lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp2>
sequential_104/lstm_312/whilesequential_104/lstm_312/while2z
;sequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp;sequential_104/lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp2x
:sequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOp:sequential_104/lstm_313/lstm_cell_82/MatMul/ReadVariableOp2|
<sequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp<sequential_104/lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp2>
sequential_104/lstm_313/whilesequential_104/lstm_313/while2z
;sequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp;sequential_104/lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp2x
:sequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOp:sequential_104/lstm_314/lstm_cell_83/MatMul/ReadVariableOp2|
<sequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp<sequential_104/lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp2>
sequential_104/lstm_314/whilesequential_104/lstm_314/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_312_input
È	
ö
E__inference_dense_104_layer_call_and_return_conditional_losses_507675

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
íW
¤
__inference__traced_save_508112
file_prefix/
+savev2_dense_104_kernel_read_readvariableop-
)savev2_dense_104_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_312_lstm_cell_312_kernel_read_readvariableopF
Bsavev2_lstm_312_lstm_cell_312_recurrent_kernel_read_readvariableop:
6savev2_lstm_312_lstm_cell_312_bias_read_readvariableop<
8savev2_lstm_313_lstm_cell_313_kernel_read_readvariableopF
Bsavev2_lstm_313_lstm_cell_313_recurrent_kernel_read_readvariableop:
6savev2_lstm_313_lstm_cell_313_bias_read_readvariableop<
8savev2_lstm_314_lstm_cell_314_kernel_read_readvariableopF
Bsavev2_lstm_314_lstm_cell_314_recurrent_kernel_read_readvariableop:
6savev2_lstm_314_lstm_cell_314_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_104_kernel_m_read_readvariableop4
0savev2_adam_dense_104_bias_m_read_readvariableopC
?savev2_adam_lstm_312_lstm_cell_312_kernel_m_read_readvariableopM
Isavev2_adam_lstm_312_lstm_cell_312_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_312_lstm_cell_312_bias_m_read_readvariableopC
?savev2_adam_lstm_313_lstm_cell_313_kernel_m_read_readvariableopM
Isavev2_adam_lstm_313_lstm_cell_313_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_313_lstm_cell_313_bias_m_read_readvariableopC
?savev2_adam_lstm_314_lstm_cell_314_kernel_m_read_readvariableopM
Isavev2_adam_lstm_314_lstm_cell_314_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_314_lstm_cell_314_bias_m_read_readvariableop6
2savev2_adam_dense_104_kernel_v_read_readvariableop4
0savev2_adam_dense_104_bias_v_read_readvariableopC
?savev2_adam_lstm_312_lstm_cell_312_kernel_v_read_readvariableopM
Isavev2_adam_lstm_312_lstm_cell_312_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_312_lstm_cell_312_bias_v_read_readvariableopC
?savev2_adam_lstm_313_lstm_cell_313_kernel_v_read_readvariableopM
Isavev2_adam_lstm_313_lstm_cell_313_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_313_lstm_cell_313_bias_v_read_readvariableopC
?savev2_adam_lstm_314_lstm_cell_314_kernel_v_read_readvariableopM
Isavev2_adam_lstm_314_lstm_cell_314_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_314_lstm_cell_314_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_104_kernel_read_readvariableop)savev2_dense_104_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_312_lstm_cell_312_kernel_read_readvariableopBsavev2_lstm_312_lstm_cell_312_recurrent_kernel_read_readvariableop6savev2_lstm_312_lstm_cell_312_bias_read_readvariableop8savev2_lstm_313_lstm_cell_313_kernel_read_readvariableopBsavev2_lstm_313_lstm_cell_313_recurrent_kernel_read_readvariableop6savev2_lstm_313_lstm_cell_313_bias_read_readvariableop8savev2_lstm_314_lstm_cell_314_kernel_read_readvariableopBsavev2_lstm_314_lstm_cell_314_recurrent_kernel_read_readvariableop6savev2_lstm_314_lstm_cell_314_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_104_kernel_m_read_readvariableop0savev2_adam_dense_104_bias_m_read_readvariableop?savev2_adam_lstm_312_lstm_cell_312_kernel_m_read_readvariableopIsavev2_adam_lstm_312_lstm_cell_312_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_312_lstm_cell_312_bias_m_read_readvariableop?savev2_adam_lstm_313_lstm_cell_313_kernel_m_read_readvariableopIsavev2_adam_lstm_313_lstm_cell_313_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_313_lstm_cell_313_bias_m_read_readvariableop?savev2_adam_lstm_314_lstm_cell_314_kernel_m_read_readvariableopIsavev2_adam_lstm_314_lstm_cell_314_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_314_lstm_cell_314_bias_m_read_readvariableop2savev2_adam_dense_104_kernel_v_read_readvariableop0savev2_adam_dense_104_bias_v_read_readvariableop?savev2_adam_lstm_312_lstm_cell_312_kernel_v_read_readvariableopIsavev2_adam_lstm_312_lstm_cell_312_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_312_lstm_cell_312_bias_v_read_readvariableop?savev2_adam_lstm_313_lstm_cell_313_kernel_v_read_readvariableopIsavev2_adam_lstm_313_lstm_cell_313_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_313_lstm_cell_313_bias_v_read_readvariableop?savev2_adam_lstm_314_lstm_cell_314_kernel_v_read_readvariableopIsavev2_adam_lstm_314_lstm_cell_314_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_314_lstm_cell_314_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ó

H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507969

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
ÔJ

D__inference_lstm_314_layer_call_and_return_conditional_losses_507227
inputs_0=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_507143*
condR
while_cond_507142*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
·
ï
J__inference_sequential_104_layer_call_and_return_conditional_losses_504164

inputs"
lstm_312_503840:	"
lstm_312_503842:	d
lstm_312_503844:	"
lstm_313_503990:	dÈ"
lstm_313_503992:	2È
lstm_313_503994:	È!
lstm_314_504140:2(!
lstm_314_504142:
(
lstm_314_504144:("
dense_104_504158:

dense_104_504160:
identity˘!dense_104/StatefulPartitionedCall˘ lstm_312/StatefulPartitionedCall˘ lstm_313/StatefulPartitionedCall˘ lstm_314/StatefulPartitionedCall
 lstm_312/StatefulPartitionedCallStatefulPartitionedCallinputslstm_312_503840lstm_312_503842lstm_312_503844*
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_503839Ş
 lstm_313/StatefulPartitionedCallStatefulPartitionedCall)lstm_312/StatefulPartitionedCall:output:0lstm_313_503990lstm_313_503992lstm_313_503994*
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503989Ĥ
 lstm_314/StatefulPartitionedCallStatefulPartitionedCall)lstm_313/StatefulPartitionedCall:output:0lstm_314_504140lstm_314_504142lstm_314_504144*
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504139
!dense_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_314/StatefulPartitionedCall:output:0dense_104_504158dense_104_504160*
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
GPU 2J 8 *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_504157y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_104/StatefulPartitionedCall!^lstm_312/StatefulPartitionedCall!^lstm_313/StatefulPartitionedCall!^lstm_314/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2D
 lstm_312/StatefulPartitionedCall lstm_312/StatefulPartitionedCall2D
 lstm_313/StatefulPartitionedCall lstm_313/StatefulPartitionedCall2D
 lstm_314/StatefulPartitionedCall lstm_314/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_312_layer_call_and_return_conditional_losses_502790

inputs&
lstm_cell_81_502708:	&
lstm_cell_81_502710:	d"
lstm_cell_81_502712:	
identity˘$lstm_cell_81/StatefulPartitionedCall˘while;
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
$lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_81_502708lstm_cell_81_502710lstm_cell_81_502712*
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502707n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_81_502708lstm_cell_81_502710lstm_cell_81_502712*
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
while_body_502721*
condR
while_cond_502720*K
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
NoOpNoOp%^lstm_cell_81/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_81/StatefulPartitionedCall$lstm_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü


/__inference_sequential_104_layer_call_fn_504927

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
identity˘StatefulPartitionedCallÔ
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
GPU 2J 8 *S
fNRL
J__inference_sequential_104_layer_call_and_return_conditional_losses_504164o
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
while_cond_504435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_504435___redundant_placeholder04
0while_while_cond_504435___redundant_placeholder14
0while_while_cond_504435___redundant_placeholder24
0while_while_cond_504435___redundant_placeholder3
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
while_body_506340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_313_layer_call_fn_506446
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503331|
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
while_body_503612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_83_503636_0:2(-
while_lstm_cell_83_503638_0:
()
while_lstm_cell_83_503640_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_83_503636:2(+
while_lstm_cell_83_503638:
('
while_lstm_cell_83_503640:(˘*while/lstm_cell_83/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_83_503636_0while_lstm_cell_83_503638_0while_lstm_cell_83_503640_0*
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503553Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_83/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_83/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_83/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_83_503636while_lstm_cell_83_503636_0"8
while_lstm_cell_83_503638while_lstm_cell_83_503638_0"8
while_lstm_cell_83_503640while_lstm_cell_83_503640_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_83/StatefulPartitionedCall*while/lstm_cell_83/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

ĥ
)__inference_lstm_312_layer_call_fn_505852

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
D__inference_lstm_312_layer_call_and_return_conditional_losses_504685s
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
ÔJ

D__inference_lstm_314_layer_call_and_return_conditional_losses_507370
inputs_0=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_507286*
condR
while_cond_507285*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0

ĥ
)__inference_lstm_312_layer_call_fn_505841

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
D__inference_lstm_312_layer_call_and_return_conditional_losses_503839s
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
8

D__inference_lstm_313_layer_call_and_return_conditional_losses_503140

inputs&
lstm_cell_82_503058:	dÈ&
lstm_cell_82_503060:	2È"
lstm_cell_82_503062:	È
identity˘$lstm_cell_82/StatefulPartitionedCall˘while;
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
$lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_82_503058lstm_cell_82_503060lstm_cell_82_503062*
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503057n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_82_503058lstm_cell_82_503060lstm_cell_82_503062*
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
while_body_503071*
condR
while_cond_503070*K
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
NoOpNoOp%^lstm_cell_82/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_82/StatefulPartitionedCall$lstm_cell_82/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
˙7
Ê
while_body_504055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J

D__inference_lstm_314_layer_call_and_return_conditional_losses_504355

inputs=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_504271*
condR
while_cond_504270*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
À


$__inference_signature_wrapper_504900
lstm_312_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_502640o
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
_user_specified_namelstm_312_input
Ĉ

J__inference_sequential_104_layer_call_and_return_conditional_losses_505808

inputsG
4lstm_312_lstm_cell_81_matmul_readvariableop_resource:	I
6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource:	dD
5lstm_312_lstm_cell_81_biasadd_readvariableop_resource:	G
4lstm_313_lstm_cell_82_matmul_readvariableop_resource:	dÈI
6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈD
5lstm_313_lstm_cell_82_biasadd_readvariableop_resource:	ÈF
4lstm_314_lstm_cell_83_matmul_readvariableop_resource:2(H
6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource:
(C
5lstm_314_lstm_cell_83_biasadd_readvariableop_resource:(:
(dense_104_matmul_readvariableop_resource:
7
)dense_104_biasadd_readvariableop_resource:
identity˘ dense_104/BiasAdd/ReadVariableOp˘dense_104/MatMul/ReadVariableOp˘,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp˘+lstm_312/lstm_cell_81/MatMul/ReadVariableOp˘-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp˘lstm_312/while˘,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp˘+lstm_313/lstm_cell_82/MatMul/ReadVariableOp˘-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp˘lstm_313/while˘,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp˘+lstm_314/lstm_cell_83/MatMul/ReadVariableOp˘-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp˘lstm_314/whileD
lstm_312/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_312/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_312/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_312/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_312/strided_sliceStridedSlicelstm_312/Shape:output:0%lstm_312/strided_slice/stack:output:0'lstm_312/strided_slice/stack_1:output:0'lstm_312/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_312/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_312/zeros/packedPacklstm_312/strided_slice:output:0 lstm_312/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_312/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_312/zerosFilllstm_312/zeros/packed:output:0lstm_312/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_312/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_312/zeros_1/packedPacklstm_312/strided_slice:output:0"lstm_312/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_312/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_312/zeros_1Fill lstm_312/zeros_1/packed:output:0lstm_312/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_312/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_312/transpose	Transposeinputs lstm_312/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_312/Shape_1Shapelstm_312/transpose:y:0*
T0*
_output_shapes
:h
lstm_312/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_312/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_312/strided_slice_1StridedSlicelstm_312/Shape_1:output:0'lstm_312/strided_slice_1/stack:output:0)lstm_312/strided_slice_1/stack_1:output:0)lstm_312/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_312/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_312/TensorArrayV2TensorListReserve-lstm_312/TensorArrayV2/element_shape:output:0!lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_312/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_312/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_312/transpose:y:0Glstm_312/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_312/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_312/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_312/strided_slice_2StridedSlicelstm_312/transpose:y:0'lstm_312/strided_slice_2/stack:output:0)lstm_312/strided_slice_2/stack_1:output:0)lstm_312/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_312/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp4lstm_312_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_312/lstm_cell_81/MatMulMatMul!lstm_312/strided_slice_2:output:03lstm_312/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_312/lstm_cell_81/MatMul_1MatMullstm_312/zeros:output:05lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_312/lstm_cell_81/addAddV2&lstm_312/lstm_cell_81/MatMul:product:0(lstm_312/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp5lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_312/lstm_cell_81/BiasAddBiasAddlstm_312/lstm_cell_81/add:z:04lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_312/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_312/lstm_cell_81/splitSplit.lstm_312/lstm_cell_81/split/split_dim:output:0&lstm_312/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_312/lstm_cell_81/SigmoidSigmoid$lstm_312/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/Sigmoid_1Sigmoid$lstm_312/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/mulMul#lstm_312/lstm_cell_81/Sigmoid_1:y:0lstm_312/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_312/lstm_cell_81/ReluRelu$lstm_312/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_312/lstm_cell_81/mul_1Mul!lstm_312/lstm_cell_81/Sigmoid:y:0(lstm_312/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/add_1AddV2lstm_312/lstm_cell_81/mul:z:0lstm_312/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/Sigmoid_2Sigmoid$lstm_312/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_312/lstm_cell_81/Relu_1Relulstm_312/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_312/lstm_cell_81/mul_2Mul#lstm_312/lstm_cell_81/Sigmoid_2:y:0*lstm_312/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_312/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_312/TensorArrayV2_1TensorListReserve/lstm_312/TensorArrayV2_1/element_shape:output:0!lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_312/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_312/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_312/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_312/whileWhile$lstm_312/while/loop_counter:output:0*lstm_312/while/maximum_iterations:output:0lstm_312/time:output:0!lstm_312/TensorArrayV2_1:handle:0lstm_312/zeros:output:0lstm_312/zeros_1:output:0!lstm_312/strided_slice_1:output:0@lstm_312/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_312_lstm_cell_81_matmul_readvariableop_resource6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource5lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
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
lstm_312_while_body_505440*&
condR
lstm_312_while_cond_505439*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_312/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_312/TensorArrayV2Stack/TensorListStackTensorListStacklstm_312/while:output:3Blstm_312/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_312/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_312/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_312/strided_slice_3StridedSlice4lstm_312/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_312/strided_slice_3/stack:output:0)lstm_312/strided_slice_3/stack_1:output:0)lstm_312/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_312/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_312/transpose_1	Transpose4lstm_312/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_312/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_312/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_313/ShapeShapelstm_312/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_313/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_313/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_313/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_313/strided_sliceStridedSlicelstm_313/Shape:output:0%lstm_313/strided_slice/stack:output:0'lstm_313/strided_slice/stack_1:output:0'lstm_313/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_313/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_313/zeros/packedPacklstm_313/strided_slice:output:0 lstm_313/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_313/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_313/zerosFilllstm_313/zeros/packed:output:0lstm_313/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_313/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_313/zeros_1/packedPacklstm_313/strided_slice:output:0"lstm_313/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_313/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_313/zeros_1Fill lstm_313/zeros_1/packed:output:0lstm_313/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_313/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_313/transpose	Transposelstm_312/transpose_1:y:0 lstm_313/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_313/Shape_1Shapelstm_313/transpose:y:0*
T0*
_output_shapes
:h
lstm_313/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_313/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_313/strided_slice_1StridedSlicelstm_313/Shape_1:output:0'lstm_313/strided_slice_1/stack:output:0)lstm_313/strided_slice_1/stack_1:output:0)lstm_313/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_313/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_313/TensorArrayV2TensorListReserve-lstm_313/TensorArrayV2/element_shape:output:0!lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_313/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_313/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_313/transpose:y:0Glstm_313/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_313/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_313/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_313/strided_slice_2StridedSlicelstm_313/transpose:y:0'lstm_313/strided_slice_2/stack:output:0)lstm_313/strided_slice_2/stack_1:output:0)lstm_313/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_313/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp4lstm_313_lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_313/lstm_cell_82/MatMulMatMul!lstm_313/strided_slice_2:output:03lstm_313/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_313/lstm_cell_82/MatMul_1MatMullstm_313/zeros:output:05lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_313/lstm_cell_82/addAddV2&lstm_313/lstm_cell_82/MatMul:product:0(lstm_313/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp5lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_313/lstm_cell_82/BiasAddBiasAddlstm_313/lstm_cell_82/add:z:04lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_313/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_313/lstm_cell_82/splitSplit.lstm_313/lstm_cell_82/split/split_dim:output:0&lstm_313/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_313/lstm_cell_82/SigmoidSigmoid$lstm_313/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/Sigmoid_1Sigmoid$lstm_313/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/mulMul#lstm_313/lstm_cell_82/Sigmoid_1:y:0lstm_313/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_313/lstm_cell_82/ReluRelu$lstm_313/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_313/lstm_cell_82/mul_1Mul!lstm_313/lstm_cell_82/Sigmoid:y:0(lstm_313/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/add_1AddV2lstm_313/lstm_cell_82/mul:z:0lstm_313/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/Sigmoid_2Sigmoid$lstm_313/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_313/lstm_cell_82/Relu_1Relulstm_313/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_313/lstm_cell_82/mul_2Mul#lstm_313/lstm_cell_82/Sigmoid_2:y:0*lstm_313/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_313/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_313/TensorArrayV2_1TensorListReserve/lstm_313/TensorArrayV2_1/element_shape:output:0!lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_313/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_313/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_313/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_313/whileWhile$lstm_313/while/loop_counter:output:0*lstm_313/while/maximum_iterations:output:0lstm_313/time:output:0!lstm_313/TensorArrayV2_1:handle:0lstm_313/zeros:output:0lstm_313/zeros_1:output:0!lstm_313/strided_slice_1:output:0@lstm_313/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_313_lstm_cell_82_matmul_readvariableop_resource6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource5lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
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
lstm_313_while_body_505579*&
condR
lstm_313_while_cond_505578*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_313/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_313/TensorArrayV2Stack/TensorListStackTensorListStacklstm_313/while:output:3Blstm_313/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_313/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_313/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_313/strided_slice_3StridedSlice4lstm_313/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_313/strided_slice_3/stack:output:0)lstm_313/strided_slice_3/stack_1:output:0)lstm_313/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_313/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_313/transpose_1	Transpose4lstm_313/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_313/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_313/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_314/ShapeShapelstm_313/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_314/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_314/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_314/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_314/strided_sliceStridedSlicelstm_314/Shape:output:0%lstm_314/strided_slice/stack:output:0'lstm_314/strided_slice/stack_1:output:0'lstm_314/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_314/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_314/zeros/packedPacklstm_314/strided_slice:output:0 lstm_314/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_314/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_314/zerosFilllstm_314/zeros/packed:output:0lstm_314/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_314/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_314/zeros_1/packedPacklstm_314/strided_slice:output:0"lstm_314/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_314/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_314/zeros_1Fill lstm_314/zeros_1/packed:output:0lstm_314/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_314/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_314/transpose	Transposelstm_313/transpose_1:y:0 lstm_314/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_314/Shape_1Shapelstm_314/transpose:y:0*
T0*
_output_shapes
:h
lstm_314/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_314/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_314/strided_slice_1StridedSlicelstm_314/Shape_1:output:0'lstm_314/strided_slice_1/stack:output:0)lstm_314/strided_slice_1/stack_1:output:0)lstm_314/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_314/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_314/TensorArrayV2TensorListReserve-lstm_314/TensorArrayV2/element_shape:output:0!lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_314/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_314/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_314/transpose:y:0Glstm_314/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_314/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_314/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_314/strided_slice_2StridedSlicelstm_314/transpose:y:0'lstm_314/strided_slice_2/stack:output:0)lstm_314/strided_slice_2/stack_1:output:0)lstm_314/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_314/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp4lstm_314_lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_314/lstm_cell_83/MatMulMatMul!lstm_314/strided_slice_2:output:03lstm_314/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_314/lstm_cell_83/MatMul_1MatMullstm_314/zeros:output:05lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_314/lstm_cell_83/addAddV2&lstm_314/lstm_cell_83/MatMul:product:0(lstm_314/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp5lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_314/lstm_cell_83/BiasAddBiasAddlstm_314/lstm_cell_83/add:z:04lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_314/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_314/lstm_cell_83/splitSplit.lstm_314/lstm_cell_83/split/split_dim:output:0&lstm_314/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_314/lstm_cell_83/SigmoidSigmoid$lstm_314/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/Sigmoid_1Sigmoid$lstm_314/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/mulMul#lstm_314/lstm_cell_83/Sigmoid_1:y:0lstm_314/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_314/lstm_cell_83/ReluRelu$lstm_314/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_314/lstm_cell_83/mul_1Mul!lstm_314/lstm_cell_83/Sigmoid:y:0(lstm_314/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/add_1AddV2lstm_314/lstm_cell_83/mul:z:0lstm_314/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/Sigmoid_2Sigmoid$lstm_314/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_314/lstm_cell_83/Relu_1Relulstm_314/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_314/lstm_cell_83/mul_2Mul#lstm_314/lstm_cell_83/Sigmoid_2:y:0*lstm_314/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_314/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_314/TensorArrayV2_1TensorListReserve/lstm_314/TensorArrayV2_1/element_shape:output:0!lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_314/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_314/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_314/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_314/whileWhile$lstm_314/while/loop_counter:output:0*lstm_314/while/maximum_iterations:output:0lstm_314/time:output:0!lstm_314/TensorArrayV2_1:handle:0lstm_314/zeros:output:0lstm_314/zeros_1:output:0!lstm_314/strided_slice_1:output:0@lstm_314/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_314_lstm_cell_83_matmul_readvariableop_resource6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource5lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
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
lstm_314_while_body_505718*&
condR
lstm_314_while_cond_505717*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_314/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_314/TensorArrayV2Stack/TensorListStackTensorListStacklstm_314/while:output:3Blstm_314/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_314/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_314/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_314/strided_slice_3StridedSlice4lstm_314/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_314/strided_slice_3/stack:output:0)lstm_314/strided_slice_3/stack_1:output:0)lstm_314/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_314/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_314/transpose_1	Transpose4lstm_314/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_314/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_314/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_104/MatMulMatMul!lstm_314/strided_slice_3:output:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_104/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp-^lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp,^lstm_312/lstm_cell_81/MatMul/ReadVariableOp.^lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp^lstm_312/while-^lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp,^lstm_313/lstm_cell_82/MatMul/ReadVariableOp.^lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp^lstm_313/while-^lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp,^lstm_314/lstm_cell_83/MatMul/ReadVariableOp.^lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp^lstm_314/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp2\
,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp2Z
+lstm_312/lstm_cell_81/MatMul/ReadVariableOp+lstm_312/lstm_cell_81/MatMul/ReadVariableOp2^
-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp2 
lstm_312/whilelstm_312/while2\
,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp2Z
+lstm_313/lstm_cell_82/MatMul/ReadVariableOp+lstm_313/lstm_cell_82/MatMul/ReadVariableOp2^
-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp2 
lstm_313/whilelstm_313/while2\
,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp2Z
+lstm_314/lstm_cell_83/MatMul/ReadVariableOp+lstm_314/lstm_cell_83/MatMul/ReadVariableOp2^
-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp2 
lstm_314/whilelstm_314/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_502911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_502911___redundant_placeholder04
0while_while_cond_502911___redundant_placeholder14
0while_while_cond_502911___redundant_placeholder24
0while_while_cond_502911___redundant_placeholder3
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507839

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
Ŭ

H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507741

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
Ŭ

H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507773

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
âJ

D__inference_lstm_313_layer_call_and_return_conditional_losses_506754
inputs_0>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_506670*
condR
while_cond_506669*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
8

D__inference_lstm_312_layer_call_and_return_conditional_losses_502981

inputs&
lstm_cell_81_502899:	&
lstm_cell_81_502901:	d"
lstm_cell_81_502903:	
identity˘$lstm_cell_81/StatefulPartitionedCall˘while;
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
$lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_81_502899lstm_cell_81_502901lstm_cell_81_502903*
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502853n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_81_502899lstm_cell_81_502901lstm_cell_81_502903*
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
while_body_502912*
condR
while_cond_502911*K
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
NoOpNoOp%^lstm_cell_81/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_81/StatefulPartitionedCall$lstm_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_503905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_313_while_body_505152.
*lstm_313_while_lstm_313_while_loop_counter4
0lstm_313_while_lstm_313_while_maximum_iterations
lstm_313_while_placeholder 
lstm_313_while_placeholder_1 
lstm_313_while_placeholder_2 
lstm_313_while_placeholder_3-
)lstm_313_while_lstm_313_strided_slice_1_0i
elstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈQ
>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
lstm_313_while_identity
lstm_313_while_identity_1
lstm_313_while_identity_2
lstm_313_while_identity_3
lstm_313_while_identity_4
lstm_313_while_identity_5+
'lstm_313_while_lstm_313_strided_slice_1g
clstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensorM
:lstm_313_while_lstm_cell_82_matmul_readvariableop_resource:	dÈO
<lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈJ
;lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource:	È˘2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp˘1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp˘3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp
@lstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_313/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0lstm_313_while_placeholderIlstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_313/while/lstm_cell_82/MatMulMatMul9lstm_313/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_313/while/lstm_cell_82/MatMul_1MatMullstm_313_while_placeholder_2;lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_313/while/lstm_cell_82/addAddV2,lstm_313/while/lstm_cell_82/MatMul:product:0.lstm_313/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_313/while/lstm_cell_82/BiasAddBiasAdd#lstm_313/while/lstm_cell_82/add:z:0:lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_313/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_313/while/lstm_cell_82/splitSplit4lstm_313/while/lstm_cell_82/split/split_dim:output:0,lstm_313/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_313/while/lstm_cell_82/SigmoidSigmoid*lstm_313/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_313/while/lstm_cell_82/Sigmoid_1Sigmoid*lstm_313/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_313/while/lstm_cell_82/mulMul)lstm_313/while/lstm_cell_82/Sigmoid_1:y:0lstm_313_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_313/while/lstm_cell_82/ReluRelu*lstm_313/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_313/while/lstm_cell_82/mul_1Mul'lstm_313/while/lstm_cell_82/Sigmoid:y:0.lstm_313/while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_313/while/lstm_cell_82/add_1AddV2#lstm_313/while/lstm_cell_82/mul:z:0%lstm_313/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_313/while/lstm_cell_82/Sigmoid_2Sigmoid*lstm_313/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_313/while/lstm_cell_82/Relu_1Relu%lstm_313/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_313/while/lstm_cell_82/mul_2Mul)lstm_313/while/lstm_cell_82/Sigmoid_2:y:00lstm_313/while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_313/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_313_while_placeholder_1lstm_313_while_placeholder%lstm_313/while/lstm_cell_82/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_313/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_313/while/addAddV2lstm_313_while_placeholderlstm_313/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_313/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_313/while/add_1AddV2*lstm_313_while_lstm_313_while_loop_counterlstm_313/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_313/while/IdentityIdentitylstm_313/while/add_1:z:0^lstm_313/while/NoOp*
T0*
_output_shapes
: 
lstm_313/while/Identity_1Identity0lstm_313_while_lstm_313_while_maximum_iterations^lstm_313/while/NoOp*
T0*
_output_shapes
: t
lstm_313/while/Identity_2Identitylstm_313/while/add:z:0^lstm_313/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_313/while/Identity_3IdentityClstm_313/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_313/while/NoOp*
T0*
_output_shapes
: 
lstm_313/while/Identity_4Identity%lstm_313/while/lstm_cell_82/mul_2:z:0^lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/while/Identity_5Identity%lstm_313/while/lstm_cell_82/add_1:z:0^lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_313/while/NoOpNoOp3^lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2^lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp4^lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_313_while_identity lstm_313/while/Identity:output:0"?
lstm_313_while_identity_1"lstm_313/while/Identity_1:output:0"?
lstm_313_while_identity_2"lstm_313/while/Identity_2:output:0"?
lstm_313_while_identity_3"lstm_313/while/Identity_3:output:0"?
lstm_313_while_identity_4"lstm_313/while/Identity_4:output:0"?
lstm_313_while_identity_5"lstm_313/while/Identity_5:output:0"T
'lstm_313_while_lstm_313_strided_slice_1)lstm_313_while_lstm_313_strided_slice_1_0"|
;lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0"~
<lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0"z
:lstm_313_while_lstm_cell_82_matmul_readvariableop_resource<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0"Ì
clstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensorelstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2f
1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp2j
3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ë

H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503407

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
à"
Ŭ
while_body_503421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_83_503445_0:2(-
while_lstm_cell_83_503447_0:
()
while_lstm_cell_83_503449_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_83_503445:2(+
while_lstm_cell_83_503447:
('
while_lstm_cell_83_503449:(˘*while/lstm_cell_83/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_83_503445_0while_lstm_cell_83_503447_0while_lstm_cell_83_503449_0*
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503407Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_83/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_83/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_83/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_83_503445while_lstm_cell_83_503445_0"8
while_lstm_cell_83_503447while_lstm_cell_83_503447_0"8
while_lstm_cell_83_503449while_lstm_cell_83_503449_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_83/StatefulPartitionedCall*while/lstm_cell_83/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ö
£
)sequential_104_lstm_313_while_cond_502410L
Hsequential_104_lstm_313_while_sequential_104_lstm_313_while_loop_counterR
Nsequential_104_lstm_313_while_sequential_104_lstm_313_while_maximum_iterations-
)sequential_104_lstm_313_while_placeholder/
+sequential_104_lstm_313_while_placeholder_1/
+sequential_104_lstm_313_while_placeholder_2/
+sequential_104_lstm_313_while_placeholder_3N
Jsequential_104_lstm_313_while_less_sequential_104_lstm_313_strided_slice_1d
`sequential_104_lstm_313_while_sequential_104_lstm_313_while_cond_502410___redundant_placeholder0d
`sequential_104_lstm_313_while_sequential_104_lstm_313_while_cond_502410___redundant_placeholder1d
`sequential_104_lstm_313_while_sequential_104_lstm_313_while_cond_502410___redundant_placeholder2d
`sequential_104_lstm_313_while_sequential_104_lstm_313_while_cond_502410___redundant_placeholder3*
&sequential_104_lstm_313_while_identity
Â
"sequential_104/lstm_313/while/LessLess)sequential_104_lstm_313_while_placeholderJsequential_104_lstm_313_while_less_sequential_104_lstm_313_strided_slice_1*
T0*
_output_shapes
: {
&sequential_104/lstm_313/while/IdentityIdentity&sequential_104/lstm_313/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_104_lstm_313_while_identity/sequential_104/lstm_313/while/Identity:output:0*(
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
while_body_504436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_503262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_82_503286_0:	dÈ.
while_lstm_cell_82_503288_0:	2È*
while_lstm_cell_82_503290_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_82_503286:	dÈ,
while_lstm_cell_82_503288:	2È(
while_lstm_cell_82_503290:	È˘*while/lstm_cell_82/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_82_503286_0while_lstm_cell_82_503288_0while_lstm_cell_82_503290_0*
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503203Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_82/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_82/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_82/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_82/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_82_503286while_lstm_cell_82_503286_0"8
while_lstm_cell_82_503288while_lstm_cell_82_503288_0"8
while_lstm_cell_82_503290while_lstm_cell_82_503290_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_82/StatefulPartitionedCall*while/lstm_cell_82/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ï
÷
J__inference_sequential_104_layer_call_and_return_conditional_losses_504865
lstm_312_input"
lstm_312_504838:	"
lstm_312_504840:	d
lstm_312_504842:	"
lstm_313_504845:	dÈ"
lstm_313_504847:	2È
lstm_313_504849:	È!
lstm_314_504852:2(!
lstm_314_504854:
(
lstm_314_504856:("
dense_104_504859:

dense_104_504861:
identity˘!dense_104/StatefulPartitionedCall˘ lstm_312/StatefulPartitionedCall˘ lstm_313/StatefulPartitionedCall˘ lstm_314/StatefulPartitionedCall
 lstm_312/StatefulPartitionedCallStatefulPartitionedCalllstm_312_inputlstm_312_504838lstm_312_504840lstm_312_504842*
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_504685Ş
 lstm_313/StatefulPartitionedCallStatefulPartitionedCall)lstm_312/StatefulPartitionedCall:output:0lstm_313_504845lstm_313_504847lstm_313_504849*
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_504520Ĥ
 lstm_314/StatefulPartitionedCallStatefulPartitionedCall)lstm_313/StatefulPartitionedCall:output:0lstm_314_504852lstm_314_504854lstm_314_504856*
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504355
!dense_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_314/StatefulPartitionedCall:output:0dense_104_504859dense_104_504861*
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
GPU 2J 8 *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_504157y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_104/StatefulPartitionedCall!^lstm_312/StatefulPartitionedCall!^lstm_313/StatefulPartitionedCall!^lstm_314/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2D
 lstm_312/StatefulPartitionedCall lstm_312/StatefulPartitionedCall2D
 lstm_313/StatefulPartitionedCall lstm_313/StatefulPartitionedCall2D
 lstm_314/StatefulPartitionedCall lstm_314/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_312_input
J

D__inference_lstm_314_layer_call_and_return_conditional_losses_504139

inputs=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_504055*
condR
while_cond_504054*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs

µ
)__inference_lstm_314_layer_call_fn_507062
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_503681o
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
while_body_507429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_503611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503611___redundant_placeholder04
0while_while_cond_503611___redundant_placeholder14
0while_while_cond_503611___redundant_placeholder24
0while_while_cond_503611___redundant_placeholder3
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
while_body_504271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_506956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_504270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_504270___redundant_placeholder04
0while_while_cond_504270___redundant_placeholder14
0while_while_cond_504270___redundant_placeholder24
0while_while_cond_504270___redundant_placeholder3
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
while_cond_506053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506053___redundant_placeholder04
0while_while_cond_506053___redundant_placeholder14
0while_while_cond_506053___redundant_placeholder24
0while_while_cond_506053___redundant_placeholder3
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
while_body_507572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ö
£
)sequential_104_lstm_314_while_cond_502549L
Hsequential_104_lstm_314_while_sequential_104_lstm_314_while_loop_counterR
Nsequential_104_lstm_314_while_sequential_104_lstm_314_while_maximum_iterations-
)sequential_104_lstm_314_while_placeholder/
+sequential_104_lstm_314_while_placeholder_1/
+sequential_104_lstm_314_while_placeholder_2/
+sequential_104_lstm_314_while_placeholder_3N
Jsequential_104_lstm_314_while_less_sequential_104_lstm_314_strided_slice_1d
`sequential_104_lstm_314_while_sequential_104_lstm_314_while_cond_502549___redundant_placeholder0d
`sequential_104_lstm_314_while_sequential_104_lstm_314_while_cond_502549___redundant_placeholder1d
`sequential_104_lstm_314_while_sequential_104_lstm_314_while_cond_502549___redundant_placeholder2d
`sequential_104_lstm_314_while_sequential_104_lstm_314_while_cond_502549___redundant_placeholder3*
&sequential_104_lstm_314_while_identity
Â
"sequential_104/lstm_314/while/LessLess)sequential_104_lstm_314_while_placeholderJsequential_104_lstm_314_while_less_sequential_104_lstm_314_strided_slice_1*
T0*
_output_shapes
: {
&sequential_104/lstm_314/while/IdentityIdentity&sequential_104/lstm_314/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_104_lstm_314_while_identity/sequential_104/lstm_314/while/Identity:output:0*(
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
while_body_504601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_312_while_body_505440.
*lstm_312_while_lstm_312_while_loop_counter4
0lstm_312_while_lstm_312_while_maximum_iterations
lstm_312_while_placeholder 
lstm_312_while_placeholder_1 
lstm_312_while_placeholder_2 
lstm_312_while_placeholder_3-
)lstm_312_while_lstm_312_strided_slice_1_0i
elstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0:	Q
>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dL
=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0:	
lstm_312_while_identity
lstm_312_while_identity_1
lstm_312_while_identity_2
lstm_312_while_identity_3
lstm_312_while_identity_4
lstm_312_while_identity_5+
'lstm_312_while_lstm_312_strided_slice_1g
clstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensorM
:lstm_312_while_lstm_cell_81_matmul_readvariableop_resource:	O
<lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource:	dJ
;lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource:	˘2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp˘1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp˘3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp
@lstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_312/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0lstm_312_while_placeholderIlstm_312/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_312/while/lstm_cell_81/MatMulMatMul9lstm_312/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_312/while/lstm_cell_81/MatMul_1MatMullstm_312_while_placeholder_2;lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_312/while/lstm_cell_81/addAddV2,lstm_312/while/lstm_cell_81/MatMul:product:0.lstm_312/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_312/while/lstm_cell_81/BiasAddBiasAdd#lstm_312/while/lstm_cell_81/add:z:0:lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_312/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_312/while/lstm_cell_81/splitSplit4lstm_312/while/lstm_cell_81/split/split_dim:output:0,lstm_312/while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_312/while/lstm_cell_81/SigmoidSigmoid*lstm_312/while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_312/while/lstm_cell_81/Sigmoid_1Sigmoid*lstm_312/while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_312/while/lstm_cell_81/mulMul)lstm_312/while/lstm_cell_81/Sigmoid_1:y:0lstm_312_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_312/while/lstm_cell_81/ReluRelu*lstm_312/while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_312/while/lstm_cell_81/mul_1Mul'lstm_312/while/lstm_cell_81/Sigmoid:y:0.lstm_312/while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_312/while/lstm_cell_81/add_1AddV2#lstm_312/while/lstm_cell_81/mul:z:0%lstm_312/while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_312/while/lstm_cell_81/Sigmoid_2Sigmoid*lstm_312/while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_312/while/lstm_cell_81/Relu_1Relu%lstm_312/while/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_312/while/lstm_cell_81/mul_2Mul)lstm_312/while/lstm_cell_81/Sigmoid_2:y:00lstm_312/while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_312/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_312_while_placeholder_1lstm_312_while_placeholder%lstm_312/while/lstm_cell_81/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_312/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_312/while/addAddV2lstm_312_while_placeholderlstm_312/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_312/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_312/while/add_1AddV2*lstm_312_while_lstm_312_while_loop_counterlstm_312/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_312/while/IdentityIdentitylstm_312/while/add_1:z:0^lstm_312/while/NoOp*
T0*
_output_shapes
: 
lstm_312/while/Identity_1Identity0lstm_312_while_lstm_312_while_maximum_iterations^lstm_312/while/NoOp*
T0*
_output_shapes
: t
lstm_312/while/Identity_2Identitylstm_312/while/add:z:0^lstm_312/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_312/while/Identity_3IdentityClstm_312/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_312/while/NoOp*
T0*
_output_shapes
: 
lstm_312/while/Identity_4Identity%lstm_312/while/lstm_cell_81/mul_2:z:0^lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/while/Identity_5Identity%lstm_312/while/lstm_cell_81/add_1:z:0^lstm_312/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_312/while/NoOpNoOp3^lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2^lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp4^lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_312_while_identity lstm_312/while/Identity:output:0"?
lstm_312_while_identity_1"lstm_312/while/Identity_1:output:0"?
lstm_312_while_identity_2"lstm_312/while/Identity_2:output:0"?
lstm_312_while_identity_3"lstm_312/while/Identity_3:output:0"?
lstm_312_while_identity_4"lstm_312/while/Identity_4:output:0"?
lstm_312_while_identity_5"lstm_312/while/Identity_5:output:0"T
'lstm_312_while_lstm_312_strided_slice_1)lstm_312_while_lstm_312_strided_slice_1_0"|
;lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource=lstm_312_while_lstm_cell_81_biasadd_readvariableop_resource_0"~
<lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource>lstm_312_while_lstm_cell_81_matmul_1_readvariableop_resource_0"z
:lstm_312_while_lstm_cell_81_matmul_readvariableop_resource<lstm_312_while_lstm_cell_81_matmul_readvariableop_resource_0"Ì
clstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensorelstm_312_while_tensorarrayv2read_tensorlistgetitem_lstm_312_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2lstm_312/while/lstm_cell_81/BiasAdd/ReadVariableOp2f
1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp1lstm_312/while/lstm_cell_81/MatMul/ReadVariableOp2j
3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp3lstm_312/while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_314_layer_call_fn_507051
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_503490o
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_507656

inputs=
+lstm_cell_83_matmul_readvariableop_resource:2(?
-lstm_cell_83_matmul_1_readvariableop_resource:
(:
,lstm_cell_83_biasadd_readvariableop_resource:(
identity˘#lstm_cell_83/BiasAdd/ReadVariableOp˘"lstm_cell_83/MatMul/ReadVariableOp˘$lstm_cell_83/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_83/MatMul/ReadVariableOpReadVariableOp+lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_83/MatMulMatMulstrided_slice_2:output:0*lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_83/MatMul_1MatMulzeros:output:0,lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_83/addAddV2lstm_cell_83/MatMul:product:0lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_83/BiasAddBiasAddlstm_cell_83/add:z:0+lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_83/SigmoidSigmoidlstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_83/mulMullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_83/ReluRelulstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_1Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_83/add_1AddV2lstm_cell_83/mul:z:0lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_83/Relu_1Relulstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_83/mul_2Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_83_matmul_readvariableop_resource-lstm_cell_83_matmul_1_readvariableop_resource,lstm_cell_83_biasadd_readvariableop_resource*
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
while_body_507572*
condR
while_cond_507571*K
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
NoOpNoOp$^lstm_cell_83/BiasAdd/ReadVariableOp#^lstm_cell_83/MatMul/ReadVariableOp%^lstm_cell_83/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_83/BiasAdd/ReadVariableOp#lstm_cell_83/BiasAdd/ReadVariableOp2H
"lstm_cell_83/MatMul/ReadVariableOp"lstm_cell_83/MatMul/ReadVariableOp2L
$lstm_cell_83/MatMul_1/ReadVariableOp$lstm_cell_83/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_506669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506669___redundant_placeholder04
0while_while_cond_506669___redundant_placeholder14
0while_while_cond_506669___redundant_placeholder24
0while_while_cond_506669___redundant_placeholder3
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
Ï
÷
J__inference_sequential_104_layer_call_and_return_conditional_losses_504835
lstm_312_input"
lstm_312_504808:	"
lstm_312_504810:	d
lstm_312_504812:	"
lstm_313_504815:	dÈ"
lstm_313_504817:	2È
lstm_313_504819:	È!
lstm_314_504822:2(!
lstm_314_504824:
(
lstm_314_504826:("
dense_104_504829:

dense_104_504831:
identity˘!dense_104/StatefulPartitionedCall˘ lstm_312/StatefulPartitionedCall˘ lstm_313/StatefulPartitionedCall˘ lstm_314/StatefulPartitionedCall
 lstm_312/StatefulPartitionedCallStatefulPartitionedCalllstm_312_inputlstm_312_504808lstm_312_504810lstm_312_504812*
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_503839Ş
 lstm_313/StatefulPartitionedCallStatefulPartitionedCall)lstm_312/StatefulPartitionedCall:output:0lstm_313_504815lstm_313_504817lstm_313_504819*
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503989Ĥ
 lstm_314/StatefulPartitionedCallStatefulPartitionedCall)lstm_313/StatefulPartitionedCall:output:0lstm_314_504822lstm_314_504824lstm_314_504826*
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504139
!dense_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_314/StatefulPartitionedCall:output:0dense_104_504829dense_104_504831*
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
GPU 2J 8 *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_504157y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_104/StatefulPartitionedCall!^lstm_312/StatefulPartitionedCall!^lstm_313/StatefulPartitionedCall!^lstm_314/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2D
 lstm_312/StatefulPartitionedCall lstm_312/StatefulPartitionedCall2D
 lstm_313/StatefulPartitionedCall lstm_313/StatefulPartitionedCall2D
 lstm_314/StatefulPartitionedCall lstm_314/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_312_input
µ
?
while_cond_507285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_507285___redundant_placeholder04
0while_while_cond_507285___redundant_placeholder14
0while_while_cond_507285___redundant_placeholder24
0while_while_cond_507285___redundant_placeholder3
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_506138
inputs_0>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_506054*
condR
while_cond_506053*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ô

£
/__inference_sequential_104_layer_call_fn_504189
lstm_312_input
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
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_312_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_104_layer_call_and_return_conditional_losses_504164o
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
_user_specified_namelstm_312_input
µ
?
while_cond_504054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_504054___redundant_placeholder04
0while_while_cond_504054___redundant_placeholder14
0while_while_cond_504054___redundant_placeholder24
0while_while_cond_504054___redundant_placeholder3
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
while_body_506527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ä

*__inference_dense_104_layer_call_fn_507665

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_104_layer_call_and_return_conditional_losses_504157o
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
ë
ö
-__inference_lstm_cell_81_layer_call_fn_507709

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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502853o
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
ë
ö
-__inference_lstm_cell_82_layer_call_fn_507790

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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503057o
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
²

÷
lstm_314_while_cond_505290.
*lstm_314_while_lstm_314_while_loop_counter4
0lstm_314_while_lstm_314_while_maximum_iterations
lstm_314_while_placeholder 
lstm_314_while_placeholder_1 
lstm_314_while_placeholder_2 
lstm_314_while_placeholder_30
,lstm_314_while_less_lstm_314_strided_slice_1F
Blstm_314_while_lstm_314_while_cond_505290___redundant_placeholder0F
Blstm_314_while_lstm_314_while_cond_505290___redundant_placeholder1F
Blstm_314_while_lstm_314_while_cond_505290___redundant_placeholder2F
Blstm_314_while_lstm_314_while_cond_505290___redundant_placeholder3
lstm_314_while_identity

lstm_314/while/LessLesslstm_314_while_placeholder,lstm_314_while_less_lstm_314_strided_slice_1*
T0*
_output_shapes
: ]
lstm_314/while/IdentityIdentitylstm_314/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_314_while_identity lstm_314/while/Identity:output:0*(
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
lstm_313_while_cond_505151.
*lstm_313_while_lstm_313_while_loop_counter4
0lstm_313_while_lstm_313_while_maximum_iterations
lstm_313_while_placeholder 
lstm_313_while_placeholder_1 
lstm_313_while_placeholder_2 
lstm_313_while_placeholder_30
,lstm_313_while_less_lstm_313_strided_slice_1F
Blstm_313_while_lstm_313_while_cond_505151___redundant_placeholder0F
Blstm_313_while_lstm_313_while_cond_505151___redundant_placeholder1F
Blstm_313_while_lstm_313_while_cond_505151___redundant_placeholder2F
Blstm_313_while_lstm_313_while_cond_505151___redundant_placeholder3
lstm_313_while_identity

lstm_313/while/LessLesslstm_313_while_placeholder,lstm_313_while_less_lstm_313_strided_slice_1*
T0*
_output_shapes
: ]
lstm_313/while/IdentityIdentitylstm_313/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_313_while_identity lstm_313/while/Identity:output:0*(
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

lstm_313_while_body_505579.
*lstm_313_while_lstm_313_while_loop_counter4
0lstm_313_while_lstm_313_while_maximum_iterations
lstm_313_while_placeholder 
lstm_313_while_placeholder_1 
lstm_313_while_placeholder_2 
lstm_313_while_placeholder_3-
)lstm_313_while_lstm_313_strided_slice_1_0i
elstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈQ
>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
lstm_313_while_identity
lstm_313_while_identity_1
lstm_313_while_identity_2
lstm_313_while_identity_3
lstm_313_while_identity_4
lstm_313_while_identity_5+
'lstm_313_while_lstm_313_strided_slice_1g
clstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensorM
:lstm_313_while_lstm_cell_82_matmul_readvariableop_resource:	dÈO
<lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈJ
;lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource:	È˘2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp˘1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp˘3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp
@lstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_313/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0lstm_313_while_placeholderIlstm_313/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_313/while/lstm_cell_82/MatMulMatMul9lstm_313/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_313/while/lstm_cell_82/MatMul_1MatMullstm_313_while_placeholder_2;lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_313/while/lstm_cell_82/addAddV2,lstm_313/while/lstm_cell_82/MatMul:product:0.lstm_313/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_313/while/lstm_cell_82/BiasAddBiasAdd#lstm_313/while/lstm_cell_82/add:z:0:lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_313/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_313/while/lstm_cell_82/splitSplit4lstm_313/while/lstm_cell_82/split/split_dim:output:0,lstm_313/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_313/while/lstm_cell_82/SigmoidSigmoid*lstm_313/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_313/while/lstm_cell_82/Sigmoid_1Sigmoid*lstm_313/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_313/while/lstm_cell_82/mulMul)lstm_313/while/lstm_cell_82/Sigmoid_1:y:0lstm_313_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_313/while/lstm_cell_82/ReluRelu*lstm_313/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_313/while/lstm_cell_82/mul_1Mul'lstm_313/while/lstm_cell_82/Sigmoid:y:0.lstm_313/while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_313/while/lstm_cell_82/add_1AddV2#lstm_313/while/lstm_cell_82/mul:z:0%lstm_313/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_313/while/lstm_cell_82/Sigmoid_2Sigmoid*lstm_313/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_313/while/lstm_cell_82/Relu_1Relu%lstm_313/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_313/while/lstm_cell_82/mul_2Mul)lstm_313/while/lstm_cell_82/Sigmoid_2:y:00lstm_313/while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_313/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_313_while_placeholder_1lstm_313_while_placeholder%lstm_313/while/lstm_cell_82/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_313/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_313/while/addAddV2lstm_313_while_placeholderlstm_313/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_313/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_313/while/add_1AddV2*lstm_313_while_lstm_313_while_loop_counterlstm_313/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_313/while/IdentityIdentitylstm_313/while/add_1:z:0^lstm_313/while/NoOp*
T0*
_output_shapes
: 
lstm_313/while/Identity_1Identity0lstm_313_while_lstm_313_while_maximum_iterations^lstm_313/while/NoOp*
T0*
_output_shapes
: t
lstm_313/while/Identity_2Identitylstm_313/while/add:z:0^lstm_313/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_313/while/Identity_3IdentityClstm_313/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_313/while/NoOp*
T0*
_output_shapes
: 
lstm_313/while/Identity_4Identity%lstm_313/while/lstm_cell_82/mul_2:z:0^lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/while/Identity_5Identity%lstm_313/while/lstm_cell_82/add_1:z:0^lstm_313/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_313/while/NoOpNoOp3^lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2^lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp4^lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_313_while_identity lstm_313/while/Identity:output:0"?
lstm_313_while_identity_1"lstm_313/while/Identity_1:output:0"?
lstm_313_while_identity_2"lstm_313/while/Identity_2:output:0"?
lstm_313_while_identity_3"lstm_313/while/Identity_3:output:0"?
lstm_313_while_identity_4"lstm_313/while/Identity_4:output:0"?
lstm_313_while_identity_5"lstm_313/while/Identity_5:output:0"T
'lstm_313_while_lstm_313_strided_slice_1)lstm_313_while_lstm_313_strided_slice_1_0"|
;lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource=lstm_313_while_lstm_cell_82_biasadd_readvariableop_resource_0"~
<lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource>lstm_313_while_lstm_cell_82_matmul_1_readvariableop_resource_0"z
:lstm_313_while_lstm_cell_82_matmul_readvariableop_resource<lstm_313_while_lstm_cell_82_matmul_readvariableop_resource_0"Ì
clstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensorelstm_313_while_tensorarrayv2read_tensorlistgetitem_lstm_313_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2lstm_313/while/lstm_cell_82/BiasAdd/ReadVariableOp2f
1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp1lstm_313/while/lstm_cell_82/MatMul/ReadVariableOp2j
3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp3lstm_313/while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_312_layer_call_fn_505819
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_502790|
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
Ğ
¸
)__inference_lstm_312_layer_call_fn_505830
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_502981|
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
8

D__inference_lstm_314_layer_call_and_return_conditional_losses_503681

inputs%
lstm_cell_83_503599:2(%
lstm_cell_83_503601:
(!
lstm_cell_83_503603:(
identity˘$lstm_cell_83/StatefulPartitionedCall˘while;
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
$lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_83_503599lstm_cell_83_503601lstm_cell_83_503603*
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503553n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_83_503599lstm_cell_83_503601lstm_cell_83_503603*
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
while_body_503612*
condR
while_cond_503611*K
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
NoOpNoOp%^lstm_cell_83/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_83/StatefulPartitionedCall$lstm_cell_83/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
²

÷
lstm_314_while_cond_505717.
*lstm_314_while_lstm_314_while_loop_counter4
0lstm_314_while_lstm_314_while_maximum_iterations
lstm_314_while_placeholder 
lstm_314_while_placeholder_1 
lstm_314_while_placeholder_2 
lstm_314_while_placeholder_30
,lstm_314_while_less_lstm_314_strided_slice_1F
Blstm_314_while_lstm_314_while_cond_505717___redundant_placeholder0F
Blstm_314_while_lstm_314_while_cond_505717___redundant_placeholder1F
Blstm_314_while_lstm_314_while_cond_505717___redundant_placeholder2F
Blstm_314_while_lstm_314_while_cond_505717___redundant_placeholder3
lstm_314_while_identity

lstm_314/while/LessLesslstm_314_while_placeholder,lstm_314_while_less_lstm_314_strided_slice_1*
T0*
_output_shapes
: ]
lstm_314/while/IdentityIdentitylstm_314/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_314_while_identity lstm_314/while/Identity:output:0*(
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507937

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
Ŭ

H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507871

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
D__inference_lstm_313_layer_call_and_return_conditional_losses_504520

inputs>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_504436*
condR
while_cond_504435*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ĉ

J__inference_sequential_104_layer_call_and_return_conditional_losses_505381

inputsG
4lstm_312_lstm_cell_81_matmul_readvariableop_resource:	I
6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource:	dD
5lstm_312_lstm_cell_81_biasadd_readvariableop_resource:	G
4lstm_313_lstm_cell_82_matmul_readvariableop_resource:	dÈI
6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈD
5lstm_313_lstm_cell_82_biasadd_readvariableop_resource:	ÈF
4lstm_314_lstm_cell_83_matmul_readvariableop_resource:2(H
6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource:
(C
5lstm_314_lstm_cell_83_biasadd_readvariableop_resource:(:
(dense_104_matmul_readvariableop_resource:
7
)dense_104_biasadd_readvariableop_resource:
identity˘ dense_104/BiasAdd/ReadVariableOp˘dense_104/MatMul/ReadVariableOp˘,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp˘+lstm_312/lstm_cell_81/MatMul/ReadVariableOp˘-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp˘lstm_312/while˘,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp˘+lstm_313/lstm_cell_82/MatMul/ReadVariableOp˘-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp˘lstm_313/while˘,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp˘+lstm_314/lstm_cell_83/MatMul/ReadVariableOp˘-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp˘lstm_314/whileD
lstm_312/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_312/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_312/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_312/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_312/strided_sliceStridedSlicelstm_312/Shape:output:0%lstm_312/strided_slice/stack:output:0'lstm_312/strided_slice/stack_1:output:0'lstm_312/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_312/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_312/zeros/packedPacklstm_312/strided_slice:output:0 lstm_312/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_312/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_312/zerosFilllstm_312/zeros/packed:output:0lstm_312/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_312/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_312/zeros_1/packedPacklstm_312/strided_slice:output:0"lstm_312/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_312/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_312/zeros_1Fill lstm_312/zeros_1/packed:output:0lstm_312/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_312/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_312/transpose	Transposeinputs lstm_312/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_312/Shape_1Shapelstm_312/transpose:y:0*
T0*
_output_shapes
:h
lstm_312/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_312/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_312/strided_slice_1StridedSlicelstm_312/Shape_1:output:0'lstm_312/strided_slice_1/stack:output:0)lstm_312/strided_slice_1/stack_1:output:0)lstm_312/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_312/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_312/TensorArrayV2TensorListReserve-lstm_312/TensorArrayV2/element_shape:output:0!lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_312/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_312/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_312/transpose:y:0Glstm_312/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_312/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_312/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_312/strided_slice_2StridedSlicelstm_312/transpose:y:0'lstm_312/strided_slice_2/stack:output:0)lstm_312/strided_slice_2/stack_1:output:0)lstm_312/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_312/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp4lstm_312_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_312/lstm_cell_81/MatMulMatMul!lstm_312/strided_slice_2:output:03lstm_312/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_312/lstm_cell_81/MatMul_1MatMullstm_312/zeros:output:05lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_312/lstm_cell_81/addAddV2&lstm_312/lstm_cell_81/MatMul:product:0(lstm_312/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp5lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_312/lstm_cell_81/BiasAddBiasAddlstm_312/lstm_cell_81/add:z:04lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_312/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_312/lstm_cell_81/splitSplit.lstm_312/lstm_cell_81/split/split_dim:output:0&lstm_312/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_312/lstm_cell_81/SigmoidSigmoid$lstm_312/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/Sigmoid_1Sigmoid$lstm_312/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/mulMul#lstm_312/lstm_cell_81/Sigmoid_1:y:0lstm_312/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_312/lstm_cell_81/ReluRelu$lstm_312/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_312/lstm_cell_81/mul_1Mul!lstm_312/lstm_cell_81/Sigmoid:y:0(lstm_312/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/add_1AddV2lstm_312/lstm_cell_81/mul:z:0lstm_312/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_312/lstm_cell_81/Sigmoid_2Sigmoid$lstm_312/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_312/lstm_cell_81/Relu_1Relulstm_312/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_312/lstm_cell_81/mul_2Mul#lstm_312/lstm_cell_81/Sigmoid_2:y:0*lstm_312/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_312/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_312/TensorArrayV2_1TensorListReserve/lstm_312/TensorArrayV2_1/element_shape:output:0!lstm_312/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_312/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_312/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_312/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_312/whileWhile$lstm_312/while/loop_counter:output:0*lstm_312/while/maximum_iterations:output:0lstm_312/time:output:0!lstm_312/TensorArrayV2_1:handle:0lstm_312/zeros:output:0lstm_312/zeros_1:output:0!lstm_312/strided_slice_1:output:0@lstm_312/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_312_lstm_cell_81_matmul_readvariableop_resource6lstm_312_lstm_cell_81_matmul_1_readvariableop_resource5lstm_312_lstm_cell_81_biasadd_readvariableop_resource*
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
lstm_312_while_body_505013*&
condR
lstm_312_while_cond_505012*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_312/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_312/TensorArrayV2Stack/TensorListStackTensorListStacklstm_312/while:output:3Blstm_312/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_312/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_312/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_312/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_312/strided_slice_3StridedSlice4lstm_312/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_312/strided_slice_3/stack:output:0)lstm_312/strided_slice_3/stack_1:output:0)lstm_312/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_312/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_312/transpose_1	Transpose4lstm_312/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_312/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_312/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_313/ShapeShapelstm_312/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_313/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_313/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_313/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_313/strided_sliceStridedSlicelstm_313/Shape:output:0%lstm_313/strided_slice/stack:output:0'lstm_313/strided_slice/stack_1:output:0'lstm_313/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_313/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_313/zeros/packedPacklstm_313/strided_slice:output:0 lstm_313/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_313/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_313/zerosFilllstm_313/zeros/packed:output:0lstm_313/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_313/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_313/zeros_1/packedPacklstm_313/strided_slice:output:0"lstm_313/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_313/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_313/zeros_1Fill lstm_313/zeros_1/packed:output:0lstm_313/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_313/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_313/transpose	Transposelstm_312/transpose_1:y:0 lstm_313/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_313/Shape_1Shapelstm_313/transpose:y:0*
T0*
_output_shapes
:h
lstm_313/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_313/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_313/strided_slice_1StridedSlicelstm_313/Shape_1:output:0'lstm_313/strided_slice_1/stack:output:0)lstm_313/strided_slice_1/stack_1:output:0)lstm_313/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_313/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_313/TensorArrayV2TensorListReserve-lstm_313/TensorArrayV2/element_shape:output:0!lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_313/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_313/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_313/transpose:y:0Glstm_313/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_313/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_313/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_313/strided_slice_2StridedSlicelstm_313/transpose:y:0'lstm_313/strided_slice_2/stack:output:0)lstm_313/strided_slice_2/stack_1:output:0)lstm_313/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_313/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp4lstm_313_lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_313/lstm_cell_82/MatMulMatMul!lstm_313/strided_slice_2:output:03lstm_313/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_313/lstm_cell_82/MatMul_1MatMullstm_313/zeros:output:05lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_313/lstm_cell_82/addAddV2&lstm_313/lstm_cell_82/MatMul:product:0(lstm_313/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp5lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_313/lstm_cell_82/BiasAddBiasAddlstm_313/lstm_cell_82/add:z:04lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_313/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_313/lstm_cell_82/splitSplit.lstm_313/lstm_cell_82/split/split_dim:output:0&lstm_313/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_313/lstm_cell_82/SigmoidSigmoid$lstm_313/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/Sigmoid_1Sigmoid$lstm_313/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/mulMul#lstm_313/lstm_cell_82/Sigmoid_1:y:0lstm_313/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_313/lstm_cell_82/ReluRelu$lstm_313/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_313/lstm_cell_82/mul_1Mul!lstm_313/lstm_cell_82/Sigmoid:y:0(lstm_313/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/add_1AddV2lstm_313/lstm_cell_82/mul:z:0lstm_313/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_313/lstm_cell_82/Sigmoid_2Sigmoid$lstm_313/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_313/lstm_cell_82/Relu_1Relulstm_313/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_313/lstm_cell_82/mul_2Mul#lstm_313/lstm_cell_82/Sigmoid_2:y:0*lstm_313/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_313/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_313/TensorArrayV2_1TensorListReserve/lstm_313/TensorArrayV2_1/element_shape:output:0!lstm_313/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_313/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_313/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_313/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_313/whileWhile$lstm_313/while/loop_counter:output:0*lstm_313/while/maximum_iterations:output:0lstm_313/time:output:0!lstm_313/TensorArrayV2_1:handle:0lstm_313/zeros:output:0lstm_313/zeros_1:output:0!lstm_313/strided_slice_1:output:0@lstm_313/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_313_lstm_cell_82_matmul_readvariableop_resource6lstm_313_lstm_cell_82_matmul_1_readvariableop_resource5lstm_313_lstm_cell_82_biasadd_readvariableop_resource*
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
lstm_313_while_body_505152*&
condR
lstm_313_while_cond_505151*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_313/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_313/TensorArrayV2Stack/TensorListStackTensorListStacklstm_313/while:output:3Blstm_313/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_313/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_313/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_313/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_313/strided_slice_3StridedSlice4lstm_313/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_313/strided_slice_3/stack:output:0)lstm_313/strided_slice_3/stack_1:output:0)lstm_313/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_313/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_313/transpose_1	Transpose4lstm_313/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_313/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_313/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_314/ShapeShapelstm_313/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_314/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_314/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_314/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_314/strided_sliceStridedSlicelstm_314/Shape:output:0%lstm_314/strided_slice/stack:output:0'lstm_314/strided_slice/stack_1:output:0'lstm_314/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_314/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_314/zeros/packedPacklstm_314/strided_slice:output:0 lstm_314/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_314/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_314/zerosFilllstm_314/zeros/packed:output:0lstm_314/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_314/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_314/zeros_1/packedPacklstm_314/strided_slice:output:0"lstm_314/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_314/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_314/zeros_1Fill lstm_314/zeros_1/packed:output:0lstm_314/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_314/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_314/transpose	Transposelstm_313/transpose_1:y:0 lstm_314/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_314/Shape_1Shapelstm_314/transpose:y:0*
T0*
_output_shapes
:h
lstm_314/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_314/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_314/strided_slice_1StridedSlicelstm_314/Shape_1:output:0'lstm_314/strided_slice_1/stack:output:0)lstm_314/strided_slice_1/stack_1:output:0)lstm_314/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_314/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_314/TensorArrayV2TensorListReserve-lstm_314/TensorArrayV2/element_shape:output:0!lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_314/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_314/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_314/transpose:y:0Glstm_314/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_314/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_314/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_314/strided_slice_2StridedSlicelstm_314/transpose:y:0'lstm_314/strided_slice_2/stack:output:0)lstm_314/strided_slice_2/stack_1:output:0)lstm_314/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_314/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp4lstm_314_lstm_cell_83_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_314/lstm_cell_83/MatMulMatMul!lstm_314/strided_slice_2:output:03lstm_314/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_314/lstm_cell_83/MatMul_1MatMullstm_314/zeros:output:05lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_314/lstm_cell_83/addAddV2&lstm_314/lstm_cell_83/MatMul:product:0(lstm_314/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp5lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_314/lstm_cell_83/BiasAddBiasAddlstm_314/lstm_cell_83/add:z:04lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_314/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_314/lstm_cell_83/splitSplit.lstm_314/lstm_cell_83/split/split_dim:output:0&lstm_314/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_314/lstm_cell_83/SigmoidSigmoid$lstm_314/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/Sigmoid_1Sigmoid$lstm_314/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/mulMul#lstm_314/lstm_cell_83/Sigmoid_1:y:0lstm_314/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_314/lstm_cell_83/ReluRelu$lstm_314/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_314/lstm_cell_83/mul_1Mul!lstm_314/lstm_cell_83/Sigmoid:y:0(lstm_314/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/add_1AddV2lstm_314/lstm_cell_83/mul:z:0lstm_314/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_314/lstm_cell_83/Sigmoid_2Sigmoid$lstm_314/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_314/lstm_cell_83/Relu_1Relulstm_314/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_314/lstm_cell_83/mul_2Mul#lstm_314/lstm_cell_83/Sigmoid_2:y:0*lstm_314/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_314/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_314/TensorArrayV2_1TensorListReserve/lstm_314/TensorArrayV2_1/element_shape:output:0!lstm_314/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_314/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_314/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_314/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_314/whileWhile$lstm_314/while/loop_counter:output:0*lstm_314/while/maximum_iterations:output:0lstm_314/time:output:0!lstm_314/TensorArrayV2_1:handle:0lstm_314/zeros:output:0lstm_314/zeros_1:output:0!lstm_314/strided_slice_1:output:0@lstm_314/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_314_lstm_cell_83_matmul_readvariableop_resource6lstm_314_lstm_cell_83_matmul_1_readvariableop_resource5lstm_314_lstm_cell_83_biasadd_readvariableop_resource*
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
lstm_314_while_body_505291*&
condR
lstm_314_while_cond_505290*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_314/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_314/TensorArrayV2Stack/TensorListStackTensorListStacklstm_314/while:output:3Blstm_314/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_314/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_314/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_314/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_314/strided_slice_3StridedSlice4lstm_314/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_314/strided_slice_3/stack:output:0)lstm_314/strided_slice_3/stack_1:output:0)lstm_314/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_314/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_314/transpose_1	Transpose4lstm_314/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_314/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_314/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_104/MatMulMatMul!lstm_314/strided_slice_3:output:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_104/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp-^lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp,^lstm_312/lstm_cell_81/MatMul/ReadVariableOp.^lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp^lstm_312/while-^lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp,^lstm_313/lstm_cell_82/MatMul/ReadVariableOp.^lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp^lstm_313/while-^lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp,^lstm_314/lstm_cell_83/MatMul/ReadVariableOp.^lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp^lstm_314/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp2\
,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp,lstm_312/lstm_cell_81/BiasAdd/ReadVariableOp2Z
+lstm_312/lstm_cell_81/MatMul/ReadVariableOp+lstm_312/lstm_cell_81/MatMul/ReadVariableOp2^
-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp-lstm_312/lstm_cell_81/MatMul_1/ReadVariableOp2 
lstm_312/whilelstm_312/while2\
,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp,lstm_313/lstm_cell_82/BiasAdd/ReadVariableOp2Z
+lstm_313/lstm_cell_82/MatMul/ReadVariableOp+lstm_313/lstm_cell_82/MatMul/ReadVariableOp2^
-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp-lstm_313/lstm_cell_82/MatMul_1/ReadVariableOp2 
lstm_313/whilelstm_313/while2\
,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp,lstm_314/lstm_cell_83/BiasAdd/ReadVariableOp2Z
+lstm_314/lstm_cell_83/MatMul/ReadVariableOp+lstm_314/lstm_cell_83/MatMul/ReadVariableOp2^
-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp-lstm_314/lstm_cell_83/MatMul_1/ReadVariableOp2 
lstm_314/whilelstm_314/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ğ
¸
)__inference_lstm_313_layer_call_fn_506435
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503140|
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
ó¤

"__inference__traced_restore_508242
file_prefix3
!assignvariableop_dense_104_kernel:
/
!assignvariableop_1_dense_104_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_312_lstm_cell_312_kernel:	M
:assignvariableop_8_lstm_312_lstm_cell_312_recurrent_kernel:	d=
.assignvariableop_9_lstm_312_lstm_cell_312_bias:	D
1assignvariableop_10_lstm_313_lstm_cell_313_kernel:	dÈN
;assignvariableop_11_lstm_313_lstm_cell_313_recurrent_kernel:	2È>
/assignvariableop_12_lstm_313_lstm_cell_313_bias:	ÈC
1assignvariableop_13_lstm_314_lstm_cell_314_kernel:2(M
;assignvariableop_14_lstm_314_lstm_cell_314_recurrent_kernel:
(=
/assignvariableop_15_lstm_314_lstm_cell_314_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_104_kernel_m:
7
)assignvariableop_19_adam_dense_104_bias_m:K
8assignvariableop_20_adam_lstm_312_lstm_cell_312_kernel_m:	U
Bassignvariableop_21_adam_lstm_312_lstm_cell_312_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_312_lstm_cell_312_bias_m:	K
8assignvariableop_23_adam_lstm_313_lstm_cell_313_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_313_lstm_cell_313_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_313_lstm_cell_313_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_314_lstm_cell_314_kernel_m:2(T
Bassignvariableop_27_adam_lstm_314_lstm_cell_314_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_314_lstm_cell_314_bias_m:(=
+assignvariableop_29_adam_dense_104_kernel_v:
7
)assignvariableop_30_adam_dense_104_bias_v:K
8assignvariableop_31_adam_lstm_312_lstm_cell_312_kernel_v:	U
Bassignvariableop_32_adam_lstm_312_lstm_cell_312_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_312_lstm_cell_312_bias_v:	K
8assignvariableop_34_adam_lstm_313_lstm_cell_313_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_313_lstm_cell_313_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_313_lstm_cell_313_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_314_lstm_cell_314_kernel_v:2(T
Bassignvariableop_38_adam_lstm_314_lstm_cell_314_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_314_lstm_cell_314_bias_v:(
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
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_104_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_104_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_312_lstm_cell_312_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_312_lstm_cell_312_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_312_lstm_cell_312_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_313_lstm_cell_313_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_313_lstm_cell_313_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_313_lstm_cell_313_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_314_lstm_cell_314_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_314_lstm_cell_314_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_314_lstm_cell_314_biasIdentity_15:output:0"/device:CPU:0*
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
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_104_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_104_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_312_lstm_cell_312_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_312_lstm_cell_312_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_312_lstm_cell_312_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_313_lstm_cell_313_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_313_lstm_cell_313_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_313_lstm_cell_313_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_314_lstm_cell_314_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_314_lstm_cell_314_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_314_lstm_cell_314_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_104_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_104_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_312_lstm_cell_312_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_312_lstm_cell_312_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_312_lstm_cell_312_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_313_lstm_cell_313_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_313_lstm_cell_313_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_313_lstm_cell_313_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_314_lstm_cell_314_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_314_lstm_cell_314_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_314_lstm_cell_314_bias_vIdentity_39:output:0"/device:CPU:0*
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
ë
ö
-__inference_lstm_cell_81_layer_call_fn_507692

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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502707o
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
)__inference_lstm_313_layer_call_fn_506468

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
D__inference_lstm_313_layer_call_and_return_conditional_losses_504520s
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
while_cond_506812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506812___redundant_placeholder04
0while_while_cond_506812___redundant_placeholder14
0while_while_cond_506812___redundant_placeholder24
0while_while_cond_506812___redundant_placeholder3
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
)__inference_lstm_314_layer_call_fn_507073

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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504139o
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
ö
³
)__inference_lstm_314_layer_call_fn_507084

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
D__inference_lstm_314_layer_call_and_return_conditional_losses_504355o
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
Ġ

H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502707

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
while_body_506670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_82_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_82_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_82_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_82_biasadd_readvariableop_resource:	È˘)while/lstm_cell_82/BiasAdd/ReadVariableOp˘(while/lstm_cell_82/MatMul/ReadVariableOp˘*while/lstm_cell_82/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_82/ReluRelu!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_1Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_82/Relu_1Reluwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_82/mul_2Mul while/lstm_cell_82/Sigmoid_2:y:0'while/lstm_cell_82/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_82/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_82_layer_call_fn_507807

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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503203o
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
while_cond_506526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506526___redundant_placeholder04
0while_while_cond_506526___redundant_placeholder14
0while_while_cond_506526___redundant_placeholder24
0while_while_cond_506526___redundant_placeholder3
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_503331

inputs&
lstm_cell_82_503249:	dÈ&
lstm_cell_82_503251:	2È"
lstm_cell_82_503253:	È
identity˘$lstm_cell_82/StatefulPartitionedCall˘while;
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
$lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_82_503249lstm_cell_82_503251lstm_cell_82_503253*
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503203n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_82_503249lstm_cell_82_503251lstm_cell_82_503253*
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
while_body_503262*
condR
while_cond_503261*K
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
NoOpNoOp%^lstm_cell_82/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_82/StatefulPartitionedCall$lstm_cell_82/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_314_layer_call_and_return_conditional_losses_503490

inputs%
lstm_cell_83_503408:2(%
lstm_cell_83_503410:
(!
lstm_cell_83_503412:(
identity˘$lstm_cell_83/StatefulPartitionedCall˘while;
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
$lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_83_503408lstm_cell_83_503410lstm_cell_83_503412*
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503407n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_83_503408lstm_cell_83_503410lstm_cell_83_503412*
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
while_body_503421*
condR
while_cond_503420*K
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
NoOpNoOp%^lstm_cell_83/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_83/StatefulPartitionedCall$lstm_cell_83/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_506339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506339___redundant_placeholder04
0while_while_cond_506339___redundant_placeholder14
0while_while_cond_506339___redundant_placeholder24
0while_while_cond_506339___redundant_placeholder3
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_504685

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_504601*
condR
while_cond_504600*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_507143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_83_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_83_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_83_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_83_matmul_readvariableop_resource:2(E
3while_lstm_cell_83_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_83_biasadd_readvariableop_resource:(˘)while/lstm_cell_83/BiasAdd/ReadVariableOp˘(while/lstm_cell_83/MatMul/ReadVariableOp˘*while/lstm_cell_83/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_83/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_83_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_83/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_83/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_83_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_83/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_83/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_83/addAddV2#while/lstm_cell_83/MatMul:product:0%while/lstm_cell_83/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_83/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_83_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_83/BiasAddBiasAddwhile/lstm_cell_83/add:z:01while/lstm_cell_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0#while/lstm_cell_83/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_83/SigmoidSigmoid!while/lstm_cell_83/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_1Sigmoid!while/lstm_cell_83/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mulMul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_83/ReluRelu!while/lstm_cell_83/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_1Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/add_1AddV2while/lstm_cell_83/mul:z:0while/lstm_cell_83/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_83/Sigmoid_2Sigmoid!while/lstm_cell_83/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_83/mul_2Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_83/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_83/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_83/BiasAdd/ReadVariableOp)^while/lstm_cell_83/MatMul/ReadVariableOp+^while/lstm_cell_83/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_83_biasadd_readvariableop_resource4while_lstm_cell_83_biasadd_readvariableop_resource_0"l
3while_lstm_cell_83_matmul_1_readvariableop_resource5while_lstm_cell_83_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_83_matmul_readvariableop_resource3while_lstm_cell_83_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_83/BiasAdd/ReadVariableOp)while/lstm_cell_83/BiasAdd/ReadVariableOp2T
(while/lstm_cell_83/MatMul/ReadVariableOp(while/lstm_cell_83/MatMul/ReadVariableOp2X
*while/lstm_cell_83/MatMul_1/ReadVariableOp*while/lstm_cell_83/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_83_layer_call_fn_507905

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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_503553o
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
while_cond_503904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503904___redundant_placeholder04
0while_while_cond_503904___redundant_placeholder14
0while_while_cond_503904___redundant_placeholder24
0while_while_cond_503904___redundant_placeholder3
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
âJ

D__inference_lstm_312_layer_call_and_return_conditional_losses_505995
inputs_0>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_505911*
condR
while_cond_505910*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_312_layer_call_and_return_conditional_losses_506424

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_506340*
condR
while_cond_506339*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_507142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_507142___redundant_placeholder04
0while_while_cond_507142___redundant_placeholder14
0while_while_cond_507142___redundant_placeholder24
0while_while_cond_507142___redundant_placeholder3
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_503839

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	@
-lstm_cell_81_matmul_1_readvariableop_resource:	d;
,lstm_cell_81_biasadd_readvariableop_resource:	
identity˘#lstm_cell_81/BiasAdd/ReadVariableOp˘"lstm_cell_81/MatMul/ReadVariableOp˘$lstm_cell_81/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_81/ReluRelulstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_1Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_81/Relu_1Relulstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid_2:y:0!lstm_cell_81/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
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
while_body_503755*
condR
while_cond_503754*K
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
NoOpNoOp$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_502720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_502720___redundant_placeholder04
0while_while_cond_502720___redundant_placeholder14
0while_while_cond_502720___redundant_placeholder24
0while_while_cond_502720___redundant_placeholder3
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
ĉ"
?
while_body_502721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_81_502745_0:	.
while_lstm_cell_81_502747_0:	d*
while_lstm_cell_81_502749_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_81_502745:	,
while_lstm_cell_81_502747:	d(
while_lstm_cell_81_502749:	˘*while/lstm_cell_81/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_81_502745_0while_lstm_cell_81_502747_0while_lstm_cell_81_502749_0*
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_502707Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_81/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_81/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_81/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_81/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_81_502745while_lstm_cell_81_502745_0"8
while_lstm_cell_81_502747while_lstm_cell_81_502747_0"8
while_lstm_cell_81_502749while_lstm_cell_81_502749_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_81/StatefulPartitionedCall*while/lstm_cell_81/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ü


/__inference_sequential_104_layer_call_fn_504954

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
identity˘StatefulPartitionedCallÔ
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
GPU 2J 8 *S
fNRL
J__inference_sequential_104_layer_call_and_return_conditional_losses_504753o
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
8
?
while_body_505911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	H
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	F
3while_lstm_cell_81_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_81_biasadd_readvariableop_resource:	˘)while/lstm_cell_81/BiasAdd/ReadVariableOp˘(while/lstm_cell_81/MatMul/ReadVariableOp˘*while/lstm_cell_81/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_81/ReluRelu!while/lstm_cell_81/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_1Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_81/Relu_1Reluwhile/lstm_cell_81/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_81/mul_2Mul while/lstm_cell_81/Sigmoid_2:y:0'while/lstm_cell_81/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_81/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_503754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503754___redundant_placeholder04
0while_while_cond_503754___redundant_placeholder14
0while_while_cond_503754___redundant_placeholder24
0while_while_cond_503754___redundant_placeholder3
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
while_cond_506196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_506196___redundant_placeholder04
0while_while_cond_506196___redundant_placeholder14
0while_while_cond_506196___redundant_placeholder24
0while_while_cond_506196___redundant_placeholder3
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
lstm_312_while_cond_505012.
*lstm_312_while_lstm_312_while_loop_counter4
0lstm_312_while_lstm_312_while_maximum_iterations
lstm_312_while_placeholder 
lstm_312_while_placeholder_1 
lstm_312_while_placeholder_2 
lstm_312_while_placeholder_30
,lstm_312_while_less_lstm_312_strided_slice_1F
Blstm_312_while_lstm_312_while_cond_505012___redundant_placeholder0F
Blstm_312_while_lstm_312_while_cond_505012___redundant_placeholder1F
Blstm_312_while_lstm_312_while_cond_505012___redundant_placeholder2F
Blstm_312_while_lstm_312_while_cond_505012___redundant_placeholder3
lstm_312_while_identity

lstm_312/while/LessLesslstm_312_while_placeholder,lstm_312_while_less_lstm_312_strided_slice_1*
T0*
_output_shapes
: ]
lstm_312/while/IdentityIdentitylstm_312/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_312_while_identity lstm_312/while/Identity:output:0*(
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
while_cond_503070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_503070___redundant_placeholder04
0while_while_cond_503070___redundant_placeholder14
0while_while_cond_503070___redundant_placeholder24
0while_while_cond_503070___redundant_placeholder3
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_506897

inputs>
+lstm_cell_82_matmul_readvariableop_resource:	dÈ@
-lstm_cell_82_matmul_1_readvariableop_resource:	2È;
,lstm_cell_82_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_82/BiasAdd/ReadVariableOp˘"lstm_cell_82/MatMul/ReadVariableOp˘$lstm_cell_82/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_82/ReluRelulstm_cell_82/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_1Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_82/Relu_1Relulstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid_2:y:0!lstm_cell_82/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
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
while_body_506813*
condR
while_cond_506812*K
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
NoOpNoOp$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĉ"
?
while_body_503071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_82_503095_0:	dÈ.
while_lstm_cell_82_503097_0:	2È*
while_lstm_cell_82_503099_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_82_503095:	dÈ,
while_lstm_cell_82_503097:	2È(
while_lstm_cell_82_503099:	È˘*while/lstm_cell_82/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_82_503095_0while_lstm_cell_82_503097_0while_lstm_cell_82_503099_0*
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_503057Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_82/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_82/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_82/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_82/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_82_503095while_lstm_cell_82_503095_0"8
while_lstm_cell_82_503097while_lstm_cell_82_503097_0"8
while_lstm_cell_82_503099while_lstm_cell_82_503099_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_82/StatefulPartitionedCall*while/lstm_cell_82/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

NoOp*?
serving_defaultŞ
M
lstm_312_input;
 serving_default_lstm_312_input:0˙˙˙˙˙˙˙˙˙=
	dense_1040
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ñ
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
": 
2dense_104/kernel
:2dense_104/bias
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
0:.	2lstm_312/lstm_cell_312/kernel
::8	d2'lstm_312/lstm_cell_312/recurrent_kernel
*:(2lstm_312/lstm_cell_312/bias
0:.	dÈ2lstm_313/lstm_cell_313/kernel
::8	2È2'lstm_313/lstm_cell_313/recurrent_kernel
*:(È2lstm_313/lstm_cell_313/bias
/:-2(2lstm_314/lstm_cell_314/kernel
9:7
(2'lstm_314/lstm_cell_314/recurrent_kernel
):'(2lstm_314/lstm_cell_314/bias
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
':%
2Adam/dense_104/kernel/m
!:2Adam/dense_104/bias/m
5:3	2$Adam/lstm_312/lstm_cell_312/kernel/m
?:=	d2.Adam/lstm_312/lstm_cell_312/recurrent_kernel/m
/:-2"Adam/lstm_312/lstm_cell_312/bias/m
5:3	dÈ2$Adam/lstm_313/lstm_cell_313/kernel/m
?:=	2È2.Adam/lstm_313/lstm_cell_313/recurrent_kernel/m
/:-È2"Adam/lstm_313/lstm_cell_313/bias/m
4:22(2$Adam/lstm_314/lstm_cell_314/kernel/m
>:<
(2.Adam/lstm_314/lstm_cell_314/recurrent_kernel/m
.:,(2"Adam/lstm_314/lstm_cell_314/bias/m
':%
2Adam/dense_104/kernel/v
!:2Adam/dense_104/bias/v
5:3	2$Adam/lstm_312/lstm_cell_312/kernel/v
?:=	d2.Adam/lstm_312/lstm_cell_312/recurrent_kernel/v
/:-2"Adam/lstm_312/lstm_cell_312/bias/v
5:3	dÈ2$Adam/lstm_313/lstm_cell_313/kernel/v
?:=	2È2.Adam/lstm_313/lstm_cell_313/recurrent_kernel/v
/:-È2"Adam/lstm_313/lstm_cell_313/bias/v
4:22(2$Adam/lstm_314/lstm_cell_314/kernel/v
>:<
(2.Adam/lstm_314/lstm_cell_314/recurrent_kernel/v
.:,(2"Adam/lstm_314/lstm_cell_314/bias/v
2
/__inference_sequential_104_layer_call_fn_504189
/__inference_sequential_104_layer_call_fn_504927
/__inference_sequential_104_layer_call_fn_504954
/__inference_sequential_104_layer_call_fn_504805À
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
ö2ó
J__inference_sequential_104_layer_call_and_return_conditional_losses_505381
J__inference_sequential_104_layer_call_and_return_conditional_losses_505808
J__inference_sequential_104_layer_call_and_return_conditional_losses_504835
J__inference_sequential_104_layer_call_and_return_conditional_losses_504865À
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
!__inference__wrapped_model_502640lstm_312_input"
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
)__inference_lstm_312_layer_call_fn_505819
)__inference_lstm_312_layer_call_fn_505830
)__inference_lstm_312_layer_call_fn_505841
)__inference_lstm_312_layer_call_fn_505852Ġ
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_505995
D__inference_lstm_312_layer_call_and_return_conditional_losses_506138
D__inference_lstm_312_layer_call_and_return_conditional_losses_506281
D__inference_lstm_312_layer_call_and_return_conditional_losses_506424Ġ
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
)__inference_lstm_313_layer_call_fn_506435
)__inference_lstm_313_layer_call_fn_506446
)__inference_lstm_313_layer_call_fn_506457
)__inference_lstm_313_layer_call_fn_506468Ġ
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_506611
D__inference_lstm_313_layer_call_and_return_conditional_losses_506754
D__inference_lstm_313_layer_call_and_return_conditional_losses_506897
D__inference_lstm_313_layer_call_and_return_conditional_losses_507040Ġ
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
)__inference_lstm_314_layer_call_fn_507051
)__inference_lstm_314_layer_call_fn_507062
)__inference_lstm_314_layer_call_fn_507073
)__inference_lstm_314_layer_call_fn_507084Ġ
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_507227
D__inference_lstm_314_layer_call_and_return_conditional_losses_507370
D__inference_lstm_314_layer_call_and_return_conditional_losses_507513
D__inference_lstm_314_layer_call_and_return_conditional_losses_507656Ġ
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
Ô2Ñ
*__inference_dense_104_layer_call_fn_507665˘
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
ï2ì
E__inference_dense_104_layer_call_and_return_conditional_losses_507675˘
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
$__inference_signature_wrapper_504900lstm_312_input"
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
-__inference_lstm_cell_81_layer_call_fn_507692
-__inference_lstm_cell_81_layer_call_fn_507709?
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507741
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507773?
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
-__inference_lstm_cell_82_layer_call_fn_507790
-__inference_lstm_cell_82_layer_call_fn_507807?
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507839
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507871?
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
-__inference_lstm_cell_83_layer_call_fn_507888
-__inference_lstm_cell_83_layer_call_fn_507905?
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507937
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507969?
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
 §
!__inference__wrapped_model_502640-./012345!";˘8
1˘.
,)
lstm_312_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_104# 
	dense_104˙˙˙˙˙˙˙˙˙?
E__inference_dense_104_layer_call_and_return_conditional_losses_507675\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_104_layer_call_fn_507665O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_312_layer_call_and_return_conditional_losses_505995-./O˘L
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_506138-./O˘L
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_506281q-./?˘<
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
D__inference_lstm_312_layer_call_and_return_conditional_losses_506424q-./?˘<
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
)__inference_lstm_312_layer_call_fn_505819}-./O˘L
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
)__inference_lstm_312_layer_call_fn_505830}-./O˘L
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
)__inference_lstm_312_layer_call_fn_505841d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_312_layer_call_fn_505852d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_313_layer_call_and_return_conditional_losses_506611012O˘L
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_506754012O˘L
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_506897q012?˘<
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
D__inference_lstm_313_layer_call_and_return_conditional_losses_507040q012?˘<
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
)__inference_lstm_313_layer_call_fn_506435}012O˘L
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
)__inference_lstm_313_layer_call_fn_506446}012O˘L
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
)__inference_lstm_313_layer_call_fn_506457d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_313_layer_call_fn_506468d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_314_layer_call_and_return_conditional_losses_507227}345O˘L
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_507370}345O˘L
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_507513m345?˘<
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
D__inference_lstm_314_layer_call_and_return_conditional_losses_507656m345?˘<
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
)__inference_lstm_314_layer_call_fn_507051p345O˘L
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
)__inference_lstm_314_layer_call_fn_507062p345O˘L
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
)__inference_lstm_314_layer_call_fn_507073`345?˘<
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
)__inference_lstm_314_layer_call_fn_507084`345?˘<
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507741ŭ-./˘}
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
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_507773ŭ-./˘}
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
-__inference_lstm_cell_81_layer_call_fn_507692í-./˘}
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
-__inference_lstm_cell_81_layer_call_fn_507709í-./˘}
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507839ŭ012˘}
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
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_507871ŭ012˘}
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
-__inference_lstm_cell_82_layer_call_fn_507790í012˘}
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
-__inference_lstm_cell_82_layer_call_fn_507807í012˘}
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507937ŭ345˘}
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
H__inference_lstm_cell_83_layer_call_and_return_conditional_losses_507969ŭ345˘}
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
-__inference_lstm_cell_83_layer_call_fn_507888í345˘}
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
-__inference_lstm_cell_83_layer_call_fn_507905í345˘}
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
Ç
J__inference_sequential_104_layer_call_and_return_conditional_losses_504835y-./012345!"C˘@
9˘6
,)
lstm_312_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_104_layer_call_and_return_conditional_losses_504865y-./012345!"C˘@
9˘6
,)
lstm_312_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_104_layer_call_and_return_conditional_losses_505381q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_104_layer_call_and_return_conditional_losses_505808q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
/__inference_sequential_104_layer_call_fn_504189l-./012345!"C˘@
9˘6
,)
lstm_312_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_104_layer_call_fn_504805l-./012345!"C˘@
9˘6
,)
lstm_312_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_104_layer_call_fn_504927d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_104_layer_call_fn_504954d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_504900-./012345!"M˘J
˘ 
CŞ@
>
lstm_312_input,)
lstm_312_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_104# 
	dense_104˙˙˙˙˙˙˙˙˙