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
dense_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_111/kernel
u
$dense_111/kernel/Read/ReadVariableOpReadVariableOpdense_111/kernel*
_output_shapes

:
*
dtype0
t
dense_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_111/bias
m
"dense_111/bias/Read/ReadVariableOpReadVariableOpdense_111/bias*
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
lstm_333/lstm_cell_333/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_333/lstm_cell_333/kernel

1lstm_333/lstm_cell_333/kernel/Read/ReadVariableOpReadVariableOplstm_333/lstm_cell_333/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_333/lstm_cell_333/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_333/lstm_cell_333/recurrent_kernel
¤
;lstm_333/lstm_cell_333/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_333/lstm_cell_333/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_333/lstm_cell_333/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_333/lstm_cell_333/bias

/lstm_333/lstm_cell_333/bias/Read/ReadVariableOpReadVariableOplstm_333/lstm_cell_333/bias*
_output_shapes	
:*
dtype0

lstm_334/lstm_cell_334/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_334/lstm_cell_334/kernel

1lstm_334/lstm_cell_334/kernel/Read/ReadVariableOpReadVariableOplstm_334/lstm_cell_334/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_334/lstm_cell_334/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_334/lstm_cell_334/recurrent_kernel
¤
;lstm_334/lstm_cell_334/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_334/lstm_cell_334/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_334/lstm_cell_334/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_334/lstm_cell_334/bias

/lstm_334/lstm_cell_334/bias/Read/ReadVariableOpReadVariableOplstm_334/lstm_cell_334/bias*
_output_shapes	
:È*
dtype0

lstm_335/lstm_cell_335/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_335/lstm_cell_335/kernel

1lstm_335/lstm_cell_335/kernel/Read/ReadVariableOpReadVariableOplstm_335/lstm_cell_335/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_335/lstm_cell_335/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_335/lstm_cell_335/recurrent_kernel
£
;lstm_335/lstm_cell_335/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_335/lstm_cell_335/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_335/lstm_cell_335/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_335/lstm_cell_335/bias

/lstm_335/lstm_cell_335/bias/Read/ReadVariableOpReadVariableOplstm_335/lstm_cell_335/bias*
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
Adam/dense_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_111/kernel/m

+Adam/dense_111/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_111/bias/m
{
)Adam/dense_111/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_333/lstm_cell_333/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_333/lstm_cell_333/kernel/m

8Adam/lstm_333/lstm_cell_333/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_333/lstm_cell_333/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_333/lstm_cell_333/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_333/lstm_cell_333/recurrent_kernel/m
²
BAdam/lstm_333/lstm_cell_333/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_333/lstm_cell_333/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_333/lstm_cell_333/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_333/lstm_cell_333/bias/m

6Adam/lstm_333/lstm_cell_333/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_333/lstm_cell_333/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_334/lstm_cell_334/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_334/lstm_cell_334/kernel/m

8Adam/lstm_334/lstm_cell_334/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_334/lstm_cell_334/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_334/lstm_cell_334/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_334/lstm_cell_334/recurrent_kernel/m
²
BAdam/lstm_334/lstm_cell_334/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_334/lstm_cell_334/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_334/lstm_cell_334/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_334/lstm_cell_334/bias/m

6Adam/lstm_334/lstm_cell_334/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_334/lstm_cell_334/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_335/lstm_cell_335/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_335/lstm_cell_335/kernel/m

8Adam/lstm_335/lstm_cell_335/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_335/lstm_cell_335/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_335/lstm_cell_335/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_335/lstm_cell_335/recurrent_kernel/m
ħ
BAdam/lstm_335/lstm_cell_335/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_335/lstm_cell_335/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_335/lstm_cell_335/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_335/lstm_cell_335/bias/m

6Adam/lstm_335/lstm_cell_335/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_335/lstm_cell_335/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_111/kernel/v

+Adam/dense_111/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_111/bias/v
{
)Adam/dense_111/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_333/lstm_cell_333/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_333/lstm_cell_333/kernel/v

8Adam/lstm_333/lstm_cell_333/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_333/lstm_cell_333/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_333/lstm_cell_333/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_333/lstm_cell_333/recurrent_kernel/v
²
BAdam/lstm_333/lstm_cell_333/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_333/lstm_cell_333/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_333/lstm_cell_333/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_333/lstm_cell_333/bias/v

6Adam/lstm_333/lstm_cell_333/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_333/lstm_cell_333/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_334/lstm_cell_334/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_334/lstm_cell_334/kernel/v

8Adam/lstm_334/lstm_cell_334/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_334/lstm_cell_334/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_334/lstm_cell_334/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_334/lstm_cell_334/recurrent_kernel/v
²
BAdam/lstm_334/lstm_cell_334/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_334/lstm_cell_334/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_334/lstm_cell_334/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_334/lstm_cell_334/bias/v

6Adam/lstm_334/lstm_cell_334/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_334/lstm_cell_334/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_335/lstm_cell_335/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_335/lstm_cell_335/kernel/v

8Adam/lstm_335/lstm_cell_335/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_335/lstm_cell_335/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_335/lstm_cell_335/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_335/lstm_cell_335/recurrent_kernel/v
ħ
BAdam/lstm_335/lstm_cell_335/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_335/lstm_cell_335/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_335/lstm_cell_335/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_335/lstm_cell_335/bias/v

6Adam/lstm_335/lstm_cell_335/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_335/lstm_cell_335/bias/v*
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
VARIABLE_VALUEdense_111/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_111/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_333/lstm_cell_333/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_333/lstm_cell_333/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_333/lstm_cell_333/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_334/lstm_cell_334/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_334/lstm_cell_334/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_334/lstm_cell_334/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_335/lstm_cell_335/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_335/lstm_cell_335/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_335/lstm_cell_335/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_111/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_111/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_333/lstm_cell_333/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_333/lstm_cell_333/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_333/lstm_cell_333/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_334/lstm_cell_334/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_334/lstm_cell_334/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_334/lstm_cell_334/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_335/lstm_cell_335/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_335/lstm_cell_335/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_335/lstm_cell_335/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_111/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_111/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_333/lstm_cell_333/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_333/lstm_cell_333/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_333/lstm_cell_333/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_334/lstm_cell_334/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_334/lstm_cell_334/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_334/lstm_cell_334/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_335/lstm_cell_335/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_335/lstm_cell_335/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_335/lstm_cell_335/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_333_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_333_inputlstm_333/lstm_cell_333/kernel'lstm_333/lstm_cell_333/recurrent_kernellstm_333/lstm_cell_333/biaslstm_334/lstm_cell_334/kernel'lstm_334/lstm_cell_334/recurrent_kernellstm_334/lstm_cell_334/biaslstm_335/lstm_cell_335/kernel'lstm_335/lstm_cell_335/recurrent_kernellstm_335/lstm_cell_335/biasdense_111/kerneldense_111/bias*
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
$__inference_signature_wrapper_559979
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_111/kernel/Read/ReadVariableOp"dense_111/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_333/lstm_cell_333/kernel/Read/ReadVariableOp;lstm_333/lstm_cell_333/recurrent_kernel/Read/ReadVariableOp/lstm_333/lstm_cell_333/bias/Read/ReadVariableOp1lstm_334/lstm_cell_334/kernel/Read/ReadVariableOp;lstm_334/lstm_cell_334/recurrent_kernel/Read/ReadVariableOp/lstm_334/lstm_cell_334/bias/Read/ReadVariableOp1lstm_335/lstm_cell_335/kernel/Read/ReadVariableOp;lstm_335/lstm_cell_335/recurrent_kernel/Read/ReadVariableOp/lstm_335/lstm_cell_335/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_111/kernel/m/Read/ReadVariableOp)Adam/dense_111/bias/m/Read/ReadVariableOp8Adam/lstm_333/lstm_cell_333/kernel/m/Read/ReadVariableOpBAdam/lstm_333/lstm_cell_333/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_333/lstm_cell_333/bias/m/Read/ReadVariableOp8Adam/lstm_334/lstm_cell_334/kernel/m/Read/ReadVariableOpBAdam/lstm_334/lstm_cell_334/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_334/lstm_cell_334/bias/m/Read/ReadVariableOp8Adam/lstm_335/lstm_cell_335/kernel/m/Read/ReadVariableOpBAdam/lstm_335/lstm_cell_335/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_335/lstm_cell_335/bias/m/Read/ReadVariableOp+Adam/dense_111/kernel/v/Read/ReadVariableOp)Adam/dense_111/bias/v/Read/ReadVariableOp8Adam/lstm_333/lstm_cell_333/kernel/v/Read/ReadVariableOpBAdam/lstm_333/lstm_cell_333/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_333/lstm_cell_333/bias/v/Read/ReadVariableOp8Adam/lstm_334/lstm_cell_334/kernel/v/Read/ReadVariableOpBAdam/lstm_334/lstm_cell_334/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_334/lstm_cell_334/bias/v/Read/ReadVariableOp8Adam/lstm_335/lstm_cell_335/kernel/v/Read/ReadVariableOpBAdam/lstm_335/lstm_cell_335/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_335/lstm_cell_335/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_563191

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_111/kerneldense_111/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_333/lstm_cell_333/kernel'lstm_333/lstm_cell_333/recurrent_kernellstm_333/lstm_cell_333/biaslstm_334/lstm_cell_334/kernel'lstm_334/lstm_cell_334/recurrent_kernellstm_334/lstm_cell_334/biaslstm_335/lstm_cell_335/kernel'lstm_335/lstm_cell_335/recurrent_kernellstm_335/lstm_cell_335/biastotalcountAdam/dense_111/kernel/mAdam/dense_111/bias/m$Adam/lstm_333/lstm_cell_333/kernel/m.Adam/lstm_333/lstm_cell_333/recurrent_kernel/m"Adam/lstm_333/lstm_cell_333/bias/m$Adam/lstm_334/lstm_cell_334/kernel/m.Adam/lstm_334/lstm_cell_334/recurrent_kernel/m"Adam/lstm_334/lstm_cell_334/bias/m$Adam/lstm_335/lstm_cell_335/kernel/m.Adam/lstm_335/lstm_cell_335/recurrent_kernel/m"Adam/lstm_335/lstm_cell_335/bias/mAdam/dense_111/kernel/vAdam/dense_111/bias/v$Adam/lstm_333/lstm_cell_333/kernel/v.Adam/lstm_333/lstm_cell_333/recurrent_kernel/v"Adam/lstm_333/lstm_cell_333/bias/v$Adam/lstm_334/lstm_cell_334/kernel/v.Adam/lstm_334/lstm_cell_334/recurrent_kernel/v"Adam/lstm_334/lstm_cell_334/bias/v$Adam/lstm_335/lstm_cell_335/kernel/v.Adam/lstm_335/lstm_cell_335/recurrent_kernel/v"Adam/lstm_335/lstm_cell_335/bias/v*4
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
"__inference__traced_restore_563321ĜÜ+
à"
Ŭ
while_body_558500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_92_558524_0:2(-
while_lstm_cell_92_558526_0:
()
while_lstm_cell_92_558528_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_92_558524:2(+
while_lstm_cell_92_558526:
('
while_lstm_cell_92_558528:(˘*while/lstm_cell_92/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_92/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_92_558524_0while_lstm_cell_92_558526_0while_lstm_cell_92_558528_0*
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558486Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_92/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_92/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_92/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_92/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_92_558524while_lstm_cell_92_558524_0"8
while_lstm_cell_92_558526while_lstm_cell_92_558526_0"8
while_lstm_cell_92_558528while_lstm_cell_92_558528_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_92/StatefulPartitionedCall*while/lstm_cell_92/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562735

inputs=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_562651*
condR
while_cond_562650*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ü


/__inference_sequential_111_layer_call_fn_560006

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
J__inference_sequential_111_layer_call_and_return_conditional_losses_559243o
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
)__inference_lstm_333_layer_call_fn_560909
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_558060|
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
while_cond_561275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561275___redundant_placeholder04
0while_while_cond_561275___redundant_placeholder14
0while_while_cond_561275___redundant_placeholder24
0while_while_cond_561275___redundant_placeholder3
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_558760

inputs%
lstm_cell_92_558678:2(%
lstm_cell_92_558680:
(!
lstm_cell_92_558682:(
identity˘$lstm_cell_92/StatefulPartitionedCall˘while;
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
$lstm_cell_92/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_92_558678lstm_cell_92_558680lstm_cell_92_558682*
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558632n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_92_558678lstm_cell_92_558680lstm_cell_92_558682*
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
while_body_558691*
condR
while_cond_558690*K
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
NoOpNoOp%^lstm_cell_92/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_92/StatefulPartitionedCall$lstm_cell_92/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ó¤

"__inference__traced_restore_563321
file_prefix3
!assignvariableop_dense_111_kernel:
/
!assignvariableop_1_dense_111_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_333_lstm_cell_333_kernel:	M
:assignvariableop_8_lstm_333_lstm_cell_333_recurrent_kernel:	d=
.assignvariableop_9_lstm_333_lstm_cell_333_bias:	D
1assignvariableop_10_lstm_334_lstm_cell_334_kernel:	dÈN
;assignvariableop_11_lstm_334_lstm_cell_334_recurrent_kernel:	2È>
/assignvariableop_12_lstm_334_lstm_cell_334_bias:	ÈC
1assignvariableop_13_lstm_335_lstm_cell_335_kernel:2(M
;assignvariableop_14_lstm_335_lstm_cell_335_recurrent_kernel:
(=
/assignvariableop_15_lstm_335_lstm_cell_335_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_111_kernel_m:
7
)assignvariableop_19_adam_dense_111_bias_m:K
8assignvariableop_20_adam_lstm_333_lstm_cell_333_kernel_m:	U
Bassignvariableop_21_adam_lstm_333_lstm_cell_333_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_333_lstm_cell_333_bias_m:	K
8assignvariableop_23_adam_lstm_334_lstm_cell_334_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_334_lstm_cell_334_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_334_lstm_cell_334_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_335_lstm_cell_335_kernel_m:2(T
Bassignvariableop_27_adam_lstm_335_lstm_cell_335_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_335_lstm_cell_335_bias_m:(=
+assignvariableop_29_adam_dense_111_kernel_v:
7
)assignvariableop_30_adam_dense_111_bias_v:K
8assignvariableop_31_adam_lstm_333_lstm_cell_333_kernel_v:	U
Bassignvariableop_32_adam_lstm_333_lstm_cell_333_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_333_lstm_cell_333_bias_v:	K
8assignvariableop_34_adam_lstm_334_lstm_cell_334_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_334_lstm_cell_334_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_334_lstm_cell_334_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_335_lstm_cell_335_kernel_v:2(T
Bassignvariableop_38_adam_lstm_335_lstm_cell_335_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_335_lstm_cell_335_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_111_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_111_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_333_lstm_cell_333_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_333_lstm_cell_333_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_333_lstm_cell_333_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_334_lstm_cell_334_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_334_lstm_cell_334_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_334_lstm_cell_334_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_335_lstm_cell_335_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_335_lstm_cell_335_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_335_lstm_cell_335_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_111_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_111_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_333_lstm_cell_333_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_333_lstm_cell_333_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_333_lstm_cell_333_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_334_lstm_cell_334_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_334_lstm_cell_334_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_334_lstm_cell_334_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_335_lstm_cell_335_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_335_lstm_cell_335_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_335_lstm_cell_335_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_111_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_111_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_333_lstm_cell_333_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_333_lstm_cell_333_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_333_lstm_cell_333_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_334_lstm_cell_334_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_334_lstm_cell_334_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_334_lstm_cell_334_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_335_lstm_cell_335_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_335_lstm_cell_335_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_335_lstm_cell_335_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_559680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ä

*__inference_dense_111_layer_call_fn_562744

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
E__inference_dense_111_layer_call_and_return_conditional_losses_559236o
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
Ü


/__inference_sequential_111_layer_call_fn_560033

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
J__inference_sequential_111_layer_call_and_return_conditional_losses_559832o
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
Ó

H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563048

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
ë
ö
-__inference_lstm_cell_91_layer_call_fn_562869

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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558136o
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
while_cond_561891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561891___redundant_placeholder04
0while_while_cond_561891___redundant_placeholder14
0while_while_cond_561891___redundant_placeholder24
0while_while_cond_561891___redundant_placeholder3
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
·
ï
J__inference_sequential_111_layer_call_and_return_conditional_losses_559832

inputs"
lstm_333_559805:	"
lstm_333_559807:	d
lstm_333_559809:	"
lstm_334_559812:	dÈ"
lstm_334_559814:	2È
lstm_334_559816:	È!
lstm_335_559819:2(!
lstm_335_559821:
(
lstm_335_559823:("
dense_111_559826:

dense_111_559828:
identity˘!dense_111/StatefulPartitionedCall˘ lstm_333/StatefulPartitionedCall˘ lstm_334/StatefulPartitionedCall˘ lstm_335/StatefulPartitionedCall
 lstm_333/StatefulPartitionedCallStatefulPartitionedCallinputslstm_333_559805lstm_333_559807lstm_333_559809*
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_559764Ş
 lstm_334/StatefulPartitionedCallStatefulPartitionedCall)lstm_333/StatefulPartitionedCall:output:0lstm_334_559812lstm_334_559814lstm_334_559816*
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559599Ĥ
 lstm_335/StatefulPartitionedCallStatefulPartitionedCall)lstm_334/StatefulPartitionedCall:output:0lstm_335_559819lstm_335_559821lstm_335_559823*
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559434
!dense_111/StatefulPartitionedCallStatefulPartitionedCall)lstm_335/StatefulPartitionedCall:output:0dense_111_559826dense_111_559828*
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
E__inference_dense_111_layer_call_and_return_conditional_losses_559236y
IdentityIdentity*dense_111/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_111/StatefulPartitionedCall!^lstm_333/StatefulPartitionedCall!^lstm_334/StatefulPartitionedCall!^lstm_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2D
 lstm_333/StatefulPartitionedCall lstm_333/StatefulPartitionedCall2D
 lstm_334/StatefulPartitionedCall lstm_334/StatefulPartitionedCall2D
 lstm_335/StatefulPartitionedCall lstm_335/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ï
÷
J__inference_sequential_111_layer_call_and_return_conditional_losses_559944
lstm_333_input"
lstm_333_559917:	"
lstm_333_559919:	d
lstm_333_559921:	"
lstm_334_559924:	dÈ"
lstm_334_559926:	2È
lstm_334_559928:	È!
lstm_335_559931:2(!
lstm_335_559933:
(
lstm_335_559935:("
dense_111_559938:

dense_111_559940:
identity˘!dense_111/StatefulPartitionedCall˘ lstm_333/StatefulPartitionedCall˘ lstm_334/StatefulPartitionedCall˘ lstm_335/StatefulPartitionedCall
 lstm_333/StatefulPartitionedCallStatefulPartitionedCalllstm_333_inputlstm_333_559917lstm_333_559919lstm_333_559921*
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_559764Ş
 lstm_334/StatefulPartitionedCallStatefulPartitionedCall)lstm_333/StatefulPartitionedCall:output:0lstm_334_559924lstm_334_559926lstm_334_559928*
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559599Ĥ
 lstm_335/StatefulPartitionedCallStatefulPartitionedCall)lstm_334/StatefulPartitionedCall:output:0lstm_335_559931lstm_335_559933lstm_335_559935*
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559434
!dense_111/StatefulPartitionedCallStatefulPartitionedCall)lstm_335/StatefulPartitionedCall:output:0dense_111_559938dense_111_559940*
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
E__inference_dense_111_layer_call_and_return_conditional_losses_559236y
IdentityIdentity*dense_111/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_111/StatefulPartitionedCall!^lstm_333/StatefulPartitionedCall!^lstm_334/StatefulPartitionedCall!^lstm_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2D
 lstm_333/StatefulPartitionedCall lstm_333/StatefulPartitionedCall2D
 lstm_334/StatefulPartitionedCall lstm_334/StatefulPartitionedCall2D
 lstm_335/StatefulPartitionedCall lstm_335/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_333_input
8

D__inference_lstm_334_layer_call_and_return_conditional_losses_558410

inputs&
lstm_cell_91_558328:	dÈ&
lstm_cell_91_558330:	2È"
lstm_cell_91_558332:	È
identity˘$lstm_cell_91/StatefulPartitionedCall˘while;
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
$lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_91_558328lstm_cell_91_558330lstm_cell_91_558332*
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558282n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_91_558328lstm_cell_91_558330lstm_cell_91_558332*
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
while_body_558341*
condR
while_cond_558340*K
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
NoOpNoOp%^lstm_cell_91/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_91/StatefulPartitionedCall$lstm_cell_91/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_561606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
À


$__inference_signature_wrapper_559979
lstm_333_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_557719o
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
_user_specified_namelstm_333_input
İT
Î
)sequential_111_lstm_335_while_body_557629L
Hsequential_111_lstm_335_while_sequential_111_lstm_335_while_loop_counterR
Nsequential_111_lstm_335_while_sequential_111_lstm_335_while_maximum_iterations-
)sequential_111_lstm_335_while_placeholder/
+sequential_111_lstm_335_while_placeholder_1/
+sequential_111_lstm_335_while_placeholder_2/
+sequential_111_lstm_335_while_placeholder_3K
Gsequential_111_lstm_335_while_sequential_111_lstm_335_strided_slice_1_0
sequential_111_lstm_335_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_335_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_111_lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0:2(_
Msequential_111_lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(Z
Lsequential_111_lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0:(*
&sequential_111_lstm_335_while_identity,
(sequential_111_lstm_335_while_identity_1,
(sequential_111_lstm_335_while_identity_2,
(sequential_111_lstm_335_while_identity_3,
(sequential_111_lstm_335_while_identity_4,
(sequential_111_lstm_335_while_identity_5I
Esequential_111_lstm_335_while_sequential_111_lstm_335_strided_slice_1
sequential_111_lstm_335_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_335_tensorarrayunstack_tensorlistfromtensor[
Isequential_111_lstm_335_while_lstm_cell_92_matmul_readvariableop_resource:2(]
Ksequential_111_lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource:
(X
Jsequential_111_lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource:(˘Asequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp˘@sequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp˘Bsequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp 
Osequential_111/lstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_111/lstm_335/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_111_lstm_335_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_335_tensorarrayunstack_tensorlistfromtensor_0)sequential_111_lstm_335_while_placeholderXsequential_111/lstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOpKsequential_111_lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_111/lstm_335/while/lstm_cell_92/MatMulMatMulHsequential_111/lstm_335/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOpMsequential_111_lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_111/lstm_335/while/lstm_cell_92/MatMul_1MatMul+sequential_111_lstm_335_while_placeholder_2Jsequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_111/lstm_335/while/lstm_cell_92/addAddV2;sequential_111/lstm_335/while/lstm_cell_92/MatMul:product:0=sequential_111/lstm_335/while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOpLsequential_111_lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_111/lstm_335/while/lstm_cell_92/BiasAddBiasAdd2sequential_111/lstm_335/while/lstm_cell_92/add:z:0Isequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_111/lstm_335/while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_111/lstm_335/while/lstm_cell_92/splitSplitCsequential_111/lstm_335/while/lstm_cell_92/split/split_dim:output:0;sequential_111/lstm_335/while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_111/lstm_335/while/lstm_cell_92/SigmoidSigmoid9sequential_111/lstm_335/while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_111/lstm_335/while/lstm_cell_92/Sigmoid_1Sigmoid9sequential_111/lstm_335/while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_111/lstm_335/while/lstm_cell_92/mulMul8sequential_111/lstm_335/while/lstm_cell_92/Sigmoid_1:y:0+sequential_111_lstm_335_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_111/lstm_335/while/lstm_cell_92/ReluRelu9sequential_111/lstm_335/while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_111/lstm_335/while/lstm_cell_92/mul_1Mul6sequential_111/lstm_335/while/lstm_cell_92/Sigmoid:y:0=sequential_111/lstm_335/while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_111/lstm_335/while/lstm_cell_92/add_1AddV22sequential_111/lstm_335/while/lstm_cell_92/mul:z:04sequential_111/lstm_335/while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_111/lstm_335/while/lstm_cell_92/Sigmoid_2Sigmoid9sequential_111/lstm_335/while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_111/lstm_335/while/lstm_cell_92/Relu_1Relu4sequential_111/lstm_335/while/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_111/lstm_335/while/lstm_cell_92/mul_2Mul8sequential_111/lstm_335/while/lstm_cell_92/Sigmoid_2:y:0?sequential_111/lstm_335/while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_111/lstm_335/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_111_lstm_335_while_placeholder_1)sequential_111_lstm_335_while_placeholder4sequential_111/lstm_335/while/lstm_cell_92/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_111/lstm_335/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_111/lstm_335/while/addAddV2)sequential_111_lstm_335_while_placeholder,sequential_111/lstm_335/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_111/lstm_335/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_111/lstm_335/while/add_1AddV2Hsequential_111_lstm_335_while_sequential_111_lstm_335_while_loop_counter.sequential_111/lstm_335/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_111/lstm_335/while/IdentityIdentity'sequential_111/lstm_335/while/add_1:z:0#^sequential_111/lstm_335/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_111/lstm_335/while/Identity_1IdentityNsequential_111_lstm_335_while_sequential_111_lstm_335_while_maximum_iterations#^sequential_111/lstm_335/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_111/lstm_335/while/Identity_2Identity%sequential_111/lstm_335/while/add:z:0#^sequential_111/lstm_335/while/NoOp*
T0*
_output_shapes
: Î
(sequential_111/lstm_335/while/Identity_3IdentityRsequential_111/lstm_335/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_111/lstm_335/while/NoOp*
T0*
_output_shapes
: Á
(sequential_111/lstm_335/while/Identity_4Identity4sequential_111/lstm_335/while/lstm_cell_92/mul_2:z:0#^sequential_111/lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_111/lstm_335/while/Identity_5Identity4sequential_111/lstm_335/while/lstm_cell_92/add_1:z:0#^sequential_111/lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_111/lstm_335/while/NoOpNoOpB^sequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOpA^sequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOpC^sequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_111_lstm_335_while_identity/sequential_111/lstm_335/while/Identity:output:0"]
(sequential_111_lstm_335_while_identity_11sequential_111/lstm_335/while/Identity_1:output:0"]
(sequential_111_lstm_335_while_identity_21sequential_111/lstm_335/while/Identity_2:output:0"]
(sequential_111_lstm_335_while_identity_31sequential_111/lstm_335/while/Identity_3:output:0"]
(sequential_111_lstm_335_while_identity_41sequential_111/lstm_335/while/Identity_4:output:0"]
(sequential_111_lstm_335_while_identity_51sequential_111/lstm_335/while/Identity_5:output:0"
Jsequential_111_lstm_335_while_lstm_cell_92_biasadd_readvariableop_resourceLsequential_111_lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0"
Ksequential_111_lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resourceMsequential_111_lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0"
Isequential_111_lstm_335_while_lstm_cell_92_matmul_readvariableop_resourceKsequential_111_lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0"
Esequential_111_lstm_335_while_sequential_111_lstm_335_strided_slice_1Gsequential_111_lstm_335_while_sequential_111_lstm_335_strided_slice_1_0"
sequential_111_lstm_335_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_335_tensorarrayunstack_tensorlistfromtensorsequential_111_lstm_335_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_335_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOpAsequential_111/lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2
@sequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp@sequential_111/lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp2
Bsequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOpBsequential_111/lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_561749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_558983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558983___redundant_placeholder04
0while_while_cond_558983___redundant_placeholder14
0while_while_cond_558983___redundant_placeholder24
0while_while_cond_558983___redundant_placeholder3
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
)__inference_lstm_334_layer_call_fn_561514
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_558219|
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
while_body_558834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ŭ

H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562918

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
Ĉ

J__inference_sequential_111_layer_call_and_return_conditional_losses_560887

inputsG
4lstm_333_lstm_cell_90_matmul_readvariableop_resource:	I
6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource:	dD
5lstm_333_lstm_cell_90_biasadd_readvariableop_resource:	G
4lstm_334_lstm_cell_91_matmul_readvariableop_resource:	dÈI
6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈD
5lstm_334_lstm_cell_91_biasadd_readvariableop_resource:	ÈF
4lstm_335_lstm_cell_92_matmul_readvariableop_resource:2(H
6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource:
(C
5lstm_335_lstm_cell_92_biasadd_readvariableop_resource:(:
(dense_111_matmul_readvariableop_resource:
7
)dense_111_biasadd_readvariableop_resource:
identity˘ dense_111/BiasAdd/ReadVariableOp˘dense_111/MatMul/ReadVariableOp˘,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp˘+lstm_333/lstm_cell_90/MatMul/ReadVariableOp˘-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp˘lstm_333/while˘,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp˘+lstm_334/lstm_cell_91/MatMul/ReadVariableOp˘-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp˘lstm_334/while˘,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp˘+lstm_335/lstm_cell_92/MatMul/ReadVariableOp˘-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp˘lstm_335/whileD
lstm_333/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_333/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_333/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_333/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_333/strided_sliceStridedSlicelstm_333/Shape:output:0%lstm_333/strided_slice/stack:output:0'lstm_333/strided_slice/stack_1:output:0'lstm_333/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_333/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_333/zeros/packedPacklstm_333/strided_slice:output:0 lstm_333/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_333/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_333/zerosFilllstm_333/zeros/packed:output:0lstm_333/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_333/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_333/zeros_1/packedPacklstm_333/strided_slice:output:0"lstm_333/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_333/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_333/zeros_1Fill lstm_333/zeros_1/packed:output:0lstm_333/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_333/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_333/transpose	Transposeinputs lstm_333/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_333/Shape_1Shapelstm_333/transpose:y:0*
T0*
_output_shapes
:h
lstm_333/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_333/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_333/strided_slice_1StridedSlicelstm_333/Shape_1:output:0'lstm_333/strided_slice_1/stack:output:0)lstm_333/strided_slice_1/stack_1:output:0)lstm_333/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_333/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_333/TensorArrayV2TensorListReserve-lstm_333/TensorArrayV2/element_shape:output:0!lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_333/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_333/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_333/transpose:y:0Glstm_333/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_333/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_333/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_333/strided_slice_2StridedSlicelstm_333/transpose:y:0'lstm_333/strided_slice_2/stack:output:0)lstm_333/strided_slice_2/stack_1:output:0)lstm_333/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_333/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp4lstm_333_lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_333/lstm_cell_90/MatMulMatMul!lstm_333/strided_slice_2:output:03lstm_333/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_333/lstm_cell_90/MatMul_1MatMullstm_333/zeros:output:05lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_333/lstm_cell_90/addAddV2&lstm_333/lstm_cell_90/MatMul:product:0(lstm_333/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp5lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_333/lstm_cell_90/BiasAddBiasAddlstm_333/lstm_cell_90/add:z:04lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_333/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_333/lstm_cell_90/splitSplit.lstm_333/lstm_cell_90/split/split_dim:output:0&lstm_333/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_333/lstm_cell_90/SigmoidSigmoid$lstm_333/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/Sigmoid_1Sigmoid$lstm_333/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/mulMul#lstm_333/lstm_cell_90/Sigmoid_1:y:0lstm_333/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_333/lstm_cell_90/ReluRelu$lstm_333/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_333/lstm_cell_90/mul_1Mul!lstm_333/lstm_cell_90/Sigmoid:y:0(lstm_333/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/add_1AddV2lstm_333/lstm_cell_90/mul:z:0lstm_333/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/Sigmoid_2Sigmoid$lstm_333/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_333/lstm_cell_90/Relu_1Relulstm_333/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_333/lstm_cell_90/mul_2Mul#lstm_333/lstm_cell_90/Sigmoid_2:y:0*lstm_333/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_333/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_333/TensorArrayV2_1TensorListReserve/lstm_333/TensorArrayV2_1/element_shape:output:0!lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_333/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_333/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_333/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_333/whileWhile$lstm_333/while/loop_counter:output:0*lstm_333/while/maximum_iterations:output:0lstm_333/time:output:0!lstm_333/TensorArrayV2_1:handle:0lstm_333/zeros:output:0lstm_333/zeros_1:output:0!lstm_333/strided_slice_1:output:0@lstm_333/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_333_lstm_cell_90_matmul_readvariableop_resource6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource5lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
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
lstm_333_while_body_560519*&
condR
lstm_333_while_cond_560518*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_333/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_333/TensorArrayV2Stack/TensorListStackTensorListStacklstm_333/while:output:3Blstm_333/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_333/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_333/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_333/strided_slice_3StridedSlice4lstm_333/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_333/strided_slice_3/stack:output:0)lstm_333/strided_slice_3/stack_1:output:0)lstm_333/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_333/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_333/transpose_1	Transpose4lstm_333/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_333/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_333/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_334/ShapeShapelstm_333/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_334/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_334/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_334/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_334/strided_sliceStridedSlicelstm_334/Shape:output:0%lstm_334/strided_slice/stack:output:0'lstm_334/strided_slice/stack_1:output:0'lstm_334/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_334/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_334/zeros/packedPacklstm_334/strided_slice:output:0 lstm_334/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_334/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_334/zerosFilllstm_334/zeros/packed:output:0lstm_334/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_334/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_334/zeros_1/packedPacklstm_334/strided_slice:output:0"lstm_334/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_334/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_334/zeros_1Fill lstm_334/zeros_1/packed:output:0lstm_334/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_334/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_334/transpose	Transposelstm_333/transpose_1:y:0 lstm_334/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_334/Shape_1Shapelstm_334/transpose:y:0*
T0*
_output_shapes
:h
lstm_334/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_334/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_334/strided_slice_1StridedSlicelstm_334/Shape_1:output:0'lstm_334/strided_slice_1/stack:output:0)lstm_334/strided_slice_1/stack_1:output:0)lstm_334/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_334/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_334/TensorArrayV2TensorListReserve-lstm_334/TensorArrayV2/element_shape:output:0!lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_334/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_334/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_334/transpose:y:0Glstm_334/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_334/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_334/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_334/strided_slice_2StridedSlicelstm_334/transpose:y:0'lstm_334/strided_slice_2/stack:output:0)lstm_334/strided_slice_2/stack_1:output:0)lstm_334/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_334/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp4lstm_334_lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_334/lstm_cell_91/MatMulMatMul!lstm_334/strided_slice_2:output:03lstm_334/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_334/lstm_cell_91/MatMul_1MatMullstm_334/zeros:output:05lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_334/lstm_cell_91/addAddV2&lstm_334/lstm_cell_91/MatMul:product:0(lstm_334/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp5lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_334/lstm_cell_91/BiasAddBiasAddlstm_334/lstm_cell_91/add:z:04lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_334/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_334/lstm_cell_91/splitSplit.lstm_334/lstm_cell_91/split/split_dim:output:0&lstm_334/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_334/lstm_cell_91/SigmoidSigmoid$lstm_334/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/Sigmoid_1Sigmoid$lstm_334/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/mulMul#lstm_334/lstm_cell_91/Sigmoid_1:y:0lstm_334/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_334/lstm_cell_91/ReluRelu$lstm_334/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_334/lstm_cell_91/mul_1Mul!lstm_334/lstm_cell_91/Sigmoid:y:0(lstm_334/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/add_1AddV2lstm_334/lstm_cell_91/mul:z:0lstm_334/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/Sigmoid_2Sigmoid$lstm_334/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_334/lstm_cell_91/Relu_1Relulstm_334/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_334/lstm_cell_91/mul_2Mul#lstm_334/lstm_cell_91/Sigmoid_2:y:0*lstm_334/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_334/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_334/TensorArrayV2_1TensorListReserve/lstm_334/TensorArrayV2_1/element_shape:output:0!lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_334/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_334/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_334/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_334/whileWhile$lstm_334/while/loop_counter:output:0*lstm_334/while/maximum_iterations:output:0lstm_334/time:output:0!lstm_334/TensorArrayV2_1:handle:0lstm_334/zeros:output:0lstm_334/zeros_1:output:0!lstm_334/strided_slice_1:output:0@lstm_334/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_334_lstm_cell_91_matmul_readvariableop_resource6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource5lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
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
lstm_334_while_body_560658*&
condR
lstm_334_while_cond_560657*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_334/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_334/TensorArrayV2Stack/TensorListStackTensorListStacklstm_334/while:output:3Blstm_334/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_334/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_334/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_334/strided_slice_3StridedSlice4lstm_334/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_334/strided_slice_3/stack:output:0)lstm_334/strided_slice_3/stack_1:output:0)lstm_334/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_334/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_334/transpose_1	Transpose4lstm_334/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_334/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_334/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_335/ShapeShapelstm_334/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_335/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_335/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_335/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_335/strided_sliceStridedSlicelstm_335/Shape:output:0%lstm_335/strided_slice/stack:output:0'lstm_335/strided_slice/stack_1:output:0'lstm_335/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_335/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_335/zeros/packedPacklstm_335/strided_slice:output:0 lstm_335/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_335/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_335/zerosFilllstm_335/zeros/packed:output:0lstm_335/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_335/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_335/zeros_1/packedPacklstm_335/strided_slice:output:0"lstm_335/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_335/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_335/zeros_1Fill lstm_335/zeros_1/packed:output:0lstm_335/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_335/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_335/transpose	Transposelstm_334/transpose_1:y:0 lstm_335/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_335/Shape_1Shapelstm_335/transpose:y:0*
T0*
_output_shapes
:h
lstm_335/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_335/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_335/strided_slice_1StridedSlicelstm_335/Shape_1:output:0'lstm_335/strided_slice_1/stack:output:0)lstm_335/strided_slice_1/stack_1:output:0)lstm_335/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_335/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_335/TensorArrayV2TensorListReserve-lstm_335/TensorArrayV2/element_shape:output:0!lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_335/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_335/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_335/transpose:y:0Glstm_335/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_335/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_335/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_335/strided_slice_2StridedSlicelstm_335/transpose:y:0'lstm_335/strided_slice_2/stack:output:0)lstm_335/strided_slice_2/stack_1:output:0)lstm_335/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_335/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp4lstm_335_lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_335/lstm_cell_92/MatMulMatMul!lstm_335/strided_slice_2:output:03lstm_335/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_335/lstm_cell_92/MatMul_1MatMullstm_335/zeros:output:05lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_335/lstm_cell_92/addAddV2&lstm_335/lstm_cell_92/MatMul:product:0(lstm_335/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp5lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_335/lstm_cell_92/BiasAddBiasAddlstm_335/lstm_cell_92/add:z:04lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_335/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_335/lstm_cell_92/splitSplit.lstm_335/lstm_cell_92/split/split_dim:output:0&lstm_335/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_335/lstm_cell_92/SigmoidSigmoid$lstm_335/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/Sigmoid_1Sigmoid$lstm_335/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/mulMul#lstm_335/lstm_cell_92/Sigmoid_1:y:0lstm_335/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_335/lstm_cell_92/ReluRelu$lstm_335/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_335/lstm_cell_92/mul_1Mul!lstm_335/lstm_cell_92/Sigmoid:y:0(lstm_335/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/add_1AddV2lstm_335/lstm_cell_92/mul:z:0lstm_335/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/Sigmoid_2Sigmoid$lstm_335/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_335/lstm_cell_92/Relu_1Relulstm_335/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_335/lstm_cell_92/mul_2Mul#lstm_335/lstm_cell_92/Sigmoid_2:y:0*lstm_335/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_335/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_335/TensorArrayV2_1TensorListReserve/lstm_335/TensorArrayV2_1/element_shape:output:0!lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_335/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_335/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_335/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_335/whileWhile$lstm_335/while/loop_counter:output:0*lstm_335/while/maximum_iterations:output:0lstm_335/time:output:0!lstm_335/TensorArrayV2_1:handle:0lstm_335/zeros:output:0lstm_335/zeros_1:output:0!lstm_335/strided_slice_1:output:0@lstm_335/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_335_lstm_cell_92_matmul_readvariableop_resource6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource5lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
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
lstm_335_while_body_560797*&
condR
lstm_335_while_cond_560796*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_335/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_335/TensorArrayV2Stack/TensorListStackTensorListStacklstm_335/while:output:3Blstm_335/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_335/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_335/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_335/strided_slice_3StridedSlice4lstm_335/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_335/strided_slice_3/stack:output:0)lstm_335/strided_slice_3/stack_1:output:0)lstm_335/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_335/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_335/transpose_1	Transpose4lstm_335/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_335/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_335/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_111/MatMulMatMul!lstm_335/strided_slice_3:output:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_111/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp-^lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp,^lstm_333/lstm_cell_90/MatMul/ReadVariableOp.^lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp^lstm_333/while-^lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp,^lstm_334/lstm_cell_91/MatMul/ReadVariableOp.^lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp^lstm_334/while-^lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp,^lstm_335/lstm_cell_92/MatMul/ReadVariableOp.^lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp^lstm_335/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2\
,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp2Z
+lstm_333/lstm_cell_90/MatMul/ReadVariableOp+lstm_333/lstm_cell_90/MatMul/ReadVariableOp2^
-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp2 
lstm_333/whilelstm_333/while2\
,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp2Z
+lstm_334/lstm_cell_91/MatMul/ReadVariableOp+lstm_334/lstm_cell_91/MatMul/ReadVariableOp2^
-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp2 
lstm_334/whilelstm_334/while2\
,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp2Z
+lstm_335/lstm_cell_92/MatMul/ReadVariableOp+lstm_335/lstm_cell_92/MatMul/ReadVariableOp2^
-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp2 
lstm_335/whilelstm_335/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_92_layer_call_fn_562967

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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558486o
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
âJ

D__inference_lstm_333_layer_call_and_return_conditional_losses_561217
inputs_0>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_561133*
condR
while_cond_561132*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_333_layer_call_and_return_conditional_losses_561360

inputs>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_561276*
condR
while_cond_561275*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_561133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
·
ï
J__inference_sequential_111_layer_call_and_return_conditional_losses_559243

inputs"
lstm_333_558919:	"
lstm_333_558921:	d
lstm_333_558923:	"
lstm_334_559069:	dÈ"
lstm_334_559071:	2È
lstm_334_559073:	È!
lstm_335_559219:2(!
lstm_335_559221:
(
lstm_335_559223:("
dense_111_559237:

dense_111_559239:
identity˘!dense_111/StatefulPartitionedCall˘ lstm_333/StatefulPartitionedCall˘ lstm_334/StatefulPartitionedCall˘ lstm_335/StatefulPartitionedCall
 lstm_333/StatefulPartitionedCallStatefulPartitionedCallinputslstm_333_558919lstm_333_558921lstm_333_558923*
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_558918Ş
 lstm_334/StatefulPartitionedCallStatefulPartitionedCall)lstm_333/StatefulPartitionedCall:output:0lstm_334_559069lstm_334_559071lstm_334_559073*
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559068Ĥ
 lstm_335/StatefulPartitionedCallStatefulPartitionedCall)lstm_334/StatefulPartitionedCall:output:0lstm_335_559219lstm_335_559221lstm_335_559223*
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559218
!dense_111/StatefulPartitionedCallStatefulPartitionedCall)lstm_335/StatefulPartitionedCall:output:0dense_111_559237dense_111_559239*
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
E__inference_dense_111_layer_call_and_return_conditional_losses_559236y
IdentityIdentity*dense_111/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_111/StatefulPartitionedCall!^lstm_333/StatefulPartitionedCall!^lstm_334/StatefulPartitionedCall!^lstm_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2D
 lstm_333/StatefulPartitionedCall lstm_333/StatefulPartitionedCall2D
 lstm_334/StatefulPartitionedCall lstm_334/StatefulPartitionedCall2D
 lstm_335/StatefulPartitionedCall lstm_335/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_559133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559133___redundant_placeholder04
0while_while_cond_559133___redundant_placeholder14
0while_while_cond_559133___redundant_placeholder24
0while_while_cond_559133___redundant_placeholder3
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
ö
³
)__inference_lstm_335_layer_call_fn_562163

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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559434o
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
¤J

D__inference_lstm_333_layer_call_and_return_conditional_losses_561503

inputs>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_561419*
condR
while_cond_561418*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_333_layer_call_and_return_conditional_losses_558918

inputs>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_558834*
condR
while_cond_558833*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĥT
Ô
)sequential_111_lstm_333_while_body_557351L
Hsequential_111_lstm_333_while_sequential_111_lstm_333_while_loop_counterR
Nsequential_111_lstm_333_while_sequential_111_lstm_333_while_maximum_iterations-
)sequential_111_lstm_333_while_placeholder/
+sequential_111_lstm_333_while_placeholder_1/
+sequential_111_lstm_333_while_placeholder_2/
+sequential_111_lstm_333_while_placeholder_3K
Gsequential_111_lstm_333_while_sequential_111_lstm_333_strided_slice_1_0
sequential_111_lstm_333_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_333_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_111_lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0:	`
Msequential_111_lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0:	d[
Lsequential_111_lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0:	*
&sequential_111_lstm_333_while_identity,
(sequential_111_lstm_333_while_identity_1,
(sequential_111_lstm_333_while_identity_2,
(sequential_111_lstm_333_while_identity_3,
(sequential_111_lstm_333_while_identity_4,
(sequential_111_lstm_333_while_identity_5I
Esequential_111_lstm_333_while_sequential_111_lstm_333_strided_slice_1
sequential_111_lstm_333_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_333_tensorarrayunstack_tensorlistfromtensor\
Isequential_111_lstm_333_while_lstm_cell_90_matmul_readvariableop_resource:	^
Ksequential_111_lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource:	dY
Jsequential_111_lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource:	˘Asequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp˘@sequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp˘Bsequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp 
Osequential_111/lstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_111/lstm_333/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_111_lstm_333_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_333_tensorarrayunstack_tensorlistfromtensor_0)sequential_111_lstm_333_while_placeholderXsequential_111/lstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOpKsequential_111_lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_111/lstm_333/while/lstm_cell_90/MatMulMatMulHsequential_111/lstm_333/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOpMsequential_111_lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_111/lstm_333/while/lstm_cell_90/MatMul_1MatMul+sequential_111_lstm_333_while_placeholder_2Jsequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_111/lstm_333/while/lstm_cell_90/addAddV2;sequential_111/lstm_333/while/lstm_cell_90/MatMul:product:0=sequential_111/lstm_333/while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOpLsequential_111_lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_111/lstm_333/while/lstm_cell_90/BiasAddBiasAdd2sequential_111/lstm_333/while/lstm_cell_90/add:z:0Isequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_111/lstm_333/while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_111/lstm_333/while/lstm_cell_90/splitSplitCsequential_111/lstm_333/while/lstm_cell_90/split/split_dim:output:0;sequential_111/lstm_333/while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_111/lstm_333/while/lstm_cell_90/SigmoidSigmoid9sequential_111/lstm_333/while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_111/lstm_333/while/lstm_cell_90/Sigmoid_1Sigmoid9sequential_111/lstm_333/while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_111/lstm_333/while/lstm_cell_90/mulMul8sequential_111/lstm_333/while/lstm_cell_90/Sigmoid_1:y:0+sequential_111_lstm_333_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_111/lstm_333/while/lstm_cell_90/ReluRelu9sequential_111/lstm_333/while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_111/lstm_333/while/lstm_cell_90/mul_1Mul6sequential_111/lstm_333/while/lstm_cell_90/Sigmoid:y:0=sequential_111/lstm_333/while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_111/lstm_333/while/lstm_cell_90/add_1AddV22sequential_111/lstm_333/while/lstm_cell_90/mul:z:04sequential_111/lstm_333/while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_111/lstm_333/while/lstm_cell_90/Sigmoid_2Sigmoid9sequential_111/lstm_333/while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_111/lstm_333/while/lstm_cell_90/Relu_1Relu4sequential_111/lstm_333/while/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_111/lstm_333/while/lstm_cell_90/mul_2Mul8sequential_111/lstm_333/while/lstm_cell_90/Sigmoid_2:y:0?sequential_111/lstm_333/while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_111/lstm_333/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_111_lstm_333_while_placeholder_1)sequential_111_lstm_333_while_placeholder4sequential_111/lstm_333/while/lstm_cell_90/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_111/lstm_333/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_111/lstm_333/while/addAddV2)sequential_111_lstm_333_while_placeholder,sequential_111/lstm_333/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_111/lstm_333/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_111/lstm_333/while/add_1AddV2Hsequential_111_lstm_333_while_sequential_111_lstm_333_while_loop_counter.sequential_111/lstm_333/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_111/lstm_333/while/IdentityIdentity'sequential_111/lstm_333/while/add_1:z:0#^sequential_111/lstm_333/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_111/lstm_333/while/Identity_1IdentityNsequential_111_lstm_333_while_sequential_111_lstm_333_while_maximum_iterations#^sequential_111/lstm_333/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_111/lstm_333/while/Identity_2Identity%sequential_111/lstm_333/while/add:z:0#^sequential_111/lstm_333/while/NoOp*
T0*
_output_shapes
: Î
(sequential_111/lstm_333/while/Identity_3IdentityRsequential_111/lstm_333/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_111/lstm_333/while/NoOp*
T0*
_output_shapes
: Á
(sequential_111/lstm_333/while/Identity_4Identity4sequential_111/lstm_333/while/lstm_cell_90/mul_2:z:0#^sequential_111/lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_111/lstm_333/while/Identity_5Identity4sequential_111/lstm_333/while/lstm_cell_90/add_1:z:0#^sequential_111/lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_111/lstm_333/while/NoOpNoOpB^sequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOpA^sequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOpC^sequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_111_lstm_333_while_identity/sequential_111/lstm_333/while/Identity:output:0"]
(sequential_111_lstm_333_while_identity_11sequential_111/lstm_333/while/Identity_1:output:0"]
(sequential_111_lstm_333_while_identity_21sequential_111/lstm_333/while/Identity_2:output:0"]
(sequential_111_lstm_333_while_identity_31sequential_111/lstm_333/while/Identity_3:output:0"]
(sequential_111_lstm_333_while_identity_41sequential_111/lstm_333/while/Identity_4:output:0"]
(sequential_111_lstm_333_while_identity_51sequential_111/lstm_333/while/Identity_5:output:0"
Jsequential_111_lstm_333_while_lstm_cell_90_biasadd_readvariableop_resourceLsequential_111_lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0"
Ksequential_111_lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resourceMsequential_111_lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0"
Isequential_111_lstm_333_while_lstm_cell_90_matmul_readvariableop_resourceKsequential_111_lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0"
Esequential_111_lstm_333_while_sequential_111_lstm_333_strided_slice_1Gsequential_111_lstm_333_while_sequential_111_lstm_333_strided_slice_1_0"
sequential_111_lstm_333_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_333_tensorarrayunstack_tensorlistfromtensorsequential_111_lstm_333_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_333_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOpAsequential_111/lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2
@sequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp@sequential_111/lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp2
Bsequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOpBsequential_111/lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_333_layer_call_fn_560931

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
D__inference_lstm_333_layer_call_and_return_conditional_losses_559764s
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
²

÷
lstm_333_while_cond_560518.
*lstm_333_while_lstm_333_while_loop_counter4
0lstm_333_while_lstm_333_while_maximum_iterations
lstm_333_while_placeholder 
lstm_333_while_placeholder_1 
lstm_333_while_placeholder_2 
lstm_333_while_placeholder_30
,lstm_333_while_less_lstm_333_strided_slice_1F
Blstm_333_while_lstm_333_while_cond_560518___redundant_placeholder0F
Blstm_333_while_lstm_333_while_cond_560518___redundant_placeholder1F
Blstm_333_while_lstm_333_while_cond_560518___redundant_placeholder2F
Blstm_333_while_lstm_333_while_cond_560518___redundant_placeholder3
lstm_333_while_identity

lstm_333/while/LessLesslstm_333_while_placeholder,lstm_333_while_less_lstm_333_strided_slice_1*
T0*
_output_shapes
: ]
lstm_333/while/IdentityIdentitylstm_333/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_333_while_identity lstm_333/while/Identity:output:0*(
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_557869

inputs&
lstm_cell_90_557787:	&
lstm_cell_90_557789:	d"
lstm_cell_90_557791:	
identity˘$lstm_cell_90/StatefulPartitionedCall˘while;
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
$lstm_cell_90/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_90_557787lstm_cell_90_557789lstm_cell_90_557791*
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557786n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_90_557787lstm_cell_90_557789lstm_cell_90_557791*
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
while_body_557800*
condR
while_cond_557799*K
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
NoOpNoOp%^lstm_cell_90/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_90/StatefulPartitionedCall$lstm_cell_90/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_559514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559514___redundant_placeholder04
0while_while_cond_559514___redundant_placeholder14
0while_while_cond_559514___redundant_placeholder24
0while_while_cond_559514___redundant_placeholder3
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558632

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
while_cond_558833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558833___redundant_placeholder04
0while_while_cond_558833___redundant_placeholder14
0while_while_cond_558833___redundant_placeholder24
0while_while_cond_558833___redundant_placeholder3
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

ĥ
)__inference_lstm_334_layer_call_fn_561547

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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559599s
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557786

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
while_body_562035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ô

£
/__inference_sequential_111_layer_call_fn_559268
lstm_333_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_111_layer_call_and_return_conditional_losses_559243o
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
_user_specified_namelstm_333_input
µ
?
while_cond_560989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_560989___redundant_placeholder04
0while_while_cond_560989___redundant_placeholder14
0while_while_cond_560989___redundant_placeholder24
0while_while_cond_560989___redundant_placeholder3
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
while_cond_557990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557990___redundant_placeholder04
0while_while_cond_557990___redundant_placeholder14
0while_while_cond_557990___redundant_placeholder24
0while_while_cond_557990___redundant_placeholder3
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
-__inference_lstm_cell_90_layer_call_fn_562788

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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557932o
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
Ë

H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558486

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
Ö
£
)sequential_111_lstm_335_while_cond_557628L
Hsequential_111_lstm_335_while_sequential_111_lstm_335_while_loop_counterR
Nsequential_111_lstm_335_while_sequential_111_lstm_335_while_maximum_iterations-
)sequential_111_lstm_335_while_placeholder/
+sequential_111_lstm_335_while_placeholder_1/
+sequential_111_lstm_335_while_placeholder_2/
+sequential_111_lstm_335_while_placeholder_3N
Jsequential_111_lstm_335_while_less_sequential_111_lstm_335_strided_slice_1d
`sequential_111_lstm_335_while_sequential_111_lstm_335_while_cond_557628___redundant_placeholder0d
`sequential_111_lstm_335_while_sequential_111_lstm_335_while_cond_557628___redundant_placeholder1d
`sequential_111_lstm_335_while_sequential_111_lstm_335_while_cond_557628___redundant_placeholder2d
`sequential_111_lstm_335_while_sequential_111_lstm_335_while_cond_557628___redundant_placeholder3*
&sequential_111_lstm_335_while_identity
Â
"sequential_111/lstm_335/while/LessLess)sequential_111_lstm_335_while_placeholderJsequential_111_lstm_335_while_less_sequential_111_lstm_335_strided_slice_1*
T0*
_output_shapes
: {
&sequential_111/lstm_335/while/IdentityIdentity&sequential_111/lstm_335/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_111_lstm_335_while_identity/sequential_111/lstm_335/while/Identity:output:0*(
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

lstm_335_while_body_560797.
*lstm_335_while_lstm_335_while_loop_counter4
0lstm_335_while_lstm_335_while_maximum_iterations
lstm_335_while_placeholder 
lstm_335_while_placeholder_1 
lstm_335_while_placeholder_2 
lstm_335_while_placeholder_3-
)lstm_335_while_lstm_335_strided_slice_1_0i
elstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0:2(P
>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(K
=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0:(
lstm_335_while_identity
lstm_335_while_identity_1
lstm_335_while_identity_2
lstm_335_while_identity_3
lstm_335_while_identity_4
lstm_335_while_identity_5+
'lstm_335_while_lstm_335_strided_slice_1g
clstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensorL
:lstm_335_while_lstm_cell_92_matmul_readvariableop_resource:2(N
<lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource:
(I
;lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource:(˘2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp˘1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp˘3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp
@lstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_335/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0lstm_335_while_placeholderIlstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_335/while/lstm_cell_92/MatMulMatMul9lstm_335/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_335/while/lstm_cell_92/MatMul_1MatMullstm_335_while_placeholder_2;lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_335/while/lstm_cell_92/addAddV2,lstm_335/while/lstm_cell_92/MatMul:product:0.lstm_335/while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_335/while/lstm_cell_92/BiasAddBiasAdd#lstm_335/while/lstm_cell_92/add:z:0:lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_335/while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_335/while/lstm_cell_92/splitSplit4lstm_335/while/lstm_cell_92/split/split_dim:output:0,lstm_335/while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_335/while/lstm_cell_92/SigmoidSigmoid*lstm_335/while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_335/while/lstm_cell_92/Sigmoid_1Sigmoid*lstm_335/while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_335/while/lstm_cell_92/mulMul)lstm_335/while/lstm_cell_92/Sigmoid_1:y:0lstm_335_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_335/while/lstm_cell_92/ReluRelu*lstm_335/while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_335/while/lstm_cell_92/mul_1Mul'lstm_335/while/lstm_cell_92/Sigmoid:y:0.lstm_335/while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_335/while/lstm_cell_92/add_1AddV2#lstm_335/while/lstm_cell_92/mul:z:0%lstm_335/while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_335/while/lstm_cell_92/Sigmoid_2Sigmoid*lstm_335/while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_335/while/lstm_cell_92/Relu_1Relu%lstm_335/while/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_335/while/lstm_cell_92/mul_2Mul)lstm_335/while/lstm_cell_92/Sigmoid_2:y:00lstm_335/while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_335/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_335_while_placeholder_1lstm_335_while_placeholder%lstm_335/while/lstm_cell_92/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_335/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_335/while/addAddV2lstm_335_while_placeholderlstm_335/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_335/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_335/while/add_1AddV2*lstm_335_while_lstm_335_while_loop_counterlstm_335/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_335/while/IdentityIdentitylstm_335/while/add_1:z:0^lstm_335/while/NoOp*
T0*
_output_shapes
: 
lstm_335/while/Identity_1Identity0lstm_335_while_lstm_335_while_maximum_iterations^lstm_335/while/NoOp*
T0*
_output_shapes
: t
lstm_335/while/Identity_2Identitylstm_335/while/add:z:0^lstm_335/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_335/while/Identity_3IdentityClstm_335/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_335/while/NoOp*
T0*
_output_shapes
: 
lstm_335/while/Identity_4Identity%lstm_335/while/lstm_cell_92/mul_2:z:0^lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/while/Identity_5Identity%lstm_335/while/lstm_cell_92/add_1:z:0^lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_335/while/NoOpNoOp3^lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2^lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp4^lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_335_while_identity lstm_335/while/Identity:output:0"?
lstm_335_while_identity_1"lstm_335/while/Identity_1:output:0"?
lstm_335_while_identity_2"lstm_335/while/Identity_2:output:0"?
lstm_335_while_identity_3"lstm_335/while/Identity_3:output:0"?
lstm_335_while_identity_4"lstm_335/while/Identity_4:output:0"?
lstm_335_while_identity_5"lstm_335/while/Identity_5:output:0"T
'lstm_335_while_lstm_335_strided_slice_1)lstm_335_while_lstm_335_strided_slice_1_0"|
;lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0"~
<lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0"z
:lstm_335_while_lstm_cell_92_matmul_readvariableop_resource<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0"Ì
clstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensorelstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2f
1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp2j
3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562592

inputs=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_562508*
condR
while_cond_562507*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
˙7
Ê
while_body_559134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_562222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_562364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562364___redundant_placeholder04
0while_while_cond_562364___redundant_placeholder14
0while_while_cond_562364___redundant_placeholder24
0while_while_cond_562364___redundant_placeholder3
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
while_body_559515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562820

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
ÛB
?

lstm_333_while_body_560092.
*lstm_333_while_lstm_333_while_loop_counter4
0lstm_333_while_lstm_333_while_maximum_iterations
lstm_333_while_placeholder 
lstm_333_while_placeholder_1 
lstm_333_while_placeholder_2 
lstm_333_while_placeholder_3-
)lstm_333_while_lstm_333_strided_slice_1_0i
elstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0:	Q
>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dL
=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0:	
lstm_333_while_identity
lstm_333_while_identity_1
lstm_333_while_identity_2
lstm_333_while_identity_3
lstm_333_while_identity_4
lstm_333_while_identity_5+
'lstm_333_while_lstm_333_strided_slice_1g
clstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensorM
:lstm_333_while_lstm_cell_90_matmul_readvariableop_resource:	O
<lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource:	dJ
;lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource:	˘2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp˘1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp˘3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp
@lstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_333/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0lstm_333_while_placeholderIlstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_333/while/lstm_cell_90/MatMulMatMul9lstm_333/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_333/while/lstm_cell_90/MatMul_1MatMullstm_333_while_placeholder_2;lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_333/while/lstm_cell_90/addAddV2,lstm_333/while/lstm_cell_90/MatMul:product:0.lstm_333/while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_333/while/lstm_cell_90/BiasAddBiasAdd#lstm_333/while/lstm_cell_90/add:z:0:lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_333/while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_333/while/lstm_cell_90/splitSplit4lstm_333/while/lstm_cell_90/split/split_dim:output:0,lstm_333/while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_333/while/lstm_cell_90/SigmoidSigmoid*lstm_333/while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_333/while/lstm_cell_90/Sigmoid_1Sigmoid*lstm_333/while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_333/while/lstm_cell_90/mulMul)lstm_333/while/lstm_cell_90/Sigmoid_1:y:0lstm_333_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_333/while/lstm_cell_90/ReluRelu*lstm_333/while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_333/while/lstm_cell_90/mul_1Mul'lstm_333/while/lstm_cell_90/Sigmoid:y:0.lstm_333/while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_333/while/lstm_cell_90/add_1AddV2#lstm_333/while/lstm_cell_90/mul:z:0%lstm_333/while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_333/while/lstm_cell_90/Sigmoid_2Sigmoid*lstm_333/while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_333/while/lstm_cell_90/Relu_1Relu%lstm_333/while/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_333/while/lstm_cell_90/mul_2Mul)lstm_333/while/lstm_cell_90/Sigmoid_2:y:00lstm_333/while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_333/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_333_while_placeholder_1lstm_333_while_placeholder%lstm_333/while/lstm_cell_90/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_333/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_333/while/addAddV2lstm_333_while_placeholderlstm_333/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_333/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_333/while/add_1AddV2*lstm_333_while_lstm_333_while_loop_counterlstm_333/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_333/while/IdentityIdentitylstm_333/while/add_1:z:0^lstm_333/while/NoOp*
T0*
_output_shapes
: 
lstm_333/while/Identity_1Identity0lstm_333_while_lstm_333_while_maximum_iterations^lstm_333/while/NoOp*
T0*
_output_shapes
: t
lstm_333/while/Identity_2Identitylstm_333/while/add:z:0^lstm_333/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_333/while/Identity_3IdentityClstm_333/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_333/while/NoOp*
T0*
_output_shapes
: 
lstm_333/while/Identity_4Identity%lstm_333/while/lstm_cell_90/mul_2:z:0^lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/while/Identity_5Identity%lstm_333/while/lstm_cell_90/add_1:z:0^lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_333/while/NoOpNoOp3^lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2^lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp4^lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_333_while_identity lstm_333/while/Identity:output:0"?
lstm_333_while_identity_1"lstm_333/while/Identity_1:output:0"?
lstm_333_while_identity_2"lstm_333/while/Identity_2:output:0"?
lstm_333_while_identity_3"lstm_333/while/Identity_3:output:0"?
lstm_333_while_identity_4"lstm_333/while/Identity_4:output:0"?
lstm_333_while_identity_5"lstm_333/while/Identity_5:output:0"T
'lstm_333_while_lstm_333_strided_slice_1)lstm_333_while_lstm_333_strided_slice_1_0"|
;lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0"~
<lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0"z
:lstm_333_while_lstm_cell_90_matmul_readvariableop_resource<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0"Ì
clstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensorelstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2f
1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp2j
3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_333_layer_call_fn_560898
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_557869|
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

lstm_335_while_body_560370.
*lstm_335_while_lstm_335_while_loop_counter4
0lstm_335_while_lstm_335_while_maximum_iterations
lstm_335_while_placeholder 
lstm_335_while_placeholder_1 
lstm_335_while_placeholder_2 
lstm_335_while_placeholder_3-
)lstm_335_while_lstm_335_strided_slice_1_0i
elstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0:2(P
>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(K
=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0:(
lstm_335_while_identity
lstm_335_while_identity_1
lstm_335_while_identity_2
lstm_335_while_identity_3
lstm_335_while_identity_4
lstm_335_while_identity_5+
'lstm_335_while_lstm_335_strided_slice_1g
clstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensorL
:lstm_335_while_lstm_cell_92_matmul_readvariableop_resource:2(N
<lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource:
(I
;lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource:(˘2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp˘1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp˘3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp
@lstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_335/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0lstm_335_while_placeholderIlstm_335/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_335/while/lstm_cell_92/MatMulMatMul9lstm_335/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_335/while/lstm_cell_92/MatMul_1MatMullstm_335_while_placeholder_2;lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_335/while/lstm_cell_92/addAddV2,lstm_335/while/lstm_cell_92/MatMul:product:0.lstm_335/while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_335/while/lstm_cell_92/BiasAddBiasAdd#lstm_335/while/lstm_cell_92/add:z:0:lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_335/while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_335/while/lstm_cell_92/splitSplit4lstm_335/while/lstm_cell_92/split/split_dim:output:0,lstm_335/while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_335/while/lstm_cell_92/SigmoidSigmoid*lstm_335/while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_335/while/lstm_cell_92/Sigmoid_1Sigmoid*lstm_335/while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_335/while/lstm_cell_92/mulMul)lstm_335/while/lstm_cell_92/Sigmoid_1:y:0lstm_335_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_335/while/lstm_cell_92/ReluRelu*lstm_335/while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_335/while/lstm_cell_92/mul_1Mul'lstm_335/while/lstm_cell_92/Sigmoid:y:0.lstm_335/while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_335/while/lstm_cell_92/add_1AddV2#lstm_335/while/lstm_cell_92/mul:z:0%lstm_335/while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_335/while/lstm_cell_92/Sigmoid_2Sigmoid*lstm_335/while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_335/while/lstm_cell_92/Relu_1Relu%lstm_335/while/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_335/while/lstm_cell_92/mul_2Mul)lstm_335/while/lstm_cell_92/Sigmoid_2:y:00lstm_335/while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_335/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_335_while_placeholder_1lstm_335_while_placeholder%lstm_335/while/lstm_cell_92/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_335/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_335/while/addAddV2lstm_335_while_placeholderlstm_335/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_335/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_335/while/add_1AddV2*lstm_335_while_lstm_335_while_loop_counterlstm_335/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_335/while/IdentityIdentitylstm_335/while/add_1:z:0^lstm_335/while/NoOp*
T0*
_output_shapes
: 
lstm_335/while/Identity_1Identity0lstm_335_while_lstm_335_while_maximum_iterations^lstm_335/while/NoOp*
T0*
_output_shapes
: t
lstm_335/while/Identity_2Identitylstm_335/while/add:z:0^lstm_335/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_335/while/Identity_3IdentityClstm_335/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_335/while/NoOp*
T0*
_output_shapes
: 
lstm_335/while/Identity_4Identity%lstm_335/while/lstm_cell_92/mul_2:z:0^lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/while/Identity_5Identity%lstm_335/while/lstm_cell_92/add_1:z:0^lstm_335/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_335/while/NoOpNoOp3^lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2^lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp4^lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_335_while_identity lstm_335/while/Identity:output:0"?
lstm_335_while_identity_1"lstm_335/while/Identity_1:output:0"?
lstm_335_while_identity_2"lstm_335/while/Identity_2:output:0"?
lstm_335_while_identity_3"lstm_335/while/Identity_3:output:0"?
lstm_335_while_identity_4"lstm_335/while/Identity_4:output:0"?
lstm_335_while_identity_5"lstm_335/while/Identity_5:output:0"T
'lstm_335_while_lstm_335_strided_slice_1)lstm_335_while_lstm_335_strided_slice_1_0"|
;lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource=lstm_335_while_lstm_cell_92_biasadd_readvariableop_resource_0"~
<lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource>lstm_335_while_lstm_cell_92_matmul_1_readvariableop_resource_0"z
:lstm_335_while_lstm_cell_92_matmul_readvariableop_resource<lstm_335_while_lstm_cell_92_matmul_readvariableop_resource_0"Ì
clstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensorelstm_335_while_tensorarrayv2read_tensorlistgetitem_lstm_335_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2lstm_335/while/lstm_cell_92/BiasAdd/ReadVariableOp2f
1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp1lstm_335/while/lstm_cell_92/MatMul/ReadVariableOp2j
3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp3lstm_335/while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_333_layer_call_fn_560920

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
D__inference_lstm_333_layer_call_and_return_conditional_losses_558918s
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
while_body_561276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_558984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
È	
ö
E__inference_dense_111_layer_call_and_return_conditional_losses_562754

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
while_cond_562221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562221___redundant_placeholder04
0while_while_cond_562221___redundant_placeholder14
0while_while_cond_562221___redundant_placeholder24
0while_while_cond_562221___redundant_placeholder3
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
while_cond_559349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559349___redundant_placeholder04
0while_while_cond_559349___redundant_placeholder14
0while_while_cond_559349___redundant_placeholder24
0while_while_cond_559349___redundant_placeholder3
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
while_cond_561748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561748___redundant_placeholder04
0while_while_cond_561748___redundant_placeholder14
0while_while_cond_561748___redundant_placeholder24
0while_while_cond_561748___redundant_placeholder3
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
)__inference_lstm_334_layer_call_fn_561536

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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559068s
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
while_cond_562650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562650___redundant_placeholder04
0while_while_cond_562650___redundant_placeholder14
0while_while_cond_562650___redundant_placeholder24
0while_while_cond_562650___redundant_placeholder3
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
-__inference_lstm_cell_92_layer_call_fn_562984

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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558632o
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
while_body_562508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_560990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_557800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_90_557824_0:	.
while_lstm_cell_90_557826_0:	d*
while_lstm_cell_90_557828_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_90_557824:	,
while_lstm_cell_90_557826:	d(
while_lstm_cell_90_557828:	˘*while/lstm_cell_90/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_90/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_90_557824_0while_lstm_cell_90_557826_0while_lstm_cell_90_557828_0*
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557786Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_90/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_90/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_90/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_90_557824while_lstm_cell_90_557824_0"8
while_lstm_cell_90_557826while_lstm_cell_90_557826_0"8
while_lstm_cell_90_557828while_lstm_cell_90_557828_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_90/StatefulPartitionedCall*while/lstm_cell_90/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
âJ

D__inference_lstm_333_layer_call_and_return_conditional_losses_561074
inputs_0>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_560990*
condR
while_cond_560989*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_334_layer_call_and_return_conditional_losses_562119

inputs>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_562035*
condR
while_cond_562034*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_91_layer_call_fn_562886

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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558282o
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
Ö
£
)sequential_111_lstm_333_while_cond_557350L
Hsequential_111_lstm_333_while_sequential_111_lstm_333_while_loop_counterR
Nsequential_111_lstm_333_while_sequential_111_lstm_333_while_maximum_iterations-
)sequential_111_lstm_333_while_placeholder/
+sequential_111_lstm_333_while_placeholder_1/
+sequential_111_lstm_333_while_placeholder_2/
+sequential_111_lstm_333_while_placeholder_3N
Jsequential_111_lstm_333_while_less_sequential_111_lstm_333_strided_slice_1d
`sequential_111_lstm_333_while_sequential_111_lstm_333_while_cond_557350___redundant_placeholder0d
`sequential_111_lstm_333_while_sequential_111_lstm_333_while_cond_557350___redundant_placeholder1d
`sequential_111_lstm_333_while_sequential_111_lstm_333_while_cond_557350___redundant_placeholder2d
`sequential_111_lstm_333_while_sequential_111_lstm_333_while_cond_557350___redundant_placeholder3*
&sequential_111_lstm_333_while_identity
Â
"sequential_111/lstm_333/while/LessLess)sequential_111_lstm_333_while_placeholderJsequential_111_lstm_333_while_less_sequential_111_lstm_333_strided_slice_1*
T0*
_output_shapes
: {
&sequential_111/lstm_333/while/IdentityIdentity&sequential_111/lstm_333/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_111_lstm_333_while_identity/sequential_111/lstm_333/while/Identity:output:0*(
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
while_body_559350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ï
÷
J__inference_sequential_111_layer_call_and_return_conditional_losses_559914
lstm_333_input"
lstm_333_559887:	"
lstm_333_559889:	d
lstm_333_559891:	"
lstm_334_559894:	dÈ"
lstm_334_559896:	2È
lstm_334_559898:	È!
lstm_335_559901:2(!
lstm_335_559903:
(
lstm_335_559905:("
dense_111_559908:

dense_111_559910:
identity˘!dense_111/StatefulPartitionedCall˘ lstm_333/StatefulPartitionedCall˘ lstm_334/StatefulPartitionedCall˘ lstm_335/StatefulPartitionedCall
 lstm_333/StatefulPartitionedCallStatefulPartitionedCalllstm_333_inputlstm_333_559887lstm_333_559889lstm_333_559891*
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_558918Ş
 lstm_334/StatefulPartitionedCallStatefulPartitionedCall)lstm_333/StatefulPartitionedCall:output:0lstm_334_559894lstm_334_559896lstm_334_559898*
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_559068Ĥ
 lstm_335/StatefulPartitionedCallStatefulPartitionedCall)lstm_334/StatefulPartitionedCall:output:0lstm_335_559901lstm_335_559903lstm_335_559905*
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559218
!dense_111/StatefulPartitionedCallStatefulPartitionedCall)lstm_335/StatefulPartitionedCall:output:0dense_111_559908dense_111_559910*
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
E__inference_dense_111_layer_call_and_return_conditional_losses_559236y
IdentityIdentity*dense_111/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_111/StatefulPartitionedCall!^lstm_333/StatefulPartitionedCall!^lstm_334/StatefulPartitionedCall!^lstm_335/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2D
 lstm_333/StatefulPartitionedCall lstm_333/StatefulPartitionedCall2D
 lstm_334/StatefulPartitionedCall lstm_334/StatefulPartitionedCall2D
 lstm_335/StatefulPartitionedCall lstm_335/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_333_input
ĉ"
?
while_body_558150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_91_558174_0:	dÈ.
while_lstm_cell_91_558176_0:	2È*
while_lstm_cell_91_558178_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_91_558174:	dÈ,
while_lstm_cell_91_558176:	2È(
while_lstm_cell_91_558178:	È˘*while/lstm_cell_91/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_91_558174_0while_lstm_cell_91_558176_0while_lstm_cell_91_558178_0*
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558136Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_91/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_91/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_91/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_91/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_91_558174while_lstm_cell_91_558174_0"8
while_lstm_cell_91_558176while_lstm_cell_91_558176_0"8
while_lstm_cell_91_558178while_lstm_cell_91_558178_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_91/StatefulPartitionedCall*while/lstm_cell_91/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_335_while_cond_560796.
*lstm_335_while_lstm_335_while_loop_counter4
0lstm_335_while_lstm_335_while_maximum_iterations
lstm_335_while_placeholder 
lstm_335_while_placeholder_1 
lstm_335_while_placeholder_2 
lstm_335_while_placeholder_30
,lstm_335_while_less_lstm_335_strided_slice_1F
Blstm_335_while_lstm_335_while_cond_560796___redundant_placeholder0F
Blstm_335_while_lstm_335_while_cond_560796___redundant_placeholder1F
Blstm_335_while_lstm_335_while_cond_560796___redundant_placeholder2F
Blstm_335_while_lstm_335_while_cond_560796___redundant_placeholder3
lstm_335_while_identity

lstm_335/while/LessLesslstm_335_while_placeholder,lstm_335_while_less_lstm_335_strided_slice_1*
T0*
_output_shapes
: ]
lstm_335/while/IdentityIdentitylstm_335/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_335_while_identity lstm_335/while/Identity:output:0*(
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
while_body_558341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_91_558365_0:	dÈ.
while_lstm_cell_91_558367_0:	2È*
while_lstm_cell_91_558369_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_91_558365:	dÈ,
while_lstm_cell_91_558367:	2È(
while_lstm_cell_91_558369:	È˘*while/lstm_cell_91/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_91_558365_0while_lstm_cell_91_558367_0while_lstm_cell_91_558369_0*
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558282Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_91/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_91/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_91/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_91/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_91_558365while_lstm_cell_91_558365_0"8
while_lstm_cell_91_558367while_lstm_cell_91_558367_0"8
while_lstm_cell_91_558369while_lstm_cell_91_558369_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_91/StatefulPartitionedCall*while/lstm_cell_91/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562950

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
Ĉ

J__inference_sequential_111_layer_call_and_return_conditional_losses_560460

inputsG
4lstm_333_lstm_cell_90_matmul_readvariableop_resource:	I
6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource:	dD
5lstm_333_lstm_cell_90_biasadd_readvariableop_resource:	G
4lstm_334_lstm_cell_91_matmul_readvariableop_resource:	dÈI
6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈD
5lstm_334_lstm_cell_91_biasadd_readvariableop_resource:	ÈF
4lstm_335_lstm_cell_92_matmul_readvariableop_resource:2(H
6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource:
(C
5lstm_335_lstm_cell_92_biasadd_readvariableop_resource:(:
(dense_111_matmul_readvariableop_resource:
7
)dense_111_biasadd_readvariableop_resource:
identity˘ dense_111/BiasAdd/ReadVariableOp˘dense_111/MatMul/ReadVariableOp˘,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp˘+lstm_333/lstm_cell_90/MatMul/ReadVariableOp˘-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp˘lstm_333/while˘,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp˘+lstm_334/lstm_cell_91/MatMul/ReadVariableOp˘-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp˘lstm_334/while˘,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp˘+lstm_335/lstm_cell_92/MatMul/ReadVariableOp˘-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp˘lstm_335/whileD
lstm_333/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_333/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_333/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_333/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_333/strided_sliceStridedSlicelstm_333/Shape:output:0%lstm_333/strided_slice/stack:output:0'lstm_333/strided_slice/stack_1:output:0'lstm_333/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_333/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_333/zeros/packedPacklstm_333/strided_slice:output:0 lstm_333/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_333/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_333/zerosFilllstm_333/zeros/packed:output:0lstm_333/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_333/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_333/zeros_1/packedPacklstm_333/strided_slice:output:0"lstm_333/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_333/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_333/zeros_1Fill lstm_333/zeros_1/packed:output:0lstm_333/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_333/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_333/transpose	Transposeinputs lstm_333/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_333/Shape_1Shapelstm_333/transpose:y:0*
T0*
_output_shapes
:h
lstm_333/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_333/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_333/strided_slice_1StridedSlicelstm_333/Shape_1:output:0'lstm_333/strided_slice_1/stack:output:0)lstm_333/strided_slice_1/stack_1:output:0)lstm_333/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_333/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_333/TensorArrayV2TensorListReserve-lstm_333/TensorArrayV2/element_shape:output:0!lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_333/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_333/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_333/transpose:y:0Glstm_333/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_333/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_333/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_333/strided_slice_2StridedSlicelstm_333/transpose:y:0'lstm_333/strided_slice_2/stack:output:0)lstm_333/strided_slice_2/stack_1:output:0)lstm_333/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_333/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp4lstm_333_lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_333/lstm_cell_90/MatMulMatMul!lstm_333/strided_slice_2:output:03lstm_333/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_333/lstm_cell_90/MatMul_1MatMullstm_333/zeros:output:05lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_333/lstm_cell_90/addAddV2&lstm_333/lstm_cell_90/MatMul:product:0(lstm_333/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp5lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_333/lstm_cell_90/BiasAddBiasAddlstm_333/lstm_cell_90/add:z:04lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_333/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_333/lstm_cell_90/splitSplit.lstm_333/lstm_cell_90/split/split_dim:output:0&lstm_333/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_333/lstm_cell_90/SigmoidSigmoid$lstm_333/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/Sigmoid_1Sigmoid$lstm_333/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/mulMul#lstm_333/lstm_cell_90/Sigmoid_1:y:0lstm_333/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_333/lstm_cell_90/ReluRelu$lstm_333/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_333/lstm_cell_90/mul_1Mul!lstm_333/lstm_cell_90/Sigmoid:y:0(lstm_333/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/add_1AddV2lstm_333/lstm_cell_90/mul:z:0lstm_333/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/lstm_cell_90/Sigmoid_2Sigmoid$lstm_333/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_333/lstm_cell_90/Relu_1Relulstm_333/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_333/lstm_cell_90/mul_2Mul#lstm_333/lstm_cell_90/Sigmoid_2:y:0*lstm_333/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_333/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_333/TensorArrayV2_1TensorListReserve/lstm_333/TensorArrayV2_1/element_shape:output:0!lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_333/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_333/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_333/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_333/whileWhile$lstm_333/while/loop_counter:output:0*lstm_333/while/maximum_iterations:output:0lstm_333/time:output:0!lstm_333/TensorArrayV2_1:handle:0lstm_333/zeros:output:0lstm_333/zeros_1:output:0!lstm_333/strided_slice_1:output:0@lstm_333/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_333_lstm_cell_90_matmul_readvariableop_resource6lstm_333_lstm_cell_90_matmul_1_readvariableop_resource5lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
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
lstm_333_while_body_560092*&
condR
lstm_333_while_cond_560091*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_333/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_333/TensorArrayV2Stack/TensorListStackTensorListStacklstm_333/while:output:3Blstm_333/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_333/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_333/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_333/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_333/strided_slice_3StridedSlice4lstm_333/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_333/strided_slice_3/stack:output:0)lstm_333/strided_slice_3/stack_1:output:0)lstm_333/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_333/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_333/transpose_1	Transpose4lstm_333/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_333/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_333/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_334/ShapeShapelstm_333/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_334/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_334/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_334/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_334/strided_sliceStridedSlicelstm_334/Shape:output:0%lstm_334/strided_slice/stack:output:0'lstm_334/strided_slice/stack_1:output:0'lstm_334/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_334/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_334/zeros/packedPacklstm_334/strided_slice:output:0 lstm_334/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_334/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_334/zerosFilllstm_334/zeros/packed:output:0lstm_334/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_334/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_334/zeros_1/packedPacklstm_334/strided_slice:output:0"lstm_334/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_334/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_334/zeros_1Fill lstm_334/zeros_1/packed:output:0lstm_334/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_334/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_334/transpose	Transposelstm_333/transpose_1:y:0 lstm_334/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_334/Shape_1Shapelstm_334/transpose:y:0*
T0*
_output_shapes
:h
lstm_334/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_334/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_334/strided_slice_1StridedSlicelstm_334/Shape_1:output:0'lstm_334/strided_slice_1/stack:output:0)lstm_334/strided_slice_1/stack_1:output:0)lstm_334/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_334/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_334/TensorArrayV2TensorListReserve-lstm_334/TensorArrayV2/element_shape:output:0!lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_334/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_334/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_334/transpose:y:0Glstm_334/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_334/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_334/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_334/strided_slice_2StridedSlicelstm_334/transpose:y:0'lstm_334/strided_slice_2/stack:output:0)lstm_334/strided_slice_2/stack_1:output:0)lstm_334/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_334/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp4lstm_334_lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_334/lstm_cell_91/MatMulMatMul!lstm_334/strided_slice_2:output:03lstm_334/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_334/lstm_cell_91/MatMul_1MatMullstm_334/zeros:output:05lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_334/lstm_cell_91/addAddV2&lstm_334/lstm_cell_91/MatMul:product:0(lstm_334/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp5lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_334/lstm_cell_91/BiasAddBiasAddlstm_334/lstm_cell_91/add:z:04lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_334/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_334/lstm_cell_91/splitSplit.lstm_334/lstm_cell_91/split/split_dim:output:0&lstm_334/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_334/lstm_cell_91/SigmoidSigmoid$lstm_334/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/Sigmoid_1Sigmoid$lstm_334/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/mulMul#lstm_334/lstm_cell_91/Sigmoid_1:y:0lstm_334/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_334/lstm_cell_91/ReluRelu$lstm_334/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_334/lstm_cell_91/mul_1Mul!lstm_334/lstm_cell_91/Sigmoid:y:0(lstm_334/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/add_1AddV2lstm_334/lstm_cell_91/mul:z:0lstm_334/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/lstm_cell_91/Sigmoid_2Sigmoid$lstm_334/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_334/lstm_cell_91/Relu_1Relulstm_334/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_334/lstm_cell_91/mul_2Mul#lstm_334/lstm_cell_91/Sigmoid_2:y:0*lstm_334/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_334/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_334/TensorArrayV2_1TensorListReserve/lstm_334/TensorArrayV2_1/element_shape:output:0!lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_334/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_334/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_334/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_334/whileWhile$lstm_334/while/loop_counter:output:0*lstm_334/while/maximum_iterations:output:0lstm_334/time:output:0!lstm_334/TensorArrayV2_1:handle:0lstm_334/zeros:output:0lstm_334/zeros_1:output:0!lstm_334/strided_slice_1:output:0@lstm_334/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_334_lstm_cell_91_matmul_readvariableop_resource6lstm_334_lstm_cell_91_matmul_1_readvariableop_resource5lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
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
lstm_334_while_body_560231*&
condR
lstm_334_while_cond_560230*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_334/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_334/TensorArrayV2Stack/TensorListStackTensorListStacklstm_334/while:output:3Blstm_334/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_334/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_334/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_334/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_334/strided_slice_3StridedSlice4lstm_334/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_334/strided_slice_3/stack:output:0)lstm_334/strided_slice_3/stack_1:output:0)lstm_334/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_334/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_334/transpose_1	Transpose4lstm_334/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_334/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_334/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_335/ShapeShapelstm_334/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_335/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_335/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_335/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_335/strided_sliceStridedSlicelstm_335/Shape:output:0%lstm_335/strided_slice/stack:output:0'lstm_335/strided_slice/stack_1:output:0'lstm_335/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_335/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_335/zeros/packedPacklstm_335/strided_slice:output:0 lstm_335/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_335/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_335/zerosFilllstm_335/zeros/packed:output:0lstm_335/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_335/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_335/zeros_1/packedPacklstm_335/strided_slice:output:0"lstm_335/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_335/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_335/zeros_1Fill lstm_335/zeros_1/packed:output:0lstm_335/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_335/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_335/transpose	Transposelstm_334/transpose_1:y:0 lstm_335/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_335/Shape_1Shapelstm_335/transpose:y:0*
T0*
_output_shapes
:h
lstm_335/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_335/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_335/strided_slice_1StridedSlicelstm_335/Shape_1:output:0'lstm_335/strided_slice_1/stack:output:0)lstm_335/strided_slice_1/stack_1:output:0)lstm_335/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_335/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_335/TensorArrayV2TensorListReserve-lstm_335/TensorArrayV2/element_shape:output:0!lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_335/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_335/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_335/transpose:y:0Glstm_335/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_335/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_335/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_335/strided_slice_2StridedSlicelstm_335/transpose:y:0'lstm_335/strided_slice_2/stack:output:0)lstm_335/strided_slice_2/stack_1:output:0)lstm_335/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_335/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp4lstm_335_lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_335/lstm_cell_92/MatMulMatMul!lstm_335/strided_slice_2:output:03lstm_335/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_335/lstm_cell_92/MatMul_1MatMullstm_335/zeros:output:05lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_335/lstm_cell_92/addAddV2&lstm_335/lstm_cell_92/MatMul:product:0(lstm_335/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp5lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_335/lstm_cell_92/BiasAddBiasAddlstm_335/lstm_cell_92/add:z:04lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_335/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_335/lstm_cell_92/splitSplit.lstm_335/lstm_cell_92/split/split_dim:output:0&lstm_335/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_335/lstm_cell_92/SigmoidSigmoid$lstm_335/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/Sigmoid_1Sigmoid$lstm_335/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/mulMul#lstm_335/lstm_cell_92/Sigmoid_1:y:0lstm_335/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_335/lstm_cell_92/ReluRelu$lstm_335/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_335/lstm_cell_92/mul_1Mul!lstm_335/lstm_cell_92/Sigmoid:y:0(lstm_335/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/add_1AddV2lstm_335/lstm_cell_92/mul:z:0lstm_335/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_335/lstm_cell_92/Sigmoid_2Sigmoid$lstm_335/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_335/lstm_cell_92/Relu_1Relulstm_335/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_335/lstm_cell_92/mul_2Mul#lstm_335/lstm_cell_92/Sigmoid_2:y:0*lstm_335/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_335/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_335/TensorArrayV2_1TensorListReserve/lstm_335/TensorArrayV2_1/element_shape:output:0!lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_335/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_335/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_335/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_335/whileWhile$lstm_335/while/loop_counter:output:0*lstm_335/while/maximum_iterations:output:0lstm_335/time:output:0!lstm_335/TensorArrayV2_1:handle:0lstm_335/zeros:output:0lstm_335/zeros_1:output:0!lstm_335/strided_slice_1:output:0@lstm_335/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_335_lstm_cell_92_matmul_readvariableop_resource6lstm_335_lstm_cell_92_matmul_1_readvariableop_resource5lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
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
lstm_335_while_body_560370*&
condR
lstm_335_while_cond_560369*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_335/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_335/TensorArrayV2Stack/TensorListStackTensorListStacklstm_335/while:output:3Blstm_335/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_335/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_335/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_335/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_335/strided_slice_3StridedSlice4lstm_335/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_335/strided_slice_3/stack:output:0)lstm_335/strided_slice_3/stack_1:output:0)lstm_335/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_335/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_335/transpose_1	Transpose4lstm_335/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_335/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_335/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_111/MatMulMatMul!lstm_335/strided_slice_3:output:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_111/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp-^lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp,^lstm_333/lstm_cell_90/MatMul/ReadVariableOp.^lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp^lstm_333/while-^lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp,^lstm_334/lstm_cell_91/MatMul/ReadVariableOp.^lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp^lstm_334/while-^lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp,^lstm_335/lstm_cell_92/MatMul/ReadVariableOp.^lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp^lstm_335/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2\
,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp,lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp2Z
+lstm_333/lstm_cell_90/MatMul/ReadVariableOp+lstm_333/lstm_cell_90/MatMul/ReadVariableOp2^
-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp-lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp2 
lstm_333/whilelstm_333/while2\
,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp,lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp2Z
+lstm_334/lstm_cell_91/MatMul/ReadVariableOp+lstm_334/lstm_cell_91/MatMul/ReadVariableOp2^
-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp-lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp2 
lstm_334/whilelstm_334/while2\
,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp,lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp2Z
+lstm_335/lstm_cell_92/MatMul/ReadVariableOp+lstm_335/lstm_cell_92/MatMul/ReadVariableOp2^
-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp-lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp2 
lstm_335/whilelstm_335/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558136

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
while_cond_562507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562507___redundant_placeholder04
0while_while_cond_562507___redundant_placeholder14
0while_while_cond_562507___redundant_placeholder24
0while_while_cond_562507___redundant_placeholder3
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
²

÷
lstm_334_while_cond_560657.
*lstm_334_while_lstm_334_while_loop_counter4
0lstm_334_while_lstm_334_while_maximum_iterations
lstm_334_while_placeholder 
lstm_334_while_placeholder_1 
lstm_334_while_placeholder_2 
lstm_334_while_placeholder_30
,lstm_334_while_less_lstm_334_strided_slice_1F
Blstm_334_while_lstm_334_while_cond_560657___redundant_placeholder0F
Blstm_334_while_lstm_334_while_cond_560657___redundant_placeholder1F
Blstm_334_while_lstm_334_while_cond_560657___redundant_placeholder2F
Blstm_334_while_lstm_334_while_cond_560657___redundant_placeholder3
lstm_334_while_identity

lstm_334/while/LessLesslstm_334_while_placeholder,lstm_334_while_less_lstm_334_strided_slice_1*
T0*
_output_shapes
: ]
lstm_334/while/IdentityIdentitylstm_334/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_334_while_identity lstm_334/while/Identity:output:0*(
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557932

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
while_cond_562034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562034___redundant_placeholder04
0while_while_cond_562034___redundant_placeholder14
0while_while_cond_562034___redundant_placeholder24
0while_while_cond_562034___redundant_placeholder3
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559434

inputs=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_559350*
condR
while_cond_559349*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
˙7
Ê
while_body_562365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_90_layer_call_fn_562771

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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557786o
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
¤J

D__inference_lstm_334_layer_call_and_return_conditional_losses_559068

inputs>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_558984*
condR
while_cond_558983*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ğ
¸
)__inference_lstm_334_layer_call_fn_561525
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_558410|
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
while_cond_561132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561132___redundant_placeholder04
0while_while_cond_561132___redundant_placeholder14
0while_while_cond_561132___redundant_placeholder24
0while_while_cond_561132___redundant_placeholder3
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
while_cond_559679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559679___redundant_placeholder04
0while_while_cond_559679___redundant_placeholder14
0while_while_cond_559679___redundant_placeholder24
0while_while_cond_559679___redundant_placeholder3
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
while_body_561419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_90_matmul_readvariableop_resource_0:	H
5while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_90_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_90_matmul_readvariableop_resource:	F
3while_lstm_cell_90_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_90_biasadd_readvariableop_resource:	˘)while/lstm_cell_90/BiasAdd/ReadVariableOp˘(while/lstm_cell_90/MatMul/ReadVariableOp˘*while/lstm_cell_90/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_90/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_90/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_90/addAddV2#while/lstm_cell_90/MatMul:product:0%while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_90/BiasAddBiasAddwhile/lstm_cell_90/add:z:01while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_90/splitSplit+while/lstm_cell_90/split/split_dim:output:0#while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_90/SigmoidSigmoid!while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_1Sigmoid!while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mulMul while/lstm_cell_90/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_90/ReluRelu!while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_1Mulwhile/lstm_cell_90/Sigmoid:y:0%while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/add_1AddV2while/lstm_cell_90/mul:z:0while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_90/Sigmoid_2Sigmoid!while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_90/Relu_1Reluwhile/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_90/mul_2Mul while/lstm_cell_90/Sigmoid_2:y:0'while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_90/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_90/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_90/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_90/BiasAdd/ReadVariableOp)^while/lstm_cell_90/MatMul/ReadVariableOp+^while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_90_biasadd_readvariableop_resource4while_lstm_cell_90_biasadd_readvariableop_resource_0"l
3while_lstm_cell_90_matmul_1_readvariableop_resource5while_lstm_cell_90_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_90_matmul_readvariableop_resource3while_lstm_cell_90_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_90/BiasAdd/ReadVariableOp)while/lstm_cell_90/BiasAdd/ReadVariableOp2T
(while/lstm_cell_90/MatMul/ReadVariableOp(while/lstm_cell_90/MatMul/ReadVariableOp2X
*while/lstm_cell_90/MatMul_1/ReadVariableOp*while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_333_while_cond_560091.
*lstm_333_while_lstm_333_while_loop_counter4
0lstm_333_while_lstm_333_while_maximum_iterations
lstm_333_while_placeholder 
lstm_333_while_placeholder_1 
lstm_333_while_placeholder_2 
lstm_333_while_placeholder_30
,lstm_333_while_less_lstm_333_strided_slice_1F
Blstm_333_while_lstm_333_while_cond_560091___redundant_placeholder0F
Blstm_333_while_lstm_333_while_cond_560091___redundant_placeholder1F
Blstm_333_while_lstm_333_while_cond_560091___redundant_placeholder2F
Blstm_333_while_lstm_333_while_cond_560091___redundant_placeholder3
lstm_333_while_identity

lstm_333/while/LessLesslstm_333_while_placeholder,lstm_333_while_less_lstm_333_strided_slice_1*
T0*
_output_shapes
: ]
lstm_333/while/IdentityIdentitylstm_333/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_333_while_identity lstm_333/while/Identity:output:0*(
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

µ
)__inference_lstm_335_layer_call_fn_562130
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_558569o
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
lstm_334_while_cond_560230.
*lstm_334_while_lstm_334_while_loop_counter4
0lstm_334_while_lstm_334_while_maximum_iterations
lstm_334_while_placeholder 
lstm_334_while_placeholder_1 
lstm_334_while_placeholder_2 
lstm_334_while_placeholder_30
,lstm_334_while_less_lstm_334_strided_slice_1F
Blstm_334_while_lstm_334_while_cond_560230___redundant_placeholder0F
Blstm_334_while_lstm_334_while_cond_560230___redundant_placeholder1F
Blstm_334_while_lstm_334_while_cond_560230___redundant_placeholder2F
Blstm_334_while_lstm_334_while_cond_560230___redundant_placeholder3
lstm_334_while_identity

lstm_334/while/LessLesslstm_334_while_placeholder,lstm_334_while_less_lstm_334_strided_slice_1*
T0*
_output_shapes
: ]
lstm_334/while/IdentityIdentitylstm_334/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_334_while_identity lstm_334/while/Identity:output:0*(
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

µ
)__inference_lstm_335_layer_call_fn_562141
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_558760o
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
¤J

D__inference_lstm_334_layer_call_and_return_conditional_losses_561976

inputs>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_561892*
condR
while_cond_561891*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
¤J

D__inference_lstm_334_layer_call_and_return_conditional_losses_559599

inputs>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_559515*
condR
while_cond_559514*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_334_layer_call_and_return_conditional_losses_558219

inputs&
lstm_cell_91_558137:	dÈ&
lstm_cell_91_558139:	2È"
lstm_cell_91_558141:	È
identity˘$lstm_cell_91/StatefulPartitionedCall˘while;
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
$lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_91_558137lstm_cell_91_558139lstm_cell_91_558141*
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558136n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_91_558137lstm_cell_91_558139lstm_cell_91_558141*
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
while_body_558150*
condR
while_cond_558149*K
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
NoOpNoOp%^lstm_cell_91/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_91/StatefulPartitionedCall$lstm_cell_91/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ö
£
)sequential_111_lstm_334_while_cond_557489L
Hsequential_111_lstm_334_while_sequential_111_lstm_334_while_loop_counterR
Nsequential_111_lstm_334_while_sequential_111_lstm_334_while_maximum_iterations-
)sequential_111_lstm_334_while_placeholder/
+sequential_111_lstm_334_while_placeholder_1/
+sequential_111_lstm_334_while_placeholder_2/
+sequential_111_lstm_334_while_placeholder_3N
Jsequential_111_lstm_334_while_less_sequential_111_lstm_334_strided_slice_1d
`sequential_111_lstm_334_while_sequential_111_lstm_334_while_cond_557489___redundant_placeholder0d
`sequential_111_lstm_334_while_sequential_111_lstm_334_while_cond_557489___redundant_placeholder1d
`sequential_111_lstm_334_while_sequential_111_lstm_334_while_cond_557489___redundant_placeholder2d
`sequential_111_lstm_334_while_sequential_111_lstm_334_while_cond_557489___redundant_placeholder3*
&sequential_111_lstm_334_while_identity
Â
"sequential_111/lstm_334/while/LessLess)sequential_111_lstm_334_while_placeholderJsequential_111_lstm_334_while_less_sequential_111_lstm_334_strided_slice_1*
T0*
_output_shapes
: {
&sequential_111/lstm_334/while/IdentityIdentity&sequential_111/lstm_334/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_111_lstm_334_while_identity/sequential_111/lstm_334/while/Identity:output:0*(
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
È	
ö
E__inference_dense_111_layer_call_and_return_conditional_losses_559236

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
while_cond_558149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558149___redundant_placeholder04
0while_while_cond_558149___redundant_placeholder14
0while_while_cond_558149___redundant_placeholder24
0while_while_cond_558149___redundant_placeholder3
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
ÔJ

D__inference_lstm_335_layer_call_and_return_conditional_losses_562449
inputs_0=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_562365*
condR
while_cond_562364*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_557799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557799___redundant_placeholder04
0while_while_cond_557799___redundant_placeholder14
0while_while_cond_557799___redundant_placeholder24
0while_while_cond_557799___redundant_placeholder3
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
while_body_561892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_91_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_91_biasadd_readvariableop_resource:	È˘)while/lstm_cell_91/BiasAdd/ReadVariableOp˘(while/lstm_cell_91/MatMul/ReadVariableOp˘*while/lstm_cell_91/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_91/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_91/addAddV2#while/lstm_cell_91/MatMul:product:0%while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_91/BiasAddBiasAddwhile/lstm_cell_91/add:z:01while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0#while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_91/SigmoidSigmoid!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_1Sigmoid!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mulMul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_91/ReluRelu!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_1Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/add_1AddV2while/lstm_cell_91/mul:z:0while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_91/Sigmoid_2Sigmoid!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_91/mul_2Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_91/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_91/BiasAdd/ReadVariableOp)^while/lstm_cell_91/MatMul/ReadVariableOp+^while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_91_biasadd_readvariableop_resource4while_lstm_cell_91_biasadd_readvariableop_resource_0"l
3while_lstm_cell_91_matmul_1_readvariableop_resource5while_lstm_cell_91_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_91_matmul_readvariableop_resource3while_lstm_cell_91_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_91/BiasAdd/ReadVariableOp)while/lstm_cell_91/BiasAdd/ReadVariableOp2T
(while/lstm_cell_91/MatMul/ReadVariableOp(while/lstm_cell_91/MatMul/ReadVariableOp2X
*while/lstm_cell_91/MatMul_1/ReadVariableOp*while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ĥT
Ô
)sequential_111_lstm_334_while_body_557490L
Hsequential_111_lstm_334_while_sequential_111_lstm_334_while_loop_counterR
Nsequential_111_lstm_334_while_sequential_111_lstm_334_while_maximum_iterations-
)sequential_111_lstm_334_while_placeholder/
+sequential_111_lstm_334_while_placeholder_1/
+sequential_111_lstm_334_while_placeholder_2/
+sequential_111_lstm_334_while_placeholder_3K
Gsequential_111_lstm_334_while_sequential_111_lstm_334_strided_slice_1_0
sequential_111_lstm_334_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_334_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_111_lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈ`
Msequential_111_lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2È[
Lsequential_111_lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0:	È*
&sequential_111_lstm_334_while_identity,
(sequential_111_lstm_334_while_identity_1,
(sequential_111_lstm_334_while_identity_2,
(sequential_111_lstm_334_while_identity_3,
(sequential_111_lstm_334_while_identity_4,
(sequential_111_lstm_334_while_identity_5I
Esequential_111_lstm_334_while_sequential_111_lstm_334_strided_slice_1
sequential_111_lstm_334_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_334_tensorarrayunstack_tensorlistfromtensor\
Isequential_111_lstm_334_while_lstm_cell_91_matmul_readvariableop_resource:	dÈ^
Ksequential_111_lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈY
Jsequential_111_lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource:	È˘Asequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp˘@sequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp˘Bsequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp 
Osequential_111/lstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_111/lstm_334/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_111_lstm_334_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_334_tensorarrayunstack_tensorlistfromtensor_0)sequential_111_lstm_334_while_placeholderXsequential_111/lstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOpKsequential_111_lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_111/lstm_334/while/lstm_cell_91/MatMulMatMulHsequential_111/lstm_334/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOpMsequential_111_lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_111/lstm_334/while/lstm_cell_91/MatMul_1MatMul+sequential_111_lstm_334_while_placeholder_2Jsequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_111/lstm_334/while/lstm_cell_91/addAddV2;sequential_111/lstm_334/while/lstm_cell_91/MatMul:product:0=sequential_111/lstm_334/while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOpLsequential_111_lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_111/lstm_334/while/lstm_cell_91/BiasAddBiasAdd2sequential_111/lstm_334/while/lstm_cell_91/add:z:0Isequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_111/lstm_334/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_111/lstm_334/while/lstm_cell_91/splitSplitCsequential_111/lstm_334/while/lstm_cell_91/split/split_dim:output:0;sequential_111/lstm_334/while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_111/lstm_334/while/lstm_cell_91/SigmoidSigmoid9sequential_111/lstm_334/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_111/lstm_334/while/lstm_cell_91/Sigmoid_1Sigmoid9sequential_111/lstm_334/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_111/lstm_334/while/lstm_cell_91/mulMul8sequential_111/lstm_334/while/lstm_cell_91/Sigmoid_1:y:0+sequential_111_lstm_334_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_111/lstm_334/while/lstm_cell_91/ReluRelu9sequential_111/lstm_334/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_111/lstm_334/while/lstm_cell_91/mul_1Mul6sequential_111/lstm_334/while/lstm_cell_91/Sigmoid:y:0=sequential_111/lstm_334/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_111/lstm_334/while/lstm_cell_91/add_1AddV22sequential_111/lstm_334/while/lstm_cell_91/mul:z:04sequential_111/lstm_334/while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_111/lstm_334/while/lstm_cell_91/Sigmoid_2Sigmoid9sequential_111/lstm_334/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_111/lstm_334/while/lstm_cell_91/Relu_1Relu4sequential_111/lstm_334/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_111/lstm_334/while/lstm_cell_91/mul_2Mul8sequential_111/lstm_334/while/lstm_cell_91/Sigmoid_2:y:0?sequential_111/lstm_334/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_111/lstm_334/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_111_lstm_334_while_placeholder_1)sequential_111_lstm_334_while_placeholder4sequential_111/lstm_334/while/lstm_cell_91/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_111/lstm_334/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_111/lstm_334/while/addAddV2)sequential_111_lstm_334_while_placeholder,sequential_111/lstm_334/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_111/lstm_334/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_111/lstm_334/while/add_1AddV2Hsequential_111_lstm_334_while_sequential_111_lstm_334_while_loop_counter.sequential_111/lstm_334/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_111/lstm_334/while/IdentityIdentity'sequential_111/lstm_334/while/add_1:z:0#^sequential_111/lstm_334/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_111/lstm_334/while/Identity_1IdentityNsequential_111_lstm_334_while_sequential_111_lstm_334_while_maximum_iterations#^sequential_111/lstm_334/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_111/lstm_334/while/Identity_2Identity%sequential_111/lstm_334/while/add:z:0#^sequential_111/lstm_334/while/NoOp*
T0*
_output_shapes
: Î
(sequential_111/lstm_334/while/Identity_3IdentityRsequential_111/lstm_334/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_111/lstm_334/while/NoOp*
T0*
_output_shapes
: Á
(sequential_111/lstm_334/while/Identity_4Identity4sequential_111/lstm_334/while/lstm_cell_91/mul_2:z:0#^sequential_111/lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_111/lstm_334/while/Identity_5Identity4sequential_111/lstm_334/while/lstm_cell_91/add_1:z:0#^sequential_111/lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_111/lstm_334/while/NoOpNoOpB^sequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOpA^sequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOpC^sequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_111_lstm_334_while_identity/sequential_111/lstm_334/while/Identity:output:0"]
(sequential_111_lstm_334_while_identity_11sequential_111/lstm_334/while/Identity_1:output:0"]
(sequential_111_lstm_334_while_identity_21sequential_111/lstm_334/while/Identity_2:output:0"]
(sequential_111_lstm_334_while_identity_31sequential_111/lstm_334/while/Identity_3:output:0"]
(sequential_111_lstm_334_while_identity_41sequential_111/lstm_334/while/Identity_4:output:0"]
(sequential_111_lstm_334_while_identity_51sequential_111/lstm_334/while/Identity_5:output:0"
Jsequential_111_lstm_334_while_lstm_cell_91_biasadd_readvariableop_resourceLsequential_111_lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0"
Ksequential_111_lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resourceMsequential_111_lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0"
Isequential_111_lstm_334_while_lstm_cell_91_matmul_readvariableop_resourceKsequential_111_lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0"
Esequential_111_lstm_334_while_sequential_111_lstm_334_strided_slice_1Gsequential_111_lstm_334_while_sequential_111_lstm_334_strided_slice_1_0"
sequential_111_lstm_334_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_334_tensorarrayunstack_tensorlistfromtensorsequential_111_lstm_334_while_tensorarrayv2read_tensorlistgetitem_sequential_111_lstm_334_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOpAsequential_111/lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2
@sequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp@sequential_111/lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp2
Bsequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOpBsequential_111/lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_334_while_body_560231.
*lstm_334_while_lstm_334_while_loop_counter4
0lstm_334_while_lstm_334_while_maximum_iterations
lstm_334_while_placeholder 
lstm_334_while_placeholder_1 
lstm_334_while_placeholder_2 
lstm_334_while_placeholder_3-
)lstm_334_while_lstm_334_strided_slice_1_0i
elstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈQ
>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
lstm_334_while_identity
lstm_334_while_identity_1
lstm_334_while_identity_2
lstm_334_while_identity_3
lstm_334_while_identity_4
lstm_334_while_identity_5+
'lstm_334_while_lstm_334_strided_slice_1g
clstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensorM
:lstm_334_while_lstm_cell_91_matmul_readvariableop_resource:	dÈO
<lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈJ
;lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource:	È˘2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp˘1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp˘3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp
@lstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_334/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0lstm_334_while_placeholderIlstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_334/while/lstm_cell_91/MatMulMatMul9lstm_334/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_334/while/lstm_cell_91/MatMul_1MatMullstm_334_while_placeholder_2;lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_334/while/lstm_cell_91/addAddV2,lstm_334/while/lstm_cell_91/MatMul:product:0.lstm_334/while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_334/while/lstm_cell_91/BiasAddBiasAdd#lstm_334/while/lstm_cell_91/add:z:0:lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_334/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_334/while/lstm_cell_91/splitSplit4lstm_334/while/lstm_cell_91/split/split_dim:output:0,lstm_334/while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_334/while/lstm_cell_91/SigmoidSigmoid*lstm_334/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_334/while/lstm_cell_91/Sigmoid_1Sigmoid*lstm_334/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_334/while/lstm_cell_91/mulMul)lstm_334/while/lstm_cell_91/Sigmoid_1:y:0lstm_334_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_334/while/lstm_cell_91/ReluRelu*lstm_334/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_334/while/lstm_cell_91/mul_1Mul'lstm_334/while/lstm_cell_91/Sigmoid:y:0.lstm_334/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_334/while/lstm_cell_91/add_1AddV2#lstm_334/while/lstm_cell_91/mul:z:0%lstm_334/while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_334/while/lstm_cell_91/Sigmoid_2Sigmoid*lstm_334/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_334/while/lstm_cell_91/Relu_1Relu%lstm_334/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_334/while/lstm_cell_91/mul_2Mul)lstm_334/while/lstm_cell_91/Sigmoid_2:y:00lstm_334/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_334/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_334_while_placeholder_1lstm_334_while_placeholder%lstm_334/while/lstm_cell_91/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_334/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_334/while/addAddV2lstm_334_while_placeholderlstm_334/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_334/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_334/while/add_1AddV2*lstm_334_while_lstm_334_while_loop_counterlstm_334/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_334/while/IdentityIdentitylstm_334/while/add_1:z:0^lstm_334/while/NoOp*
T0*
_output_shapes
: 
lstm_334/while/Identity_1Identity0lstm_334_while_lstm_334_while_maximum_iterations^lstm_334/while/NoOp*
T0*
_output_shapes
: t
lstm_334/while/Identity_2Identitylstm_334/while/add:z:0^lstm_334/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_334/while/Identity_3IdentityClstm_334/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_334/while/NoOp*
T0*
_output_shapes
: 
lstm_334/while/Identity_4Identity%lstm_334/while/lstm_cell_91/mul_2:z:0^lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/while/Identity_5Identity%lstm_334/while/lstm_cell_91/add_1:z:0^lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_334/while/NoOpNoOp3^lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2^lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp4^lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_334_while_identity lstm_334/while/Identity:output:0"?
lstm_334_while_identity_1"lstm_334/while/Identity_1:output:0"?
lstm_334_while_identity_2"lstm_334/while/Identity_2:output:0"?
lstm_334_while_identity_3"lstm_334/while/Identity_3:output:0"?
lstm_334_while_identity_4"lstm_334/while/Identity_4:output:0"?
lstm_334_while_identity_5"lstm_334/while/Identity_5:output:0"T
'lstm_334_while_lstm_334_strided_slice_1)lstm_334_while_lstm_334_strided_slice_1_0"|
;lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0"~
<lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0"z
:lstm_334_while_lstm_cell_91_matmul_readvariableop_resource<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0"Ì
clstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensorelstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2f
1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp2j
3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_334_while_body_560658.
*lstm_334_while_lstm_334_while_loop_counter4
0lstm_334_while_lstm_334_while_maximum_iterations
lstm_334_while_placeholder 
lstm_334_while_placeholder_1 
lstm_334_while_placeholder_2 
lstm_334_while_placeholder_3-
)lstm_334_while_lstm_334_strided_slice_1_0i
elstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0:	dÈQ
>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0:	È
lstm_334_while_identity
lstm_334_while_identity_1
lstm_334_while_identity_2
lstm_334_while_identity_3
lstm_334_while_identity_4
lstm_334_while_identity_5+
'lstm_334_while_lstm_334_strided_slice_1g
clstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensorM
:lstm_334_while_lstm_cell_91_matmul_readvariableop_resource:	dÈO
<lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈJ
;lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource:	È˘2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp˘1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp˘3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp
@lstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_334/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0lstm_334_while_placeholderIlstm_334/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOpReadVariableOp<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_334/while/lstm_cell_91/MatMulMatMul9lstm_334/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_334/while/lstm_cell_91/MatMul_1MatMullstm_334_while_placeholder_2;lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_334/while/lstm_cell_91/addAddV2,lstm_334/while/lstm_cell_91/MatMul:product:0.lstm_334/while/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_334/while/lstm_cell_91/BiasAddBiasAdd#lstm_334/while/lstm_cell_91/add:z:0:lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_334/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_334/while/lstm_cell_91/splitSplit4lstm_334/while/lstm_cell_91/split/split_dim:output:0,lstm_334/while/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_334/while/lstm_cell_91/SigmoidSigmoid*lstm_334/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_334/while/lstm_cell_91/Sigmoid_1Sigmoid*lstm_334/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_334/while/lstm_cell_91/mulMul)lstm_334/while/lstm_cell_91/Sigmoid_1:y:0lstm_334_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_334/while/lstm_cell_91/ReluRelu*lstm_334/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_334/while/lstm_cell_91/mul_1Mul'lstm_334/while/lstm_cell_91/Sigmoid:y:0.lstm_334/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_334/while/lstm_cell_91/add_1AddV2#lstm_334/while/lstm_cell_91/mul:z:0%lstm_334/while/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_334/while/lstm_cell_91/Sigmoid_2Sigmoid*lstm_334/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_334/while/lstm_cell_91/Relu_1Relu%lstm_334/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_334/while/lstm_cell_91/mul_2Mul)lstm_334/while/lstm_cell_91/Sigmoid_2:y:00lstm_334/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_334/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_334_while_placeholder_1lstm_334_while_placeholder%lstm_334/while/lstm_cell_91/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_334/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_334/while/addAddV2lstm_334_while_placeholderlstm_334/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_334/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_334/while/add_1AddV2*lstm_334_while_lstm_334_while_loop_counterlstm_334/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_334/while/IdentityIdentitylstm_334/while/add_1:z:0^lstm_334/while/NoOp*
T0*
_output_shapes
: 
lstm_334/while/Identity_1Identity0lstm_334_while_lstm_334_while_maximum_iterations^lstm_334/while/NoOp*
T0*
_output_shapes
: t
lstm_334/while/Identity_2Identitylstm_334/while/add:z:0^lstm_334/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_334/while/Identity_3IdentityClstm_334/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_334/while/NoOp*
T0*
_output_shapes
: 
lstm_334/while/Identity_4Identity%lstm_334/while/lstm_cell_91/mul_2:z:0^lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_334/while/Identity_5Identity%lstm_334/while/lstm_cell_91/add_1:z:0^lstm_334/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_334/while/NoOpNoOp3^lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2^lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp4^lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_334_while_identity lstm_334/while/Identity:output:0"?
lstm_334_while_identity_1"lstm_334/while/Identity_1:output:0"?
lstm_334_while_identity_2"lstm_334/while/Identity_2:output:0"?
lstm_334_while_identity_3"lstm_334/while/Identity_3:output:0"?
lstm_334_while_identity_4"lstm_334/while/Identity_4:output:0"?
lstm_334_while_identity_5"lstm_334/while/Identity_5:output:0"T
'lstm_334_while_lstm_334_strided_slice_1)lstm_334_while_lstm_334_strided_slice_1_0"|
;lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource=lstm_334_while_lstm_cell_91_biasadd_readvariableop_resource_0"~
<lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource>lstm_334_while_lstm_cell_91_matmul_1_readvariableop_resource_0"z
:lstm_334_while_lstm_cell_91_matmul_readvariableop_resource<lstm_334_while_lstm_cell_91_matmul_readvariableop_resource_0"Ì
clstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensorelstm_334_while_tensorarrayv2read_tensorlistgetitem_lstm_334_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2lstm_334/while/lstm_cell_91/BiasAdd/ReadVariableOp2f
1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp1lstm_334/while/lstm_cell_91/MatMul/ReadVariableOp2j
3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp3lstm_334/while/lstm_cell_91/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_561690
inputs_0>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_561606*
condR
while_cond_561605*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
˙7
Ê
while_body_562651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_92_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_92_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_92_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_92_matmul_readvariableop_resource:2(E
3while_lstm_cell_92_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_92_biasadd_readvariableop_resource:(˘)while/lstm_cell_92/BiasAdd/ReadVariableOp˘(while/lstm_cell_92/MatMul/ReadVariableOp˘*while/lstm_cell_92/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_92/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_92_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_92/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_92_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_92/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_92/addAddV2#while/lstm_cell_92/MatMul:product:0%while/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_92_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_92/BiasAddBiasAddwhile/lstm_cell_92/add:z:01while/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_92/splitSplit+while/lstm_cell_92/split/split_dim:output:0#while/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_92/SigmoidSigmoid!while/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_1Sigmoid!while/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mulMul while/lstm_cell_92/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_92/ReluRelu!while/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_1Mulwhile/lstm_cell_92/Sigmoid:y:0%while/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/add_1AddV2while/lstm_cell_92/mul:z:0while/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_92/Sigmoid_2Sigmoid!while/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_92/Relu_1Reluwhile/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_92/mul_2Mul while/lstm_cell_92/Sigmoid_2:y:0'while/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_92/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_92/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_92/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_92/BiasAdd/ReadVariableOp)^while/lstm_cell_92/MatMul/ReadVariableOp+^while/lstm_cell_92/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_92_biasadd_readvariableop_resource4while_lstm_cell_92_biasadd_readvariableop_resource_0"l
3while_lstm_cell_92_matmul_1_readvariableop_resource5while_lstm_cell_92_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_92_matmul_readvariableop_resource3while_lstm_cell_92_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_92/BiasAdd/ReadVariableOp)while/lstm_cell_92/BiasAdd/ReadVariableOp2T
(while/lstm_cell_92/MatMul/ReadVariableOp(while/lstm_cell_92/MatMul/ReadVariableOp2X
*while/lstm_cell_92/MatMul_1/ReadVariableOp*while/lstm_cell_92/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563016

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
8

D__inference_lstm_333_layer_call_and_return_conditional_losses_558060

inputs&
lstm_cell_90_557978:	&
lstm_cell_90_557980:	d"
lstm_cell_90_557982:	
identity˘$lstm_cell_90/StatefulPartitionedCall˘while;
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
$lstm_cell_90/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_90_557978lstm_cell_90_557980lstm_cell_90_557982*
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557932n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_90_557978lstm_cell_90_557980lstm_cell_90_557982*
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
while_body_557991*
condR
while_cond_557990*K
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
NoOpNoOp%^lstm_cell_90/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_90/StatefulPartitionedCall$lstm_cell_90/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_561418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561418___redundant_placeholder04
0while_while_cond_561418___redundant_placeholder14
0while_while_cond_561418___redundant_placeholder24
0while_while_cond_561418___redundant_placeholder3
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
while_cond_558340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558340___redundant_placeholder04
0while_while_cond_558340___redundant_placeholder14
0while_while_cond_558340___redundant_placeholder24
0while_while_cond_558340___redundant_placeholder3
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
)__inference_lstm_335_layer_call_fn_562152

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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559218o
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
while_body_558691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_92_558715_0:2(-
while_lstm_cell_92_558717_0:
()
while_lstm_cell_92_558719_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_92_558715:2(+
while_lstm_cell_92_558717:
('
while_lstm_cell_92_558719:(˘*while/lstm_cell_92/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_92/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_92_558715_0while_lstm_cell_92_558717_0while_lstm_cell_92_558719_0*
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558632Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_92/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_92/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_92/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_92/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_92_558715while_lstm_cell_92_558715_0"8
while_lstm_cell_92_558717while_lstm_cell_92_558717_0"8
while_lstm_cell_92_558719while_lstm_cell_92_558719_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_92/StatefulPartitionedCall*while/lstm_cell_92/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_559764

inputs>
+lstm_cell_90_matmul_readvariableop_resource:	@
-lstm_cell_90_matmul_1_readvariableop_resource:	d;
,lstm_cell_90_biasadd_readvariableop_resource:	
identity˘#lstm_cell_90/BiasAdd/ReadVariableOp˘"lstm_cell_90/MatMul/ReadVariableOp˘$lstm_cell_90/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_90/MatMul/ReadVariableOpReadVariableOp+lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_90/MatMulMatMulstrided_slice_2:output:0*lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_90/MatMul_1MatMulzeros:output:0,lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_90/addAddV2lstm_cell_90/MatMul:product:0lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_90/BiasAddBiasAddlstm_cell_90/add:z:0+lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_90/splitSplit%lstm_cell_90/split/split_dim:output:0lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_90/SigmoidSigmoidlstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_1Sigmoidlstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_90/mulMullstm_cell_90/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_90/ReluRelulstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_1Mullstm_cell_90/Sigmoid:y:0lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_90/add_1AddV2lstm_cell_90/mul:z:0lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_90/Sigmoid_2Sigmoidlstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_90/Relu_1Relulstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_90/mul_2Mullstm_cell_90/Sigmoid_2:y:0!lstm_cell_90/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_90_matmul_readvariableop_resource-lstm_cell_90_matmul_1_readvariableop_resource,lstm_cell_90_biasadd_readvariableop_resource*
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
while_body_559680*
condR
while_cond_559679*K
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
NoOpNoOp$^lstm_cell_90/BiasAdd/ReadVariableOp#^lstm_cell_90/MatMul/ReadVariableOp%^lstm_cell_90/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_90/BiasAdd/ReadVariableOp#lstm_cell_90/BiasAdd/ReadVariableOp2H
"lstm_cell_90/MatMul/ReadVariableOp"lstm_cell_90/MatMul/ReadVariableOp2L
$lstm_cell_90/MatMul_1/ReadVariableOp$lstm_cell_90/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô

£
/__inference_sequential_111_layer_call_fn_559884
lstm_333_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_111_layer_call_and_return_conditional_losses_559832o
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
_user_specified_namelstm_333_input
íW
¤
__inference__traced_save_563191
file_prefix/
+savev2_dense_111_kernel_read_readvariableop-
)savev2_dense_111_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_333_lstm_cell_333_kernel_read_readvariableopF
Bsavev2_lstm_333_lstm_cell_333_recurrent_kernel_read_readvariableop:
6savev2_lstm_333_lstm_cell_333_bias_read_readvariableop<
8savev2_lstm_334_lstm_cell_334_kernel_read_readvariableopF
Bsavev2_lstm_334_lstm_cell_334_recurrent_kernel_read_readvariableop:
6savev2_lstm_334_lstm_cell_334_bias_read_readvariableop<
8savev2_lstm_335_lstm_cell_335_kernel_read_readvariableopF
Bsavev2_lstm_335_lstm_cell_335_recurrent_kernel_read_readvariableop:
6savev2_lstm_335_lstm_cell_335_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_111_kernel_m_read_readvariableop4
0savev2_adam_dense_111_bias_m_read_readvariableopC
?savev2_adam_lstm_333_lstm_cell_333_kernel_m_read_readvariableopM
Isavev2_adam_lstm_333_lstm_cell_333_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_333_lstm_cell_333_bias_m_read_readvariableopC
?savev2_adam_lstm_334_lstm_cell_334_kernel_m_read_readvariableopM
Isavev2_adam_lstm_334_lstm_cell_334_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_334_lstm_cell_334_bias_m_read_readvariableopC
?savev2_adam_lstm_335_lstm_cell_335_kernel_m_read_readvariableopM
Isavev2_adam_lstm_335_lstm_cell_335_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_335_lstm_cell_335_bias_m_read_readvariableop6
2savev2_adam_dense_111_kernel_v_read_readvariableop4
0savev2_adam_dense_111_bias_v_read_readvariableopC
?savev2_adam_lstm_333_lstm_cell_333_kernel_v_read_readvariableopM
Isavev2_adam_lstm_333_lstm_cell_333_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_333_lstm_cell_333_bias_v_read_readvariableopC
?savev2_adam_lstm_334_lstm_cell_334_kernel_v_read_readvariableopM
Isavev2_adam_lstm_334_lstm_cell_334_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_334_lstm_cell_334_bias_v_read_readvariableopC
?savev2_adam_lstm_335_lstm_cell_335_kernel_v_read_readvariableopM
Isavev2_adam_lstm_335_lstm_cell_335_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_335_lstm_cell_335_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_111_kernel_read_readvariableop)savev2_dense_111_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_333_lstm_cell_333_kernel_read_readvariableopBsavev2_lstm_333_lstm_cell_333_recurrent_kernel_read_readvariableop6savev2_lstm_333_lstm_cell_333_bias_read_readvariableop8savev2_lstm_334_lstm_cell_334_kernel_read_readvariableopBsavev2_lstm_334_lstm_cell_334_recurrent_kernel_read_readvariableop6savev2_lstm_334_lstm_cell_334_bias_read_readvariableop8savev2_lstm_335_lstm_cell_335_kernel_read_readvariableopBsavev2_lstm_335_lstm_cell_335_recurrent_kernel_read_readvariableop6savev2_lstm_335_lstm_cell_335_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_111_kernel_m_read_readvariableop0savev2_adam_dense_111_bias_m_read_readvariableop?savev2_adam_lstm_333_lstm_cell_333_kernel_m_read_readvariableopIsavev2_adam_lstm_333_lstm_cell_333_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_333_lstm_cell_333_bias_m_read_readvariableop?savev2_adam_lstm_334_lstm_cell_334_kernel_m_read_readvariableopIsavev2_adam_lstm_334_lstm_cell_334_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_334_lstm_cell_334_bias_m_read_readvariableop?savev2_adam_lstm_335_lstm_cell_335_kernel_m_read_readvariableopIsavev2_adam_lstm_335_lstm_cell_335_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_335_lstm_cell_335_bias_m_read_readvariableop2savev2_adam_dense_111_kernel_v_read_readvariableop0savev2_adam_dense_111_bias_v_read_readvariableop?savev2_adam_lstm_333_lstm_cell_333_kernel_v_read_readvariableopIsavev2_adam_lstm_333_lstm_cell_333_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_333_lstm_cell_333_bias_v_read_readvariableop?savev2_adam_lstm_334_lstm_cell_334_kernel_v_read_readvariableopIsavev2_adam_lstm_334_lstm_cell_334_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_334_lstm_cell_334_bias_v_read_readvariableop?savev2_adam_lstm_335_lstm_cell_335_kernel_v_read_readvariableopIsavev2_adam_lstm_335_lstm_cell_335_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_335_lstm_cell_335_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ŭ

H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562852

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
while_cond_558690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558690___redundant_placeholder04
0while_while_cond_558690___redundant_placeholder14
0while_while_cond_558690___redundant_placeholder24
0while_while_cond_558690___redundant_placeholder3
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
while_body_557991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_90_558015_0:	.
while_lstm_cell_90_558017_0:	d*
while_lstm_cell_90_558019_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_90_558015:	,
while_lstm_cell_90_558017:	d(
while_lstm_cell_90_558019:	˘*while/lstm_cell_90/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_90/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_90_558015_0while_lstm_cell_90_558017_0while_lstm_cell_90_558019_0*
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_557932Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_90/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_90/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_90/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_90_558015while_lstm_cell_90_558015_0"8
while_lstm_cell_90_558017while_lstm_cell_90_558017_0"8
while_lstm_cell_90_558019while_lstm_cell_90_558019_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_90/StatefulPartitionedCall*while/lstm_cell_90/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_335_while_cond_560369.
*lstm_335_while_lstm_335_while_loop_counter4
0lstm_335_while_lstm_335_while_maximum_iterations
lstm_335_while_placeholder 
lstm_335_while_placeholder_1 
lstm_335_while_placeholder_2 
lstm_335_while_placeholder_30
,lstm_335_while_less_lstm_335_strided_slice_1F
Blstm_335_while_lstm_335_while_cond_560369___redundant_placeholder0F
Blstm_335_while_lstm_335_while_cond_560369___redundant_placeholder1F
Blstm_335_while_lstm_335_while_cond_560369___redundant_placeholder2F
Blstm_335_while_lstm_335_while_cond_560369___redundant_placeholder3
lstm_335_while_identity

lstm_335/while/LessLesslstm_335_while_placeholder,lstm_335_while_less_lstm_335_strided_slice_1*
T0*
_output_shapes
: ]
lstm_335/while/IdentityIdentitylstm_335/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_335_while_identity lstm_335/while/Identity:output:0*(
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

lstm_333_while_body_560519.
*lstm_333_while_lstm_333_while_loop_counter4
0lstm_333_while_lstm_333_while_maximum_iterations
lstm_333_while_placeholder 
lstm_333_while_placeholder_1 
lstm_333_while_placeholder_2 
lstm_333_while_placeholder_3-
)lstm_333_while_lstm_333_strided_slice_1_0i
elstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0:	Q
>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0:	dL
=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0:	
lstm_333_while_identity
lstm_333_while_identity_1
lstm_333_while_identity_2
lstm_333_while_identity_3
lstm_333_while_identity_4
lstm_333_while_identity_5+
'lstm_333_while_lstm_333_strided_slice_1g
clstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensorM
:lstm_333_while_lstm_cell_90_matmul_readvariableop_resource:	O
<lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource:	dJ
;lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource:	˘2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp˘1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp˘3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp
@lstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_333/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0lstm_333_while_placeholderIlstm_333/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOpReadVariableOp<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_333/while/lstm_cell_90/MatMulMatMul9lstm_333/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOp>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_333/while/lstm_cell_90/MatMul_1MatMullstm_333_while_placeholder_2;lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_333/while/lstm_cell_90/addAddV2,lstm_333/while/lstm_cell_90/MatMul:product:0.lstm_333/while/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOp=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_333/while/lstm_cell_90/BiasAddBiasAdd#lstm_333/while/lstm_cell_90/add:z:0:lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_333/while/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_333/while/lstm_cell_90/splitSplit4lstm_333/while/lstm_cell_90/split/split_dim:output:0,lstm_333/while/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_333/while/lstm_cell_90/SigmoidSigmoid*lstm_333/while/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_333/while/lstm_cell_90/Sigmoid_1Sigmoid*lstm_333/while/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_333/while/lstm_cell_90/mulMul)lstm_333/while/lstm_cell_90/Sigmoid_1:y:0lstm_333_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_333/while/lstm_cell_90/ReluRelu*lstm_333/while/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_333/while/lstm_cell_90/mul_1Mul'lstm_333/while/lstm_cell_90/Sigmoid:y:0.lstm_333/while/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_333/while/lstm_cell_90/add_1AddV2#lstm_333/while/lstm_cell_90/mul:z:0%lstm_333/while/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_333/while/lstm_cell_90/Sigmoid_2Sigmoid*lstm_333/while/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_333/while/lstm_cell_90/Relu_1Relu%lstm_333/while/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_333/while/lstm_cell_90/mul_2Mul)lstm_333/while/lstm_cell_90/Sigmoid_2:y:00lstm_333/while/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_333/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_333_while_placeholder_1lstm_333_while_placeholder%lstm_333/while/lstm_cell_90/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_333/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_333/while/addAddV2lstm_333_while_placeholderlstm_333/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_333/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_333/while/add_1AddV2*lstm_333_while_lstm_333_while_loop_counterlstm_333/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_333/while/IdentityIdentitylstm_333/while/add_1:z:0^lstm_333/while/NoOp*
T0*
_output_shapes
: 
lstm_333/while/Identity_1Identity0lstm_333_while_lstm_333_while_maximum_iterations^lstm_333/while/NoOp*
T0*
_output_shapes
: t
lstm_333/while/Identity_2Identitylstm_333/while/add:z:0^lstm_333/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_333/while/Identity_3IdentityClstm_333/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_333/while/NoOp*
T0*
_output_shapes
: 
lstm_333/while/Identity_4Identity%lstm_333/while/lstm_cell_90/mul_2:z:0^lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_333/while/Identity_5Identity%lstm_333/while/lstm_cell_90/add_1:z:0^lstm_333/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_333/while/NoOpNoOp3^lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2^lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp4^lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_333_while_identity lstm_333/while/Identity:output:0"?
lstm_333_while_identity_1"lstm_333/while/Identity_1:output:0"?
lstm_333_while_identity_2"lstm_333/while/Identity_2:output:0"?
lstm_333_while_identity_3"lstm_333/while/Identity_3:output:0"?
lstm_333_while_identity_4"lstm_333/while/Identity_4:output:0"?
lstm_333_while_identity_5"lstm_333/while/Identity_5:output:0"T
'lstm_333_while_lstm_333_strided_slice_1)lstm_333_while_lstm_333_strided_slice_1_0"|
;lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource=lstm_333_while_lstm_cell_90_biasadd_readvariableop_resource_0"~
<lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource>lstm_333_while_lstm_cell_90_matmul_1_readvariableop_resource_0"z
:lstm_333_while_lstm_cell_90_matmul_readvariableop_resource<lstm_333_while_lstm_cell_90_matmul_readvariableop_resource_0"Ì
clstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensorelstm_333_while_tensorarrayv2read_tensorlistgetitem_lstm_333_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2lstm_333/while/lstm_cell_90/BiasAdd/ReadVariableOp2f
1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp1lstm_333/while/lstm_cell_90/MatMul/ReadVariableOp2j
3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp3lstm_333/while/lstm_cell_90/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_561605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_561605___redundant_placeholder04
0while_while_cond_561605___redundant_placeholder14
0while_while_cond_561605___redundant_placeholder24
0while_while_cond_561605___redundant_placeholder3
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_559218

inputs=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_559134*
condR
while_cond_559133*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8

D__inference_lstm_335_layer_call_and_return_conditional_losses_558569

inputs%
lstm_cell_92_558487:2(%
lstm_cell_92_558489:
(!
lstm_cell_92_558491:(
identity˘$lstm_cell_92/StatefulPartitionedCall˘while;
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
$lstm_cell_92/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_92_558487lstm_cell_92_558489lstm_cell_92_558491*
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_558486n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_92_558487lstm_cell_92_558489lstm_cell_92_558491*
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
while_body_558500*
condR
while_cond_558499*K
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
NoOpNoOp%^lstm_cell_92/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_92/StatefulPartitionedCall$lstm_cell_92/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_335_layer_call_and_return_conditional_losses_562306
inputs_0=
+lstm_cell_92_matmul_readvariableop_resource:2(?
-lstm_cell_92_matmul_1_readvariableop_resource:
(:
,lstm_cell_92_biasadd_readvariableop_resource:(
identity˘#lstm_cell_92/BiasAdd/ReadVariableOp˘"lstm_cell_92/MatMul/ReadVariableOp˘$lstm_cell_92/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_92/MatMul/ReadVariableOpReadVariableOp+lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_92/MatMulMatMulstrided_slice_2:output:0*lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_92/MatMul_1MatMulzeros:output:0,lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_92/addAddV2lstm_cell_92/MatMul:product:0lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_92/BiasAddBiasAddlstm_cell_92/add:z:0+lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_92/splitSplit%lstm_cell_92/split/split_dim:output:0lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_92/SigmoidSigmoidlstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_1Sigmoidlstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_92/mulMullstm_cell_92/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_92/ReluRelulstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_1Mullstm_cell_92/Sigmoid:y:0lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_92/add_1AddV2lstm_cell_92/mul:z:0lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_92/Sigmoid_2Sigmoidlstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_92/Relu_1Relulstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_92/mul_2Mullstm_cell_92/Sigmoid_2:y:0!lstm_cell_92/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_92_matmul_readvariableop_resource-lstm_cell_92_matmul_1_readvariableop_resource,lstm_cell_92_biasadd_readvariableop_resource*
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
while_body_562222*
condR
while_cond_562221*K
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
NoOpNoOp$^lstm_cell_92/BiasAdd/ReadVariableOp#^lstm_cell_92/MatMul/ReadVariableOp%^lstm_cell_92/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_92/BiasAdd/ReadVariableOp#lstm_cell_92/BiasAdd/ReadVariableOp2H
"lstm_cell_92/MatMul/ReadVariableOp"lstm_cell_92/MatMul/ReadVariableOp2L
$lstm_cell_92/MatMul_1/ReadVariableOp$lstm_cell_92/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_334_layer_call_and_return_conditional_losses_561833
inputs_0>
+lstm_cell_91_matmul_readvariableop_resource:	dÈ@
-lstm_cell_91_matmul_1_readvariableop_resource:	2È;
,lstm_cell_91_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_91/BiasAdd/ReadVariableOp˘"lstm_cell_91/MatMul/ReadVariableOp˘$lstm_cell_91/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_91/MatMul/ReadVariableOpReadVariableOp+lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0*lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_91/MatMul_1MatMulzeros:output:0,lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_91/addAddV2lstm_cell_91/MatMul:product:0lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_91/BiasAddBiasAddlstm_cell_91/add:z:0+lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_91/SigmoidSigmoidlstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_91/mulMullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_91/ReluRelulstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_1Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_91/add_1AddV2lstm_cell_91/mul:z:0lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_91/Relu_1Relulstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_91/mul_2Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_91_matmul_readvariableop_resource-lstm_cell_91_matmul_1_readvariableop_resource,lstm_cell_91_biasadd_readvariableop_resource*
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
while_body_561749*
condR
while_cond_561748*K
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
NoOpNoOp$^lstm_cell_91/BiasAdd/ReadVariableOp#^lstm_cell_91/MatMul/ReadVariableOp%^lstm_cell_91/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_91/BiasAdd/ReadVariableOp#lstm_cell_91/BiasAdd/ReadVariableOp2H
"lstm_cell_91/MatMul/ReadVariableOp"lstm_cell_91/MatMul/ReadVariableOp2L
$lstm_cell_91/MatMul_1/ReadVariableOp$lstm_cell_91/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
µ
?
while_cond_558499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558499___redundant_placeholder04
0while_while_cond_558499___redundant_placeholder14
0while_while_cond_558499___redundant_placeholder24
0while_while_cond_558499___redundant_placeholder3
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
ş
Ŝ
!__inference__wrapped_model_557719
lstm_333_inputV
Csequential_111_lstm_333_lstm_cell_90_matmul_readvariableop_resource:	X
Esequential_111_lstm_333_lstm_cell_90_matmul_1_readvariableop_resource:	dS
Dsequential_111_lstm_333_lstm_cell_90_biasadd_readvariableop_resource:	V
Csequential_111_lstm_334_lstm_cell_91_matmul_readvariableop_resource:	dÈX
Esequential_111_lstm_334_lstm_cell_91_matmul_1_readvariableop_resource:	2ÈS
Dsequential_111_lstm_334_lstm_cell_91_biasadd_readvariableop_resource:	ÈU
Csequential_111_lstm_335_lstm_cell_92_matmul_readvariableop_resource:2(W
Esequential_111_lstm_335_lstm_cell_92_matmul_1_readvariableop_resource:
(R
Dsequential_111_lstm_335_lstm_cell_92_biasadd_readvariableop_resource:(I
7sequential_111_dense_111_matmul_readvariableop_resource:
F
8sequential_111_dense_111_biasadd_readvariableop_resource:
identity˘/sequential_111/dense_111/BiasAdd/ReadVariableOp˘.sequential_111/dense_111/MatMul/ReadVariableOp˘;sequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp˘:sequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOp˘<sequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp˘sequential_111/lstm_333/while˘;sequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp˘:sequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOp˘<sequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp˘sequential_111/lstm_334/while˘;sequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp˘:sequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOp˘<sequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp˘sequential_111/lstm_335/while[
sequential_111/lstm_333/ShapeShapelstm_333_input*
T0*
_output_shapes
:u
+sequential_111/lstm_333/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_111/lstm_333/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_111/lstm_333/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_111/lstm_333/strided_sliceStridedSlice&sequential_111/lstm_333/Shape:output:04sequential_111/lstm_333/strided_slice/stack:output:06sequential_111/lstm_333/strided_slice/stack_1:output:06sequential_111/lstm_333/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_111/lstm_333/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_111/lstm_333/zeros/packedPack.sequential_111/lstm_333/strided_slice:output:0/sequential_111/lstm_333/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_111/lstm_333/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_111/lstm_333/zerosFill-sequential_111/lstm_333/zeros/packed:output:0,sequential_111/lstm_333/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_111/lstm_333/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_111/lstm_333/zeros_1/packedPack.sequential_111/lstm_333/strided_slice:output:01sequential_111/lstm_333/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_111/lstm_333/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_111/lstm_333/zeros_1Fill/sequential_111/lstm_333/zeros_1/packed:output:0.sequential_111/lstm_333/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_111/lstm_333/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_111/lstm_333/transpose	Transposelstm_333_input/sequential_111/lstm_333/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_111/lstm_333/Shape_1Shape%sequential_111/lstm_333/transpose:y:0*
T0*
_output_shapes
:w
-sequential_111/lstm_333/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_333/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_333/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_111/lstm_333/strided_slice_1StridedSlice(sequential_111/lstm_333/Shape_1:output:06sequential_111/lstm_333/strided_slice_1/stack:output:08sequential_111/lstm_333/strided_slice_1/stack_1:output:08sequential_111/lstm_333/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_111/lstm_333/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_111/lstm_333/TensorArrayV2TensorListReserve<sequential_111/lstm_333/TensorArrayV2/element_shape:output:00sequential_111/lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_111/lstm_333/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_111/lstm_333/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_111/lstm_333/transpose:y:0Vsequential_111/lstm_333/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_111/lstm_333/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_333/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_333/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_111/lstm_333/strided_slice_2StridedSlice%sequential_111/lstm_333/transpose:y:06sequential_111/lstm_333/strided_slice_2/stack:output:08sequential_111/lstm_333/strided_slice_2/stack_1:output:08sequential_111/lstm_333/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOpReadVariableOpCsequential_111_lstm_333_lstm_cell_90_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_111/lstm_333/lstm_cell_90/MatMulMatMul0sequential_111/lstm_333/strided_slice_2:output:0Bsequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOpReadVariableOpEsequential_111_lstm_333_lstm_cell_90_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_111/lstm_333/lstm_cell_90/MatMul_1MatMul&sequential_111/lstm_333/zeros:output:0Dsequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_111/lstm_333/lstm_cell_90/addAddV25sequential_111/lstm_333/lstm_cell_90/MatMul:product:07sequential_111/lstm_333/lstm_cell_90/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOpReadVariableOpDsequential_111_lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_111/lstm_333/lstm_cell_90/BiasAddBiasAdd,sequential_111/lstm_333/lstm_cell_90/add:z:0Csequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_111/lstm_333/lstm_cell_90/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_111/lstm_333/lstm_cell_90/splitSplit=sequential_111/lstm_333/lstm_cell_90/split/split_dim:output:05sequential_111/lstm_333/lstm_cell_90/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_111/lstm_333/lstm_cell_90/SigmoidSigmoid3sequential_111/lstm_333/lstm_cell_90/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_111/lstm_333/lstm_cell_90/Sigmoid_1Sigmoid3sequential_111/lstm_333/lstm_cell_90/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_111/lstm_333/lstm_cell_90/mulMul2sequential_111/lstm_333/lstm_cell_90/Sigmoid_1:y:0(sequential_111/lstm_333/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_111/lstm_333/lstm_cell_90/ReluRelu3sequential_111/lstm_333/lstm_cell_90/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_111/lstm_333/lstm_cell_90/mul_1Mul0sequential_111/lstm_333/lstm_cell_90/Sigmoid:y:07sequential_111/lstm_333/lstm_cell_90/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_111/lstm_333/lstm_cell_90/add_1AddV2,sequential_111/lstm_333/lstm_cell_90/mul:z:0.sequential_111/lstm_333/lstm_cell_90/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_111/lstm_333/lstm_cell_90/Sigmoid_2Sigmoid3sequential_111/lstm_333/lstm_cell_90/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_111/lstm_333/lstm_cell_90/Relu_1Relu.sequential_111/lstm_333/lstm_cell_90/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_111/lstm_333/lstm_cell_90/mul_2Mul2sequential_111/lstm_333/lstm_cell_90/Sigmoid_2:y:09sequential_111/lstm_333/lstm_cell_90/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_111/lstm_333/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_111/lstm_333/TensorArrayV2_1TensorListReserve>sequential_111/lstm_333/TensorArrayV2_1/element_shape:output:00sequential_111/lstm_333/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_111/lstm_333/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_111/lstm_333/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_111/lstm_333/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_111/lstm_333/whileWhile3sequential_111/lstm_333/while/loop_counter:output:09sequential_111/lstm_333/while/maximum_iterations:output:0%sequential_111/lstm_333/time:output:00sequential_111/lstm_333/TensorArrayV2_1:handle:0&sequential_111/lstm_333/zeros:output:0(sequential_111/lstm_333/zeros_1:output:00sequential_111/lstm_333/strided_slice_1:output:0Osequential_111/lstm_333/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_111_lstm_333_lstm_cell_90_matmul_readvariableop_resourceEsequential_111_lstm_333_lstm_cell_90_matmul_1_readvariableop_resourceDsequential_111_lstm_333_lstm_cell_90_biasadd_readvariableop_resource*
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
)sequential_111_lstm_333_while_body_557351*5
cond-R+
)sequential_111_lstm_333_while_cond_557350*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_111/lstm_333/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_111/lstm_333/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_111/lstm_333/while:output:3Qsequential_111/lstm_333/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_111/lstm_333/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_111/lstm_333/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_333/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_111/lstm_333/strided_slice_3StridedSliceCsequential_111/lstm_333/TensorArrayV2Stack/TensorListStack:tensor:06sequential_111/lstm_333/strided_slice_3/stack:output:08sequential_111/lstm_333/strided_slice_3/stack_1:output:08sequential_111/lstm_333/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_111/lstm_333/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_111/lstm_333/transpose_1	TransposeCsequential_111/lstm_333/TensorArrayV2Stack/TensorListStack:tensor:01sequential_111/lstm_333/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_111/lstm_333/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_111/lstm_334/ShapeShape'sequential_111/lstm_333/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_111/lstm_334/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_111/lstm_334/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_111/lstm_334/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_111/lstm_334/strided_sliceStridedSlice&sequential_111/lstm_334/Shape:output:04sequential_111/lstm_334/strided_slice/stack:output:06sequential_111/lstm_334/strided_slice/stack_1:output:06sequential_111/lstm_334/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_111/lstm_334/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_111/lstm_334/zeros/packedPack.sequential_111/lstm_334/strided_slice:output:0/sequential_111/lstm_334/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_111/lstm_334/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_111/lstm_334/zerosFill-sequential_111/lstm_334/zeros/packed:output:0,sequential_111/lstm_334/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_111/lstm_334/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_111/lstm_334/zeros_1/packedPack.sequential_111/lstm_334/strided_slice:output:01sequential_111/lstm_334/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_111/lstm_334/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_111/lstm_334/zeros_1Fill/sequential_111/lstm_334/zeros_1/packed:output:0.sequential_111/lstm_334/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_111/lstm_334/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_111/lstm_334/transpose	Transpose'sequential_111/lstm_333/transpose_1:y:0/sequential_111/lstm_334/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_111/lstm_334/Shape_1Shape%sequential_111/lstm_334/transpose:y:0*
T0*
_output_shapes
:w
-sequential_111/lstm_334/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_334/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_334/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_111/lstm_334/strided_slice_1StridedSlice(sequential_111/lstm_334/Shape_1:output:06sequential_111/lstm_334/strided_slice_1/stack:output:08sequential_111/lstm_334/strided_slice_1/stack_1:output:08sequential_111/lstm_334/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_111/lstm_334/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_111/lstm_334/TensorArrayV2TensorListReserve<sequential_111/lstm_334/TensorArrayV2/element_shape:output:00sequential_111/lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_111/lstm_334/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_111/lstm_334/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_111/lstm_334/transpose:y:0Vsequential_111/lstm_334/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_111/lstm_334/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_334/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_334/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_111/lstm_334/strided_slice_2StridedSlice%sequential_111/lstm_334/transpose:y:06sequential_111/lstm_334/strided_slice_2/stack:output:08sequential_111/lstm_334/strided_slice_2/stack_1:output:08sequential_111/lstm_334/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOpReadVariableOpCsequential_111_lstm_334_lstm_cell_91_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_111/lstm_334/lstm_cell_91/MatMulMatMul0sequential_111/lstm_334/strided_slice_2:output:0Bsequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOpReadVariableOpEsequential_111_lstm_334_lstm_cell_91_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_111/lstm_334/lstm_cell_91/MatMul_1MatMul&sequential_111/lstm_334/zeros:output:0Dsequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_111/lstm_334/lstm_cell_91/addAddV25sequential_111/lstm_334/lstm_cell_91/MatMul:product:07sequential_111/lstm_334/lstm_cell_91/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOpReadVariableOpDsequential_111_lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_111/lstm_334/lstm_cell_91/BiasAddBiasAdd,sequential_111/lstm_334/lstm_cell_91/add:z:0Csequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_111/lstm_334/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_111/lstm_334/lstm_cell_91/splitSplit=sequential_111/lstm_334/lstm_cell_91/split/split_dim:output:05sequential_111/lstm_334/lstm_cell_91/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_111/lstm_334/lstm_cell_91/SigmoidSigmoid3sequential_111/lstm_334/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_111/lstm_334/lstm_cell_91/Sigmoid_1Sigmoid3sequential_111/lstm_334/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_111/lstm_334/lstm_cell_91/mulMul2sequential_111/lstm_334/lstm_cell_91/Sigmoid_1:y:0(sequential_111/lstm_334/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_111/lstm_334/lstm_cell_91/ReluRelu3sequential_111/lstm_334/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_111/lstm_334/lstm_cell_91/mul_1Mul0sequential_111/lstm_334/lstm_cell_91/Sigmoid:y:07sequential_111/lstm_334/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_111/lstm_334/lstm_cell_91/add_1AddV2,sequential_111/lstm_334/lstm_cell_91/mul:z:0.sequential_111/lstm_334/lstm_cell_91/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_111/lstm_334/lstm_cell_91/Sigmoid_2Sigmoid3sequential_111/lstm_334/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_111/lstm_334/lstm_cell_91/Relu_1Relu.sequential_111/lstm_334/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_111/lstm_334/lstm_cell_91/mul_2Mul2sequential_111/lstm_334/lstm_cell_91/Sigmoid_2:y:09sequential_111/lstm_334/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_111/lstm_334/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_111/lstm_334/TensorArrayV2_1TensorListReserve>sequential_111/lstm_334/TensorArrayV2_1/element_shape:output:00sequential_111/lstm_334/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_111/lstm_334/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_111/lstm_334/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_111/lstm_334/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_111/lstm_334/whileWhile3sequential_111/lstm_334/while/loop_counter:output:09sequential_111/lstm_334/while/maximum_iterations:output:0%sequential_111/lstm_334/time:output:00sequential_111/lstm_334/TensorArrayV2_1:handle:0&sequential_111/lstm_334/zeros:output:0(sequential_111/lstm_334/zeros_1:output:00sequential_111/lstm_334/strided_slice_1:output:0Osequential_111/lstm_334/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_111_lstm_334_lstm_cell_91_matmul_readvariableop_resourceEsequential_111_lstm_334_lstm_cell_91_matmul_1_readvariableop_resourceDsequential_111_lstm_334_lstm_cell_91_biasadd_readvariableop_resource*
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
)sequential_111_lstm_334_while_body_557490*5
cond-R+
)sequential_111_lstm_334_while_cond_557489*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_111/lstm_334/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_111/lstm_334/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_111/lstm_334/while:output:3Qsequential_111/lstm_334/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_111/lstm_334/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_111/lstm_334/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_334/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_111/lstm_334/strided_slice_3StridedSliceCsequential_111/lstm_334/TensorArrayV2Stack/TensorListStack:tensor:06sequential_111/lstm_334/strided_slice_3/stack:output:08sequential_111/lstm_334/strided_slice_3/stack_1:output:08sequential_111/lstm_334/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_111/lstm_334/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_111/lstm_334/transpose_1	TransposeCsequential_111/lstm_334/TensorArrayV2Stack/TensorListStack:tensor:01sequential_111/lstm_334/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_111/lstm_334/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_111/lstm_335/ShapeShape'sequential_111/lstm_334/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_111/lstm_335/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_111/lstm_335/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_111/lstm_335/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_111/lstm_335/strided_sliceStridedSlice&sequential_111/lstm_335/Shape:output:04sequential_111/lstm_335/strided_slice/stack:output:06sequential_111/lstm_335/strided_slice/stack_1:output:06sequential_111/lstm_335/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_111/lstm_335/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_111/lstm_335/zeros/packedPack.sequential_111/lstm_335/strided_slice:output:0/sequential_111/lstm_335/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_111/lstm_335/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_111/lstm_335/zerosFill-sequential_111/lstm_335/zeros/packed:output:0,sequential_111/lstm_335/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_111/lstm_335/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_111/lstm_335/zeros_1/packedPack.sequential_111/lstm_335/strided_slice:output:01sequential_111/lstm_335/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_111/lstm_335/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_111/lstm_335/zeros_1Fill/sequential_111/lstm_335/zeros_1/packed:output:0.sequential_111/lstm_335/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_111/lstm_335/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_111/lstm_335/transpose	Transpose'sequential_111/lstm_334/transpose_1:y:0/sequential_111/lstm_335/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_111/lstm_335/Shape_1Shape%sequential_111/lstm_335/transpose:y:0*
T0*
_output_shapes
:w
-sequential_111/lstm_335/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_335/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_335/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_111/lstm_335/strided_slice_1StridedSlice(sequential_111/lstm_335/Shape_1:output:06sequential_111/lstm_335/strided_slice_1/stack:output:08sequential_111/lstm_335/strided_slice_1/stack_1:output:08sequential_111/lstm_335/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_111/lstm_335/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_111/lstm_335/TensorArrayV2TensorListReserve<sequential_111/lstm_335/TensorArrayV2/element_shape:output:00sequential_111/lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_111/lstm_335/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_111/lstm_335/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_111/lstm_335/transpose:y:0Vsequential_111/lstm_335/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_111/lstm_335/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_335/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_111/lstm_335/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_111/lstm_335/strided_slice_2StridedSlice%sequential_111/lstm_335/transpose:y:06sequential_111/lstm_335/strided_slice_2/stack:output:08sequential_111/lstm_335/strided_slice_2/stack_1:output:08sequential_111/lstm_335/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOpReadVariableOpCsequential_111_lstm_335_lstm_cell_92_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_111/lstm_335/lstm_cell_92/MatMulMatMul0sequential_111/lstm_335/strided_slice_2:output:0Bsequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOpReadVariableOpEsequential_111_lstm_335_lstm_cell_92_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_111/lstm_335/lstm_cell_92/MatMul_1MatMul&sequential_111/lstm_335/zeros:output:0Dsequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_111/lstm_335/lstm_cell_92/addAddV25sequential_111/lstm_335/lstm_cell_92/MatMul:product:07sequential_111/lstm_335/lstm_cell_92/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOpReadVariableOpDsequential_111_lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_111/lstm_335/lstm_cell_92/BiasAddBiasAdd,sequential_111/lstm_335/lstm_cell_92/add:z:0Csequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_111/lstm_335/lstm_cell_92/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_111/lstm_335/lstm_cell_92/splitSplit=sequential_111/lstm_335/lstm_cell_92/split/split_dim:output:05sequential_111/lstm_335/lstm_cell_92/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_111/lstm_335/lstm_cell_92/SigmoidSigmoid3sequential_111/lstm_335/lstm_cell_92/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_111/lstm_335/lstm_cell_92/Sigmoid_1Sigmoid3sequential_111/lstm_335/lstm_cell_92/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_111/lstm_335/lstm_cell_92/mulMul2sequential_111/lstm_335/lstm_cell_92/Sigmoid_1:y:0(sequential_111/lstm_335/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_111/lstm_335/lstm_cell_92/ReluRelu3sequential_111/lstm_335/lstm_cell_92/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_111/lstm_335/lstm_cell_92/mul_1Mul0sequential_111/lstm_335/lstm_cell_92/Sigmoid:y:07sequential_111/lstm_335/lstm_cell_92/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_111/lstm_335/lstm_cell_92/add_1AddV2,sequential_111/lstm_335/lstm_cell_92/mul:z:0.sequential_111/lstm_335/lstm_cell_92/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_111/lstm_335/lstm_cell_92/Sigmoid_2Sigmoid3sequential_111/lstm_335/lstm_cell_92/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_111/lstm_335/lstm_cell_92/Relu_1Relu.sequential_111/lstm_335/lstm_cell_92/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_111/lstm_335/lstm_cell_92/mul_2Mul2sequential_111/lstm_335/lstm_cell_92/Sigmoid_2:y:09sequential_111/lstm_335/lstm_cell_92/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_111/lstm_335/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_111/lstm_335/TensorArrayV2_1TensorListReserve>sequential_111/lstm_335/TensorArrayV2_1/element_shape:output:00sequential_111/lstm_335/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_111/lstm_335/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_111/lstm_335/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_111/lstm_335/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_111/lstm_335/whileWhile3sequential_111/lstm_335/while/loop_counter:output:09sequential_111/lstm_335/while/maximum_iterations:output:0%sequential_111/lstm_335/time:output:00sequential_111/lstm_335/TensorArrayV2_1:handle:0&sequential_111/lstm_335/zeros:output:0(sequential_111/lstm_335/zeros_1:output:00sequential_111/lstm_335/strided_slice_1:output:0Osequential_111/lstm_335/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_111_lstm_335_lstm_cell_92_matmul_readvariableop_resourceEsequential_111_lstm_335_lstm_cell_92_matmul_1_readvariableop_resourceDsequential_111_lstm_335_lstm_cell_92_biasadd_readvariableop_resource*
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
)sequential_111_lstm_335_while_body_557629*5
cond-R+
)sequential_111_lstm_335_while_cond_557628*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_111/lstm_335/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_111/lstm_335/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_111/lstm_335/while:output:3Qsequential_111/lstm_335/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_111/lstm_335/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_111/lstm_335/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_111/lstm_335/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_111/lstm_335/strided_slice_3StridedSliceCsequential_111/lstm_335/TensorArrayV2Stack/TensorListStack:tensor:06sequential_111/lstm_335/strided_slice_3/stack:output:08sequential_111/lstm_335/strided_slice_3/stack_1:output:08sequential_111/lstm_335/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_111/lstm_335/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_111/lstm_335/transpose_1	TransposeCsequential_111/lstm_335/TensorArrayV2Stack/TensorListStack:tensor:01sequential_111/lstm_335/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_111/lstm_335/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_111/dense_111/MatMul/ReadVariableOpReadVariableOp7sequential_111_dense_111_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_111/dense_111/MatMulMatMul0sequential_111/lstm_335/strided_slice_3:output:06sequential_111/dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_111/dense_111/BiasAdd/ReadVariableOpReadVariableOp8sequential_111_dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_111/dense_111/BiasAddBiasAdd)sequential_111/dense_111/MatMul:product:07sequential_111/dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_111/dense_111/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_111/dense_111/BiasAdd/ReadVariableOp/^sequential_111/dense_111/MatMul/ReadVariableOp<^sequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp;^sequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOp=^sequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp^sequential_111/lstm_333/while<^sequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp;^sequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOp=^sequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp^sequential_111/lstm_334/while<^sequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp;^sequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOp=^sequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp^sequential_111/lstm_335/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_111/dense_111/BiasAdd/ReadVariableOp/sequential_111/dense_111/BiasAdd/ReadVariableOp2`
.sequential_111/dense_111/MatMul/ReadVariableOp.sequential_111/dense_111/MatMul/ReadVariableOp2z
;sequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp;sequential_111/lstm_333/lstm_cell_90/BiasAdd/ReadVariableOp2x
:sequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOp:sequential_111/lstm_333/lstm_cell_90/MatMul/ReadVariableOp2|
<sequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp<sequential_111/lstm_333/lstm_cell_90/MatMul_1/ReadVariableOp2>
sequential_111/lstm_333/whilesequential_111/lstm_333/while2z
;sequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp;sequential_111/lstm_334/lstm_cell_91/BiasAdd/ReadVariableOp2x
:sequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOp:sequential_111/lstm_334/lstm_cell_91/MatMul/ReadVariableOp2|
<sequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp<sequential_111/lstm_334/lstm_cell_91/MatMul_1/ReadVariableOp2>
sequential_111/lstm_334/whilesequential_111/lstm_334/while2z
;sequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp;sequential_111/lstm_335/lstm_cell_92/BiasAdd/ReadVariableOp2x
:sequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOp:sequential_111/lstm_335/lstm_cell_92/MatMul/ReadVariableOp2|
<sequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp<sequential_111/lstm_335/lstm_cell_92/MatMul_1/ReadVariableOp2>
sequential_111/lstm_335/whilesequential_111/lstm_335/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_333_input
Ġ

H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_558282

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
 
_user_specified_namestates"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultŞ
M
lstm_333_input;
 serving_default_lstm_333_input:0˙˙˙˙˙˙˙˙˙=
	dense_1110
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
2dense_111/kernel
:2dense_111/bias
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
0:.	2lstm_333/lstm_cell_333/kernel
::8	d2'lstm_333/lstm_cell_333/recurrent_kernel
*:(2lstm_333/lstm_cell_333/bias
0:.	dÈ2lstm_334/lstm_cell_334/kernel
::8	2È2'lstm_334/lstm_cell_334/recurrent_kernel
*:(È2lstm_334/lstm_cell_334/bias
/:-2(2lstm_335/lstm_cell_335/kernel
9:7
(2'lstm_335/lstm_cell_335/recurrent_kernel
):'(2lstm_335/lstm_cell_335/bias
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
2Adam/dense_111/kernel/m
!:2Adam/dense_111/bias/m
5:3	2$Adam/lstm_333/lstm_cell_333/kernel/m
?:=	d2.Adam/lstm_333/lstm_cell_333/recurrent_kernel/m
/:-2"Adam/lstm_333/lstm_cell_333/bias/m
5:3	dÈ2$Adam/lstm_334/lstm_cell_334/kernel/m
?:=	2È2.Adam/lstm_334/lstm_cell_334/recurrent_kernel/m
/:-È2"Adam/lstm_334/lstm_cell_334/bias/m
4:22(2$Adam/lstm_335/lstm_cell_335/kernel/m
>:<
(2.Adam/lstm_335/lstm_cell_335/recurrent_kernel/m
.:,(2"Adam/lstm_335/lstm_cell_335/bias/m
':%
2Adam/dense_111/kernel/v
!:2Adam/dense_111/bias/v
5:3	2$Adam/lstm_333/lstm_cell_333/kernel/v
?:=	d2.Adam/lstm_333/lstm_cell_333/recurrent_kernel/v
/:-2"Adam/lstm_333/lstm_cell_333/bias/v
5:3	dÈ2$Adam/lstm_334/lstm_cell_334/kernel/v
?:=	2È2.Adam/lstm_334/lstm_cell_334/recurrent_kernel/v
/:-È2"Adam/lstm_334/lstm_cell_334/bias/v
4:22(2$Adam/lstm_335/lstm_cell_335/kernel/v
>:<
(2.Adam/lstm_335/lstm_cell_335/recurrent_kernel/v
.:,(2"Adam/lstm_335/lstm_cell_335/bias/v
2
/__inference_sequential_111_layer_call_fn_559268
/__inference_sequential_111_layer_call_fn_560006
/__inference_sequential_111_layer_call_fn_560033
/__inference_sequential_111_layer_call_fn_559884À
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
J__inference_sequential_111_layer_call_and_return_conditional_losses_560460
J__inference_sequential_111_layer_call_and_return_conditional_losses_560887
J__inference_sequential_111_layer_call_and_return_conditional_losses_559914
J__inference_sequential_111_layer_call_and_return_conditional_losses_559944À
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
!__inference__wrapped_model_557719lstm_333_input"
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
)__inference_lstm_333_layer_call_fn_560898
)__inference_lstm_333_layer_call_fn_560909
)__inference_lstm_333_layer_call_fn_560920
)__inference_lstm_333_layer_call_fn_560931Ġ
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_561074
D__inference_lstm_333_layer_call_and_return_conditional_losses_561217
D__inference_lstm_333_layer_call_and_return_conditional_losses_561360
D__inference_lstm_333_layer_call_and_return_conditional_losses_561503Ġ
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
)__inference_lstm_334_layer_call_fn_561514
)__inference_lstm_334_layer_call_fn_561525
)__inference_lstm_334_layer_call_fn_561536
)__inference_lstm_334_layer_call_fn_561547Ġ
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_561690
D__inference_lstm_334_layer_call_and_return_conditional_losses_561833
D__inference_lstm_334_layer_call_and_return_conditional_losses_561976
D__inference_lstm_334_layer_call_and_return_conditional_losses_562119Ġ
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
)__inference_lstm_335_layer_call_fn_562130
)__inference_lstm_335_layer_call_fn_562141
)__inference_lstm_335_layer_call_fn_562152
)__inference_lstm_335_layer_call_fn_562163Ġ
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562306
D__inference_lstm_335_layer_call_and_return_conditional_losses_562449
D__inference_lstm_335_layer_call_and_return_conditional_losses_562592
D__inference_lstm_335_layer_call_and_return_conditional_losses_562735Ġ
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
*__inference_dense_111_layer_call_fn_562744˘
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
E__inference_dense_111_layer_call_and_return_conditional_losses_562754˘
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
$__inference_signature_wrapper_559979lstm_333_input"
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
-__inference_lstm_cell_90_layer_call_fn_562771
-__inference_lstm_cell_90_layer_call_fn_562788?
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562820
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562852?
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
-__inference_lstm_cell_91_layer_call_fn_562869
-__inference_lstm_cell_91_layer_call_fn_562886?
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562918
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562950?
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
-__inference_lstm_cell_92_layer_call_fn_562967
-__inference_lstm_cell_92_layer_call_fn_562984?
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563016
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563048?
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
!__inference__wrapped_model_557719-./012345!";˘8
1˘.
,)
lstm_333_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_111# 
	dense_111˙˙˙˙˙˙˙˙˙?
E__inference_dense_111_layer_call_and_return_conditional_losses_562754\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_111_layer_call_fn_562744O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_333_layer_call_and_return_conditional_losses_561074-./O˘L
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_561217-./O˘L
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_561360q-./?˘<
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
D__inference_lstm_333_layer_call_and_return_conditional_losses_561503q-./?˘<
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
)__inference_lstm_333_layer_call_fn_560898}-./O˘L
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
)__inference_lstm_333_layer_call_fn_560909}-./O˘L
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
)__inference_lstm_333_layer_call_fn_560920d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_333_layer_call_fn_560931d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_334_layer_call_and_return_conditional_losses_561690012O˘L
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_561833012O˘L
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_561976q012?˘<
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
D__inference_lstm_334_layer_call_and_return_conditional_losses_562119q012?˘<
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
)__inference_lstm_334_layer_call_fn_561514}012O˘L
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
)__inference_lstm_334_layer_call_fn_561525}012O˘L
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
)__inference_lstm_334_layer_call_fn_561536d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_334_layer_call_fn_561547d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_335_layer_call_and_return_conditional_losses_562306}345O˘L
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562449}345O˘L
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562592m345?˘<
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
D__inference_lstm_335_layer_call_and_return_conditional_losses_562735m345?˘<
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
)__inference_lstm_335_layer_call_fn_562130p345O˘L
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
)__inference_lstm_335_layer_call_fn_562141p345O˘L
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
)__inference_lstm_335_layer_call_fn_562152`345?˘<
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
)__inference_lstm_335_layer_call_fn_562163`345?˘<
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562820ŭ-./˘}
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
H__inference_lstm_cell_90_layer_call_and_return_conditional_losses_562852ŭ-./˘}
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
-__inference_lstm_cell_90_layer_call_fn_562771í-./˘}
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
-__inference_lstm_cell_90_layer_call_fn_562788í-./˘}
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562918ŭ012˘}
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
H__inference_lstm_cell_91_layer_call_and_return_conditional_losses_562950ŭ012˘}
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
-__inference_lstm_cell_91_layer_call_fn_562869í012˘}
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
-__inference_lstm_cell_91_layer_call_fn_562886í012˘}
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563016ŭ345˘}
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
H__inference_lstm_cell_92_layer_call_and_return_conditional_losses_563048ŭ345˘}
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
-__inference_lstm_cell_92_layer_call_fn_562967í345˘}
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
-__inference_lstm_cell_92_layer_call_fn_562984í345˘}
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
J__inference_sequential_111_layer_call_and_return_conditional_losses_559914y-./012345!"C˘@
9˘6
,)
lstm_333_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_111_layer_call_and_return_conditional_losses_559944y-./012345!"C˘@
9˘6
,)
lstm_333_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_111_layer_call_and_return_conditional_losses_560460q-./012345!";˘8
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
J__inference_sequential_111_layer_call_and_return_conditional_losses_560887q-./012345!";˘8
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
/__inference_sequential_111_layer_call_fn_559268l-./012345!"C˘@
9˘6
,)
lstm_333_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_111_layer_call_fn_559884l-./012345!"C˘@
9˘6
,)
lstm_333_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_111_layer_call_fn_560006d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_111_layer_call_fn_560033d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_559979-./012345!"M˘J
˘ 
CŞ@
>
lstm_333_input,)
lstm_333_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_111# 
	dense_111˙˙˙˙˙˙˙˙˙