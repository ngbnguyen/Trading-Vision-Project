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
dense_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_102/kernel
u
$dense_102/kernel/Read/ReadVariableOpReadVariableOpdense_102/kernel*
_output_shapes

:
*
dtype0
t
dense_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_102/bias
m
"dense_102/bias/Read/ReadVariableOpReadVariableOpdense_102/bias*
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
lstm_306/lstm_cell_306/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_306/lstm_cell_306/kernel

1lstm_306/lstm_cell_306/kernel/Read/ReadVariableOpReadVariableOplstm_306/lstm_cell_306/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_306/lstm_cell_306/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_306/lstm_cell_306/recurrent_kernel
¤
;lstm_306/lstm_cell_306/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_306/lstm_cell_306/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_306/lstm_cell_306/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_306/lstm_cell_306/bias

/lstm_306/lstm_cell_306/bias/Read/ReadVariableOpReadVariableOplstm_306/lstm_cell_306/bias*
_output_shapes	
:*
dtype0

lstm_307/lstm_cell_307/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_307/lstm_cell_307/kernel

1lstm_307/lstm_cell_307/kernel/Read/ReadVariableOpReadVariableOplstm_307/lstm_cell_307/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_307/lstm_cell_307/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_307/lstm_cell_307/recurrent_kernel
¤
;lstm_307/lstm_cell_307/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_307/lstm_cell_307/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_307/lstm_cell_307/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_307/lstm_cell_307/bias

/lstm_307/lstm_cell_307/bias/Read/ReadVariableOpReadVariableOplstm_307/lstm_cell_307/bias*
_output_shapes	
:È*
dtype0

lstm_308/lstm_cell_308/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_308/lstm_cell_308/kernel

1lstm_308/lstm_cell_308/kernel/Read/ReadVariableOpReadVariableOplstm_308/lstm_cell_308/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_308/lstm_cell_308/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_308/lstm_cell_308/recurrent_kernel
£
;lstm_308/lstm_cell_308/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_308/lstm_cell_308/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_308/lstm_cell_308/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_308/lstm_cell_308/bias

/lstm_308/lstm_cell_308/bias/Read/ReadVariableOpReadVariableOplstm_308/lstm_cell_308/bias*
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
Adam/dense_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_102/kernel/m

+Adam/dense_102/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_102/bias/m
{
)Adam/dense_102/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_306/lstm_cell_306/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_306/lstm_cell_306/kernel/m

8Adam/lstm_306/lstm_cell_306/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_306/lstm_cell_306/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_306/lstm_cell_306/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_306/lstm_cell_306/recurrent_kernel/m
²
BAdam/lstm_306/lstm_cell_306/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_306/lstm_cell_306/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_306/lstm_cell_306/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_306/lstm_cell_306/bias/m

6Adam/lstm_306/lstm_cell_306/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_306/lstm_cell_306/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_307/lstm_cell_307/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_307/lstm_cell_307/kernel/m

8Adam/lstm_307/lstm_cell_307/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_307/lstm_cell_307/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_307/lstm_cell_307/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_307/lstm_cell_307/recurrent_kernel/m
²
BAdam/lstm_307/lstm_cell_307/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_307/lstm_cell_307/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_307/lstm_cell_307/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_307/lstm_cell_307/bias/m

6Adam/lstm_307/lstm_cell_307/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_307/lstm_cell_307/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_308/lstm_cell_308/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_308/lstm_cell_308/kernel/m

8Adam/lstm_308/lstm_cell_308/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_308/lstm_cell_308/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_308/lstm_cell_308/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_308/lstm_cell_308/recurrent_kernel/m
ħ
BAdam/lstm_308/lstm_cell_308/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_308/lstm_cell_308/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_308/lstm_cell_308/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_308/lstm_cell_308/bias/m

6Adam/lstm_308/lstm_cell_308/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_308/lstm_cell_308/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_102/kernel/v

+Adam/dense_102/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_102/bias/v
{
)Adam/dense_102/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_306/lstm_cell_306/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_306/lstm_cell_306/kernel/v

8Adam/lstm_306/lstm_cell_306/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_306/lstm_cell_306/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_306/lstm_cell_306/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_306/lstm_cell_306/recurrent_kernel/v
²
BAdam/lstm_306/lstm_cell_306/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_306/lstm_cell_306/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_306/lstm_cell_306/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_306/lstm_cell_306/bias/v

6Adam/lstm_306/lstm_cell_306/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_306/lstm_cell_306/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_307/lstm_cell_307/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_307/lstm_cell_307/kernel/v

8Adam/lstm_307/lstm_cell_307/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_307/lstm_cell_307/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_307/lstm_cell_307/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_307/lstm_cell_307/recurrent_kernel/v
²
BAdam/lstm_307/lstm_cell_307/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_307/lstm_cell_307/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_307/lstm_cell_307/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_307/lstm_cell_307/bias/v

6Adam/lstm_307/lstm_cell_307/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_307/lstm_cell_307/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_308/lstm_cell_308/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_308/lstm_cell_308/kernel/v

8Adam/lstm_308/lstm_cell_308/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_308/lstm_cell_308/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_308/lstm_cell_308/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_308/lstm_cell_308/recurrent_kernel/v
ħ
BAdam/lstm_308/lstm_cell_308/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_308/lstm_cell_308/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_308/lstm_cell_308/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_308/lstm_cell_308/bias/v

6Adam/lstm_308/lstm_cell_308/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_308/lstm_cell_308/bias/v*
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
VARIABLE_VALUEdense_102/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_102/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_306/lstm_cell_306/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_306/lstm_cell_306/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_306/lstm_cell_306/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_307/lstm_cell_307/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_307/lstm_cell_307/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_307/lstm_cell_307/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_308/lstm_cell_308/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_308/lstm_cell_308/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_308/lstm_cell_308/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_102/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_306/lstm_cell_306/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_306/lstm_cell_306/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_306/lstm_cell_306/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_307/lstm_cell_307/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_307/lstm_cell_307/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_307/lstm_cell_307/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_308/lstm_cell_308/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_308/lstm_cell_308/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_308/lstm_cell_308/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_102/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_306/lstm_cell_306/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_306/lstm_cell_306/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_306/lstm_cell_306/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_307/lstm_cell_307/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_307/lstm_cell_307/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_307/lstm_cell_307/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_308/lstm_cell_308/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_308/lstm_cell_308/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_308/lstm_cell_308/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_306_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_306_inputlstm_306/lstm_cell_306/kernel'lstm_306/lstm_cell_306/recurrent_kernellstm_306/lstm_cell_306/biaslstm_307/lstm_cell_307/kernel'lstm_307/lstm_cell_307/recurrent_kernellstm_307/lstm_cell_307/biaslstm_308/lstm_cell_308/kernel'lstm_308/lstm_cell_308/recurrent_kernellstm_308/lstm_cell_308/biasdense_102/kerneldense_102/bias*
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
$__inference_signature_wrapper_468340
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_102/kernel/Read/ReadVariableOp"dense_102/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_306/lstm_cell_306/kernel/Read/ReadVariableOp;lstm_306/lstm_cell_306/recurrent_kernel/Read/ReadVariableOp/lstm_306/lstm_cell_306/bias/Read/ReadVariableOp1lstm_307/lstm_cell_307/kernel/Read/ReadVariableOp;lstm_307/lstm_cell_307/recurrent_kernel/Read/ReadVariableOp/lstm_307/lstm_cell_307/bias/Read/ReadVariableOp1lstm_308/lstm_cell_308/kernel/Read/ReadVariableOp;lstm_308/lstm_cell_308/recurrent_kernel/Read/ReadVariableOp/lstm_308/lstm_cell_308/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_102/kernel/m/Read/ReadVariableOp)Adam/dense_102/bias/m/Read/ReadVariableOp8Adam/lstm_306/lstm_cell_306/kernel/m/Read/ReadVariableOpBAdam/lstm_306/lstm_cell_306/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_306/lstm_cell_306/bias/m/Read/ReadVariableOp8Adam/lstm_307/lstm_cell_307/kernel/m/Read/ReadVariableOpBAdam/lstm_307/lstm_cell_307/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_307/lstm_cell_307/bias/m/Read/ReadVariableOp8Adam/lstm_308/lstm_cell_308/kernel/m/Read/ReadVariableOpBAdam/lstm_308/lstm_cell_308/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_308/lstm_cell_308/bias/m/Read/ReadVariableOp+Adam/dense_102/kernel/v/Read/ReadVariableOp)Adam/dense_102/bias/v/Read/ReadVariableOp8Adam/lstm_306/lstm_cell_306/kernel/v/Read/ReadVariableOpBAdam/lstm_306/lstm_cell_306/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_306/lstm_cell_306/bias/v/Read/ReadVariableOp8Adam/lstm_307/lstm_cell_307/kernel/v/Read/ReadVariableOpBAdam/lstm_307/lstm_cell_307/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_307/lstm_cell_307/bias/v/Read/ReadVariableOp8Adam/lstm_308/lstm_cell_308/kernel/v/Read/ReadVariableOpBAdam/lstm_308/lstm_cell_308/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_308/lstm_cell_308/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_471552

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_102/kerneldense_102/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_306/lstm_cell_306/kernel'lstm_306/lstm_cell_306/recurrent_kernellstm_306/lstm_cell_306/biaslstm_307/lstm_cell_307/kernel'lstm_307/lstm_cell_307/recurrent_kernellstm_307/lstm_cell_307/biaslstm_308/lstm_cell_308/kernel'lstm_308/lstm_cell_308/recurrent_kernellstm_308/lstm_cell_308/biastotalcountAdam/dense_102/kernel/mAdam/dense_102/bias/m$Adam/lstm_306/lstm_cell_306/kernel/m.Adam/lstm_306/lstm_cell_306/recurrent_kernel/m"Adam/lstm_306/lstm_cell_306/bias/m$Adam/lstm_307/lstm_cell_307/kernel/m.Adam/lstm_307/lstm_cell_307/recurrent_kernel/m"Adam/lstm_307/lstm_cell_307/bias/m$Adam/lstm_308/lstm_cell_308/kernel/m.Adam/lstm_308/lstm_cell_308/recurrent_kernel/m"Adam/lstm_308/lstm_cell_308/bias/mAdam/dense_102/kernel/vAdam/dense_102/bias/v$Adam/lstm_306/lstm_cell_306/kernel/v.Adam/lstm_306/lstm_cell_306/recurrent_kernel/v"Adam/lstm_306/lstm_cell_306/bias/v$Adam/lstm_307/lstm_cell_307/kernel/v.Adam/lstm_307/lstm_cell_307/recurrent_kernel/v"Adam/lstm_307/lstm_cell_307/bias/v$Adam/lstm_308/lstm_cell_308/kernel/v.Adam/lstm_308/lstm_cell_308/recurrent_kernel/v"Adam/lstm_308/lstm_cell_308/bias/v*4
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
"__inference__traced_restore_471682ĜÜ+
İT
Î
)sequential_102_lstm_308_while_body_465990L
Hsequential_102_lstm_308_while_sequential_102_lstm_308_while_loop_counterR
Nsequential_102_lstm_308_while_sequential_102_lstm_308_while_maximum_iterations-
)sequential_102_lstm_308_while_placeholder/
+sequential_102_lstm_308_while_placeholder_1/
+sequential_102_lstm_308_while_placeholder_2/
+sequential_102_lstm_308_while_placeholder_3K
Gsequential_102_lstm_308_while_sequential_102_lstm_308_strided_slice_1_0
sequential_102_lstm_308_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_308_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_102_lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0:2(_
Msequential_102_lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(Z
Lsequential_102_lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0:(*
&sequential_102_lstm_308_while_identity,
(sequential_102_lstm_308_while_identity_1,
(sequential_102_lstm_308_while_identity_2,
(sequential_102_lstm_308_while_identity_3,
(sequential_102_lstm_308_while_identity_4,
(sequential_102_lstm_308_while_identity_5I
Esequential_102_lstm_308_while_sequential_102_lstm_308_strided_slice_1
sequential_102_lstm_308_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_308_tensorarrayunstack_tensorlistfromtensor[
Isequential_102_lstm_308_while_lstm_cell_77_matmul_readvariableop_resource:2(]
Ksequential_102_lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource:
(X
Jsequential_102_lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource:(˘Asequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp˘@sequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp˘Bsequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp 
Osequential_102/lstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_102/lstm_308/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_102_lstm_308_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_308_tensorarrayunstack_tensorlistfromtensor_0)sequential_102_lstm_308_while_placeholderXsequential_102/lstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOpKsequential_102_lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_102/lstm_308/while/lstm_cell_77/MatMulMatMulHsequential_102/lstm_308/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOpMsequential_102_lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_102/lstm_308/while/lstm_cell_77/MatMul_1MatMul+sequential_102_lstm_308_while_placeholder_2Jsequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_102/lstm_308/while/lstm_cell_77/addAddV2;sequential_102/lstm_308/while/lstm_cell_77/MatMul:product:0=sequential_102/lstm_308/while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOpLsequential_102_lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_102/lstm_308/while/lstm_cell_77/BiasAddBiasAdd2sequential_102/lstm_308/while/lstm_cell_77/add:z:0Isequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_102/lstm_308/while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_102/lstm_308/while/lstm_cell_77/splitSplitCsequential_102/lstm_308/while/lstm_cell_77/split/split_dim:output:0;sequential_102/lstm_308/while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_102/lstm_308/while/lstm_cell_77/SigmoidSigmoid9sequential_102/lstm_308/while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_102/lstm_308/while/lstm_cell_77/Sigmoid_1Sigmoid9sequential_102/lstm_308/while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_102/lstm_308/while/lstm_cell_77/mulMul8sequential_102/lstm_308/while/lstm_cell_77/Sigmoid_1:y:0+sequential_102_lstm_308_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_102/lstm_308/while/lstm_cell_77/ReluRelu9sequential_102/lstm_308/while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_102/lstm_308/while/lstm_cell_77/mul_1Mul6sequential_102/lstm_308/while/lstm_cell_77/Sigmoid:y:0=sequential_102/lstm_308/while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_102/lstm_308/while/lstm_cell_77/add_1AddV22sequential_102/lstm_308/while/lstm_cell_77/mul:z:04sequential_102/lstm_308/while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_102/lstm_308/while/lstm_cell_77/Sigmoid_2Sigmoid9sequential_102/lstm_308/while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_102/lstm_308/while/lstm_cell_77/Relu_1Relu4sequential_102/lstm_308/while/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_102/lstm_308/while/lstm_cell_77/mul_2Mul8sequential_102/lstm_308/while/lstm_cell_77/Sigmoid_2:y:0?sequential_102/lstm_308/while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_102/lstm_308/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_102_lstm_308_while_placeholder_1)sequential_102_lstm_308_while_placeholder4sequential_102/lstm_308/while/lstm_cell_77/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_102/lstm_308/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_102/lstm_308/while/addAddV2)sequential_102_lstm_308_while_placeholder,sequential_102/lstm_308/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_102/lstm_308/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_102/lstm_308/while/add_1AddV2Hsequential_102_lstm_308_while_sequential_102_lstm_308_while_loop_counter.sequential_102/lstm_308/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_102/lstm_308/while/IdentityIdentity'sequential_102/lstm_308/while/add_1:z:0#^sequential_102/lstm_308/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_102/lstm_308/while/Identity_1IdentityNsequential_102_lstm_308_while_sequential_102_lstm_308_while_maximum_iterations#^sequential_102/lstm_308/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_102/lstm_308/while/Identity_2Identity%sequential_102/lstm_308/while/add:z:0#^sequential_102/lstm_308/while/NoOp*
T0*
_output_shapes
: Î
(sequential_102/lstm_308/while/Identity_3IdentityRsequential_102/lstm_308/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_102/lstm_308/while/NoOp*
T0*
_output_shapes
: Á
(sequential_102/lstm_308/while/Identity_4Identity4sequential_102/lstm_308/while/lstm_cell_77/mul_2:z:0#^sequential_102/lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_102/lstm_308/while/Identity_5Identity4sequential_102/lstm_308/while/lstm_cell_77/add_1:z:0#^sequential_102/lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_102/lstm_308/while/NoOpNoOpB^sequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOpA^sequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOpC^sequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_102_lstm_308_while_identity/sequential_102/lstm_308/while/Identity:output:0"]
(sequential_102_lstm_308_while_identity_11sequential_102/lstm_308/while/Identity_1:output:0"]
(sequential_102_lstm_308_while_identity_21sequential_102/lstm_308/while/Identity_2:output:0"]
(sequential_102_lstm_308_while_identity_31sequential_102/lstm_308/while/Identity_3:output:0"]
(sequential_102_lstm_308_while_identity_41sequential_102/lstm_308/while/Identity_4:output:0"]
(sequential_102_lstm_308_while_identity_51sequential_102/lstm_308/while/Identity_5:output:0"
Jsequential_102_lstm_308_while_lstm_cell_77_biasadd_readvariableop_resourceLsequential_102_lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0"
Ksequential_102_lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resourceMsequential_102_lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0"
Isequential_102_lstm_308_while_lstm_cell_77_matmul_readvariableop_resourceKsequential_102_lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0"
Esequential_102_lstm_308_while_sequential_102_lstm_308_strided_slice_1Gsequential_102_lstm_308_while_sequential_102_lstm_308_strided_slice_1_0"
sequential_102_lstm_308_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_308_tensorarrayunstack_tensorlistfromtensorsequential_102_lstm_308_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_308_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOpAsequential_102/lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2
@sequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp@sequential_102/lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp2
Bsequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOpBsequential_102/lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_470583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_471011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_471011___redundant_placeholder04
0while_while_cond_471011___redundant_placeholder14
0while_while_cond_471011___redundant_placeholder24
0while_while_cond_471011___redundant_placeholder3
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
while_cond_466860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_466860___redundant_placeholder04
0while_while_cond_466860___redundant_placeholder14
0while_while_cond_466860___redundant_placeholder24
0while_while_cond_466860___redundant_placeholder3
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
while_body_470253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470667
inputs_0=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_470583*
condR
while_cond_470582*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
J

D__inference_lstm_308_layer_call_and_return_conditional_losses_471096

inputs=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_471012*
condR
while_cond_471011*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_468040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_468040___redundant_placeholder04
0while_while_cond_468040___redundant_placeholder14
0while_while_cond_468040___redundant_placeholder24
0while_while_cond_468040___redundant_placeholder3
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
ş
Ŝ
!__inference__wrapped_model_466080
lstm_306_inputV
Csequential_102_lstm_306_lstm_cell_75_matmul_readvariableop_resource:	X
Esequential_102_lstm_306_lstm_cell_75_matmul_1_readvariableop_resource:	dS
Dsequential_102_lstm_306_lstm_cell_75_biasadd_readvariableop_resource:	V
Csequential_102_lstm_307_lstm_cell_76_matmul_readvariableop_resource:	dÈX
Esequential_102_lstm_307_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈS
Dsequential_102_lstm_307_lstm_cell_76_biasadd_readvariableop_resource:	ÈU
Csequential_102_lstm_308_lstm_cell_77_matmul_readvariableop_resource:2(W
Esequential_102_lstm_308_lstm_cell_77_matmul_1_readvariableop_resource:
(R
Dsequential_102_lstm_308_lstm_cell_77_biasadd_readvariableop_resource:(I
7sequential_102_dense_102_matmul_readvariableop_resource:
F
8sequential_102_dense_102_biasadd_readvariableop_resource:
identity˘/sequential_102/dense_102/BiasAdd/ReadVariableOp˘.sequential_102/dense_102/MatMul/ReadVariableOp˘;sequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp˘:sequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOp˘<sequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp˘sequential_102/lstm_306/while˘;sequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp˘:sequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOp˘<sequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp˘sequential_102/lstm_307/while˘;sequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp˘:sequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOp˘<sequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp˘sequential_102/lstm_308/while[
sequential_102/lstm_306/ShapeShapelstm_306_input*
T0*
_output_shapes
:u
+sequential_102/lstm_306/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_102/lstm_306/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_102/lstm_306/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_102/lstm_306/strided_sliceStridedSlice&sequential_102/lstm_306/Shape:output:04sequential_102/lstm_306/strided_slice/stack:output:06sequential_102/lstm_306/strided_slice/stack_1:output:06sequential_102/lstm_306/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_102/lstm_306/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_102/lstm_306/zeros/packedPack.sequential_102/lstm_306/strided_slice:output:0/sequential_102/lstm_306/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_102/lstm_306/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_102/lstm_306/zerosFill-sequential_102/lstm_306/zeros/packed:output:0,sequential_102/lstm_306/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_102/lstm_306/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_102/lstm_306/zeros_1/packedPack.sequential_102/lstm_306/strided_slice:output:01sequential_102/lstm_306/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_102/lstm_306/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_102/lstm_306/zeros_1Fill/sequential_102/lstm_306/zeros_1/packed:output:0.sequential_102/lstm_306/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_102/lstm_306/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_102/lstm_306/transpose	Transposelstm_306_input/sequential_102/lstm_306/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_102/lstm_306/Shape_1Shape%sequential_102/lstm_306/transpose:y:0*
T0*
_output_shapes
:w
-sequential_102/lstm_306/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_306/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_306/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_102/lstm_306/strided_slice_1StridedSlice(sequential_102/lstm_306/Shape_1:output:06sequential_102/lstm_306/strided_slice_1/stack:output:08sequential_102/lstm_306/strided_slice_1/stack_1:output:08sequential_102/lstm_306/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_102/lstm_306/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_102/lstm_306/TensorArrayV2TensorListReserve<sequential_102/lstm_306/TensorArrayV2/element_shape:output:00sequential_102/lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_102/lstm_306/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_102/lstm_306/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_102/lstm_306/transpose:y:0Vsequential_102/lstm_306/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_102/lstm_306/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_306/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_306/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_102/lstm_306/strided_slice_2StridedSlice%sequential_102/lstm_306/transpose:y:06sequential_102/lstm_306/strided_slice_2/stack:output:08sequential_102/lstm_306/strided_slice_2/stack_1:output:08sequential_102/lstm_306/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOpReadVariableOpCsequential_102_lstm_306_lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_102/lstm_306/lstm_cell_75/MatMulMatMul0sequential_102/lstm_306/strided_slice_2:output:0Bsequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOpEsequential_102_lstm_306_lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_102/lstm_306/lstm_cell_75/MatMul_1MatMul&sequential_102/lstm_306/zeros:output:0Dsequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_102/lstm_306/lstm_cell_75/addAddV25sequential_102/lstm_306/lstm_cell_75/MatMul:product:07sequential_102/lstm_306/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOpDsequential_102_lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_102/lstm_306/lstm_cell_75/BiasAddBiasAdd,sequential_102/lstm_306/lstm_cell_75/add:z:0Csequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_102/lstm_306/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_102/lstm_306/lstm_cell_75/splitSplit=sequential_102/lstm_306/lstm_cell_75/split/split_dim:output:05sequential_102/lstm_306/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_102/lstm_306/lstm_cell_75/SigmoidSigmoid3sequential_102/lstm_306/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_102/lstm_306/lstm_cell_75/Sigmoid_1Sigmoid3sequential_102/lstm_306/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_102/lstm_306/lstm_cell_75/mulMul2sequential_102/lstm_306/lstm_cell_75/Sigmoid_1:y:0(sequential_102/lstm_306/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_102/lstm_306/lstm_cell_75/ReluRelu3sequential_102/lstm_306/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_102/lstm_306/lstm_cell_75/mul_1Mul0sequential_102/lstm_306/lstm_cell_75/Sigmoid:y:07sequential_102/lstm_306/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_102/lstm_306/lstm_cell_75/add_1AddV2,sequential_102/lstm_306/lstm_cell_75/mul:z:0.sequential_102/lstm_306/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_102/lstm_306/lstm_cell_75/Sigmoid_2Sigmoid3sequential_102/lstm_306/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_102/lstm_306/lstm_cell_75/Relu_1Relu.sequential_102/lstm_306/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_102/lstm_306/lstm_cell_75/mul_2Mul2sequential_102/lstm_306/lstm_cell_75/Sigmoid_2:y:09sequential_102/lstm_306/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_102/lstm_306/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_102/lstm_306/TensorArrayV2_1TensorListReserve>sequential_102/lstm_306/TensorArrayV2_1/element_shape:output:00sequential_102/lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_102/lstm_306/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_102/lstm_306/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_102/lstm_306/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_102/lstm_306/whileWhile3sequential_102/lstm_306/while/loop_counter:output:09sequential_102/lstm_306/while/maximum_iterations:output:0%sequential_102/lstm_306/time:output:00sequential_102/lstm_306/TensorArrayV2_1:handle:0&sequential_102/lstm_306/zeros:output:0(sequential_102/lstm_306/zeros_1:output:00sequential_102/lstm_306/strided_slice_1:output:0Osequential_102/lstm_306/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_102_lstm_306_lstm_cell_75_matmul_readvariableop_resourceEsequential_102_lstm_306_lstm_cell_75_matmul_1_readvariableop_resourceDsequential_102_lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
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
)sequential_102_lstm_306_while_body_465712*5
cond-R+
)sequential_102_lstm_306_while_cond_465711*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_102/lstm_306/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_102/lstm_306/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_102/lstm_306/while:output:3Qsequential_102/lstm_306/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_102/lstm_306/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_102/lstm_306/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_306/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_102/lstm_306/strided_slice_3StridedSliceCsequential_102/lstm_306/TensorArrayV2Stack/TensorListStack:tensor:06sequential_102/lstm_306/strided_slice_3/stack:output:08sequential_102/lstm_306/strided_slice_3/stack_1:output:08sequential_102/lstm_306/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_102/lstm_306/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_102/lstm_306/transpose_1	TransposeCsequential_102/lstm_306/TensorArrayV2Stack/TensorListStack:tensor:01sequential_102/lstm_306/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_102/lstm_306/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_102/lstm_307/ShapeShape'sequential_102/lstm_306/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_102/lstm_307/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_102/lstm_307/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_102/lstm_307/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_102/lstm_307/strided_sliceStridedSlice&sequential_102/lstm_307/Shape:output:04sequential_102/lstm_307/strided_slice/stack:output:06sequential_102/lstm_307/strided_slice/stack_1:output:06sequential_102/lstm_307/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_102/lstm_307/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_102/lstm_307/zeros/packedPack.sequential_102/lstm_307/strided_slice:output:0/sequential_102/lstm_307/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_102/lstm_307/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_102/lstm_307/zerosFill-sequential_102/lstm_307/zeros/packed:output:0,sequential_102/lstm_307/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_102/lstm_307/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_102/lstm_307/zeros_1/packedPack.sequential_102/lstm_307/strided_slice:output:01sequential_102/lstm_307/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_102/lstm_307/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_102/lstm_307/zeros_1Fill/sequential_102/lstm_307/zeros_1/packed:output:0.sequential_102/lstm_307/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_102/lstm_307/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_102/lstm_307/transpose	Transpose'sequential_102/lstm_306/transpose_1:y:0/sequential_102/lstm_307/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_102/lstm_307/Shape_1Shape%sequential_102/lstm_307/transpose:y:0*
T0*
_output_shapes
:w
-sequential_102/lstm_307/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_307/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_307/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_102/lstm_307/strided_slice_1StridedSlice(sequential_102/lstm_307/Shape_1:output:06sequential_102/lstm_307/strided_slice_1/stack:output:08sequential_102/lstm_307/strided_slice_1/stack_1:output:08sequential_102/lstm_307/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_102/lstm_307/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_102/lstm_307/TensorArrayV2TensorListReserve<sequential_102/lstm_307/TensorArrayV2/element_shape:output:00sequential_102/lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_102/lstm_307/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_102/lstm_307/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_102/lstm_307/transpose:y:0Vsequential_102/lstm_307/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_102/lstm_307/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_307/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_307/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_102/lstm_307/strided_slice_2StridedSlice%sequential_102/lstm_307/transpose:y:06sequential_102/lstm_307/strided_slice_2/stack:output:08sequential_102/lstm_307/strided_slice_2/stack_1:output:08sequential_102/lstm_307/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOpReadVariableOpCsequential_102_lstm_307_lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_102/lstm_307/lstm_cell_76/MatMulMatMul0sequential_102/lstm_307/strided_slice_2:output:0Bsequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOpEsequential_102_lstm_307_lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_102/lstm_307/lstm_cell_76/MatMul_1MatMul&sequential_102/lstm_307/zeros:output:0Dsequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_102/lstm_307/lstm_cell_76/addAddV25sequential_102/lstm_307/lstm_cell_76/MatMul:product:07sequential_102/lstm_307/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOpDsequential_102_lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_102/lstm_307/lstm_cell_76/BiasAddBiasAdd,sequential_102/lstm_307/lstm_cell_76/add:z:0Csequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_102/lstm_307/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_102/lstm_307/lstm_cell_76/splitSplit=sequential_102/lstm_307/lstm_cell_76/split/split_dim:output:05sequential_102/lstm_307/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_102/lstm_307/lstm_cell_76/SigmoidSigmoid3sequential_102/lstm_307/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_102/lstm_307/lstm_cell_76/Sigmoid_1Sigmoid3sequential_102/lstm_307/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_102/lstm_307/lstm_cell_76/mulMul2sequential_102/lstm_307/lstm_cell_76/Sigmoid_1:y:0(sequential_102/lstm_307/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_102/lstm_307/lstm_cell_76/ReluRelu3sequential_102/lstm_307/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_102/lstm_307/lstm_cell_76/mul_1Mul0sequential_102/lstm_307/lstm_cell_76/Sigmoid:y:07sequential_102/lstm_307/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_102/lstm_307/lstm_cell_76/add_1AddV2,sequential_102/lstm_307/lstm_cell_76/mul:z:0.sequential_102/lstm_307/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_102/lstm_307/lstm_cell_76/Sigmoid_2Sigmoid3sequential_102/lstm_307/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_102/lstm_307/lstm_cell_76/Relu_1Relu.sequential_102/lstm_307/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_102/lstm_307/lstm_cell_76/mul_2Mul2sequential_102/lstm_307/lstm_cell_76/Sigmoid_2:y:09sequential_102/lstm_307/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_102/lstm_307/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_102/lstm_307/TensorArrayV2_1TensorListReserve>sequential_102/lstm_307/TensorArrayV2_1/element_shape:output:00sequential_102/lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_102/lstm_307/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_102/lstm_307/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_102/lstm_307/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_102/lstm_307/whileWhile3sequential_102/lstm_307/while/loop_counter:output:09sequential_102/lstm_307/while/maximum_iterations:output:0%sequential_102/lstm_307/time:output:00sequential_102/lstm_307/TensorArrayV2_1:handle:0&sequential_102/lstm_307/zeros:output:0(sequential_102/lstm_307/zeros_1:output:00sequential_102/lstm_307/strided_slice_1:output:0Osequential_102/lstm_307/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_102_lstm_307_lstm_cell_76_matmul_readvariableop_resourceEsequential_102_lstm_307_lstm_cell_76_matmul_1_readvariableop_resourceDsequential_102_lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
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
)sequential_102_lstm_307_while_body_465851*5
cond-R+
)sequential_102_lstm_307_while_cond_465850*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_102/lstm_307/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_102/lstm_307/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_102/lstm_307/while:output:3Qsequential_102/lstm_307/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_102/lstm_307/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_102/lstm_307/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_307/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_102/lstm_307/strided_slice_3StridedSliceCsequential_102/lstm_307/TensorArrayV2Stack/TensorListStack:tensor:06sequential_102/lstm_307/strided_slice_3/stack:output:08sequential_102/lstm_307/strided_slice_3/stack_1:output:08sequential_102/lstm_307/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_102/lstm_307/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_102/lstm_307/transpose_1	TransposeCsequential_102/lstm_307/TensorArrayV2Stack/TensorListStack:tensor:01sequential_102/lstm_307/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_102/lstm_307/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_102/lstm_308/ShapeShape'sequential_102/lstm_307/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_102/lstm_308/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_102/lstm_308/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_102/lstm_308/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_102/lstm_308/strided_sliceStridedSlice&sequential_102/lstm_308/Shape:output:04sequential_102/lstm_308/strided_slice/stack:output:06sequential_102/lstm_308/strided_slice/stack_1:output:06sequential_102/lstm_308/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_102/lstm_308/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_102/lstm_308/zeros/packedPack.sequential_102/lstm_308/strided_slice:output:0/sequential_102/lstm_308/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_102/lstm_308/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_102/lstm_308/zerosFill-sequential_102/lstm_308/zeros/packed:output:0,sequential_102/lstm_308/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_102/lstm_308/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_102/lstm_308/zeros_1/packedPack.sequential_102/lstm_308/strided_slice:output:01sequential_102/lstm_308/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_102/lstm_308/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_102/lstm_308/zeros_1Fill/sequential_102/lstm_308/zeros_1/packed:output:0.sequential_102/lstm_308/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_102/lstm_308/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_102/lstm_308/transpose	Transpose'sequential_102/lstm_307/transpose_1:y:0/sequential_102/lstm_308/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_102/lstm_308/Shape_1Shape%sequential_102/lstm_308/transpose:y:0*
T0*
_output_shapes
:w
-sequential_102/lstm_308/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_308/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_308/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_102/lstm_308/strided_slice_1StridedSlice(sequential_102/lstm_308/Shape_1:output:06sequential_102/lstm_308/strided_slice_1/stack:output:08sequential_102/lstm_308/strided_slice_1/stack_1:output:08sequential_102/lstm_308/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_102/lstm_308/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_102/lstm_308/TensorArrayV2TensorListReserve<sequential_102/lstm_308/TensorArrayV2/element_shape:output:00sequential_102/lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_102/lstm_308/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_102/lstm_308/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_102/lstm_308/transpose:y:0Vsequential_102/lstm_308/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_102/lstm_308/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_308/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_102/lstm_308/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_102/lstm_308/strided_slice_2StridedSlice%sequential_102/lstm_308/transpose:y:06sequential_102/lstm_308/strided_slice_2/stack:output:08sequential_102/lstm_308/strided_slice_2/stack_1:output:08sequential_102/lstm_308/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOpReadVariableOpCsequential_102_lstm_308_lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_102/lstm_308/lstm_cell_77/MatMulMatMul0sequential_102/lstm_308/strided_slice_2:output:0Bsequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOpEsequential_102_lstm_308_lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_102/lstm_308/lstm_cell_77/MatMul_1MatMul&sequential_102/lstm_308/zeros:output:0Dsequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_102/lstm_308/lstm_cell_77/addAddV25sequential_102/lstm_308/lstm_cell_77/MatMul:product:07sequential_102/lstm_308/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOpDsequential_102_lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_102/lstm_308/lstm_cell_77/BiasAddBiasAdd,sequential_102/lstm_308/lstm_cell_77/add:z:0Csequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_102/lstm_308/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_102/lstm_308/lstm_cell_77/splitSplit=sequential_102/lstm_308/lstm_cell_77/split/split_dim:output:05sequential_102/lstm_308/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_102/lstm_308/lstm_cell_77/SigmoidSigmoid3sequential_102/lstm_308/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_102/lstm_308/lstm_cell_77/Sigmoid_1Sigmoid3sequential_102/lstm_308/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_102/lstm_308/lstm_cell_77/mulMul2sequential_102/lstm_308/lstm_cell_77/Sigmoid_1:y:0(sequential_102/lstm_308/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_102/lstm_308/lstm_cell_77/ReluRelu3sequential_102/lstm_308/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_102/lstm_308/lstm_cell_77/mul_1Mul0sequential_102/lstm_308/lstm_cell_77/Sigmoid:y:07sequential_102/lstm_308/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_102/lstm_308/lstm_cell_77/add_1AddV2,sequential_102/lstm_308/lstm_cell_77/mul:z:0.sequential_102/lstm_308/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_102/lstm_308/lstm_cell_77/Sigmoid_2Sigmoid3sequential_102/lstm_308/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_102/lstm_308/lstm_cell_77/Relu_1Relu.sequential_102/lstm_308/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_102/lstm_308/lstm_cell_77/mul_2Mul2sequential_102/lstm_308/lstm_cell_77/Sigmoid_2:y:09sequential_102/lstm_308/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_102/lstm_308/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_102/lstm_308/TensorArrayV2_1TensorListReserve>sequential_102/lstm_308/TensorArrayV2_1/element_shape:output:00sequential_102/lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_102/lstm_308/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_102/lstm_308/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_102/lstm_308/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_102/lstm_308/whileWhile3sequential_102/lstm_308/while/loop_counter:output:09sequential_102/lstm_308/while/maximum_iterations:output:0%sequential_102/lstm_308/time:output:00sequential_102/lstm_308/TensorArrayV2_1:handle:0&sequential_102/lstm_308/zeros:output:0(sequential_102/lstm_308/zeros_1:output:00sequential_102/lstm_308/strided_slice_1:output:0Osequential_102/lstm_308/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_102_lstm_308_lstm_cell_77_matmul_readvariableop_resourceEsequential_102_lstm_308_lstm_cell_77_matmul_1_readvariableop_resourceDsequential_102_lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
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
)sequential_102_lstm_308_while_body_465990*5
cond-R+
)sequential_102_lstm_308_while_cond_465989*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_102/lstm_308/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_102/lstm_308/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_102/lstm_308/while:output:3Qsequential_102/lstm_308/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_102/lstm_308/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_102/lstm_308/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_102/lstm_308/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_102/lstm_308/strided_slice_3StridedSliceCsequential_102/lstm_308/TensorArrayV2Stack/TensorListStack:tensor:06sequential_102/lstm_308/strided_slice_3/stack:output:08sequential_102/lstm_308/strided_slice_3/stack_1:output:08sequential_102/lstm_308/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_102/lstm_308/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_102/lstm_308/transpose_1	TransposeCsequential_102/lstm_308/TensorArrayV2Stack/TensorListStack:tensor:01sequential_102/lstm_308/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_102/lstm_308/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_102/dense_102/MatMul/ReadVariableOpReadVariableOp7sequential_102_dense_102_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_102/dense_102/MatMulMatMul0sequential_102/lstm_308/strided_slice_3:output:06sequential_102/dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_102/dense_102/BiasAdd/ReadVariableOpReadVariableOp8sequential_102_dense_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_102/dense_102/BiasAddBiasAdd)sequential_102/dense_102/MatMul:product:07sequential_102/dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_102/dense_102/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_102/dense_102/BiasAdd/ReadVariableOp/^sequential_102/dense_102/MatMul/ReadVariableOp<^sequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp;^sequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOp=^sequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp^sequential_102/lstm_306/while<^sequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp;^sequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOp=^sequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp^sequential_102/lstm_307/while<^sequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp;^sequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOp=^sequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp^sequential_102/lstm_308/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_102/dense_102/BiasAdd/ReadVariableOp/sequential_102/dense_102/BiasAdd/ReadVariableOp2`
.sequential_102/dense_102/MatMul/ReadVariableOp.sequential_102/dense_102/MatMul/ReadVariableOp2z
;sequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp;sequential_102/lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp2x
:sequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOp:sequential_102/lstm_306/lstm_cell_75/MatMul/ReadVariableOp2|
<sequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp<sequential_102/lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp2>
sequential_102/lstm_306/whilesequential_102/lstm_306/while2z
;sequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp;sequential_102/lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp2x
:sequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOp:sequential_102/lstm_307/lstm_cell_76/MatMul/ReadVariableOp2|
<sequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp<sequential_102/lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp2>
sequential_102/lstm_307/whilesequential_102/lstm_307/while2z
;sequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp;sequential_102/lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp2x
:sequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOp:sequential_102/lstm_308/lstm_cell_77/MatMul/ReadVariableOp2|
<sequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp<sequential_102/lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp2>
sequential_102/lstm_308/whilesequential_102/lstm_308/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_306_input
Ğ
¸
)__inference_lstm_307_layer_call_fn_469875
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_466580|
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
while_body_466702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_76_466726_0:	dÈ.
while_lstm_cell_76_466728_0:	2È*
while_lstm_cell_76_466730_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_76_466726:	dÈ,
while_lstm_cell_76_466728:	2È(
while_lstm_cell_76_466730:	È˘*while/lstm_cell_76/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_76/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_76_466726_0while_lstm_cell_76_466728_0while_lstm_cell_76_466730_0*
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466643Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_76/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_76/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_76/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_76/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_76_466726while_lstm_cell_76_466726_0"8
while_lstm_cell_76_466728while_lstm_cell_76_466728_0"8
while_lstm_cell_76_466730while_lstm_cell_76_466730_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_76/StatefulPartitionedCall*while/lstm_cell_76/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469435
inputs_0>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_469351*
condR
while_cond_469350*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_307_layer_call_and_return_conditional_losses_470194
inputs_0>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_470110*
condR
while_cond_470109*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_307_layer_call_and_return_conditional_losses_470051
inputs_0>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_469967*
condR
while_cond_469966*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
J

D__inference_lstm_308_layer_call_and_return_conditional_losses_467795

inputs=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_467711*
condR
while_cond_467710*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÛB
?

lstm_307_while_body_468592.
*lstm_307_while_lstm_307_while_loop_counter4
0lstm_307_while_lstm_307_while_maximum_iterations
lstm_307_while_placeholder 
lstm_307_while_placeholder_1 
lstm_307_while_placeholder_2 
lstm_307_while_placeholder_3-
)lstm_307_while_lstm_307_strided_slice_1_0i
elstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈQ
>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
lstm_307_while_identity
lstm_307_while_identity_1
lstm_307_while_identity_2
lstm_307_while_identity_3
lstm_307_while_identity_4
lstm_307_while_identity_5+
'lstm_307_while_lstm_307_strided_slice_1g
clstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensorM
:lstm_307_while_lstm_cell_76_matmul_readvariableop_resource:	dÈO
<lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈJ
;lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource:	È˘2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp˘1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp˘3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp
@lstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_307/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0lstm_307_while_placeholderIlstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_307/while/lstm_cell_76/MatMulMatMul9lstm_307/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_307/while/lstm_cell_76/MatMul_1MatMullstm_307_while_placeholder_2;lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_307/while/lstm_cell_76/addAddV2,lstm_307/while/lstm_cell_76/MatMul:product:0.lstm_307/while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_307/while/lstm_cell_76/BiasAddBiasAdd#lstm_307/while/lstm_cell_76/add:z:0:lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_307/while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_307/while/lstm_cell_76/splitSplit4lstm_307/while/lstm_cell_76/split/split_dim:output:0,lstm_307/while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_307/while/lstm_cell_76/SigmoidSigmoid*lstm_307/while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_307/while/lstm_cell_76/Sigmoid_1Sigmoid*lstm_307/while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_307/while/lstm_cell_76/mulMul)lstm_307/while/lstm_cell_76/Sigmoid_1:y:0lstm_307_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_307/while/lstm_cell_76/ReluRelu*lstm_307/while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_307/while/lstm_cell_76/mul_1Mul'lstm_307/while/lstm_cell_76/Sigmoid:y:0.lstm_307/while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_307/while/lstm_cell_76/add_1AddV2#lstm_307/while/lstm_cell_76/mul:z:0%lstm_307/while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_307/while/lstm_cell_76/Sigmoid_2Sigmoid*lstm_307/while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_307/while/lstm_cell_76/Relu_1Relu%lstm_307/while/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_307/while/lstm_cell_76/mul_2Mul)lstm_307/while/lstm_cell_76/Sigmoid_2:y:00lstm_307/while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_307/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_307_while_placeholder_1lstm_307_while_placeholder%lstm_307/while/lstm_cell_76/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_307/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_307/while/addAddV2lstm_307_while_placeholderlstm_307/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_307/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_307/while/add_1AddV2*lstm_307_while_lstm_307_while_loop_counterlstm_307/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_307/while/IdentityIdentitylstm_307/while/add_1:z:0^lstm_307/while/NoOp*
T0*
_output_shapes
: 
lstm_307/while/Identity_1Identity0lstm_307_while_lstm_307_while_maximum_iterations^lstm_307/while/NoOp*
T0*
_output_shapes
: t
lstm_307/while/Identity_2Identitylstm_307/while/add:z:0^lstm_307/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_307/while/Identity_3IdentityClstm_307/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_307/while/NoOp*
T0*
_output_shapes
: 
lstm_307/while/Identity_4Identity%lstm_307/while/lstm_cell_76/mul_2:z:0^lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/while/Identity_5Identity%lstm_307/while/lstm_cell_76/add_1:z:0^lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_307/while/NoOpNoOp3^lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2^lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp4^lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_307_while_identity lstm_307/while/Identity:output:0"?
lstm_307_while_identity_1"lstm_307/while/Identity_1:output:0"?
lstm_307_while_identity_2"lstm_307/while/Identity_2:output:0"?
lstm_307_while_identity_3"lstm_307/while/Identity_3:output:0"?
lstm_307_while_identity_4"lstm_307/while/Identity_4:output:0"?
lstm_307_while_identity_5"lstm_307/while/Identity_5:output:0"T
'lstm_307_while_lstm_307_strided_slice_1)lstm_307_while_lstm_307_strided_slice_1_0"|
;lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0"~
<lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0"z
:lstm_307_while_lstm_cell_76_matmul_readvariableop_resource<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0"Ì
clstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensorelstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2f
1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp2j
3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
·
ï
J__inference_sequential_102_layer_call_and_return_conditional_losses_467604

inputs"
lstm_306_467280:	"
lstm_306_467282:	d
lstm_306_467284:	"
lstm_307_467430:	dÈ"
lstm_307_467432:	2È
lstm_307_467434:	È!
lstm_308_467580:2(!
lstm_308_467582:
(
lstm_308_467584:("
dense_102_467598:

dense_102_467600:
identity˘!dense_102/StatefulPartitionedCall˘ lstm_306/StatefulPartitionedCall˘ lstm_307/StatefulPartitionedCall˘ lstm_308/StatefulPartitionedCall
 lstm_306/StatefulPartitionedCallStatefulPartitionedCallinputslstm_306_467280lstm_306_467282lstm_306_467284*
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_467279Ş
 lstm_307/StatefulPartitionedCallStatefulPartitionedCall)lstm_306/StatefulPartitionedCall:output:0lstm_307_467430lstm_307_467432lstm_307_467434*
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467429Ĥ
 lstm_308/StatefulPartitionedCallStatefulPartitionedCall)lstm_307/StatefulPartitionedCall:output:0lstm_308_467580lstm_308_467582lstm_308_467584*
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467579
!dense_102/StatefulPartitionedCallStatefulPartitionedCall)lstm_308/StatefulPartitionedCall:output:0dense_102_467598dense_102_467600*
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
E__inference_dense_102_layer_call_and_return_conditional_losses_467597y
IdentityIdentity*dense_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_102/StatefulPartitionedCall!^lstm_306/StatefulPartitionedCall!^lstm_307/StatefulPartitionedCall!^lstm_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2D
 lstm_306/StatefulPartitionedCall lstm_306/StatefulPartitionedCall2D
 lstm_307/StatefulPartitionedCall lstm_307/StatefulPartitionedCall2D
 lstm_308/StatefulPartitionedCall lstm_308/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_306_layer_call_fn_469292

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
D__inference_lstm_306_layer_call_and_return_conditional_losses_468125s
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
Ğ
¸
)__inference_lstm_306_layer_call_fn_469270
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_466421|
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
È	
ö
E__inference_dense_102_layer_call_and_return_conditional_losses_467597

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
8

D__inference_lstm_306_layer_call_and_return_conditional_losses_466230

inputs&
lstm_cell_75_466148:	&
lstm_cell_75_466150:	d"
lstm_cell_75_466152:	
identity˘$lstm_cell_75/StatefulPartitionedCall˘while;
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
$lstm_cell_75/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_75_466148lstm_cell_75_466150lstm_cell_75_466152*
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466147n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_75_466148lstm_cell_75_466150lstm_cell_75_466152*
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
while_body_466161*
condR
while_cond_466160*K
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
NoOpNoOp%^lstm_cell_75/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_75/StatefulPartitionedCall$lstm_cell_75/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ï
÷
J__inference_sequential_102_layer_call_and_return_conditional_losses_468305
lstm_306_input"
lstm_306_468278:	"
lstm_306_468280:	d
lstm_306_468282:	"
lstm_307_468285:	dÈ"
lstm_307_468287:	2È
lstm_307_468289:	È!
lstm_308_468292:2(!
lstm_308_468294:
(
lstm_308_468296:("
dense_102_468299:

dense_102_468301:
identity˘!dense_102/StatefulPartitionedCall˘ lstm_306/StatefulPartitionedCall˘ lstm_307/StatefulPartitionedCall˘ lstm_308/StatefulPartitionedCall
 lstm_306/StatefulPartitionedCallStatefulPartitionedCalllstm_306_inputlstm_306_468278lstm_306_468280lstm_306_468282*
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_468125Ş
 lstm_307/StatefulPartitionedCallStatefulPartitionedCall)lstm_306/StatefulPartitionedCall:output:0lstm_307_468285lstm_307_468287lstm_307_468289*
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467960Ĥ
 lstm_308/StatefulPartitionedCallStatefulPartitionedCall)lstm_307/StatefulPartitionedCall:output:0lstm_308_468292lstm_308_468294lstm_308_468296*
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467795
!dense_102/StatefulPartitionedCallStatefulPartitionedCall)lstm_308/StatefulPartitionedCall:output:0dense_102_468299dense_102_468301*
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
E__inference_dense_102_layer_call_and_return_conditional_losses_467597y
IdentityIdentity*dense_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_102/StatefulPartitionedCall!^lstm_306/StatefulPartitionedCall!^lstm_307/StatefulPartitionedCall!^lstm_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2D
 lstm_306/StatefulPartitionedCall lstm_306/StatefulPartitionedCall2D
 lstm_307/StatefulPartitionedCall lstm_307/StatefulPartitionedCall2D
 lstm_308/StatefulPartitionedCall lstm_308/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_306_input
µ
?
while_cond_470868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470868___redundant_placeholder04
0while_while_cond_470868___redundant_placeholder14
0while_while_cond_470868___redundant_placeholder24
0while_while_cond_470868___redundant_placeholder3
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
-__inference_lstm_cell_77_layer_call_fn_471328

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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466847o
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
ë
ö
-__inference_lstm_cell_76_layer_call_fn_471230

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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466497o
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
while_body_469967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469578
inputs_0>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_469494*
condR
while_cond_469493*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0

ĥ
)__inference_lstm_306_layer_call_fn_469281

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
D__inference_lstm_306_layer_call_and_return_conditional_losses_467279s
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
˙7
Ê
while_body_471012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_466421

inputs&
lstm_cell_75_466339:	&
lstm_cell_75_466341:	d"
lstm_cell_75_466343:	
identity˘$lstm_cell_75/StatefulPartitionedCall˘while;
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
$lstm_cell_75/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_75_466339lstm_cell_75_466341lstm_cell_75_466343*
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466293n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_75_466339lstm_cell_75_466341lstm_cell_75_466343*
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
while_body_466352*
condR
while_cond_466351*K
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
NoOpNoOp%^lstm_cell_75/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_75/StatefulPartitionedCall$lstm_cell_75/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_469636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_469636___redundant_placeholder04
0while_while_cond_469636___redundant_placeholder14
0while_while_cond_469636___redundant_placeholder24
0while_while_cond_469636___redundant_placeholder3
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
Ü


/__inference_sequential_102_layer_call_fn_468394

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
J__inference_sequential_102_layer_call_and_return_conditional_losses_468193o
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
Ë

H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466847

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
while_body_466511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_76_466535_0:	dÈ.
while_lstm_cell_76_466537_0:	2È*
while_lstm_cell_76_466539_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_76_466535:	dÈ,
while_lstm_cell_76_466537:	2È(
while_lstm_cell_76_466539:	È˘*while/lstm_cell_76/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_76/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_76_466535_0while_lstm_cell_76_466537_0while_lstm_cell_76_466539_0*
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466497Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_76/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_76/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_76/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_76/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_76_466535while_lstm_cell_76_466535_0"8
while_lstm_cell_76_466537while_lstm_cell_76_466537_0"8
while_lstm_cell_76_466539while_lstm_cell_76_466539_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_76/StatefulPartitionedCall*while/lstm_cell_76/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_468125

inputs>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_468041*
condR
while_cond_468040*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
È	
ö
E__inference_dense_102_layer_call_and_return_conditional_losses_471115

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
¤J

D__inference_lstm_307_layer_call_and_return_conditional_losses_467960

inputs>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_467876*
condR
while_cond_467875*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĉ"
?
while_body_466161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_75_466185_0:	.
while_lstm_cell_75_466187_0:	d*
while_lstm_cell_75_466189_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_75_466185:	,
while_lstm_cell_75_466187:	d(
while_lstm_cell_75_466189:	˘*while/lstm_cell_75/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_75/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_75_466185_0while_lstm_cell_75_466187_0while_lstm_cell_75_466189_0*
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466147Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_75/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_75/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_75/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_75_466185while_lstm_cell_75_466185_0"8
while_lstm_cell_75_466187while_lstm_cell_75_466187_0"8
while_lstm_cell_75_466189while_lstm_cell_75_466189_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_75/StatefulPartitionedCall*while/lstm_cell_75/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_307_while_body_469019.
*lstm_307_while_lstm_307_while_loop_counter4
0lstm_307_while_lstm_307_while_maximum_iterations
lstm_307_while_placeholder 
lstm_307_while_placeholder_1 
lstm_307_while_placeholder_2 
lstm_307_while_placeholder_3-
)lstm_307_while_lstm_307_strided_slice_1_0i
elstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈQ
>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
lstm_307_while_identity
lstm_307_while_identity_1
lstm_307_while_identity_2
lstm_307_while_identity_3
lstm_307_while_identity_4
lstm_307_while_identity_5+
'lstm_307_while_lstm_307_strided_slice_1g
clstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensorM
:lstm_307_while_lstm_cell_76_matmul_readvariableop_resource:	dÈO
<lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈJ
;lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource:	È˘2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp˘1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp˘3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp
@lstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_307/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0lstm_307_while_placeholderIlstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_307/while/lstm_cell_76/MatMulMatMul9lstm_307/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_307/while/lstm_cell_76/MatMul_1MatMullstm_307_while_placeholder_2;lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_307/while/lstm_cell_76/addAddV2,lstm_307/while/lstm_cell_76/MatMul:product:0.lstm_307/while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_307/while/lstm_cell_76/BiasAddBiasAdd#lstm_307/while/lstm_cell_76/add:z:0:lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_307/while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_307/while/lstm_cell_76/splitSplit4lstm_307/while/lstm_cell_76/split/split_dim:output:0,lstm_307/while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_307/while/lstm_cell_76/SigmoidSigmoid*lstm_307/while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_307/while/lstm_cell_76/Sigmoid_1Sigmoid*lstm_307/while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_307/while/lstm_cell_76/mulMul)lstm_307/while/lstm_cell_76/Sigmoid_1:y:0lstm_307_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_307/while/lstm_cell_76/ReluRelu*lstm_307/while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_307/while/lstm_cell_76/mul_1Mul'lstm_307/while/lstm_cell_76/Sigmoid:y:0.lstm_307/while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_307/while/lstm_cell_76/add_1AddV2#lstm_307/while/lstm_cell_76/mul:z:0%lstm_307/while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_307/while/lstm_cell_76/Sigmoid_2Sigmoid*lstm_307/while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_307/while/lstm_cell_76/Relu_1Relu%lstm_307/while/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_307/while/lstm_cell_76/mul_2Mul)lstm_307/while/lstm_cell_76/Sigmoid_2:y:00lstm_307/while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_307/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_307_while_placeholder_1lstm_307_while_placeholder%lstm_307/while/lstm_cell_76/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_307/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_307/while/addAddV2lstm_307_while_placeholderlstm_307/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_307/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_307/while/add_1AddV2*lstm_307_while_lstm_307_while_loop_counterlstm_307/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_307/while/IdentityIdentitylstm_307/while/add_1:z:0^lstm_307/while/NoOp*
T0*
_output_shapes
: 
lstm_307/while/Identity_1Identity0lstm_307_while_lstm_307_while_maximum_iterations^lstm_307/while/NoOp*
T0*
_output_shapes
: t
lstm_307/while/Identity_2Identitylstm_307/while/add:z:0^lstm_307/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_307/while/Identity_3IdentityClstm_307/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_307/while/NoOp*
T0*
_output_shapes
: 
lstm_307/while/Identity_4Identity%lstm_307/while/lstm_cell_76/mul_2:z:0^lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/while/Identity_5Identity%lstm_307/while/lstm_cell_76/add_1:z:0^lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_307/while/NoOpNoOp3^lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2^lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp4^lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_307_while_identity lstm_307/while/Identity:output:0"?
lstm_307_while_identity_1"lstm_307/while/Identity_1:output:0"?
lstm_307_while_identity_2"lstm_307/while/Identity_2:output:0"?
lstm_307_while_identity_3"lstm_307/while/Identity_3:output:0"?
lstm_307_while_identity_4"lstm_307/while/Identity_4:output:0"?
lstm_307_while_identity_5"lstm_307/while/Identity_5:output:0"T
'lstm_307_while_lstm_307_strided_slice_1)lstm_307_while_lstm_307_strided_slice_1_0"|
;lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource=lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0"~
<lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource>lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0"z
:lstm_307_while_lstm_cell_76_matmul_readvariableop_resource<lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0"Ì
clstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensorelstm_307_while_tensorarrayv2read_tensorlistgetitem_lstm_307_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2f
1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp1lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp2j
3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp3lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471409

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
Ĉ

J__inference_sequential_102_layer_call_and_return_conditional_losses_468821

inputsG
4lstm_306_lstm_cell_75_matmul_readvariableop_resource:	I
6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource:	dD
5lstm_306_lstm_cell_75_biasadd_readvariableop_resource:	G
4lstm_307_lstm_cell_76_matmul_readvariableop_resource:	dÈI
6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈD
5lstm_307_lstm_cell_76_biasadd_readvariableop_resource:	ÈF
4lstm_308_lstm_cell_77_matmul_readvariableop_resource:2(H
6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource:
(C
5lstm_308_lstm_cell_77_biasadd_readvariableop_resource:(:
(dense_102_matmul_readvariableop_resource:
7
)dense_102_biasadd_readvariableop_resource:
identity˘ dense_102/BiasAdd/ReadVariableOp˘dense_102/MatMul/ReadVariableOp˘,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp˘+lstm_306/lstm_cell_75/MatMul/ReadVariableOp˘-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp˘lstm_306/while˘,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp˘+lstm_307/lstm_cell_76/MatMul/ReadVariableOp˘-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp˘lstm_307/while˘,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp˘+lstm_308/lstm_cell_77/MatMul/ReadVariableOp˘-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp˘lstm_308/whileD
lstm_306/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_306/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_306/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_306/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_306/strided_sliceStridedSlicelstm_306/Shape:output:0%lstm_306/strided_slice/stack:output:0'lstm_306/strided_slice/stack_1:output:0'lstm_306/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_306/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_306/zeros/packedPacklstm_306/strided_slice:output:0 lstm_306/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_306/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_306/zerosFilllstm_306/zeros/packed:output:0lstm_306/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_306/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_306/zeros_1/packedPacklstm_306/strided_slice:output:0"lstm_306/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_306/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_306/zeros_1Fill lstm_306/zeros_1/packed:output:0lstm_306/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_306/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_306/transpose	Transposeinputs lstm_306/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_306/Shape_1Shapelstm_306/transpose:y:0*
T0*
_output_shapes
:h
lstm_306/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_306/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_306/strided_slice_1StridedSlicelstm_306/Shape_1:output:0'lstm_306/strided_slice_1/stack:output:0)lstm_306/strided_slice_1/stack_1:output:0)lstm_306/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_306/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_306/TensorArrayV2TensorListReserve-lstm_306/TensorArrayV2/element_shape:output:0!lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_306/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_306/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_306/transpose:y:0Glstm_306/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_306/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_306/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_306/strided_slice_2StridedSlicelstm_306/transpose:y:0'lstm_306/strided_slice_2/stack:output:0)lstm_306/strided_slice_2/stack_1:output:0)lstm_306/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_306/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp4lstm_306_lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_306/lstm_cell_75/MatMulMatMul!lstm_306/strided_slice_2:output:03lstm_306/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_306/lstm_cell_75/MatMul_1MatMullstm_306/zeros:output:05lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_306/lstm_cell_75/addAddV2&lstm_306/lstm_cell_75/MatMul:product:0(lstm_306/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp5lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_306/lstm_cell_75/BiasAddBiasAddlstm_306/lstm_cell_75/add:z:04lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_306/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_306/lstm_cell_75/splitSplit.lstm_306/lstm_cell_75/split/split_dim:output:0&lstm_306/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_306/lstm_cell_75/SigmoidSigmoid$lstm_306/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/Sigmoid_1Sigmoid$lstm_306/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/mulMul#lstm_306/lstm_cell_75/Sigmoid_1:y:0lstm_306/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_306/lstm_cell_75/ReluRelu$lstm_306/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_306/lstm_cell_75/mul_1Mul!lstm_306/lstm_cell_75/Sigmoid:y:0(lstm_306/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/add_1AddV2lstm_306/lstm_cell_75/mul:z:0lstm_306/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/Sigmoid_2Sigmoid$lstm_306/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_306/lstm_cell_75/Relu_1Relulstm_306/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_306/lstm_cell_75/mul_2Mul#lstm_306/lstm_cell_75/Sigmoid_2:y:0*lstm_306/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_306/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_306/TensorArrayV2_1TensorListReserve/lstm_306/TensorArrayV2_1/element_shape:output:0!lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_306/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_306/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_306/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_306/whileWhile$lstm_306/while/loop_counter:output:0*lstm_306/while/maximum_iterations:output:0lstm_306/time:output:0!lstm_306/TensorArrayV2_1:handle:0lstm_306/zeros:output:0lstm_306/zeros_1:output:0!lstm_306/strided_slice_1:output:0@lstm_306/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_306_lstm_cell_75_matmul_readvariableop_resource6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource5lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
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
lstm_306_while_body_468453*&
condR
lstm_306_while_cond_468452*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_306/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_306/TensorArrayV2Stack/TensorListStackTensorListStacklstm_306/while:output:3Blstm_306/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_306/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_306/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_306/strided_slice_3StridedSlice4lstm_306/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_306/strided_slice_3/stack:output:0)lstm_306/strided_slice_3/stack_1:output:0)lstm_306/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_306/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_306/transpose_1	Transpose4lstm_306/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_306/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_306/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_307/ShapeShapelstm_306/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_307/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_307/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_307/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_307/strided_sliceStridedSlicelstm_307/Shape:output:0%lstm_307/strided_slice/stack:output:0'lstm_307/strided_slice/stack_1:output:0'lstm_307/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_307/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_307/zeros/packedPacklstm_307/strided_slice:output:0 lstm_307/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_307/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_307/zerosFilllstm_307/zeros/packed:output:0lstm_307/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_307/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_307/zeros_1/packedPacklstm_307/strided_slice:output:0"lstm_307/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_307/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_307/zeros_1Fill lstm_307/zeros_1/packed:output:0lstm_307/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_307/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_307/transpose	Transposelstm_306/transpose_1:y:0 lstm_307/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_307/Shape_1Shapelstm_307/transpose:y:0*
T0*
_output_shapes
:h
lstm_307/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_307/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_307/strided_slice_1StridedSlicelstm_307/Shape_1:output:0'lstm_307/strided_slice_1/stack:output:0)lstm_307/strided_slice_1/stack_1:output:0)lstm_307/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_307/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_307/TensorArrayV2TensorListReserve-lstm_307/TensorArrayV2/element_shape:output:0!lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_307/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_307/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_307/transpose:y:0Glstm_307/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_307/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_307/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_307/strided_slice_2StridedSlicelstm_307/transpose:y:0'lstm_307/strided_slice_2/stack:output:0)lstm_307/strided_slice_2/stack_1:output:0)lstm_307/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_307/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp4lstm_307_lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_307/lstm_cell_76/MatMulMatMul!lstm_307/strided_slice_2:output:03lstm_307/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_307/lstm_cell_76/MatMul_1MatMullstm_307/zeros:output:05lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_307/lstm_cell_76/addAddV2&lstm_307/lstm_cell_76/MatMul:product:0(lstm_307/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp5lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_307/lstm_cell_76/BiasAddBiasAddlstm_307/lstm_cell_76/add:z:04lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_307/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_307/lstm_cell_76/splitSplit.lstm_307/lstm_cell_76/split/split_dim:output:0&lstm_307/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_307/lstm_cell_76/SigmoidSigmoid$lstm_307/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/Sigmoid_1Sigmoid$lstm_307/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/mulMul#lstm_307/lstm_cell_76/Sigmoid_1:y:0lstm_307/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_307/lstm_cell_76/ReluRelu$lstm_307/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_307/lstm_cell_76/mul_1Mul!lstm_307/lstm_cell_76/Sigmoid:y:0(lstm_307/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/add_1AddV2lstm_307/lstm_cell_76/mul:z:0lstm_307/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/Sigmoid_2Sigmoid$lstm_307/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_307/lstm_cell_76/Relu_1Relulstm_307/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_307/lstm_cell_76/mul_2Mul#lstm_307/lstm_cell_76/Sigmoid_2:y:0*lstm_307/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_307/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_307/TensorArrayV2_1TensorListReserve/lstm_307/TensorArrayV2_1/element_shape:output:0!lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_307/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_307/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_307/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_307/whileWhile$lstm_307/while/loop_counter:output:0*lstm_307/while/maximum_iterations:output:0lstm_307/time:output:0!lstm_307/TensorArrayV2_1:handle:0lstm_307/zeros:output:0lstm_307/zeros_1:output:0!lstm_307/strided_slice_1:output:0@lstm_307/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_307_lstm_cell_76_matmul_readvariableop_resource6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource5lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
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
lstm_307_while_body_468592*&
condR
lstm_307_while_cond_468591*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_307/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_307/TensorArrayV2Stack/TensorListStackTensorListStacklstm_307/while:output:3Blstm_307/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_307/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_307/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_307/strided_slice_3StridedSlice4lstm_307/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_307/strided_slice_3/stack:output:0)lstm_307/strided_slice_3/stack_1:output:0)lstm_307/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_307/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_307/transpose_1	Transpose4lstm_307/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_307/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_307/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_308/ShapeShapelstm_307/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_308/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_308/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_308/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_308/strided_sliceStridedSlicelstm_308/Shape:output:0%lstm_308/strided_slice/stack:output:0'lstm_308/strided_slice/stack_1:output:0'lstm_308/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_308/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_308/zeros/packedPacklstm_308/strided_slice:output:0 lstm_308/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_308/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_308/zerosFilllstm_308/zeros/packed:output:0lstm_308/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_308/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_308/zeros_1/packedPacklstm_308/strided_slice:output:0"lstm_308/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_308/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_308/zeros_1Fill lstm_308/zeros_1/packed:output:0lstm_308/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_308/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_308/transpose	Transposelstm_307/transpose_1:y:0 lstm_308/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_308/Shape_1Shapelstm_308/transpose:y:0*
T0*
_output_shapes
:h
lstm_308/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_308/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_308/strided_slice_1StridedSlicelstm_308/Shape_1:output:0'lstm_308/strided_slice_1/stack:output:0)lstm_308/strided_slice_1/stack_1:output:0)lstm_308/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_308/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_308/TensorArrayV2TensorListReserve-lstm_308/TensorArrayV2/element_shape:output:0!lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_308/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_308/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_308/transpose:y:0Glstm_308/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_308/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_308/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_308/strided_slice_2StridedSlicelstm_308/transpose:y:0'lstm_308/strided_slice_2/stack:output:0)lstm_308/strided_slice_2/stack_1:output:0)lstm_308/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_308/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp4lstm_308_lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_308/lstm_cell_77/MatMulMatMul!lstm_308/strided_slice_2:output:03lstm_308/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_308/lstm_cell_77/MatMul_1MatMullstm_308/zeros:output:05lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_308/lstm_cell_77/addAddV2&lstm_308/lstm_cell_77/MatMul:product:0(lstm_308/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp5lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_308/lstm_cell_77/BiasAddBiasAddlstm_308/lstm_cell_77/add:z:04lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_308/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_308/lstm_cell_77/splitSplit.lstm_308/lstm_cell_77/split/split_dim:output:0&lstm_308/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_308/lstm_cell_77/SigmoidSigmoid$lstm_308/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/Sigmoid_1Sigmoid$lstm_308/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/mulMul#lstm_308/lstm_cell_77/Sigmoid_1:y:0lstm_308/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_308/lstm_cell_77/ReluRelu$lstm_308/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_308/lstm_cell_77/mul_1Mul!lstm_308/lstm_cell_77/Sigmoid:y:0(lstm_308/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/add_1AddV2lstm_308/lstm_cell_77/mul:z:0lstm_308/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/Sigmoid_2Sigmoid$lstm_308/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_308/lstm_cell_77/Relu_1Relulstm_308/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_308/lstm_cell_77/mul_2Mul#lstm_308/lstm_cell_77/Sigmoid_2:y:0*lstm_308/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_308/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_308/TensorArrayV2_1TensorListReserve/lstm_308/TensorArrayV2_1/element_shape:output:0!lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_308/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_308/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_308/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_308/whileWhile$lstm_308/while/loop_counter:output:0*lstm_308/while/maximum_iterations:output:0lstm_308/time:output:0!lstm_308/TensorArrayV2_1:handle:0lstm_308/zeros:output:0lstm_308/zeros_1:output:0!lstm_308/strided_slice_1:output:0@lstm_308/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_308_lstm_cell_77_matmul_readvariableop_resource6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource5lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
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
lstm_308_while_body_468731*&
condR
lstm_308_while_cond_468730*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_308/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_308/TensorArrayV2Stack/TensorListStackTensorListStacklstm_308/while:output:3Blstm_308/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_308/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_308/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_308/strided_slice_3StridedSlice4lstm_308/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_308/strided_slice_3/stack:output:0)lstm_308/strided_slice_3/stack_1:output:0)lstm_308/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_308/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_308/transpose_1	Transpose4lstm_308/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_308/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_308/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_102/MatMulMatMul!lstm_308/strided_slice_3:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_102/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp-^lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp,^lstm_306/lstm_cell_75/MatMul/ReadVariableOp.^lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp^lstm_306/while-^lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp,^lstm_307/lstm_cell_76/MatMul/ReadVariableOp.^lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp^lstm_307/while-^lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp,^lstm_308/lstm_cell_77/MatMul/ReadVariableOp.^lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp^lstm_308/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2\
,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp2Z
+lstm_306/lstm_cell_75/MatMul/ReadVariableOp+lstm_306/lstm_cell_75/MatMul/ReadVariableOp2^
-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp2 
lstm_306/whilelstm_306/while2\
,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp2Z
+lstm_307/lstm_cell_76/MatMul/ReadVariableOp+lstm_307/lstm_cell_76/MatMul/ReadVariableOp2^
-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp2 
lstm_307/whilelstm_307/while2\
,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp2Z
+lstm_308/lstm_cell_77/MatMul/ReadVariableOp+lstm_308/lstm_cell_77/MatMul/ReadVariableOp2^
-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp2 
lstm_308/whilelstm_308/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü


/__inference_sequential_102_layer_call_fn_468367

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
J__inference_sequential_102_layer_call_and_return_conditional_losses_467604o
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
while_body_467345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_470252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470252___redundant_placeholder04
0while_while_cond_470252___redundant_placeholder14
0while_while_cond_470252___redundant_placeholder24
0while_while_cond_470252___redundant_placeholder3
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

D__inference_lstm_308_layer_call_and_return_conditional_losses_466930

inputs%
lstm_cell_77_466848:2(%
lstm_cell_77_466850:
(!
lstm_cell_77_466852:(
identity˘$lstm_cell_77/StatefulPartitionedCall˘while;
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
$lstm_cell_77/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_77_466848lstm_cell_77_466850lstm_cell_77_466852*
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466847n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_77_466848lstm_cell_77_466850lstm_cell_77_466852*
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
while_body_466861*
condR
while_cond_466860*K
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
NoOpNoOp%^lstm_cell_77/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_77/StatefulPartitionedCall$lstm_cell_77/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_307_layer_call_and_return_conditional_losses_470337

inputs>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_470253*
condR
while_cond_470252*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_307_layer_call_fn_469908

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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467960s
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
while_body_470110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471181

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
²

÷
lstm_306_while_cond_468879.
*lstm_306_while_lstm_306_while_loop_counter4
0lstm_306_while_lstm_306_while_maximum_iterations
lstm_306_while_placeholder 
lstm_306_while_placeholder_1 
lstm_306_while_placeholder_2 
lstm_306_while_placeholder_30
,lstm_306_while_less_lstm_306_strided_slice_1F
Blstm_306_while_lstm_306_while_cond_468879___redundant_placeholder0F
Blstm_306_while_lstm_306_while_cond_468879___redundant_placeholder1F
Blstm_306_while_lstm_306_while_cond_468879___redundant_placeholder2F
Blstm_306_while_lstm_306_while_cond_468879___redundant_placeholder3
lstm_306_while_identity

lstm_306/while/LessLesslstm_306_while_placeholder,lstm_306_while_less_lstm_306_strided_slice_1*
T0*
_output_shapes
: ]
lstm_306/while/IdentityIdentitylstm_306/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_306_while_identity lstm_306/while/Identity:output:0*(
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
while_cond_469966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_469966___redundant_placeholder04
0while_while_cond_469966___redundant_placeholder14
0while_while_cond_469966___redundant_placeholder24
0while_while_cond_469966___redundant_placeholder3
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
à"
Ŭ
while_body_466861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_77_466885_0:2(-
while_lstm_cell_77_466887_0:
()
while_lstm_cell_77_466889_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_77_466885:2(+
while_lstm_cell_77_466887:
('
while_lstm_cell_77_466889:(˘*while/lstm_cell_77/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_77/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_77_466885_0while_lstm_cell_77_466887_0while_lstm_cell_77_466889_0*
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466847Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_77/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_77/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_77/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_77_466885while_lstm_cell_77_466885_0"8
while_lstm_cell_77_466887while_lstm_cell_77_466887_0"8
while_lstm_cell_77_466889while_lstm_cell_77_466889_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_77/StatefulPartitionedCall*while/lstm_cell_77/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_77_layer_call_fn_471345

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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466993o
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
˙7
Ê
while_body_470869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_466351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_466351___redundant_placeholder04
0while_while_cond_466351___redundant_placeholder14
0while_while_cond_466351___redundant_placeholder24
0while_while_cond_466351___redundant_placeholder3
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466643

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
while_cond_469493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_469493___redundant_placeholder04
0while_while_cond_469493___redundant_placeholder14
0while_while_cond_469493___redundant_placeholder24
0while_while_cond_469493___redundant_placeholder3
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
while_cond_470109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470109___redundant_placeholder04
0while_while_cond_470109___redundant_placeholder14
0while_while_cond_470109___redundant_placeholder24
0while_while_cond_470109___redundant_placeholder3
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
while_cond_470725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470725___redundant_placeholder04
0while_while_cond_470725___redundant_placeholder14
0while_while_cond_470725___redundant_placeholder24
0while_while_cond_470725___redundant_placeholder3
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
)__inference_lstm_307_layer_call_fn_469886
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_466771|
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
Ä

*__inference_dense_102_layer_call_fn_471105

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
E__inference_dense_102_layer_call_and_return_conditional_losses_467597o
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
while_cond_470395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470395___redundant_placeholder04
0while_while_cond_470395___redundant_placeholder14
0while_while_cond_470395___redundant_placeholder24
0while_while_cond_470395___redundant_placeholder3
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
ó¤

"__inference__traced_restore_471682
file_prefix3
!assignvariableop_dense_102_kernel:
/
!assignvariableop_1_dense_102_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_306_lstm_cell_306_kernel:	M
:assignvariableop_8_lstm_306_lstm_cell_306_recurrent_kernel:	d=
.assignvariableop_9_lstm_306_lstm_cell_306_bias:	D
1assignvariableop_10_lstm_307_lstm_cell_307_kernel:	dÈN
;assignvariableop_11_lstm_307_lstm_cell_307_recurrent_kernel:	2È>
/assignvariableop_12_lstm_307_lstm_cell_307_bias:	ÈC
1assignvariableop_13_lstm_308_lstm_cell_308_kernel:2(M
;assignvariableop_14_lstm_308_lstm_cell_308_recurrent_kernel:
(=
/assignvariableop_15_lstm_308_lstm_cell_308_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_102_kernel_m:
7
)assignvariableop_19_adam_dense_102_bias_m:K
8assignvariableop_20_adam_lstm_306_lstm_cell_306_kernel_m:	U
Bassignvariableop_21_adam_lstm_306_lstm_cell_306_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_306_lstm_cell_306_bias_m:	K
8assignvariableop_23_adam_lstm_307_lstm_cell_307_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_307_lstm_cell_307_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_307_lstm_cell_307_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_308_lstm_cell_308_kernel_m:2(T
Bassignvariableop_27_adam_lstm_308_lstm_cell_308_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_308_lstm_cell_308_bias_m:(=
+assignvariableop_29_adam_dense_102_kernel_v:
7
)assignvariableop_30_adam_dense_102_bias_v:K
8assignvariableop_31_adam_lstm_306_lstm_cell_306_kernel_v:	U
Bassignvariableop_32_adam_lstm_306_lstm_cell_306_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_306_lstm_cell_306_bias_v:	K
8assignvariableop_34_adam_lstm_307_lstm_cell_307_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_307_lstm_cell_307_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_307_lstm_cell_307_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_308_lstm_cell_308_kernel_v:2(T
Bassignvariableop_38_adam_lstm_308_lstm_cell_308_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_308_lstm_cell_308_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_102_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_102_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_306_lstm_cell_306_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_306_lstm_cell_306_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_306_lstm_cell_306_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_307_lstm_cell_307_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_307_lstm_cell_307_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_307_lstm_cell_307_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_308_lstm_cell_308_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_308_lstm_cell_308_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_308_lstm_cell_308_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_102_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_102_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_306_lstm_cell_306_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_306_lstm_cell_306_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_306_lstm_cell_306_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_307_lstm_cell_307_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_307_lstm_cell_307_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_307_lstm_cell_307_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_308_lstm_cell_308_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_308_lstm_cell_308_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_308_lstm_cell_308_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_102_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_102_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_306_lstm_cell_306_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_306_lstm_cell_306_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_306_lstm_cell_306_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_307_lstm_cell_307_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_307_lstm_cell_307_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_307_lstm_cell_307_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_308_lstm_cell_308_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_308_lstm_cell_308_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_308_lstm_cell_308_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_469780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_308_layer_call_fn_470502
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467121o
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
ÛB
?

lstm_306_while_body_468880.
*lstm_306_while_lstm_306_while_loop_counter4
0lstm_306_while_lstm_306_while_maximum_iterations
lstm_306_while_placeholder 
lstm_306_while_placeholder_1 
lstm_306_while_placeholder_2 
lstm_306_while_placeholder_3-
)lstm_306_while_lstm_306_strided_slice_1_0i
elstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0:	Q
>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dL
=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0:	
lstm_306_while_identity
lstm_306_while_identity_1
lstm_306_while_identity_2
lstm_306_while_identity_3
lstm_306_while_identity_4
lstm_306_while_identity_5+
'lstm_306_while_lstm_306_strided_slice_1g
clstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensorM
:lstm_306_while_lstm_cell_75_matmul_readvariableop_resource:	O
<lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource:	dJ
;lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource:	˘2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp˘1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp˘3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp
@lstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_306/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0lstm_306_while_placeholderIlstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_306/while/lstm_cell_75/MatMulMatMul9lstm_306/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_306/while/lstm_cell_75/MatMul_1MatMullstm_306_while_placeholder_2;lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_306/while/lstm_cell_75/addAddV2,lstm_306/while/lstm_cell_75/MatMul:product:0.lstm_306/while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_306/while/lstm_cell_75/BiasAddBiasAdd#lstm_306/while/lstm_cell_75/add:z:0:lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_306/while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_306/while/lstm_cell_75/splitSplit4lstm_306/while/lstm_cell_75/split/split_dim:output:0,lstm_306/while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_306/while/lstm_cell_75/SigmoidSigmoid*lstm_306/while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_306/while/lstm_cell_75/Sigmoid_1Sigmoid*lstm_306/while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_306/while/lstm_cell_75/mulMul)lstm_306/while/lstm_cell_75/Sigmoid_1:y:0lstm_306_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_306/while/lstm_cell_75/ReluRelu*lstm_306/while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_306/while/lstm_cell_75/mul_1Mul'lstm_306/while/lstm_cell_75/Sigmoid:y:0.lstm_306/while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_306/while/lstm_cell_75/add_1AddV2#lstm_306/while/lstm_cell_75/mul:z:0%lstm_306/while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_306/while/lstm_cell_75/Sigmoid_2Sigmoid*lstm_306/while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_306/while/lstm_cell_75/Relu_1Relu%lstm_306/while/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_306/while/lstm_cell_75/mul_2Mul)lstm_306/while/lstm_cell_75/Sigmoid_2:y:00lstm_306/while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_306/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_306_while_placeholder_1lstm_306_while_placeholder%lstm_306/while/lstm_cell_75/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_306/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_306/while/addAddV2lstm_306_while_placeholderlstm_306/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_306/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_306/while/add_1AddV2*lstm_306_while_lstm_306_while_loop_counterlstm_306/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_306/while/IdentityIdentitylstm_306/while/add_1:z:0^lstm_306/while/NoOp*
T0*
_output_shapes
: 
lstm_306/while/Identity_1Identity0lstm_306_while_lstm_306_while_maximum_iterations^lstm_306/while/NoOp*
T0*
_output_shapes
: t
lstm_306/while/Identity_2Identitylstm_306/while/add:z:0^lstm_306/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_306/while/Identity_3IdentityClstm_306/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_306/while/NoOp*
T0*
_output_shapes
: 
lstm_306/while/Identity_4Identity%lstm_306/while/lstm_cell_75/mul_2:z:0^lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/while/Identity_5Identity%lstm_306/while/lstm_cell_75/add_1:z:0^lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_306/while/NoOpNoOp3^lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2^lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp4^lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_306_while_identity lstm_306/while/Identity:output:0"?
lstm_306_while_identity_1"lstm_306/while/Identity_1:output:0"?
lstm_306_while_identity_2"lstm_306/while/Identity_2:output:0"?
lstm_306_while_identity_3"lstm_306/while/Identity_3:output:0"?
lstm_306_while_identity_4"lstm_306/while/Identity_4:output:0"?
lstm_306_while_identity_5"lstm_306/while/Identity_5:output:0"T
'lstm_306_while_lstm_306_strided_slice_1)lstm_306_while_lstm_306_strided_slice_1_0"|
;lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0"~
<lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0"z
:lstm_306_while_lstm_cell_75_matmul_readvariableop_resource<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0"Ì
clstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensorelstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2f
1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp2j
3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_308_while_cond_469157.
*lstm_308_while_lstm_308_while_loop_counter4
0lstm_308_while_lstm_308_while_maximum_iterations
lstm_308_while_placeholder 
lstm_308_while_placeholder_1 
lstm_308_while_placeholder_2 
lstm_308_while_placeholder_30
,lstm_308_while_less_lstm_308_strided_slice_1F
Blstm_308_while_lstm_308_while_cond_469157___redundant_placeholder0F
Blstm_308_while_lstm_308_while_cond_469157___redundant_placeholder1F
Blstm_308_while_lstm_308_while_cond_469157___redundant_placeholder2F
Blstm_308_while_lstm_308_while_cond_469157___redundant_placeholder3
lstm_308_while_identity

lstm_308/while/LessLesslstm_308_while_placeholder,lstm_308_while_less_lstm_308_strided_slice_1*
T0*
_output_shapes
: ]
lstm_308/while/IdentityIdentitylstm_308/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_308_while_identity lstm_308/while/Identity:output:0*(
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
while_body_467876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470953

inputs=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_470869*
condR
while_cond_470868*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_467195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_467494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467494___redundant_placeholder04
0while_while_cond_467494___redundant_placeholder14
0while_while_cond_467494___redundant_placeholder24
0while_while_cond_467494___redundant_placeholder3
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
while_body_467052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_77_467076_0:2(-
while_lstm_cell_77_467078_0:
()
while_lstm_cell_77_467080_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_77_467076:2(+
while_lstm_cell_77_467078:
('
while_lstm_cell_77_467080:(˘*while/lstm_cell_77/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_77/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_77_467076_0while_lstm_cell_77_467078_0while_lstm_cell_77_467080_0*
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466993Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_77/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_77/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_77/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_77_467076while_lstm_cell_77_467076_0"8
while_lstm_cell_77_467078while_lstm_cell_77_467078_0"8
while_lstm_cell_77_467080while_lstm_cell_77_467080_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_77/StatefulPartitionedCall*while/lstm_cell_77/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_75_layer_call_fn_471132

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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466147o
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
while_cond_466701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_466701___redundant_placeholder04
0while_while_cond_466701___redundant_placeholder14
0while_while_cond_466701___redundant_placeholder24
0while_while_cond_466701___redundant_placeholder3
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
while_cond_467710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467710___redundant_placeholder04
0while_while_cond_467710___redundant_placeholder14
0while_while_cond_467710___redundant_placeholder24
0while_while_cond_467710___redundant_placeholder3
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
$__inference_signature_wrapper_468340
lstm_306_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_306_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_466080o
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
_user_specified_namelstm_306_input
ô

£
/__inference_sequential_102_layer_call_fn_467629
lstm_306_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_306_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_102_layer_call_and_return_conditional_losses_467604o
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
_user_specified_namelstm_306_input
¤J

D__inference_lstm_306_layer_call_and_return_conditional_losses_469721

inputs>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_469637*
condR
while_cond_469636*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_307_layer_call_and_return_conditional_losses_467429

inputs>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_467345*
condR
while_cond_467344*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
²

÷
lstm_307_while_cond_468591.
*lstm_307_while_lstm_307_while_loop_counter4
0lstm_307_while_lstm_307_while_maximum_iterations
lstm_307_while_placeholder 
lstm_307_while_placeholder_1 
lstm_307_while_placeholder_2 
lstm_307_while_placeholder_30
,lstm_307_while_less_lstm_307_strided_slice_1F
Blstm_307_while_lstm_307_while_cond_468591___redundant_placeholder0F
Blstm_307_while_lstm_307_while_cond_468591___redundant_placeholder1F
Blstm_307_while_lstm_307_while_cond_468591___redundant_placeholder2F
Blstm_307_while_lstm_307_while_cond_468591___redundant_placeholder3
lstm_307_while_identity

lstm_307/while/LessLesslstm_307_while_placeholder,lstm_307_while_less_lstm_307_strided_slice_1*
T0*
_output_shapes
: ]
lstm_307/while/IdentityIdentitylstm_307/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_307_while_identity lstm_307/while/Identity:output:0*(
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466147

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
˙7
Ê
while_body_467495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_467875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467875___redundant_placeholder04
0while_while_cond_467875___redundant_placeholder14
0while_while_cond_467875___redundant_placeholder24
0while_while_cond_467875___redundant_placeholder3
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466293

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
8

D__inference_lstm_307_layer_call_and_return_conditional_losses_466580

inputs&
lstm_cell_76_466498:	dÈ&
lstm_cell_76_466500:	2È"
lstm_cell_76_466502:	È
identity˘$lstm_cell_76/StatefulPartitionedCall˘while;
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
$lstm_cell_76/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_76_466498lstm_cell_76_466500lstm_cell_76_466502*
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466497n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_76_466498lstm_cell_76_466500lstm_cell_76_466502*
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
while_body_466511*
condR
while_cond_466510*K
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
NoOpNoOp%^lstm_cell_76/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_76/StatefulPartitionedCall$lstm_cell_76/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_466160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_466160___redundant_placeholder04
0while_while_cond_466160___redundant_placeholder14
0while_while_cond_466160___redundant_placeholder24
0while_while_cond_466160___redundant_placeholder3
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469864

inputs>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_469780*
condR
while_cond_469779*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471213

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
while_cond_467194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467194___redundant_placeholder04
0while_while_cond_467194___redundant_placeholder14
0while_while_cond_467194___redundant_placeholder24
0while_while_cond_467194___redundant_placeholder3
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
Ĉ

J__inference_sequential_102_layer_call_and_return_conditional_losses_469248

inputsG
4lstm_306_lstm_cell_75_matmul_readvariableop_resource:	I
6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource:	dD
5lstm_306_lstm_cell_75_biasadd_readvariableop_resource:	G
4lstm_307_lstm_cell_76_matmul_readvariableop_resource:	dÈI
6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈD
5lstm_307_lstm_cell_76_biasadd_readvariableop_resource:	ÈF
4lstm_308_lstm_cell_77_matmul_readvariableop_resource:2(H
6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource:
(C
5lstm_308_lstm_cell_77_biasadd_readvariableop_resource:(:
(dense_102_matmul_readvariableop_resource:
7
)dense_102_biasadd_readvariableop_resource:
identity˘ dense_102/BiasAdd/ReadVariableOp˘dense_102/MatMul/ReadVariableOp˘,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp˘+lstm_306/lstm_cell_75/MatMul/ReadVariableOp˘-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp˘lstm_306/while˘,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp˘+lstm_307/lstm_cell_76/MatMul/ReadVariableOp˘-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp˘lstm_307/while˘,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp˘+lstm_308/lstm_cell_77/MatMul/ReadVariableOp˘-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp˘lstm_308/whileD
lstm_306/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_306/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_306/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_306/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_306/strided_sliceStridedSlicelstm_306/Shape:output:0%lstm_306/strided_slice/stack:output:0'lstm_306/strided_slice/stack_1:output:0'lstm_306/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_306/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_306/zeros/packedPacklstm_306/strided_slice:output:0 lstm_306/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_306/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_306/zerosFilllstm_306/zeros/packed:output:0lstm_306/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_306/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_306/zeros_1/packedPacklstm_306/strided_slice:output:0"lstm_306/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_306/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_306/zeros_1Fill lstm_306/zeros_1/packed:output:0lstm_306/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_306/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_306/transpose	Transposeinputs lstm_306/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_306/Shape_1Shapelstm_306/transpose:y:0*
T0*
_output_shapes
:h
lstm_306/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_306/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_306/strided_slice_1StridedSlicelstm_306/Shape_1:output:0'lstm_306/strided_slice_1/stack:output:0)lstm_306/strided_slice_1/stack_1:output:0)lstm_306/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_306/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_306/TensorArrayV2TensorListReserve-lstm_306/TensorArrayV2/element_shape:output:0!lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_306/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_306/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_306/transpose:y:0Glstm_306/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_306/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_306/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_306/strided_slice_2StridedSlicelstm_306/transpose:y:0'lstm_306/strided_slice_2/stack:output:0)lstm_306/strided_slice_2/stack_1:output:0)lstm_306/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_306/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp4lstm_306_lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_306/lstm_cell_75/MatMulMatMul!lstm_306/strided_slice_2:output:03lstm_306/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_306/lstm_cell_75/MatMul_1MatMullstm_306/zeros:output:05lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_306/lstm_cell_75/addAddV2&lstm_306/lstm_cell_75/MatMul:product:0(lstm_306/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp5lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_306/lstm_cell_75/BiasAddBiasAddlstm_306/lstm_cell_75/add:z:04lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_306/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_306/lstm_cell_75/splitSplit.lstm_306/lstm_cell_75/split/split_dim:output:0&lstm_306/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_306/lstm_cell_75/SigmoidSigmoid$lstm_306/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/Sigmoid_1Sigmoid$lstm_306/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/mulMul#lstm_306/lstm_cell_75/Sigmoid_1:y:0lstm_306/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_306/lstm_cell_75/ReluRelu$lstm_306/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_306/lstm_cell_75/mul_1Mul!lstm_306/lstm_cell_75/Sigmoid:y:0(lstm_306/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/add_1AddV2lstm_306/lstm_cell_75/mul:z:0lstm_306/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/lstm_cell_75/Sigmoid_2Sigmoid$lstm_306/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_306/lstm_cell_75/Relu_1Relulstm_306/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_306/lstm_cell_75/mul_2Mul#lstm_306/lstm_cell_75/Sigmoid_2:y:0*lstm_306/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_306/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_306/TensorArrayV2_1TensorListReserve/lstm_306/TensorArrayV2_1/element_shape:output:0!lstm_306/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_306/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_306/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_306/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_306/whileWhile$lstm_306/while/loop_counter:output:0*lstm_306/while/maximum_iterations:output:0lstm_306/time:output:0!lstm_306/TensorArrayV2_1:handle:0lstm_306/zeros:output:0lstm_306/zeros_1:output:0!lstm_306/strided_slice_1:output:0@lstm_306/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_306_lstm_cell_75_matmul_readvariableop_resource6lstm_306_lstm_cell_75_matmul_1_readvariableop_resource5lstm_306_lstm_cell_75_biasadd_readvariableop_resource*
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
lstm_306_while_body_468880*&
condR
lstm_306_while_cond_468879*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_306/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_306/TensorArrayV2Stack/TensorListStackTensorListStacklstm_306/while:output:3Blstm_306/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_306/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_306/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_306/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_306/strided_slice_3StridedSlice4lstm_306/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_306/strided_slice_3/stack:output:0)lstm_306/strided_slice_3/stack_1:output:0)lstm_306/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_306/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_306/transpose_1	Transpose4lstm_306/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_306/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_306/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_307/ShapeShapelstm_306/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_307/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_307/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_307/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_307/strided_sliceStridedSlicelstm_307/Shape:output:0%lstm_307/strided_slice/stack:output:0'lstm_307/strided_slice/stack_1:output:0'lstm_307/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_307/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_307/zeros/packedPacklstm_307/strided_slice:output:0 lstm_307/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_307/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_307/zerosFilllstm_307/zeros/packed:output:0lstm_307/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_307/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_307/zeros_1/packedPacklstm_307/strided_slice:output:0"lstm_307/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_307/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_307/zeros_1Fill lstm_307/zeros_1/packed:output:0lstm_307/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_307/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_307/transpose	Transposelstm_306/transpose_1:y:0 lstm_307/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_307/Shape_1Shapelstm_307/transpose:y:0*
T0*
_output_shapes
:h
lstm_307/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_307/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_307/strided_slice_1StridedSlicelstm_307/Shape_1:output:0'lstm_307/strided_slice_1/stack:output:0)lstm_307/strided_slice_1/stack_1:output:0)lstm_307/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_307/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_307/TensorArrayV2TensorListReserve-lstm_307/TensorArrayV2/element_shape:output:0!lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_307/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_307/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_307/transpose:y:0Glstm_307/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_307/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_307/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_307/strided_slice_2StridedSlicelstm_307/transpose:y:0'lstm_307/strided_slice_2/stack:output:0)lstm_307/strided_slice_2/stack_1:output:0)lstm_307/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_307/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp4lstm_307_lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_307/lstm_cell_76/MatMulMatMul!lstm_307/strided_slice_2:output:03lstm_307/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_307/lstm_cell_76/MatMul_1MatMullstm_307/zeros:output:05lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_307/lstm_cell_76/addAddV2&lstm_307/lstm_cell_76/MatMul:product:0(lstm_307/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp5lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_307/lstm_cell_76/BiasAddBiasAddlstm_307/lstm_cell_76/add:z:04lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_307/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_307/lstm_cell_76/splitSplit.lstm_307/lstm_cell_76/split/split_dim:output:0&lstm_307/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_307/lstm_cell_76/SigmoidSigmoid$lstm_307/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/Sigmoid_1Sigmoid$lstm_307/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/mulMul#lstm_307/lstm_cell_76/Sigmoid_1:y:0lstm_307/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_307/lstm_cell_76/ReluRelu$lstm_307/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_307/lstm_cell_76/mul_1Mul!lstm_307/lstm_cell_76/Sigmoid:y:0(lstm_307/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/add_1AddV2lstm_307/lstm_cell_76/mul:z:0lstm_307/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_307/lstm_cell_76/Sigmoid_2Sigmoid$lstm_307/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_307/lstm_cell_76/Relu_1Relulstm_307/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_307/lstm_cell_76/mul_2Mul#lstm_307/lstm_cell_76/Sigmoid_2:y:0*lstm_307/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_307/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_307/TensorArrayV2_1TensorListReserve/lstm_307/TensorArrayV2_1/element_shape:output:0!lstm_307/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_307/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_307/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_307/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_307/whileWhile$lstm_307/while/loop_counter:output:0*lstm_307/while/maximum_iterations:output:0lstm_307/time:output:0!lstm_307/TensorArrayV2_1:handle:0lstm_307/zeros:output:0lstm_307/zeros_1:output:0!lstm_307/strided_slice_1:output:0@lstm_307/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_307_lstm_cell_76_matmul_readvariableop_resource6lstm_307_lstm_cell_76_matmul_1_readvariableop_resource5lstm_307_lstm_cell_76_biasadd_readvariableop_resource*
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
lstm_307_while_body_469019*&
condR
lstm_307_while_cond_469018*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_307/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_307/TensorArrayV2Stack/TensorListStackTensorListStacklstm_307/while:output:3Blstm_307/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_307/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_307/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_307/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_307/strided_slice_3StridedSlice4lstm_307/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_307/strided_slice_3/stack:output:0)lstm_307/strided_slice_3/stack_1:output:0)lstm_307/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_307/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_307/transpose_1	Transpose4lstm_307/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_307/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_307/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_308/ShapeShapelstm_307/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_308/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_308/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_308/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_308/strided_sliceStridedSlicelstm_308/Shape:output:0%lstm_308/strided_slice/stack:output:0'lstm_308/strided_slice/stack_1:output:0'lstm_308/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_308/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_308/zeros/packedPacklstm_308/strided_slice:output:0 lstm_308/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_308/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_308/zerosFilllstm_308/zeros/packed:output:0lstm_308/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_308/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_308/zeros_1/packedPacklstm_308/strided_slice:output:0"lstm_308/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_308/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_308/zeros_1Fill lstm_308/zeros_1/packed:output:0lstm_308/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_308/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_308/transpose	Transposelstm_307/transpose_1:y:0 lstm_308/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_308/Shape_1Shapelstm_308/transpose:y:0*
T0*
_output_shapes
:h
lstm_308/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_308/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_308/strided_slice_1StridedSlicelstm_308/Shape_1:output:0'lstm_308/strided_slice_1/stack:output:0)lstm_308/strided_slice_1/stack_1:output:0)lstm_308/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_308/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_308/TensorArrayV2TensorListReserve-lstm_308/TensorArrayV2/element_shape:output:0!lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_308/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_308/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_308/transpose:y:0Glstm_308/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_308/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_308/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_308/strided_slice_2StridedSlicelstm_308/transpose:y:0'lstm_308/strided_slice_2/stack:output:0)lstm_308/strided_slice_2/stack_1:output:0)lstm_308/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_308/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp4lstm_308_lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_308/lstm_cell_77/MatMulMatMul!lstm_308/strided_slice_2:output:03lstm_308/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_308/lstm_cell_77/MatMul_1MatMullstm_308/zeros:output:05lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_308/lstm_cell_77/addAddV2&lstm_308/lstm_cell_77/MatMul:product:0(lstm_308/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp5lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_308/lstm_cell_77/BiasAddBiasAddlstm_308/lstm_cell_77/add:z:04lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_308/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_308/lstm_cell_77/splitSplit.lstm_308/lstm_cell_77/split/split_dim:output:0&lstm_308/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_308/lstm_cell_77/SigmoidSigmoid$lstm_308/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/Sigmoid_1Sigmoid$lstm_308/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/mulMul#lstm_308/lstm_cell_77/Sigmoid_1:y:0lstm_308/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_308/lstm_cell_77/ReluRelu$lstm_308/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_308/lstm_cell_77/mul_1Mul!lstm_308/lstm_cell_77/Sigmoid:y:0(lstm_308/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/add_1AddV2lstm_308/lstm_cell_77/mul:z:0lstm_308/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/lstm_cell_77/Sigmoid_2Sigmoid$lstm_308/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_308/lstm_cell_77/Relu_1Relulstm_308/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_308/lstm_cell_77/mul_2Mul#lstm_308/lstm_cell_77/Sigmoid_2:y:0*lstm_308/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_308/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_308/TensorArrayV2_1TensorListReserve/lstm_308/TensorArrayV2_1/element_shape:output:0!lstm_308/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_308/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_308/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_308/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_308/whileWhile$lstm_308/while/loop_counter:output:0*lstm_308/while/maximum_iterations:output:0lstm_308/time:output:0!lstm_308/TensorArrayV2_1:handle:0lstm_308/zeros:output:0lstm_308/zeros_1:output:0!lstm_308/strided_slice_1:output:0@lstm_308/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_308_lstm_cell_77_matmul_readvariableop_resource6lstm_308_lstm_cell_77_matmul_1_readvariableop_resource5lstm_308_lstm_cell_77_biasadd_readvariableop_resource*
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
lstm_308_while_body_469158*&
condR
lstm_308_while_cond_469157*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_308/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_308/TensorArrayV2Stack/TensorListStackTensorListStacklstm_308/while:output:3Blstm_308/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_308/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_308/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_308/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_308/strided_slice_3StridedSlice4lstm_308/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_308/strided_slice_3/stack:output:0)lstm_308/strided_slice_3/stack_1:output:0)lstm_308/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_308/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_308/transpose_1	Transpose4lstm_308/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_308/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_308/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_102/MatMulMatMul!lstm_308/strided_slice_3:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_102/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp-^lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp,^lstm_306/lstm_cell_75/MatMul/ReadVariableOp.^lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp^lstm_306/while-^lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp,^lstm_307/lstm_cell_76/MatMul/ReadVariableOp.^lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp^lstm_307/while-^lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp,^lstm_308/lstm_cell_77/MatMul/ReadVariableOp.^lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp^lstm_308/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2\
,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp,lstm_306/lstm_cell_75/BiasAdd/ReadVariableOp2Z
+lstm_306/lstm_cell_75/MatMul/ReadVariableOp+lstm_306/lstm_cell_75/MatMul/ReadVariableOp2^
-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp-lstm_306/lstm_cell_75/MatMul_1/ReadVariableOp2 
lstm_306/whilelstm_306/while2\
,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp,lstm_307/lstm_cell_76/BiasAdd/ReadVariableOp2Z
+lstm_307/lstm_cell_76/MatMul/ReadVariableOp+lstm_307/lstm_cell_76/MatMul/ReadVariableOp2^
-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp-lstm_307/lstm_cell_76/MatMul_1/ReadVariableOp2 
lstm_307/whilelstm_307/while2\
,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp,lstm_308/lstm_cell_77/BiasAdd/ReadVariableOp2Z
+lstm_308/lstm_cell_77/MatMul/ReadVariableOp+lstm_308/lstm_cell_77/MatMul/ReadVariableOp2^
-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp-lstm_308/lstm_cell_77/MatMul_1/ReadVariableOp2 
lstm_308/whilelstm_308/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_307_layer_call_and_return_conditional_losses_466771

inputs&
lstm_cell_76_466689:	dÈ&
lstm_cell_76_466691:	2È"
lstm_cell_76_466693:	È
identity˘$lstm_cell_76/StatefulPartitionedCall˘while;
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
$lstm_cell_76/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_76_466689lstm_cell_76_466691lstm_cell_76_466693*
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466643n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_76_466689lstm_cell_76_466691lstm_cell_76_466693*
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
while_body_466702*
condR
while_cond_466701*K
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
NoOpNoOp%^lstm_cell_76/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_76/StatefulPartitionedCall$lstm_cell_76/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
˙7
Ê
while_body_467711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĥT
Ô
)sequential_102_lstm_307_while_body_465851L
Hsequential_102_lstm_307_while_sequential_102_lstm_307_while_loop_counterR
Nsequential_102_lstm_307_while_sequential_102_lstm_307_while_maximum_iterations-
)sequential_102_lstm_307_while_placeholder/
+sequential_102_lstm_307_while_placeholder_1/
+sequential_102_lstm_307_while_placeholder_2/
+sequential_102_lstm_307_while_placeholder_3K
Gsequential_102_lstm_307_while_sequential_102_lstm_307_strided_slice_1_0
sequential_102_lstm_307_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_307_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_102_lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈ`
Msequential_102_lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2È[
Lsequential_102_lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0:	È*
&sequential_102_lstm_307_while_identity,
(sequential_102_lstm_307_while_identity_1,
(sequential_102_lstm_307_while_identity_2,
(sequential_102_lstm_307_while_identity_3,
(sequential_102_lstm_307_while_identity_4,
(sequential_102_lstm_307_while_identity_5I
Esequential_102_lstm_307_while_sequential_102_lstm_307_strided_slice_1
sequential_102_lstm_307_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_307_tensorarrayunstack_tensorlistfromtensor\
Isequential_102_lstm_307_while_lstm_cell_76_matmul_readvariableop_resource:	dÈ^
Ksequential_102_lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈY
Jsequential_102_lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource:	È˘Asequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp˘@sequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp˘Bsequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp 
Osequential_102/lstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_102/lstm_307/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_102_lstm_307_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_307_tensorarrayunstack_tensorlistfromtensor_0)sequential_102_lstm_307_while_placeholderXsequential_102/lstm_307/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOpKsequential_102_lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_102/lstm_307/while/lstm_cell_76/MatMulMatMulHsequential_102/lstm_307/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOpMsequential_102_lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_102/lstm_307/while/lstm_cell_76/MatMul_1MatMul+sequential_102_lstm_307_while_placeholder_2Jsequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_102/lstm_307/while/lstm_cell_76/addAddV2;sequential_102/lstm_307/while/lstm_cell_76/MatMul:product:0=sequential_102/lstm_307/while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOpLsequential_102_lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_102/lstm_307/while/lstm_cell_76/BiasAddBiasAdd2sequential_102/lstm_307/while/lstm_cell_76/add:z:0Isequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_102/lstm_307/while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_102/lstm_307/while/lstm_cell_76/splitSplitCsequential_102/lstm_307/while/lstm_cell_76/split/split_dim:output:0;sequential_102/lstm_307/while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_102/lstm_307/while/lstm_cell_76/SigmoidSigmoid9sequential_102/lstm_307/while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_102/lstm_307/while/lstm_cell_76/Sigmoid_1Sigmoid9sequential_102/lstm_307/while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_102/lstm_307/while/lstm_cell_76/mulMul8sequential_102/lstm_307/while/lstm_cell_76/Sigmoid_1:y:0+sequential_102_lstm_307_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_102/lstm_307/while/lstm_cell_76/ReluRelu9sequential_102/lstm_307/while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_102/lstm_307/while/lstm_cell_76/mul_1Mul6sequential_102/lstm_307/while/lstm_cell_76/Sigmoid:y:0=sequential_102/lstm_307/while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_102/lstm_307/while/lstm_cell_76/add_1AddV22sequential_102/lstm_307/while/lstm_cell_76/mul:z:04sequential_102/lstm_307/while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_102/lstm_307/while/lstm_cell_76/Sigmoid_2Sigmoid9sequential_102/lstm_307/while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_102/lstm_307/while/lstm_cell_76/Relu_1Relu4sequential_102/lstm_307/while/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_102/lstm_307/while/lstm_cell_76/mul_2Mul8sequential_102/lstm_307/while/lstm_cell_76/Sigmoid_2:y:0?sequential_102/lstm_307/while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_102/lstm_307/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_102_lstm_307_while_placeholder_1)sequential_102_lstm_307_while_placeholder4sequential_102/lstm_307/while/lstm_cell_76/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_102/lstm_307/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_102/lstm_307/while/addAddV2)sequential_102_lstm_307_while_placeholder,sequential_102/lstm_307/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_102/lstm_307/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_102/lstm_307/while/add_1AddV2Hsequential_102_lstm_307_while_sequential_102_lstm_307_while_loop_counter.sequential_102/lstm_307/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_102/lstm_307/while/IdentityIdentity'sequential_102/lstm_307/while/add_1:z:0#^sequential_102/lstm_307/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_102/lstm_307/while/Identity_1IdentityNsequential_102_lstm_307_while_sequential_102_lstm_307_while_maximum_iterations#^sequential_102/lstm_307/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_102/lstm_307/while/Identity_2Identity%sequential_102/lstm_307/while/add:z:0#^sequential_102/lstm_307/while/NoOp*
T0*
_output_shapes
: Î
(sequential_102/lstm_307/while/Identity_3IdentityRsequential_102/lstm_307/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_102/lstm_307/while/NoOp*
T0*
_output_shapes
: Á
(sequential_102/lstm_307/while/Identity_4Identity4sequential_102/lstm_307/while/lstm_cell_76/mul_2:z:0#^sequential_102/lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_102/lstm_307/while/Identity_5Identity4sequential_102/lstm_307/while/lstm_cell_76/add_1:z:0#^sequential_102/lstm_307/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_102/lstm_307/while/NoOpNoOpB^sequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOpA^sequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOpC^sequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_102_lstm_307_while_identity/sequential_102/lstm_307/while/Identity:output:0"]
(sequential_102_lstm_307_while_identity_11sequential_102/lstm_307/while/Identity_1:output:0"]
(sequential_102_lstm_307_while_identity_21sequential_102/lstm_307/while/Identity_2:output:0"]
(sequential_102_lstm_307_while_identity_31sequential_102/lstm_307/while/Identity_3:output:0"]
(sequential_102_lstm_307_while_identity_41sequential_102/lstm_307/while/Identity_4:output:0"]
(sequential_102_lstm_307_while_identity_51sequential_102/lstm_307/while/Identity_5:output:0"
Jsequential_102_lstm_307_while_lstm_cell_76_biasadd_readvariableop_resourceLsequential_102_lstm_307_while_lstm_cell_76_biasadd_readvariableop_resource_0"
Ksequential_102_lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resourceMsequential_102_lstm_307_while_lstm_cell_76_matmul_1_readvariableop_resource_0"
Isequential_102_lstm_307_while_lstm_cell_76_matmul_readvariableop_resourceKsequential_102_lstm_307_while_lstm_cell_76_matmul_readvariableop_resource_0"
Esequential_102_lstm_307_while_sequential_102_lstm_307_strided_slice_1Gsequential_102_lstm_307_while_sequential_102_lstm_307_strided_slice_1_0"
sequential_102_lstm_307_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_307_tensorarrayunstack_tensorlistfromtensorsequential_102_lstm_307_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_307_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOpAsequential_102/lstm_307/while/lstm_cell_76/BiasAdd/ReadVariableOp2
@sequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp@sequential_102/lstm_307/while/lstm_cell_76/MatMul/ReadVariableOp2
Bsequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOpBsequential_102/lstm_307/while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466497

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
ÎB
ê

lstm_308_while_body_469158.
*lstm_308_while_lstm_308_while_loop_counter4
0lstm_308_while_lstm_308_while_maximum_iterations
lstm_308_while_placeholder 
lstm_308_while_placeholder_1 
lstm_308_while_placeholder_2 
lstm_308_while_placeholder_3-
)lstm_308_while_lstm_308_strided_slice_1_0i
elstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0:2(P
>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(K
=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0:(
lstm_308_while_identity
lstm_308_while_identity_1
lstm_308_while_identity_2
lstm_308_while_identity_3
lstm_308_while_identity_4
lstm_308_while_identity_5+
'lstm_308_while_lstm_308_strided_slice_1g
clstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensorL
:lstm_308_while_lstm_cell_77_matmul_readvariableop_resource:2(N
<lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource:
(I
;lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource:(˘2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp˘1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp˘3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp
@lstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_308/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0lstm_308_while_placeholderIlstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_308/while/lstm_cell_77/MatMulMatMul9lstm_308/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_308/while/lstm_cell_77/MatMul_1MatMullstm_308_while_placeholder_2;lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_308/while/lstm_cell_77/addAddV2,lstm_308/while/lstm_cell_77/MatMul:product:0.lstm_308/while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_308/while/lstm_cell_77/BiasAddBiasAdd#lstm_308/while/lstm_cell_77/add:z:0:lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_308/while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_308/while/lstm_cell_77/splitSplit4lstm_308/while/lstm_cell_77/split/split_dim:output:0,lstm_308/while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_308/while/lstm_cell_77/SigmoidSigmoid*lstm_308/while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_308/while/lstm_cell_77/Sigmoid_1Sigmoid*lstm_308/while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_308/while/lstm_cell_77/mulMul)lstm_308/while/lstm_cell_77/Sigmoid_1:y:0lstm_308_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_308/while/lstm_cell_77/ReluRelu*lstm_308/while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_308/while/lstm_cell_77/mul_1Mul'lstm_308/while/lstm_cell_77/Sigmoid:y:0.lstm_308/while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_308/while/lstm_cell_77/add_1AddV2#lstm_308/while/lstm_cell_77/mul:z:0%lstm_308/while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_308/while/lstm_cell_77/Sigmoid_2Sigmoid*lstm_308/while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_308/while/lstm_cell_77/Relu_1Relu%lstm_308/while/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_308/while/lstm_cell_77/mul_2Mul)lstm_308/while/lstm_cell_77/Sigmoid_2:y:00lstm_308/while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_308/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_308_while_placeholder_1lstm_308_while_placeholder%lstm_308/while/lstm_cell_77/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_308/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_308/while/addAddV2lstm_308_while_placeholderlstm_308/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_308/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_308/while/add_1AddV2*lstm_308_while_lstm_308_while_loop_counterlstm_308/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_308/while/IdentityIdentitylstm_308/while/add_1:z:0^lstm_308/while/NoOp*
T0*
_output_shapes
: 
lstm_308/while/Identity_1Identity0lstm_308_while_lstm_308_while_maximum_iterations^lstm_308/while/NoOp*
T0*
_output_shapes
: t
lstm_308/while/Identity_2Identitylstm_308/while/add:z:0^lstm_308/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_308/while/Identity_3IdentityClstm_308/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_308/while/NoOp*
T0*
_output_shapes
: 
lstm_308/while/Identity_4Identity%lstm_308/while/lstm_cell_77/mul_2:z:0^lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/while/Identity_5Identity%lstm_308/while/lstm_cell_77/add_1:z:0^lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_308/while/NoOpNoOp3^lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2^lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp4^lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_308_while_identity lstm_308/while/Identity:output:0"?
lstm_308_while_identity_1"lstm_308/while/Identity_1:output:0"?
lstm_308_while_identity_2"lstm_308/while/Identity_2:output:0"?
lstm_308_while_identity_3"lstm_308/while/Identity_3:output:0"?
lstm_308_while_identity_4"lstm_308/while/Identity_4:output:0"?
lstm_308_while_identity_5"lstm_308/while/Identity_5:output:0"T
'lstm_308_while_lstm_308_strided_slice_1)lstm_308_while_lstm_308_strided_slice_1_0"|
;lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0"~
<lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0"z
:lstm_308_while_lstm_cell_77_matmul_readvariableop_resource<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0"Ì
clstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensorelstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2f
1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp2j
3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_470726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_77_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_77_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_77_matmul_readvariableop_resource:2(E
3while_lstm_cell_77_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_77_biasadd_readvariableop_resource:(˘)while/lstm_cell_77/BiasAdd/ReadVariableOp˘(while/lstm_cell_77/MatMul/ReadVariableOp˘*while/lstm_cell_77/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_77/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_77/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_77/addAddV2#while/lstm_cell_77/MatMul:product:0%while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_77/BiasAddBiasAddwhile/lstm_cell_77/add:z:01while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_77/splitSplit+while/lstm_cell_77/split/split_dim:output:0#while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_77/SigmoidSigmoid!while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_1Sigmoid!while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mulMul while/lstm_cell_77/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_77/ReluRelu!while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_1Mulwhile/lstm_cell_77/Sigmoid:y:0%while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/add_1AddV2while/lstm_cell_77/mul:z:0while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_77/Sigmoid_2Sigmoid!while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_77/Relu_1Reluwhile/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_77/mul_2Mul while/lstm_cell_77/Sigmoid_2:y:0'while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_77/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_77/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_77/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_77/BiasAdd/ReadVariableOp)^while/lstm_cell_77/MatMul/ReadVariableOp+^while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_77_biasadd_readvariableop_resource4while_lstm_cell_77_biasadd_readvariableop_resource_0"l
3while_lstm_cell_77_matmul_1_readvariableop_resource5while_lstm_cell_77_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_77_matmul_readvariableop_resource3while_lstm_cell_77_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_77/BiasAdd/ReadVariableOp)while/lstm_cell_77/BiasAdd/ReadVariableOp2T
(while/lstm_cell_77/MatMul/ReadVariableOp(while/lstm_cell_77/MatMul/ReadVariableOp2X
*while/lstm_cell_77/MatMul_1/ReadVariableOp*while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
íW
¤
__inference__traced_save_471552
file_prefix/
+savev2_dense_102_kernel_read_readvariableop-
)savev2_dense_102_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_306_lstm_cell_306_kernel_read_readvariableopF
Bsavev2_lstm_306_lstm_cell_306_recurrent_kernel_read_readvariableop:
6savev2_lstm_306_lstm_cell_306_bias_read_readvariableop<
8savev2_lstm_307_lstm_cell_307_kernel_read_readvariableopF
Bsavev2_lstm_307_lstm_cell_307_recurrent_kernel_read_readvariableop:
6savev2_lstm_307_lstm_cell_307_bias_read_readvariableop<
8savev2_lstm_308_lstm_cell_308_kernel_read_readvariableopF
Bsavev2_lstm_308_lstm_cell_308_recurrent_kernel_read_readvariableop:
6savev2_lstm_308_lstm_cell_308_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_102_kernel_m_read_readvariableop4
0savev2_adam_dense_102_bias_m_read_readvariableopC
?savev2_adam_lstm_306_lstm_cell_306_kernel_m_read_readvariableopM
Isavev2_adam_lstm_306_lstm_cell_306_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_306_lstm_cell_306_bias_m_read_readvariableopC
?savev2_adam_lstm_307_lstm_cell_307_kernel_m_read_readvariableopM
Isavev2_adam_lstm_307_lstm_cell_307_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_307_lstm_cell_307_bias_m_read_readvariableopC
?savev2_adam_lstm_308_lstm_cell_308_kernel_m_read_readvariableopM
Isavev2_adam_lstm_308_lstm_cell_308_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_308_lstm_cell_308_bias_m_read_readvariableop6
2savev2_adam_dense_102_kernel_v_read_readvariableop4
0savev2_adam_dense_102_bias_v_read_readvariableopC
?savev2_adam_lstm_306_lstm_cell_306_kernel_v_read_readvariableopM
Isavev2_adam_lstm_306_lstm_cell_306_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_306_lstm_cell_306_bias_v_read_readvariableopC
?savev2_adam_lstm_307_lstm_cell_307_kernel_v_read_readvariableopM
Isavev2_adam_lstm_307_lstm_cell_307_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_307_lstm_cell_307_bias_v_read_readvariableopC
?savev2_adam_lstm_308_lstm_cell_308_kernel_v_read_readvariableopM
Isavev2_adam_lstm_308_lstm_cell_308_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_308_lstm_cell_308_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_102_kernel_read_readvariableop)savev2_dense_102_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_306_lstm_cell_306_kernel_read_readvariableopBsavev2_lstm_306_lstm_cell_306_recurrent_kernel_read_readvariableop6savev2_lstm_306_lstm_cell_306_bias_read_readvariableop8savev2_lstm_307_lstm_cell_307_kernel_read_readvariableopBsavev2_lstm_307_lstm_cell_307_recurrent_kernel_read_readvariableop6savev2_lstm_307_lstm_cell_307_bias_read_readvariableop8savev2_lstm_308_lstm_cell_308_kernel_read_readvariableopBsavev2_lstm_308_lstm_cell_308_recurrent_kernel_read_readvariableop6savev2_lstm_308_lstm_cell_308_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_102_kernel_m_read_readvariableop0savev2_adam_dense_102_bias_m_read_readvariableop?savev2_adam_lstm_306_lstm_cell_306_kernel_m_read_readvariableopIsavev2_adam_lstm_306_lstm_cell_306_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_306_lstm_cell_306_bias_m_read_readvariableop?savev2_adam_lstm_307_lstm_cell_307_kernel_m_read_readvariableopIsavev2_adam_lstm_307_lstm_cell_307_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_307_lstm_cell_307_bias_m_read_readvariableop?savev2_adam_lstm_308_lstm_cell_308_kernel_m_read_readvariableopIsavev2_adam_lstm_308_lstm_cell_308_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_308_lstm_cell_308_bias_m_read_readvariableop2savev2_adam_dense_102_kernel_v_read_readvariableop0savev2_adam_dense_102_bias_v_read_readvariableop?savev2_adam_lstm_306_lstm_cell_306_kernel_v_read_readvariableopIsavev2_adam_lstm_306_lstm_cell_306_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_306_lstm_cell_306_bias_v_read_readvariableop?savev2_adam_lstm_307_lstm_cell_307_kernel_v_read_readvariableopIsavev2_adam_lstm_307_lstm_cell_307_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_307_lstm_cell_307_bias_v_read_readvariableop?savev2_adam_lstm_308_lstm_cell_308_kernel_v_read_readvariableopIsavev2_adam_lstm_308_lstm_cell_308_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_308_lstm_cell_308_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ë
ö
-__inference_lstm_cell_75_layer_call_fn_471149

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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466293o
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467579

inputs=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_467495*
condR
while_cond_467494*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471279

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
while_cond_466510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_466510___redundant_placeholder04
0while_while_cond_466510___redundant_placeholder14
0while_while_cond_466510___redundant_placeholder24
0while_while_cond_466510___redundant_placeholder3
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
while_cond_469779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_469779___redundant_placeholder04
0while_while_cond_469779___redundant_placeholder14
0while_while_cond_469779___redundant_placeholder24
0while_while_cond_469779___redundant_placeholder3
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
lstm_306_while_cond_468452.
*lstm_306_while_lstm_306_while_loop_counter4
0lstm_306_while_lstm_306_while_maximum_iterations
lstm_306_while_placeholder 
lstm_306_while_placeholder_1 
lstm_306_while_placeholder_2 
lstm_306_while_placeholder_30
,lstm_306_while_less_lstm_306_strided_slice_1F
Blstm_306_while_lstm_306_while_cond_468452___redundant_placeholder0F
Blstm_306_while_lstm_306_while_cond_468452___redundant_placeholder1F
Blstm_306_while_lstm_306_while_cond_468452___redundant_placeholder2F
Blstm_306_while_lstm_306_while_cond_468452___redundant_placeholder3
lstm_306_while_identity

lstm_306/while/LessLesslstm_306_while_placeholder,lstm_306_while_less_lstm_306_strided_slice_1*
T0*
_output_shapes
: ]
lstm_306/while/IdentityIdentitylstm_306/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_306_while_identity lstm_306/while/Identity:output:0*(
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
Ö
£
)sequential_102_lstm_308_while_cond_465989L
Hsequential_102_lstm_308_while_sequential_102_lstm_308_while_loop_counterR
Nsequential_102_lstm_308_while_sequential_102_lstm_308_while_maximum_iterations-
)sequential_102_lstm_308_while_placeholder/
+sequential_102_lstm_308_while_placeholder_1/
+sequential_102_lstm_308_while_placeholder_2/
+sequential_102_lstm_308_while_placeholder_3N
Jsequential_102_lstm_308_while_less_sequential_102_lstm_308_strided_slice_1d
`sequential_102_lstm_308_while_sequential_102_lstm_308_while_cond_465989___redundant_placeholder0d
`sequential_102_lstm_308_while_sequential_102_lstm_308_while_cond_465989___redundant_placeholder1d
`sequential_102_lstm_308_while_sequential_102_lstm_308_while_cond_465989___redundant_placeholder2d
`sequential_102_lstm_308_while_sequential_102_lstm_308_while_cond_465989___redundant_placeholder3*
&sequential_102_lstm_308_while_identity
Â
"sequential_102/lstm_308/while/LessLess)sequential_102_lstm_308_while_placeholderJsequential_102_lstm_308_while_less_sequential_102_lstm_308_strided_slice_1*
T0*
_output_shapes
: {
&sequential_102/lstm_308/while/IdentityIdentity&sequential_102/lstm_308/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_102_lstm_308_while_identity/sequential_102/lstm_308/while/Identity:output:0*(
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471377

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
while_body_468041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ï
÷
J__inference_sequential_102_layer_call_and_return_conditional_losses_468275
lstm_306_input"
lstm_306_468248:	"
lstm_306_468250:	d
lstm_306_468252:	"
lstm_307_468255:	dÈ"
lstm_307_468257:	2È
lstm_307_468259:	È!
lstm_308_468262:2(!
lstm_308_468264:
(
lstm_308_468266:("
dense_102_468269:

dense_102_468271:
identity˘!dense_102/StatefulPartitionedCall˘ lstm_306/StatefulPartitionedCall˘ lstm_307/StatefulPartitionedCall˘ lstm_308/StatefulPartitionedCall
 lstm_306/StatefulPartitionedCallStatefulPartitionedCalllstm_306_inputlstm_306_468248lstm_306_468250lstm_306_468252*
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_467279Ş
 lstm_307/StatefulPartitionedCallStatefulPartitionedCall)lstm_306/StatefulPartitionedCall:output:0lstm_307_468255lstm_307_468257lstm_307_468259*
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467429Ĥ
 lstm_308/StatefulPartitionedCallStatefulPartitionedCall)lstm_307/StatefulPartitionedCall:output:0lstm_308_468262lstm_308_468264lstm_308_468266*
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467579
!dense_102/StatefulPartitionedCallStatefulPartitionedCall)lstm_308/StatefulPartitionedCall:output:0dense_102_468269dense_102_468271*
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
E__inference_dense_102_layer_call_and_return_conditional_losses_467597y
IdentityIdentity*dense_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_102/StatefulPartitionedCall!^lstm_306/StatefulPartitionedCall!^lstm_307/StatefulPartitionedCall!^lstm_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2D
 lstm_306/StatefulPartitionedCall lstm_306/StatefulPartitionedCall2D
 lstm_307/StatefulPartitionedCall lstm_307/StatefulPartitionedCall2D
 lstm_308/StatefulPartitionedCall lstm_308/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_306_input
µ
?
while_cond_467344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467344___redundant_placeholder04
0while_while_cond_467344___redundant_placeholder14
0while_while_cond_467344___redundant_placeholder24
0while_while_cond_467344___redundant_placeholder3
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
while_body_466352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_75_466376_0:	.
while_lstm_cell_75_466378_0:	d*
while_lstm_cell_75_466380_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_75_466376:	,
while_lstm_cell_75_466378:	d(
while_lstm_cell_75_466380:	˘*while/lstm_cell_75/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_75/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_75_466376_0while_lstm_cell_75_466378_0while_lstm_cell_75_466380_0*
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_466293Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_75/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_75/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_75/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_75_466376while_lstm_cell_75_466376_0"8
while_lstm_cell_75_466378while_lstm_cell_75_466378_0"8
while_lstm_cell_75_466380while_lstm_cell_75_466380_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_75/StatefulPartitionedCall*while/lstm_cell_75/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_469351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_467051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_467051___redundant_placeholder04
0while_while_cond_467051___redundant_placeholder14
0while_while_cond_467051___redundant_placeholder24
0while_while_cond_467051___redundant_placeholder3
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
ë
ö
-__inference_lstm_cell_76_layer_call_fn_471247

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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_466643o
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
Ŭ

H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471311

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
)__inference_lstm_308_layer_call_fn_470524

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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467795o
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470810
inputs_0=
+lstm_cell_77_matmul_readvariableop_resource:2(?
-lstm_cell_77_matmul_1_readvariableop_resource:
(:
,lstm_cell_77_biasadd_readvariableop_resource:(
identity˘#lstm_cell_77/BiasAdd/ReadVariableOp˘"lstm_cell_77/MatMul/ReadVariableOp˘$lstm_cell_77/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_77/MatMul/ReadVariableOpReadVariableOp+lstm_cell_77_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_77/MatMulMatMulstrided_slice_2:output:0*lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_77_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_77/MatMul_1MatMulzeros:output:0,lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_77/addAddV2lstm_cell_77/MatMul:product:0lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_77_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_77/BiasAddBiasAddlstm_cell_77/add:z:0+lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_77/splitSplit%lstm_cell_77/split/split_dim:output:0lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_77/SigmoidSigmoidlstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_1Sigmoidlstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_77/mulMullstm_cell_77/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_77/ReluRelulstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_1Mullstm_cell_77/Sigmoid:y:0lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_77/add_1AddV2lstm_cell_77/mul:z:0lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_77/Sigmoid_2Sigmoidlstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_77/Relu_1Relulstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_77/mul_2Mullstm_cell_77/Sigmoid_2:y:0!lstm_cell_77/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_77_matmul_readvariableop_resource-lstm_cell_77_matmul_1_readvariableop_resource,lstm_cell_77_biasadd_readvariableop_resource*
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
while_body_470726*
condR
while_cond_470725*K
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
NoOpNoOp$^lstm_cell_77/BiasAdd/ReadVariableOp#^lstm_cell_77/MatMul/ReadVariableOp%^lstm_cell_77/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_77/BiasAdd/ReadVariableOp#lstm_cell_77/BiasAdd/ReadVariableOp2H
"lstm_cell_77/MatMul/ReadVariableOp"lstm_cell_77/MatMul/ReadVariableOp2L
$lstm_cell_77/MatMul_1/ReadVariableOp$lstm_cell_77/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ö
£
)sequential_102_lstm_306_while_cond_465711L
Hsequential_102_lstm_306_while_sequential_102_lstm_306_while_loop_counterR
Nsequential_102_lstm_306_while_sequential_102_lstm_306_while_maximum_iterations-
)sequential_102_lstm_306_while_placeholder/
+sequential_102_lstm_306_while_placeholder_1/
+sequential_102_lstm_306_while_placeholder_2/
+sequential_102_lstm_306_while_placeholder_3N
Jsequential_102_lstm_306_while_less_sequential_102_lstm_306_strided_slice_1d
`sequential_102_lstm_306_while_sequential_102_lstm_306_while_cond_465711___redundant_placeholder0d
`sequential_102_lstm_306_while_sequential_102_lstm_306_while_cond_465711___redundant_placeholder1d
`sequential_102_lstm_306_while_sequential_102_lstm_306_while_cond_465711___redundant_placeholder2d
`sequential_102_lstm_306_while_sequential_102_lstm_306_while_cond_465711___redundant_placeholder3*
&sequential_102_lstm_306_while_identity
Â
"sequential_102/lstm_306/while/LessLess)sequential_102_lstm_306_while_placeholderJsequential_102_lstm_306_while_less_sequential_102_lstm_306_strided_slice_1*
T0*
_output_shapes
: {
&sequential_102/lstm_306/while/IdentityIdentity&sequential_102/lstm_306/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_102_lstm_306_while_identity/sequential_102/lstm_306/while/Identity:output:0*(
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
Ö
£
)sequential_102_lstm_307_while_cond_465850L
Hsequential_102_lstm_307_while_sequential_102_lstm_307_while_loop_counterR
Nsequential_102_lstm_307_while_sequential_102_lstm_307_while_maximum_iterations-
)sequential_102_lstm_307_while_placeholder/
+sequential_102_lstm_307_while_placeholder_1/
+sequential_102_lstm_307_while_placeholder_2/
+sequential_102_lstm_307_while_placeholder_3N
Jsequential_102_lstm_307_while_less_sequential_102_lstm_307_strided_slice_1d
`sequential_102_lstm_307_while_sequential_102_lstm_307_while_cond_465850___redundant_placeholder0d
`sequential_102_lstm_307_while_sequential_102_lstm_307_while_cond_465850___redundant_placeholder1d
`sequential_102_lstm_307_while_sequential_102_lstm_307_while_cond_465850___redundant_placeholder2d
`sequential_102_lstm_307_while_sequential_102_lstm_307_while_cond_465850___redundant_placeholder3*
&sequential_102_lstm_307_while_identity
Â
"sequential_102/lstm_307/while/LessLess)sequential_102_lstm_307_while_placeholderJsequential_102_lstm_307_while_less_sequential_102_lstm_307_strided_slice_1*
T0*
_output_shapes
: {
&sequential_102/lstm_307/while/IdentityIdentity&sequential_102/lstm_307/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_102_lstm_307_while_identity/sequential_102/lstm_307/while/Identity:output:0*(
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
·
ï
J__inference_sequential_102_layer_call_and_return_conditional_losses_468193

inputs"
lstm_306_468166:	"
lstm_306_468168:	d
lstm_306_468170:	"
lstm_307_468173:	dÈ"
lstm_307_468175:	2È
lstm_307_468177:	È!
lstm_308_468180:2(!
lstm_308_468182:
(
lstm_308_468184:("
dense_102_468187:

dense_102_468189:
identity˘!dense_102/StatefulPartitionedCall˘ lstm_306/StatefulPartitionedCall˘ lstm_307/StatefulPartitionedCall˘ lstm_308/StatefulPartitionedCall
 lstm_306/StatefulPartitionedCallStatefulPartitionedCallinputslstm_306_468166lstm_306_468168lstm_306_468170*
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_468125Ş
 lstm_307/StatefulPartitionedCallStatefulPartitionedCall)lstm_306/StatefulPartitionedCall:output:0lstm_307_468173lstm_307_468175lstm_307_468177*
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467960Ĥ
 lstm_308/StatefulPartitionedCallStatefulPartitionedCall)lstm_307/StatefulPartitionedCall:output:0lstm_308_468180lstm_308_468182lstm_308_468184*
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467795
!dense_102/StatefulPartitionedCallStatefulPartitionedCall)lstm_308/StatefulPartitionedCall:output:0dense_102_468187dense_102_468189*
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
E__inference_dense_102_layer_call_and_return_conditional_losses_467597y
IdentityIdentity*dense_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_102/StatefulPartitionedCall!^lstm_306/StatefulPartitionedCall!^lstm_307/StatefulPartitionedCall!^lstm_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2D
 lstm_306/StatefulPartitionedCall lstm_306/StatefulPartitionedCall2D
 lstm_307/StatefulPartitionedCall lstm_307/StatefulPartitionedCall2D
 lstm_308/StatefulPartitionedCall lstm_308/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_308_layer_call_and_return_conditional_losses_467121

inputs%
lstm_cell_77_467039:2(%
lstm_cell_77_467041:
(!
lstm_cell_77_467043:(
identity˘$lstm_cell_77/StatefulPartitionedCall˘while;
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
$lstm_cell_77/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_77_467039lstm_cell_77_467041lstm_cell_77_467043*
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466993n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_77_467039lstm_cell_77_467041lstm_cell_77_467043*
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
while_body_467052*
condR
while_cond_467051*K
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
NoOpNoOp%^lstm_cell_77/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_77/StatefulPartitionedCall$lstm_cell_77/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_470582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_470582___redundant_placeholder04
0while_while_cond_470582___redundant_placeholder14
0while_while_cond_470582___redundant_placeholder24
0while_while_cond_470582___redundant_placeholder3
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
Ë

H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_466993

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
ô

£
/__inference_sequential_102_layer_call_fn_468245
lstm_306_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_306_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_102_layer_call_and_return_conditional_losses_468193o
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
_user_specified_namelstm_306_input
¤J

D__inference_lstm_306_layer_call_and_return_conditional_losses_467279

inputs>
+lstm_cell_75_matmul_readvariableop_resource:	@
-lstm_cell_75_matmul_1_readvariableop_resource:	d;
,lstm_cell_75_biasadd_readvariableop_resource:	
identity˘#lstm_cell_75/BiasAdd/ReadVariableOp˘"lstm_cell_75/MatMul/ReadVariableOp˘$lstm_cell_75/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_75/MatMul/ReadVariableOpReadVariableOp+lstm_cell_75_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_75/MatMulMatMulstrided_slice_2:output:0*lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_75_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_75/MatMul_1MatMulzeros:output:0,lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_75/addAddV2lstm_cell_75/MatMul:product:0lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_75_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_75/BiasAddBiasAddlstm_cell_75/add:z:0+lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_75/splitSplit%lstm_cell_75/split/split_dim:output:0lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_75/SigmoidSigmoidlstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_1Sigmoidlstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_75/mulMullstm_cell_75/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_75/ReluRelulstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_1Mullstm_cell_75/Sigmoid:y:0lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_75/add_1AddV2lstm_cell_75/mul:z:0lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_75/Sigmoid_2Sigmoidlstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_75/Relu_1Relulstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_75/mul_2Mullstm_cell_75/Sigmoid_2:y:0!lstm_cell_75/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_75_matmul_readvariableop_resource-lstm_cell_75_matmul_1_readvariableop_resource,lstm_cell_75_biasadd_readvariableop_resource*
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
while_body_467195*
condR
while_cond_467194*K
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
NoOpNoOp$^lstm_cell_75/BiasAdd/ReadVariableOp#^lstm_cell_75/MatMul/ReadVariableOp%^lstm_cell_75/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_75/BiasAdd/ReadVariableOp#lstm_cell_75/BiasAdd/ReadVariableOp2H
"lstm_cell_75/MatMul/ReadVariableOp"lstm_cell_75/MatMul/ReadVariableOp2L
$lstm_cell_75/MatMul_1/ReadVariableOp$lstm_cell_75/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_469350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_469350___redundant_placeholder04
0while_while_cond_469350___redundant_placeholder14
0while_while_cond_469350___redundant_placeholder24
0while_while_cond_469350___redundant_placeholder3
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
while_body_469494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_308_while_cond_468730.
*lstm_308_while_lstm_308_while_loop_counter4
0lstm_308_while_lstm_308_while_maximum_iterations
lstm_308_while_placeholder 
lstm_308_while_placeholder_1 
lstm_308_while_placeholder_2 
lstm_308_while_placeholder_30
,lstm_308_while_less_lstm_308_strided_slice_1F
Blstm_308_while_lstm_308_while_cond_468730___redundant_placeholder0F
Blstm_308_while_lstm_308_while_cond_468730___redundant_placeholder1F
Blstm_308_while_lstm_308_while_cond_468730___redundant_placeholder2F
Blstm_308_while_lstm_308_while_cond_468730___redundant_placeholder3
lstm_308_while_identity

lstm_308/while/LessLesslstm_308_while_placeholder,lstm_308_while_less_lstm_308_strided_slice_1*
T0*
_output_shapes
: ]
lstm_308/while/IdentityIdentitylstm_308/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_308_while_identity lstm_308/while/Identity:output:0*(
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
lstm_307_while_cond_469018.
*lstm_307_while_lstm_307_while_loop_counter4
0lstm_307_while_lstm_307_while_maximum_iterations
lstm_307_while_placeholder 
lstm_307_while_placeholder_1 
lstm_307_while_placeholder_2 
lstm_307_while_placeholder_30
,lstm_307_while_less_lstm_307_strided_slice_1F
Blstm_307_while_lstm_307_while_cond_469018___redundant_placeholder0F
Blstm_307_while_lstm_307_while_cond_469018___redundant_placeholder1F
Blstm_307_while_lstm_307_while_cond_469018___redundant_placeholder2F
Blstm_307_while_lstm_307_while_cond_469018___redundant_placeholder3
lstm_307_while_identity

lstm_307/while/LessLesslstm_307_while_placeholder,lstm_307_while_less_lstm_307_strided_slice_1*
T0*
_output_shapes
: ]
lstm_307/while/IdentityIdentitylstm_307/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_307_while_identity lstm_307/while/Identity:output:0*(
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
while_body_469637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_75_matmul_readvariableop_resource_0:	H
5while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_75_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_75_matmul_readvariableop_resource:	F
3while_lstm_cell_75_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_75_biasadd_readvariableop_resource:	˘)while/lstm_cell_75/BiasAdd/ReadVariableOp˘(while/lstm_cell_75/MatMul/ReadVariableOp˘*while/lstm_cell_75/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_75/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_75/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_75/addAddV2#while/lstm_cell_75/MatMul:product:0%while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_75/BiasAddBiasAddwhile/lstm_cell_75/add:z:01while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_75/splitSplit+while/lstm_cell_75/split/split_dim:output:0#while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_75/SigmoidSigmoid!while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_1Sigmoid!while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mulMul while/lstm_cell_75/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_75/ReluRelu!while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_1Mulwhile/lstm_cell_75/Sigmoid:y:0%while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/add_1AddV2while/lstm_cell_75/mul:z:0while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_75/Sigmoid_2Sigmoid!while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_75/Relu_1Reluwhile/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_75/mul_2Mul while/lstm_cell_75/Sigmoid_2:y:0'while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_75/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_75/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_75/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_75/BiasAdd/ReadVariableOp)^while/lstm_cell_75/MatMul/ReadVariableOp+^while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_75_biasadd_readvariableop_resource4while_lstm_cell_75_biasadd_readvariableop_resource_0"l
3while_lstm_cell_75_matmul_1_readvariableop_resource5while_lstm_cell_75_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_75_matmul_readvariableop_resource3while_lstm_cell_75_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_75/BiasAdd/ReadVariableOp)while/lstm_cell_75/BiasAdd/ReadVariableOp2T
(while/lstm_cell_75/MatMul/ReadVariableOp(while/lstm_cell_75/MatMul/ReadVariableOp2X
*while/lstm_cell_75/MatMul_1/ReadVariableOp*while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_306_layer_call_fn_469259
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_466230|
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
?
while_body_470396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_76_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_76_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_76_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_76_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_76_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_76_biasadd_readvariableop_resource:	È˘)while/lstm_cell_76/BiasAdd/ReadVariableOp˘(while/lstm_cell_76/MatMul/ReadVariableOp˘*while/lstm_cell_76/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_76/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_76_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_76/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_76_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_76/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_76/addAddV2#while/lstm_cell_76/MatMul:product:0%while/lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_76_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_76/BiasAddBiasAddwhile/lstm_cell_76/add:z:01while/lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_76/splitSplit+while/lstm_cell_76/split/split_dim:output:0#while/lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_76/SigmoidSigmoid!while/lstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_1Sigmoid!while/lstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mulMul while/lstm_cell_76/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_76/ReluRelu!while/lstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_1Mulwhile/lstm_cell_76/Sigmoid:y:0%while/lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/add_1AddV2while/lstm_cell_76/mul:z:0while/lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_76/Sigmoid_2Sigmoid!while/lstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_76/Relu_1Reluwhile/lstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_76/mul_2Mul while/lstm_cell_76/Sigmoid_2:y:0'while/lstm_cell_76/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_76/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_76/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_76/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_76/BiasAdd/ReadVariableOp)^while/lstm_cell_76/MatMul/ReadVariableOp+^while/lstm_cell_76/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_76_biasadd_readvariableop_resource4while_lstm_cell_76_biasadd_readvariableop_resource_0"l
3while_lstm_cell_76_matmul_1_readvariableop_resource5while_lstm_cell_76_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_76_matmul_readvariableop_resource3while_lstm_cell_76_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_76/BiasAdd/ReadVariableOp)while/lstm_cell_76/BiasAdd/ReadVariableOp2T
(while/lstm_cell_76/MatMul/ReadVariableOp(while/lstm_cell_76/MatMul/ReadVariableOp2X
*while/lstm_cell_76/MatMul_1/ReadVariableOp*while/lstm_cell_76/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_470480

inputs>
+lstm_cell_76_matmul_readvariableop_resource:	dÈ@
-lstm_cell_76_matmul_1_readvariableop_resource:	2È;
,lstm_cell_76_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_76/BiasAdd/ReadVariableOp˘"lstm_cell_76/MatMul/ReadVariableOp˘$lstm_cell_76/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_76/MatMul/ReadVariableOpReadVariableOp+lstm_cell_76_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_76/MatMulMatMulstrided_slice_2:output:0*lstm_cell_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_76/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_76_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_76/MatMul_1MatMulzeros:output:0,lstm_cell_76/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_76/addAddV2lstm_cell_76/MatMul:product:0lstm_cell_76/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_76/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_76_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_76/BiasAddBiasAddlstm_cell_76/add:z:0+lstm_cell_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_76/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_76/splitSplit%lstm_cell_76/split/split_dim:output:0lstm_cell_76/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_76/SigmoidSigmoidlstm_cell_76/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_1Sigmoidlstm_cell_76/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_76/mulMullstm_cell_76/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_76/ReluRelulstm_cell_76/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_1Mullstm_cell_76/Sigmoid:y:0lstm_cell_76/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_76/add_1AddV2lstm_cell_76/mul:z:0lstm_cell_76/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_76/Sigmoid_2Sigmoidlstm_cell_76/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_76/Relu_1Relulstm_cell_76/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_76/mul_2Mullstm_cell_76/Sigmoid_2:y:0!lstm_cell_76/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_76_matmul_readvariableop_resource-lstm_cell_76_matmul_1_readvariableop_resource,lstm_cell_76_biasadd_readvariableop_resource*
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
while_body_470396*
condR
while_cond_470395*K
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
NoOpNoOp$^lstm_cell_76/BiasAdd/ReadVariableOp#^lstm_cell_76/MatMul/ReadVariableOp%^lstm_cell_76/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_76/BiasAdd/ReadVariableOp#lstm_cell_76/BiasAdd/ReadVariableOp2H
"lstm_cell_76/MatMul/ReadVariableOp"lstm_cell_76/MatMul/ReadVariableOp2L
$lstm_cell_76/MatMul_1/ReadVariableOp$lstm_cell_76/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĥT
Ô
)sequential_102_lstm_306_while_body_465712L
Hsequential_102_lstm_306_while_sequential_102_lstm_306_while_loop_counterR
Nsequential_102_lstm_306_while_sequential_102_lstm_306_while_maximum_iterations-
)sequential_102_lstm_306_while_placeholder/
+sequential_102_lstm_306_while_placeholder_1/
+sequential_102_lstm_306_while_placeholder_2/
+sequential_102_lstm_306_while_placeholder_3K
Gsequential_102_lstm_306_while_sequential_102_lstm_306_strided_slice_1_0
sequential_102_lstm_306_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_306_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_102_lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0:	`
Msequential_102_lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0:	d[
Lsequential_102_lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0:	*
&sequential_102_lstm_306_while_identity,
(sequential_102_lstm_306_while_identity_1,
(sequential_102_lstm_306_while_identity_2,
(sequential_102_lstm_306_while_identity_3,
(sequential_102_lstm_306_while_identity_4,
(sequential_102_lstm_306_while_identity_5I
Esequential_102_lstm_306_while_sequential_102_lstm_306_strided_slice_1
sequential_102_lstm_306_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_306_tensorarrayunstack_tensorlistfromtensor\
Isequential_102_lstm_306_while_lstm_cell_75_matmul_readvariableop_resource:	^
Ksequential_102_lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource:	dY
Jsequential_102_lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource:	˘Asequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp˘@sequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp˘Bsequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp 
Osequential_102/lstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_102/lstm_306/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_102_lstm_306_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_306_tensorarrayunstack_tensorlistfromtensor_0)sequential_102_lstm_306_while_placeholderXsequential_102/lstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOpKsequential_102_lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_102/lstm_306/while/lstm_cell_75/MatMulMatMulHsequential_102/lstm_306/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOpMsequential_102_lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_102/lstm_306/while/lstm_cell_75/MatMul_1MatMul+sequential_102_lstm_306_while_placeholder_2Jsequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_102/lstm_306/while/lstm_cell_75/addAddV2;sequential_102/lstm_306/while/lstm_cell_75/MatMul:product:0=sequential_102/lstm_306/while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOpLsequential_102_lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_102/lstm_306/while/lstm_cell_75/BiasAddBiasAdd2sequential_102/lstm_306/while/lstm_cell_75/add:z:0Isequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_102/lstm_306/while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_102/lstm_306/while/lstm_cell_75/splitSplitCsequential_102/lstm_306/while/lstm_cell_75/split/split_dim:output:0;sequential_102/lstm_306/while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_102/lstm_306/while/lstm_cell_75/SigmoidSigmoid9sequential_102/lstm_306/while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_102/lstm_306/while/lstm_cell_75/Sigmoid_1Sigmoid9sequential_102/lstm_306/while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_102/lstm_306/while/lstm_cell_75/mulMul8sequential_102/lstm_306/while/lstm_cell_75/Sigmoid_1:y:0+sequential_102_lstm_306_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_102/lstm_306/while/lstm_cell_75/ReluRelu9sequential_102/lstm_306/while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_102/lstm_306/while/lstm_cell_75/mul_1Mul6sequential_102/lstm_306/while/lstm_cell_75/Sigmoid:y:0=sequential_102/lstm_306/while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_102/lstm_306/while/lstm_cell_75/add_1AddV22sequential_102/lstm_306/while/lstm_cell_75/mul:z:04sequential_102/lstm_306/while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_102/lstm_306/while/lstm_cell_75/Sigmoid_2Sigmoid9sequential_102/lstm_306/while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_102/lstm_306/while/lstm_cell_75/Relu_1Relu4sequential_102/lstm_306/while/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_102/lstm_306/while/lstm_cell_75/mul_2Mul8sequential_102/lstm_306/while/lstm_cell_75/Sigmoid_2:y:0?sequential_102/lstm_306/while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_102/lstm_306/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_102_lstm_306_while_placeholder_1)sequential_102_lstm_306_while_placeholder4sequential_102/lstm_306/while/lstm_cell_75/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_102/lstm_306/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_102/lstm_306/while/addAddV2)sequential_102_lstm_306_while_placeholder,sequential_102/lstm_306/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_102/lstm_306/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_102/lstm_306/while/add_1AddV2Hsequential_102_lstm_306_while_sequential_102_lstm_306_while_loop_counter.sequential_102/lstm_306/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_102/lstm_306/while/IdentityIdentity'sequential_102/lstm_306/while/add_1:z:0#^sequential_102/lstm_306/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_102/lstm_306/while/Identity_1IdentityNsequential_102_lstm_306_while_sequential_102_lstm_306_while_maximum_iterations#^sequential_102/lstm_306/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_102/lstm_306/while/Identity_2Identity%sequential_102/lstm_306/while/add:z:0#^sequential_102/lstm_306/while/NoOp*
T0*
_output_shapes
: Î
(sequential_102/lstm_306/while/Identity_3IdentityRsequential_102/lstm_306/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_102/lstm_306/while/NoOp*
T0*
_output_shapes
: Á
(sequential_102/lstm_306/while/Identity_4Identity4sequential_102/lstm_306/while/lstm_cell_75/mul_2:z:0#^sequential_102/lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_102/lstm_306/while/Identity_5Identity4sequential_102/lstm_306/while/lstm_cell_75/add_1:z:0#^sequential_102/lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_102/lstm_306/while/NoOpNoOpB^sequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOpA^sequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOpC^sequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_102_lstm_306_while_identity/sequential_102/lstm_306/while/Identity:output:0"]
(sequential_102_lstm_306_while_identity_11sequential_102/lstm_306/while/Identity_1:output:0"]
(sequential_102_lstm_306_while_identity_21sequential_102/lstm_306/while/Identity_2:output:0"]
(sequential_102_lstm_306_while_identity_31sequential_102/lstm_306/while/Identity_3:output:0"]
(sequential_102_lstm_306_while_identity_41sequential_102/lstm_306/while/Identity_4:output:0"]
(sequential_102_lstm_306_while_identity_51sequential_102/lstm_306/while/Identity_5:output:0"
Jsequential_102_lstm_306_while_lstm_cell_75_biasadd_readvariableop_resourceLsequential_102_lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0"
Ksequential_102_lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resourceMsequential_102_lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0"
Isequential_102_lstm_306_while_lstm_cell_75_matmul_readvariableop_resourceKsequential_102_lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0"
Esequential_102_lstm_306_while_sequential_102_lstm_306_strided_slice_1Gsequential_102_lstm_306_while_sequential_102_lstm_306_strided_slice_1_0"
sequential_102_lstm_306_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_306_tensorarrayunstack_tensorlistfromtensorsequential_102_lstm_306_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_306_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOpAsequential_102/lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2
@sequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp@sequential_102/lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp2
Bsequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOpBsequential_102/lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_307_layer_call_fn_469897

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
D__inference_lstm_307_layer_call_and_return_conditional_losses_467429s
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

lstm_306_while_body_468453.
*lstm_306_while_lstm_306_while_loop_counter4
0lstm_306_while_lstm_306_while_maximum_iterations
lstm_306_while_placeholder 
lstm_306_while_placeholder_1 
lstm_306_while_placeholder_2 
lstm_306_while_placeholder_3-
)lstm_306_while_lstm_306_strided_slice_1_0i
elstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0:	Q
>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0:	dL
=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0:	
lstm_306_while_identity
lstm_306_while_identity_1
lstm_306_while_identity_2
lstm_306_while_identity_3
lstm_306_while_identity_4
lstm_306_while_identity_5+
'lstm_306_while_lstm_306_strided_slice_1g
clstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensorM
:lstm_306_while_lstm_cell_75_matmul_readvariableop_resource:	O
<lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource:	dJ
;lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource:	˘2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp˘1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp˘3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp
@lstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_306/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0lstm_306_while_placeholderIlstm_306/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOpReadVariableOp<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_306/while/lstm_cell_75/MatMulMatMul9lstm_306/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOpReadVariableOp>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_306/while/lstm_cell_75/MatMul_1MatMullstm_306_while_placeholder_2;lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_306/while/lstm_cell_75/addAddV2,lstm_306/while/lstm_cell_75/MatMul:product:0.lstm_306/while/lstm_cell_75/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOpReadVariableOp=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_306/while/lstm_cell_75/BiasAddBiasAdd#lstm_306/while/lstm_cell_75/add:z:0:lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_306/while/lstm_cell_75/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_306/while/lstm_cell_75/splitSplit4lstm_306/while/lstm_cell_75/split/split_dim:output:0,lstm_306/while/lstm_cell_75/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_306/while/lstm_cell_75/SigmoidSigmoid*lstm_306/while/lstm_cell_75/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_306/while/lstm_cell_75/Sigmoid_1Sigmoid*lstm_306/while/lstm_cell_75/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_306/while/lstm_cell_75/mulMul)lstm_306/while/lstm_cell_75/Sigmoid_1:y:0lstm_306_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_306/while/lstm_cell_75/ReluRelu*lstm_306/while/lstm_cell_75/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_306/while/lstm_cell_75/mul_1Mul'lstm_306/while/lstm_cell_75/Sigmoid:y:0.lstm_306/while/lstm_cell_75/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_306/while/lstm_cell_75/add_1AddV2#lstm_306/while/lstm_cell_75/mul:z:0%lstm_306/while/lstm_cell_75/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_306/while/lstm_cell_75/Sigmoid_2Sigmoid*lstm_306/while/lstm_cell_75/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_306/while/lstm_cell_75/Relu_1Relu%lstm_306/while/lstm_cell_75/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_306/while/lstm_cell_75/mul_2Mul)lstm_306/while/lstm_cell_75/Sigmoid_2:y:00lstm_306/while/lstm_cell_75/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_306/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_306_while_placeholder_1lstm_306_while_placeholder%lstm_306/while/lstm_cell_75/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_306/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_306/while/addAddV2lstm_306_while_placeholderlstm_306/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_306/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_306/while/add_1AddV2*lstm_306_while_lstm_306_while_loop_counterlstm_306/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_306/while/IdentityIdentitylstm_306/while/add_1:z:0^lstm_306/while/NoOp*
T0*
_output_shapes
: 
lstm_306/while/Identity_1Identity0lstm_306_while_lstm_306_while_maximum_iterations^lstm_306/while/NoOp*
T0*
_output_shapes
: t
lstm_306/while/Identity_2Identitylstm_306/while/add:z:0^lstm_306/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_306/while/Identity_3IdentityClstm_306/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_306/while/NoOp*
T0*
_output_shapes
: 
lstm_306/while/Identity_4Identity%lstm_306/while/lstm_cell_75/mul_2:z:0^lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_306/while/Identity_5Identity%lstm_306/while/lstm_cell_75/add_1:z:0^lstm_306/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_306/while/NoOpNoOp3^lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2^lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp4^lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_306_while_identity lstm_306/while/Identity:output:0"?
lstm_306_while_identity_1"lstm_306/while/Identity_1:output:0"?
lstm_306_while_identity_2"lstm_306/while/Identity_2:output:0"?
lstm_306_while_identity_3"lstm_306/while/Identity_3:output:0"?
lstm_306_while_identity_4"lstm_306/while/Identity_4:output:0"?
lstm_306_while_identity_5"lstm_306/while/Identity_5:output:0"T
'lstm_306_while_lstm_306_strided_slice_1)lstm_306_while_lstm_306_strided_slice_1_0"|
;lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource=lstm_306_while_lstm_cell_75_biasadd_readvariableop_resource_0"~
<lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource>lstm_306_while_lstm_cell_75_matmul_1_readvariableop_resource_0"z
:lstm_306_while_lstm_cell_75_matmul_readvariableop_resource<lstm_306_while_lstm_cell_75_matmul_readvariableop_resource_0"Ì
clstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensorelstm_306_while_tensorarrayv2read_tensorlistgetitem_lstm_306_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2lstm_306/while/lstm_cell_75/BiasAdd/ReadVariableOp2f
1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp1lstm_306/while/lstm_cell_75/MatMul/ReadVariableOp2j
3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp3lstm_306/while/lstm_cell_75/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÎB
ê

lstm_308_while_body_468731.
*lstm_308_while_lstm_308_while_loop_counter4
0lstm_308_while_lstm_308_while_maximum_iterations
lstm_308_while_placeholder 
lstm_308_while_placeholder_1 
lstm_308_while_placeholder_2 
lstm_308_while_placeholder_3-
)lstm_308_while_lstm_308_strided_slice_1_0i
elstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0:2(P
>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0:
(K
=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0:(
lstm_308_while_identity
lstm_308_while_identity_1
lstm_308_while_identity_2
lstm_308_while_identity_3
lstm_308_while_identity_4
lstm_308_while_identity_5+
'lstm_308_while_lstm_308_strided_slice_1g
clstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensorL
:lstm_308_while_lstm_cell_77_matmul_readvariableop_resource:2(N
<lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource:
(I
;lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource:(˘2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp˘1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp˘3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp
@lstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_308/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0lstm_308_while_placeholderIlstm_308/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOpReadVariableOp<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_308/while/lstm_cell_77/MatMulMatMul9lstm_308/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOpReadVariableOp>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_308/while/lstm_cell_77/MatMul_1MatMullstm_308_while_placeholder_2;lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_308/while/lstm_cell_77/addAddV2,lstm_308/while/lstm_cell_77/MatMul:product:0.lstm_308/while/lstm_cell_77/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOpReadVariableOp=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_308/while/lstm_cell_77/BiasAddBiasAdd#lstm_308/while/lstm_cell_77/add:z:0:lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_308/while/lstm_cell_77/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_308/while/lstm_cell_77/splitSplit4lstm_308/while/lstm_cell_77/split/split_dim:output:0,lstm_308/while/lstm_cell_77/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_308/while/lstm_cell_77/SigmoidSigmoid*lstm_308/while/lstm_cell_77/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_308/while/lstm_cell_77/Sigmoid_1Sigmoid*lstm_308/while/lstm_cell_77/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_308/while/lstm_cell_77/mulMul)lstm_308/while/lstm_cell_77/Sigmoid_1:y:0lstm_308_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_308/while/lstm_cell_77/ReluRelu*lstm_308/while/lstm_cell_77/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_308/while/lstm_cell_77/mul_1Mul'lstm_308/while/lstm_cell_77/Sigmoid:y:0.lstm_308/while/lstm_cell_77/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_308/while/lstm_cell_77/add_1AddV2#lstm_308/while/lstm_cell_77/mul:z:0%lstm_308/while/lstm_cell_77/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_308/while/lstm_cell_77/Sigmoid_2Sigmoid*lstm_308/while/lstm_cell_77/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_308/while/lstm_cell_77/Relu_1Relu%lstm_308/while/lstm_cell_77/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_308/while/lstm_cell_77/mul_2Mul)lstm_308/while/lstm_cell_77/Sigmoid_2:y:00lstm_308/while/lstm_cell_77/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_308/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_308_while_placeholder_1lstm_308_while_placeholder%lstm_308/while/lstm_cell_77/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_308/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_308/while/addAddV2lstm_308_while_placeholderlstm_308/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_308/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_308/while/add_1AddV2*lstm_308_while_lstm_308_while_loop_counterlstm_308/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_308/while/IdentityIdentitylstm_308/while/add_1:z:0^lstm_308/while/NoOp*
T0*
_output_shapes
: 
lstm_308/while/Identity_1Identity0lstm_308_while_lstm_308_while_maximum_iterations^lstm_308/while/NoOp*
T0*
_output_shapes
: t
lstm_308/while/Identity_2Identitylstm_308/while/add:z:0^lstm_308/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_308/while/Identity_3IdentityClstm_308/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_308/while/NoOp*
T0*
_output_shapes
: 
lstm_308/while/Identity_4Identity%lstm_308/while/lstm_cell_77/mul_2:z:0^lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_308/while/Identity_5Identity%lstm_308/while/lstm_cell_77/add_1:z:0^lstm_308/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_308/while/NoOpNoOp3^lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2^lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp4^lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_308_while_identity lstm_308/while/Identity:output:0"?
lstm_308_while_identity_1"lstm_308/while/Identity_1:output:0"?
lstm_308_while_identity_2"lstm_308/while/Identity_2:output:0"?
lstm_308_while_identity_3"lstm_308/while/Identity_3:output:0"?
lstm_308_while_identity_4"lstm_308/while/Identity_4:output:0"?
lstm_308_while_identity_5"lstm_308/while/Identity_5:output:0"T
'lstm_308_while_lstm_308_strided_slice_1)lstm_308_while_lstm_308_strided_slice_1_0"|
;lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource=lstm_308_while_lstm_cell_77_biasadd_readvariableop_resource_0"~
<lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource>lstm_308_while_lstm_cell_77_matmul_1_readvariableop_resource_0"z
:lstm_308_while_lstm_cell_77_matmul_readvariableop_resource<lstm_308_while_lstm_cell_77_matmul_readvariableop_resource_0"Ì
clstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensorelstm_308_while_tensorarrayv2read_tensorlistgetitem_lstm_308_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2lstm_308/while/lstm_cell_77/BiasAdd/ReadVariableOp2f
1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp1lstm_308/while/lstm_cell_77/MatMul/ReadVariableOp2j
3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp3lstm_308/while/lstm_cell_77/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ö
³
)__inference_lstm_308_layer_call_fn_470513

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
D__inference_lstm_308_layer_call_and_return_conditional_losses_467579o
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

µ
)__inference_lstm_308_layer_call_fn_470491
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_466930o
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
inputs/0"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultŞ
M
lstm_306_input;
 serving_default_lstm_306_input:0˙˙˙˙˙˙˙˙˙=
	dense_1020
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
2dense_102/kernel
:2dense_102/bias
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
0:.	2lstm_306/lstm_cell_306/kernel
::8	d2'lstm_306/lstm_cell_306/recurrent_kernel
*:(2lstm_306/lstm_cell_306/bias
0:.	dÈ2lstm_307/lstm_cell_307/kernel
::8	2È2'lstm_307/lstm_cell_307/recurrent_kernel
*:(È2lstm_307/lstm_cell_307/bias
/:-2(2lstm_308/lstm_cell_308/kernel
9:7
(2'lstm_308/lstm_cell_308/recurrent_kernel
):'(2lstm_308/lstm_cell_308/bias
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
2Adam/dense_102/kernel/m
!:2Adam/dense_102/bias/m
5:3	2$Adam/lstm_306/lstm_cell_306/kernel/m
?:=	d2.Adam/lstm_306/lstm_cell_306/recurrent_kernel/m
/:-2"Adam/lstm_306/lstm_cell_306/bias/m
5:3	dÈ2$Adam/lstm_307/lstm_cell_307/kernel/m
?:=	2È2.Adam/lstm_307/lstm_cell_307/recurrent_kernel/m
/:-È2"Adam/lstm_307/lstm_cell_307/bias/m
4:22(2$Adam/lstm_308/lstm_cell_308/kernel/m
>:<
(2.Adam/lstm_308/lstm_cell_308/recurrent_kernel/m
.:,(2"Adam/lstm_308/lstm_cell_308/bias/m
':%
2Adam/dense_102/kernel/v
!:2Adam/dense_102/bias/v
5:3	2$Adam/lstm_306/lstm_cell_306/kernel/v
?:=	d2.Adam/lstm_306/lstm_cell_306/recurrent_kernel/v
/:-2"Adam/lstm_306/lstm_cell_306/bias/v
5:3	dÈ2$Adam/lstm_307/lstm_cell_307/kernel/v
?:=	2È2.Adam/lstm_307/lstm_cell_307/recurrent_kernel/v
/:-È2"Adam/lstm_307/lstm_cell_307/bias/v
4:22(2$Adam/lstm_308/lstm_cell_308/kernel/v
>:<
(2.Adam/lstm_308/lstm_cell_308/recurrent_kernel/v
.:,(2"Adam/lstm_308/lstm_cell_308/bias/v
2
/__inference_sequential_102_layer_call_fn_467629
/__inference_sequential_102_layer_call_fn_468367
/__inference_sequential_102_layer_call_fn_468394
/__inference_sequential_102_layer_call_fn_468245À
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
J__inference_sequential_102_layer_call_and_return_conditional_losses_468821
J__inference_sequential_102_layer_call_and_return_conditional_losses_469248
J__inference_sequential_102_layer_call_and_return_conditional_losses_468275
J__inference_sequential_102_layer_call_and_return_conditional_losses_468305À
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
!__inference__wrapped_model_466080lstm_306_input"
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
)__inference_lstm_306_layer_call_fn_469259
)__inference_lstm_306_layer_call_fn_469270
)__inference_lstm_306_layer_call_fn_469281
)__inference_lstm_306_layer_call_fn_469292Ġ
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469435
D__inference_lstm_306_layer_call_and_return_conditional_losses_469578
D__inference_lstm_306_layer_call_and_return_conditional_losses_469721
D__inference_lstm_306_layer_call_and_return_conditional_losses_469864Ġ
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
)__inference_lstm_307_layer_call_fn_469875
)__inference_lstm_307_layer_call_fn_469886
)__inference_lstm_307_layer_call_fn_469897
)__inference_lstm_307_layer_call_fn_469908Ġ
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_470051
D__inference_lstm_307_layer_call_and_return_conditional_losses_470194
D__inference_lstm_307_layer_call_and_return_conditional_losses_470337
D__inference_lstm_307_layer_call_and_return_conditional_losses_470480Ġ
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
)__inference_lstm_308_layer_call_fn_470491
)__inference_lstm_308_layer_call_fn_470502
)__inference_lstm_308_layer_call_fn_470513
)__inference_lstm_308_layer_call_fn_470524Ġ
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470667
D__inference_lstm_308_layer_call_and_return_conditional_losses_470810
D__inference_lstm_308_layer_call_and_return_conditional_losses_470953
D__inference_lstm_308_layer_call_and_return_conditional_losses_471096Ġ
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
*__inference_dense_102_layer_call_fn_471105˘
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
E__inference_dense_102_layer_call_and_return_conditional_losses_471115˘
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
$__inference_signature_wrapper_468340lstm_306_input"
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
-__inference_lstm_cell_75_layer_call_fn_471132
-__inference_lstm_cell_75_layer_call_fn_471149?
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471181
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471213?
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
-__inference_lstm_cell_76_layer_call_fn_471230
-__inference_lstm_cell_76_layer_call_fn_471247?
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471279
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471311?
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
-__inference_lstm_cell_77_layer_call_fn_471328
-__inference_lstm_cell_77_layer_call_fn_471345?
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471377
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471409?
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
!__inference__wrapped_model_466080-./012345!";˘8
1˘.
,)
lstm_306_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_102# 
	dense_102˙˙˙˙˙˙˙˙˙?
E__inference_dense_102_layer_call_and_return_conditional_losses_471115\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_102_layer_call_fn_471105O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_306_layer_call_and_return_conditional_losses_469435-./O˘L
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469578-./O˘L
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469721q-./?˘<
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
D__inference_lstm_306_layer_call_and_return_conditional_losses_469864q-./?˘<
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
)__inference_lstm_306_layer_call_fn_469259}-./O˘L
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
)__inference_lstm_306_layer_call_fn_469270}-./O˘L
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
)__inference_lstm_306_layer_call_fn_469281d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_306_layer_call_fn_469292d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_307_layer_call_and_return_conditional_losses_470051012O˘L
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_470194012O˘L
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_470337q012?˘<
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
D__inference_lstm_307_layer_call_and_return_conditional_losses_470480q012?˘<
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
)__inference_lstm_307_layer_call_fn_469875}012O˘L
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
)__inference_lstm_307_layer_call_fn_469886}012O˘L
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
)__inference_lstm_307_layer_call_fn_469897d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_307_layer_call_fn_469908d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_308_layer_call_and_return_conditional_losses_470667}345O˘L
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470810}345O˘L
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_470953m345?˘<
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
D__inference_lstm_308_layer_call_and_return_conditional_losses_471096m345?˘<
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
)__inference_lstm_308_layer_call_fn_470491p345O˘L
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
)__inference_lstm_308_layer_call_fn_470502p345O˘L
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
)__inference_lstm_308_layer_call_fn_470513`345?˘<
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
)__inference_lstm_308_layer_call_fn_470524`345?˘<
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471181ŭ-./˘}
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
H__inference_lstm_cell_75_layer_call_and_return_conditional_losses_471213ŭ-./˘}
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
-__inference_lstm_cell_75_layer_call_fn_471132í-./˘}
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
-__inference_lstm_cell_75_layer_call_fn_471149í-./˘}
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471279ŭ012˘}
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
H__inference_lstm_cell_76_layer_call_and_return_conditional_losses_471311ŭ012˘}
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
-__inference_lstm_cell_76_layer_call_fn_471230í012˘}
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
-__inference_lstm_cell_76_layer_call_fn_471247í012˘}
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471377ŭ345˘}
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
H__inference_lstm_cell_77_layer_call_and_return_conditional_losses_471409ŭ345˘}
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
-__inference_lstm_cell_77_layer_call_fn_471328í345˘}
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
-__inference_lstm_cell_77_layer_call_fn_471345í345˘}
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
J__inference_sequential_102_layer_call_and_return_conditional_losses_468275y-./012345!"C˘@
9˘6
,)
lstm_306_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_102_layer_call_and_return_conditional_losses_468305y-./012345!"C˘@
9˘6
,)
lstm_306_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_102_layer_call_and_return_conditional_losses_468821q-./012345!";˘8
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
J__inference_sequential_102_layer_call_and_return_conditional_losses_469248q-./012345!";˘8
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
/__inference_sequential_102_layer_call_fn_467629l-./012345!"C˘@
9˘6
,)
lstm_306_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_102_layer_call_fn_468245l-./012345!"C˘@
9˘6
,)
lstm_306_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_102_layer_call_fn_468367d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_102_layer_call_fn_468394d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_468340-./012345!"M˘J
˘ 
CŞ@
>
lstm_306_input,)
lstm_306_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_102# 
	dense_102˙˙˙˙˙˙˙˙˙